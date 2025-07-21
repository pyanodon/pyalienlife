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

---Reduces the fuel bar of the caravan by 1. If the fuel bar is empty, it will instead attempt to eat fuel from the fuel inventory.
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

return P
