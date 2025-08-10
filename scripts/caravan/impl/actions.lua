local caravan_prototypes = require "__pyalienlife__/scripts/caravan/caravan-prototypes"

local ImplControl = require "control"

local P = {}

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

local target_offset = {0, -0.3}
function P.render_altmode_icon(caravan_data)
    caravan_data.alt_mode_light = rendering.draw_sprite {
        sprite = "utility/entity_info_dark_background",
        target = caravan_data.entity,
        target_offset = target_offset,
        surface = caravan_data.entity.surface,
        only_in_alt_mode = true,
        x_scale = 0.9,
        y_scale = 0.9
    }.id
    caravan_data.alt_mode = rendering.draw_sprite {
        sprite = "fluid/" .. caravan_data.fluid.name,
        target = caravan_data.entity,
        target_offset = target_offset,
        surface = caravan_data.entity.surface,
        only_in_alt_mode = true,
        x_scale = 1.2,
        y_scale = 1.2
    }.id
end

function P.destroy_altmode_icon(caravan_data)
    if caravan_data.fluid == nil then
        if caravan_data.alt_mode then
            local alt_mode = rendering.get_object_by_id(caravan_data.alt_mode)
            if alt_mode then alt_mode.destroy() end
            caravan_data.alt_mode = nil
        end
        if caravan_data.alt_mode_light then
            local alt_mode_light = rendering.get_object_by_id(caravan_data.alt_mode_light)
            if alt_mode_light then alt_mode_light.destroy() end
            caravan_data.alt_mode_light = nil
        end
    end
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
        ImplControl.eat(caravan_data)
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
        ImplControl.eat(caravan_data)
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
        ImplControl.eat(caravan_data)
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
        ImplControl.eat(caravan_data)
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
        ImplControl.eat(caravan_data)
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
        ImplControl.eat(caravan_data)
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
        ImplControl.eat(caravan_data)
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
    if not schedule then return false end

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
    if not schedule then return false end

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
    if not schedule then return false end

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
    return (caravan_data.inventory and caravan_data.inventory.is_full()) or P.is_tank_full(caravan_data, schedule, action)
end

function P.is_inventory_empty(caravan_data, schedule, action)
    return (caravan_data.inventory == nil or caravan_data.inventory.is_empty()) or P.is_tank_empty(caravan_data, schedule, action)
end

function P.at_outpost(caravan_data, schedule, action)
    -- Trains will first go to the destination, and evaluate whether or not it is at the station AFTER a wait condition is fulfilled.
    return schedule and schedule.entity == action.entity and caravan_data.action_id == #schedule.actions
end

function P.not_at_outpost(caravan_data, schedule, action)
    return not P.at_outpost(caravan_data, schedule, action)
end

function P.fill_tank(caravan_data, schedule, action)
    local storage_tank = schedule.entity
    if not storage_tank or not storage_tank.valid then return true end
    local output = caravan_data.fluid or {amount = 0, temperature = 15, name = ""}
    local input = storage_tank.get_fluid(1)

    local total_output_volume = caravan_prototypes[caravan_data.entity.name].max_volume
    local max_output_volume = total_output_volume - output.amount
    local caravan_was_empty = output.amount == 0

    if max_output_volume == 0 then return true end
    if input == nil then return action.async end

    local amount_to_transfer = storage_tank.remove_fluid({name = input.name, amount = max_output_volume})

    output.temperature = math.floor((output.amount * output.temperature + amount_to_transfer * input.temperature) / (output.amount + amount_to_transfer))
    output.amount = output.amount + amount_to_transfer
    output.name = input.name
    if output.amount == 0 then
        caravan_data.fluid = nil
    else
        caravan_data.fluid = output
    end

    if caravan_data.alt_mode == nil and caravan_data.fluid then
        P.render_altmode_icon(caravan_data)
    end

    local completed = action.async or output.amount >= total_output_volume
    if amount_to_transfer > 0 and completed then
        ImplControl.eat(caravan_data)
    end
    return completed
end

function P.empty_tank(caravan_data, schedule, action)
    local storage_tank = schedule.entity
    if not storage_tank or not storage_tank.valid then return true end
    local input = caravan_data.fluid
    local output = storage_tank.get_fluid(1)

    if input == nil then return true end

    local amount_transfered = storage_tank.insert_fluid(input)

    input.amount = input.amount - amount_transfered
    if input.amount == 0 then
        caravan_data.fluid = nil
    else
        caravan_data.fluid = input
    end

    if caravan_data.alt_mode and caravan_data.fluid == nil then
        P.destroy_altmode_icon(caravan_data)
    end

    local completed = action.async or input.amount == 0
    if amount_transfered > 0 and completed then
        ImplControl.eat(caravan_data)
    end
    return completed
end

function P.is_tank_full(caravan_data, schedule, action)
    return caravan_data.fluid and caravan_data.fluid.amount >= caravan_prototypes[caravan_data.entity.name].max_volume
end

function P.is_tank_empty(caravan_data, schedule, action)
    return caravan_data.fluid == nil
end

function P.caravan_fluid_count(caravan_data, schedule, action)
    local fluid_name = action.elem_value

    if not fluid_name then return false end

    local right = action.item_count or 0

    local left
    if not caravan_data.fluid or caravan_data.fluid.name ~= fluid_name then
        left = 0
    else
        left = caravan_data.fluid.amount
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

function P.target_fluid_count(caravan_data, schedule, action)
    if not schedule then return false end

    local outpost = schedule.entity
    if not outpost or not outpost.valid or outpost.fluids_count == 0 then return false end
    local fluid_name = action.elem_value

    local right = action.item_count or 0
    if not right then return false end

    local left
    local outpost_fluid = outpost.get_fluid(1)
    if not outpost_fluid or outpost_fluid.name ~= fluid_name then
        left = 0
    else
        left = outpost_fluid.amount
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
    ["fill-tank"] = P.fill_tank,
    ["empty-tank"] = P.empty_tank,
    ["caravan-fluid-count"] = P.caravan_fluid_count,
    ["target-fluid-count"] = P.target_fluid_count,
    ["is-tank-full"] = P.is_tank_full,
    ["is-tank-empty"] = P.is_tank_empty,
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
