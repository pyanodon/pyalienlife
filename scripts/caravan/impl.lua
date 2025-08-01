local caravan_prototypes = require "caravan-prototypes"

local P = {}

---Pathfinds a caravan to follow another entity
---@param caravan_data Caravan
---@param entity LuaEntity
function P.goto_entity(caravan_data, entity)
    local caravan = caravan_data.entity
    caravan.commandable.set_command {
        type = defines.command.go_to_location,
        destination_entity = entity,
        distraction = defines.distraction.none,
        pathfind_flags = caravan_prototypes[caravan.name].pathfinder_flags
    }
    caravan_data.arrival_tick = nil
end

---Pathfinds a caravan to a position
---@param caravan_data Caravan
---@param position MapPosition
function P.goto_position(caravan_data, position)
    local caravan = caravan_data.entity
    caravan.commandable.set_command {
        type = defines.command.go_to_location,
        destination = position,
        distraction = defines.distraction.none,
        pathfind_flags = caravan_prototypes[caravan.name].pathfinder_flags
    }
    caravan_data.arrival_tick = nil
end

---Sets the caravan to walk aimlessly in a radius.
---@param caravan_data Caravan
function P.wander(caravan_data)
    caravan_data.entity.commandable.set_command {
        type = defines.command.wander,
        distraction = defines.distraction.none,
        radius = 10
    }
end

---Stops all actions of the caravan and cancels the current pathfinder request.
---This is used for example when it runs out of food or the GUI is interacted with.
---@param caravan_data Caravan
function P.stop_actions(caravan_data)
    caravan_data.schedule_id = -1
    caravan_data.action_id = -1
    caravan_data.stored_energy = nil
    caravan_data.arrival_tick = nil
    P.wander(caravan_data)
end

local no_fuel_map_tag = {
    type = "virtual",
    name = "no-fuel"
}

---Function to render a red alert similar to the locomotive out of fuel alert.
---This renders on the player GUI in the same slot as the locomotive alert or 'entities damaged' alert.
---@param entity LuaEntity
function P.add_alert(entity, alert)
    local target_force = entity.force_index
    for _, player in pairs(game.connected_players) do
        if player.valid and player.force_index == target_force then
            -- You could use train alerts which have the wrong notification string but *do* stack
            -- player.add_alert(entity, defines.alert_type.train_out_of_fuel)
            player.add_custom_alert(
                entity,
                alert.signal,
                alert.message,
                true
            )
        end
    end
end

---Function to remove the alert from the player GUI.
---@param entity LuaEntity
function P.remove_alert(entity)
    if not entity.valid then
        -- it'll disappear after a few seconds anyway
        return
    end

    local target_force = entity.force_index
    for _, player in pairs(game.connected_players) do
        if player.valid and player.force_index == target_force then
            -- You could use train alerts which have the wrong notification string but *do* stack
            -- player.remove_alert({prototype = prototype, type = defines.alert_type.train_out_of_fuel})
            -- If we specify more than one criteria here, it'll only pay attention to one for some reason
            player.remove_alert {
                entity = entity
            }
        end
    end
end

---Starts a caravan pathfinding to its next scheduled entity. Sets the action ID to -1 becuase it cannot do actions while in transit.
---This is called whenever it finishes all its actions on the previous schedule or it is started manually via the GUI.
---@param caravan_data Caravan
---@param schedule_id int
---@param skip_eating boolean?
function P.begin_schedule(caravan_data, schedule_id, skip_eating)
    local schedule = caravan_data.schedule[schedule_id]

    if not schedule or (schedule.entity and not schedule.entity.valid) then
        P.stop_actions(caravan_data); return
    end
    if caravan_data.last_scheduled_tick and caravan_data.last_scheduled_tick + 30 > game.tick then
        if caravan_data.schedule_id ~= schedule_id then
            if not skip_eating and not P.eat(caravan_data) then
                P.stop_actions(caravan_data); return
            end
        end
        caravan_data.schedule_id = schedule_id
        caravan_data.retry_pathfinder = 1
        return
    end

    local entity = caravan_data.entity
    if not entity or not entity.valid then
        P.stop_actions(caravan_data); return
    end

    local schedule = caravan_data.schedule[schedule_id]
    if caravan_data.fuel_inventory then
        if not skip_eating and not P.eat(caravan_data) then
            P.stop_actions(caravan_data); return
        end
    end

    caravan_data.schedule_id = schedule_id
    caravan_data.action_id = -1
    if schedule.entity then
        local schedule_entity = schedule.entity
        if schedule_entity.valid and schedule_entity.surface == entity.surface then
            P.goto_entity(caravan_data, schedule.entity)
        else
            P.add_alert(entity, Caravan.alerts.destination_destroyed)
            py.draw_error_sprite(entity, "virtual-signal.py-destination-destroyed", 30)
            P.wander(caravan_data)
            caravan_data.retry_pathfinder = 1
            return
        end
    else
        P.goto_position(caravan_data, schedule.position)
    end

    caravan_data.last_scheduled_tick = game.tick
end

---Begins the action with the specified ID inside the caravan's current schedule.
---@param caravan_data Caravan
---@param action_id int
function P.begin_action(caravan_data, action_id)
    local entity = caravan_data.entity
    local schedule = caravan_data.schedule[caravan_data.schedule_id]
    if not schedule then
        P.stop_actions(caravan_data); return
    end
    local action = schedule.actions[action_id]
    if not action then
        P.stop_actions(caravan_data); return
    end

    caravan_data.action_id = action_id

    if action.type == "time-passed" then
        action.timer = action.wait_time or 5
    end
end

-- Removes all temporary stop from the caravan schedule
function P.remove_tmp_stops(caravan_data)
    local new_schedule = {}

    for idx, sch in pairs(caravan_data.schedule) do
        if sch.temporary then
            if idx == caravan_data.schedule_id then
                caravan_data.action_id = -1
            end
            if idx <= caravan_data.schedule_id then
                caravan_data.schedule_id = caravan_data.schedule_id - 1
            end
        else
            new_schedule[#new_schedule + 1] = sch
        end
    end
    caravan_data.schedule = new_schedule

    if caravan_data.schedule_id < 1 then
        P.stop_actions(caravan_data)
    end
end

-- Adds an interrupt's schedule to the caravan schedule. Returns index of the first schedule added
---@param caravan_data Caravan
---@param interrupt_data CaravanInterrupt
function P.add_interrupt(caravan_data, interrupt_data)
    if #interrupt_data.schedule <= 0 then return caravan_data.schedule_id end
    local first_inserted_location = nil
    for i = 1, #interrupt_data.schedule do
        local sch = table.deepcopy(interrupt_data.schedule[i])
        sch.temporary = {interrupt_name = interrupt_data.name, schedule_id = i}
        local index = math.max(0, caravan_data.schedule_id) + i
        first_inserted_location = first_inserted_location or index
        table.insert(caravan_data.schedule, index, sch)
    end

    -- Whenever an interrupt is added, the caravan should always immediately execute that action.
    -- Return the schedule_id of that interrupt.
    local new_schedule_id_to_execute = first_inserted_location or #caravan_data.schedule
    return new_schedule_id_to_execute == 0 and -1 or new_schedule_id_to_execute
end

---@param caravan_data Caravan
function P.advance_caravan_schedule_by_1(caravan_data)
    local schedule = caravan_data.schedule[caravan_data.schedule_id]
    assert(schedule)

    local existing_interrupt_name    
    local is_interrupted = false
    for _, sch in pairs(caravan_data.schedule) do
        if sch.temporary then
            if sch ~= schedule then  -- It is about to be deleted, so dont count it
                is_interrupted = true
                existing_interrupt_name = sch.temporary.interrupt_name
                break
            end
        end
    end

    local passed_index
    for idx, interrupt in pairs(caravan_data.interrupts) do
        interrupt = storage.interrupts[interrupt]
        if not interrupt then goto continue end

        local inside = interrupt.inside_interrupt
        if is_interrupted and not inside then goto continue end
        if is_interrupted and inside and existing_interrupt_name == interrupt.name then goto continue end

        local conditions_passed = true
        for _, condition in pairs(interrupt.conditions) do
            if not Caravan.actions[condition.type] then break end
            if not Caravan.actions[condition.type](caravan_data, caravan_data.schedule[caravan_data.schedule_id], condition) then
                conditions_passed = false
                break
            end
        end
        if conditions_passed then
            passed_index = idx
            is_interrupted = true   -- Pretend the interrupt succeded but dont add it to the schedule yet
        end

        ::continue::
    end

    if passed_index then
        local interrupt = storage.interrupts[caravan_data.interrupts[passed_index]]
        P.remove_tmp_stops(caravan_data)
        P.add_interrupt(caravan_data, interrupt)
    else
        if schedule.temporary then
            table.remove(caravan_data.schedule, caravan_data.schedule_id)
            if #caravan_data.schedule == 0 then
                caravan_data.schedule_id = -1
            else
                caravan_data.schedule_id = caravan_data.schedule_id - 1
            end
        end
    end

    P.begin_schedule(caravan_data, caravan_data.schedule_id % #caravan_data.schedule + 1, #caravan_data.schedule == 1)
end

---Is this caravan currently doing anything?
---@param caravan_data Caravan
---@return boolean
function P.is_automated(caravan_data)
    return caravan_data.schedule_id and caravan_data.schedule_id >= 0
end

---Reduces the fuel bar of the caravan by 1. If the fuel bar is empty, it will also attempt to refill it using fuel from the fuel inventory.
---If this function returns false, the caravan is starved and all actions stop.
---@param caravan_data Caravan
---@return boolean
function P.eat(caravan_data)
    local entity = caravan_data.entity
    if caravan_data.fuel_bar == 0 then
        local fuel = caravan_data.fuel_inventory
        for _, item in pairs(fuel.get_contents()) do
            item = item.name
            fuel.remove {name = item, count = 1}
            caravan_data.fuel_bar = caravan_prototypes[entity.name].favorite_foods[item]
            caravan_data.last_eaten_fuel_value = caravan_data.fuel_bar
            entity.force.get_item_production_statistics(entity.surface_index).on_flow(item, -1)
            caravan_data.fuel_bar = caravan_data.fuel_bar - 1
            return true
        end
        return false
    end
    caravan_data.fuel_bar = caravan_data.fuel_bar - 1
    return true
end

---@param v table
---@return boolean
local function exists_and_valid(v) return v and v.valid end

---Checks if the caravan entity is valid, the caravan inventory is valid, and the fuel inventory is valid.
---If not, all lua objects are destroyed and the caravan is removed from the global table.
---If this caravan is itemized, then we return false however lua objects are not destroyed.
---@param caravan_data Caravan
---@return boolean
function P.validity_check(caravan_data)
    if not caravan_data or caravan_data.itemised then return false end
    local inventory, fuel_inventory = caravan_data.inventory, caravan_data.fuel_inventory
    if
        not caravan_data.entity.valid or
        (inventory and not inventory.valid) or
        (fuel_inventory and not fuel_inventory.valid)
    then
        if caravan_data.entity.valid then caravan_data.entity.destroy() end
        if exists_and_valid(inventory) then inventory.destroy() end
        if exists_and_valid(fuel_inventory) then fuel_inventory.destroy() end
        storage.caravans[caravan_data.unit_number] = nil
        return false
    end
    return true
end

function P.instantiate_caravan(entity)
    local existing = storage.caravans[entity.unit_number]
    if existing then return existing end

    local prototype = caravan_prototypes[entity.name]
    local caravan_data = {
        unit_number = entity.unit_number,
        entity = entity,
        schedule = {},
        interrupts = {},
        schedule_id = -1,
        action_id = -1
    }

    if prototype.favorite_foods and prototype.fuel_size then
        caravan_data.fuel_inventory = game.create_inventory(prototype.fuel_size)
        caravan_data.fuel_bar = 0
        caravan_data.last_eaten_fuel_value = 1
    end

    if prototype.inventory_size then
        caravan_data.inventory = game.create_inventory(prototype.inventory_size, {"caravan-gui.caravan-inventory"})
    end

    storage.caravans[entity.unit_number] = caravan_data
    return caravan_data
end

function P.rename_interrupt(interrupt, new_name)
    local old_name = interrupt.name
    storage.interrupts[old_name] = nil
    interrupt.name = new_name
    storage.interrupts[new_name] = interrupt

    -- far from ideal, it would be better to index caravan interrupts by ID instead of names
    for _, caravan_data in pairs(storage.caravans) do
        for i = 1, #caravan_data.interrupts do
            if caravan_data.interrupts[i] == old_name then
                caravan_data.interrupts[i] = new_name
                break
            end
        end
    end
end

function P.status_info(caravan_data)
    local entity = caravan_data.entity
    if caravan_data.fuel_bar == 0 and caravan_data.fuel_inventory.is_empty() then
        return {"entity-status.starved"}, "utility/status_not_working"
    elseif entity.health ~= entity.max_health then
        return {"entity-status.wounded"}, "utility/status_yellow"
    elseif not P.is_automated(caravan_data) then
        return {"entity-status.idle"}, "utility/status_yellow"
    else
        return {"entity-status.healthy"}, "utility/status_working"
    end
end

-- Closes the gui, gives player the carrot-on-stick item and sets storage.last_opened to the provided value
---@param player LuaPlayer
---@param last_opened table
---@param camera_position MapPosition?
function P.select_destination(player, last_opened, camera_position)
    local stack = player.cursor_stack
    if not stack then return end
    if stack.valid_for_read then
        if player.insert(stack) == 0 then
            player.surface.spill_item_stack {position = player.position, stack = stack, enable_looted = true, force = player.force}
        end
        stack.clear()
    end
    stack.set_stack {name = "caravan-control"}

    if player.gui.screen.caravan_gui then
        storage.caravan_gui_last_location = player.gui.screen.caravan_gui.location
    end
    if player.gui.screen.edit_interrupt_gui then
        storage.edit_interrupt_gui_last_location = player.gui.screen.edit_interrupt_gui.location
        -- destroy the edit interrupt GUI before triggering on_gui_closed, to keep the storage.edited_interrupt alive
        player.gui.screen.edit_interrupt_gui.destroy()
    end

    player.opened = nil
    if camera_position then
        local zoom = player.zoom
        player.set_controller{
            type = defines.controllers.remote,
            position = camera_position,
        }
        player.zoom = zoom
    end
    storage.last_opened[player.index] = last_opened
end

-- actions
-- TODO only keep prototypes in caravan-prototypes, split this file

local function get_outpost_inventory(outpost)
    local type = outpost.type
    if type == "character" then
        return outpost.get_main_inventory()
    elseif type == "container" then
        return outpost.get_inventory(defines.inventory.chest)
    elseif type == "cargo-wagon" then
        return outpost.get_inventory(defines.inventory.cargo_wagon)
    elseif type == "car" then
        return outpost.get_inventory(defines.inventory.car_trunk)
    elseif type == "spider-vehicle" then
        return outpost.get_inventory(defines.inventory.spider_trunk)
    elseif caravan_prototypes[outpost.name] then
        local caravan_data = storage.caravans[outpost.unit_number]
        return caravan_data.inventory
    end
end

local function transfer_all_items(input_inventory, output_inventory)
    if input_inventory.is_empty() or output_inventory.is_full() then return end
    local inserted_total = 0
    for i = 1, #input_inventory do
        local stack = input_inventory[i]
        local inserted_count = output_inventory.insert(stack)
        if inserted_count ~= 0 then
            stack.count = stack.count - inserted_count
            inserted_total = inserted_total + inserted_count
        end
    end
    input_inventory.sort_and_merge()
    output_inventory.sort_and_merge()
    return inserted_total
end

-- TODO all of those can be replaced with code inside gui/inventories.lua
local function transfer_filtered_items(input_inventory, output_inventory, item, goal) -- TODO: make it work with complex items. currently it wipes data on for example equipment grids
    local inventory_count = input_inventory.get_item_count(item)

    if inventory_count == goal then
        return true
    elseif inventory_count > goal then
        local inserted_count = output_inventory.insert {name = item, count = inventory_count - goal}
        if inserted_count ~= 0 then input_inventory.remove {name = item, count = inserted_count} end
        input_inventory.sort_and_merge()
        output_inventory.sort_and_merge()
        return inserted_count == inventory_count - goal
    elseif inventory_count < goal then
        local removed_count = output_inventory.remove {name = item, count = goal - inventory_count}
        if removed_count ~= 0 then
            local inserted_count = input_inventory.insert {name = item, count = removed_count}
            local couldnt_fit = removed_count - inserted_count
            if couldnt_fit ~= 0 then
                output_inventory.insert {name = item, count = couldnt_fit}; return false
            end
        end
        input_inventory.sort_and_merge()
        output_inventory.sort_and_merge()
        return removed_count == goal - inventory_count
    end
end

local function transfer_filtered_items_1(input_inventory, output_inventory, item, goal) -- TODO: make it work with complex items. currently it wipes data on for example equipment grids
    local inventory_count = input_inventory.get_item_count(item)

    if inventory_count >= goal then
        return true
    else
        local removed_count = output_inventory.remove {name = item, count = goal - inventory_count}
        local inserted_count = 0
        if removed_count ~= 0 then
            inserted_count = input_inventory.insert {name = item, count = removed_count}
            local couldnt_fit = removed_count - inserted_count
            if couldnt_fit ~= 0 then
                output_inventory.insert {name = item, count = couldnt_fit}
            end
        end
        input_inventory.sort_and_merge()
        output_inventory.sort_and_merge()
        return inventory_count + inserted_count >= goal, inserted_count
    end
end

local function transfer_filtered_items_2(input_inventory, output_inventory, item, goal) -- TODO: make it work with complex items. currently it wipes data on for example equipment grids
    local inventory_count = output_inventory.get_item_count(item)

    if inventory_count <= goal then
        return true
    else
        local removed_count = output_inventory.remove {name = item, count = inventory_count - goal}
        local inserted_count = 0
        if removed_count ~= 0 then
            inserted_count = input_inventory.insert {name = item, count = removed_count}
            local couldnt_fit = removed_count - inserted_count
            if couldnt_fit ~= 0 then
                output_inventory.insert {name = item, count = couldnt_fit}
            end
        end
        input_inventory.sort_and_merge()
        output_inventory.sort_and_merge()
        return inventory_count - inserted_count <= goal, inserted_count
    end
end

local circuit_red, circuit_green = defines.wire_connector_id.circuit_red, defines.wire_connector_id.circuit_green
local function evaluate_signal(entity, signal)
    local result = entity.get_signal(signal, circuit_red, circuit_green)
    if result == 0 and prototypes.item[signal.name] then
        return entity.get_item_count(signal)
    end
    return result
end


function P.wait(caravan_data, schedule, action)
    if not action.timer or action.timer == 1 then
        action.timer = nil
        return true
    end
    action.timer = action.timer - 1
    return false
end

function P.store_food(caravan_data, schedule, action)
    local chest = schedule.entity
    if not chest or not chest.valid then return true end
    local outpost_inventory = get_outpost_inventory(chest)
    if not outpost_inventory then return true end
    local entity = caravan_data.entity
    local fuel = caravan_data.fuel_inventory

    for _, item in pairs(outpost_inventory.get_contents()) do
        if caravan_prototypes[entity.name].favorite_foods[item.name] then
            local inserted_count = fuel.insert(item)
            if inserted_count ~= 0 then
                item.count = inserted_count
                ---@diagnostic disable-next-line: param-type-mismatch
                outpost_inventory.remove(item)
            end
        end
    end

    return action.async or fuel.is_full()
end

function P.store_specific_food(caravan_data, schedule, action)
    local chest = schedule.entity
    if not chest or not chest.valid then return false end
    local outpost_inventory = get_outpost_inventory(chest)
    if not outpost_inventory then return false end
    local fuel_inventory = caravan_data.fuel_inventory
    local item = action.elem_value
    local goal = action.item_count or 0
    if not item then return false end

    if not caravan_prototypes[caravan_data.entity.name].favorite_foods[item] then
        return true
    end

    local result = transfer_filtered_items_1(fuel_inventory, outpost_inventory, item, goal)

    return action.async or result
end

function P.fill_inventory(caravan_data, schedule, action)
    local chest = schedule.entity
    if not chest or not chest.valid then return true end
    local outpost_inventory = get_outpost_inventory(chest)
    if not outpost_inventory then return true end
    local inventory = caravan_data.inventory

    local amount = transfer_all_items(outpost_inventory, inventory)
    local completed = action.async or inventory.is_full()
    if amount and amount > 0 and completed then
        P.eat(caravan_data)
    end
    return completed
end

function P.empty_inventory(caravan_data, schedule, action)
    local chest = schedule.entity
    if not chest or not chest.valid then return true end
    local outpost_inventory = get_outpost_inventory(chest)
    if not outpost_inventory then return true end
    local inventory = caravan_data.inventory

    local amount = transfer_all_items(inventory, outpost_inventory)
    local completed = action.async or inventory.is_empty()
    if amount and amount > 0 and completed then
        P.eat(caravan_data)
    end
    return completed
end

function P.empty_autotrash(caravan_data, schedule, action)
    local character = schedule.entity
    if not character or not character.valid then return true end
    local autotrash_inventory = character.get_inventory(defines.inventory.character_trash)
    if not autotrash_inventory then return true end
    local inventory = caravan_data.inventory

    local amount = transfer_all_items(autotrash_inventory, inventory)
    if amount and amount > 0 then
        P.eat(caravan_data)
    end
    return true
end

function P.load_caravan(caravan_data, schedule, action)
    local chest = schedule.entity
    if not chest or not chest.valid then return false end
    local outpost_inventory = get_outpost_inventory(chest)
    if not outpost_inventory then return false end
    local caravan_inventory = caravan_data.inventory
    local item = action.elem_value
    local goal = action.item_count or 0
    if not item then return false end

    local result, amount = transfer_filtered_items_1(caravan_inventory, outpost_inventory, item, goal)
    local completed = action.async or result
    if amount and amount > 0 and completed then
        P.eat(caravan_data)
    end

    return completed
end

function P.unload_caravan(caravan_data, schedule, action)
    local chest = schedule.entity
    if not chest or not chest.valid then return false end
    local outpost_inventory = get_outpost_inventory(chest)
    if not outpost_inventory then return false end
    local caravan_inventory = caravan_data.inventory
    local item = action.elem_value
    local goal = action.item_count or 0
    if not item then return false end

    local result, amount = transfer_filtered_items_2(outpost_inventory, caravan_inventory, item, goal)
    local completed = action.async or result
    if amount and amount > 0 and completed then
        P.eat(caravan_data)
    end

    return completed
end

function P.load_target(caravan_data, schedule, action)
    local chest = schedule.entity
    if not chest.valid then return false end
    local outpost_inventory = get_outpost_inventory(chest)
    if not outpost_inventory then return false end
    local caravan_inventory = caravan_data.inventory
    local item = action.elem_value
    local goal = action.item_count or 0
    if not item then return false end

    local result, amount = transfer_filtered_items_2(caravan_inventory, outpost_inventory, item, goal)
    local completed = action.async or result
    if amount and amount > 0 and completed then
        P.eat(caravan_data)
    end

    return completed
end

function P.unload_target(caravan_data, schedule, action)
    local chest = schedule.entity
    if not chest.valid then return false end
    local outpost_inventory = get_outpost_inventory(chest)
    if not outpost_inventory then return false end
    local caravan_inventory = caravan_data.inventory
    local item = action.elem_value
    local goal = action.item_count or 0
    if not item then return false end

    local result, amount = transfer_filtered_items_1(outpost_inventory, caravan_inventory, item, goal)
    local completed = action.async or result
    if amount and amount > 0 and completed then
        P.eat(caravan_data)
    end

    return completed
end

function P.detonate(caravan_data, schedule, action)
    local entity = caravan_data.entity
    entity.surface.create_entity {
        name = "atomic-rocket",
        position = entity.position,
        target = entity,
        speed = 1,
        max_range = 0.1
    }
    entity.die("enemy", entity)
    return "nuke"
end

function P.circuit_condition(caravan_data, schedule, action)
    local outpost = schedule.entity

    local right = action.circuit_condition_right
    local left = action.circuit_condition_left
    if not right or not left then return false end

    if not outpost or not outpost.valid then
        right, left = 0, 0
    else
        right = evaluate_signal(outpost, right)
        left = evaluate_signal(outpost, left)
    end

    local operator = action.operator or 3
    if operator == 1 then
        return left > right
    elseif operator == 2 then
        return left < right
    elseif operator == 3 then
        return left == right
    elseif operator == 4 then
        return left >= right
    elseif operator == 5 then
        return left <= right
    elseif operator == 6 then
        return left ~= right
    end
end

function P.circuit_condition_static(caravan_data, schedule, action)
    local outpost = schedule.entity

    -- whoops, migration fail. https://github.com/pyanodon/pybugreports/issues/880
    if type(action.circuit_condition_left) == "number" then
        action.circuit_condition_left, action.circuit_condition_right = action.circuit_condition_right, action.circuit_condition_left
    end

    local right = action.circuit_condition_right
    local left = action.item_count
    if not right or not left then return false end

    if not outpost or not outpost.valid then
        left = 0
    else
        left = evaluate_signal(outpost, left)
    end

    local operator = action.operator or 3
    if operator == 1 then
        return left > right
    elseif operator == 2 then
        return left < right
    elseif operator == 3 then
        return left == right
    elseif operator == 4 then
        return left >= right
    elseif operator == 5 then
        return left <= right
    elseif operator == 6 then
        return left ~= right
    end
end

function P.food_count(caravan_data, schedule, action)
    local item = action.elem_value

    local right = action.item_count
    if not right then return false end

    local left = caravan_data.fuel_inventory.get_item_count(item)

    local operator = action.operator or 3
    if operator == 1 then
        return left > right
    elseif operator == 2 then
        return left < right
    elseif operator == 3 then
        return left == right
    elseif operator == 4 then
        return left >= right
    elseif operator == 5 then
        return left <= right
    elseif operator == 6 then
        return left ~= right
    end
end

function P.caravan_item_count(caravan_data, schedule, action)
    local item = action.elem_value

    local right = action.item_count
    if not right then return false end

    local left = caravan_data.inventory.get_item_count(item)

    local operator = action.operator or 3
    if operator == 1 then
        return left > right
    elseif operator == 2 then
        return left < right
    elseif operator == 3 then
        return left == right
    elseif operator == 4 then
        return left >= right
    elseif operator == 5 then
        return left <= right
    elseif operator == 6 then
        return left ~= right
    end
end

function P.target_item_count(caravan_data, schedule, action)
    local outpost = schedule.entity
    if not outpost or not outpost.valid then return false end
    local item = action.elem_value

    local right = action.item_count
    if not right then return false end

    local outpost_inventory = get_outpost_inventory(outpost)
    if not outpost_inventory then return false end
    local left = outpost_inventory.get_item_count(item)

    local operator = action.operator or 3
    if operator == 1 then
        return left > right
    elseif operator == 2 then
        return left < right
    elseif operator == 3 then
        return left == right
    elseif operator == 4 then
        return left >= right
    elseif operator == 5 then
        return left <= right
    elseif operator == 6 then
        return left ~= right
    end
end

function P.is_inventory_full(caravan_data, schedule, action)
    return caravan_data.inventory.is_full()
end

function P.is_inventory_empty(caravan_data, schedule, action)
    return caravan_data.inventory.is_empty()
end

function P.at_outpost(caravan_data, schedule, action)
    return schedule.entity == action.entity
end

function P.not_at_outpost(caravan_data, schedule, action)
    return not P.at_outpost(caravan_data, schedule, action)
end

Caravan.actions = {
    ["time-passed"] = P.wait,
    ["store-food"] = P.store_food,
    ["store-specific-food"] = P.store_specific_food,
    ["fill-inventory"] = P.fill_inventory,
    ["empty-inventory"] = P.empty_inventory,
    ["empty-autotrash"] = P.empty_autotrash,
    ["load-caravan"] = P.load_caravan,
    ["unload-caravan"] = P.unload_caravan,
    ["load-target"] = P.load_target,
    ["unload-target"] = P.unload_target,
    ["detonate"] = P.detonate,
    ["circuit-condition"] = P.circuit_condition,
    ["circuit-condition-static"] = P.circuit_condition_static,
    ["food-count"] = P.food_count,
    ["caravan-item-count"] = P.caravan_item_count,
    ["target-item-count"] = P.target_item_count,
    ["is-inventory-full"] = P.is_inventory_full,
    ["is-inventory-empty"] = P.is_inventory_empty,
    ["at-outpost"] = P.at_outpost,
    ["not-at-outpost"] = P.not_at_outpost,
}

Caravan.free_actions = { -- actions that don't use fuel
    ["time-passed"] = true,
    ["store-food"] = true,
    ["store-specific-food"] = true,
    ["detonate"] = true,
    ["circuit-condition"] = true,
    ["circuit-condition-static"] = true
}

return P
