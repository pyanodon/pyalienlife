require "util"

---@enum CaravanActionListType
Caravan.action_list_types = {
    standard_schedule = 1,
    interrupt_schedule = 2,
    interrupt_condition = 3,
    interrupt_targets = 4,
}

---@enum CaravanAlert
Caravan.alerts = {
    no_fuel = {
        signal = {
            type = "virtual",
            name = "py-no-food"
        },
        message = {"?", {"caravan-warnings.no-food"}, {"virtual-signal-name.no-food"}, {"virtual-signal-name.no-fuel"}}
    },
    destination_destroyed = {
        signal = {
            type = "virtual",
            name = "py-destination-destroyed"
        },
        message = {"?", {"caravan-warnings.destination_destroyed"}, {"virtual-signal-name.destination_destroyed"}, {"gui-alert-tooltip.train-no-path"}}
    },
}

Caravan.valid_actions = {
    caravan = {
        ["outpost"] = table.invert {
            "time-passed",
            "store-food",
            "store-specific-food",
            "fill-inventory",
            "empty-inventory",
            "load-caravan",
            "unload-caravan",
            "load-target",
            "unload-target",
            "circuit-condition",
            "circuit-condition-static"
        },
        ["character"] = table.invert {
            "time-passed",
            "store-food",
            "store-specific-food",
            "fill-inventory",
            "empty-inventory",
            "load-caravan",
            "unload-caravan",
            "load-target",
            "unload-target",
            "empty-autotrash"
        },
        ["unit"] = table.invert {
            "time-passed",
            "store-food",
            "store-specific-food",
            "fill-inventory",
            "empty-inventory",
            "load-caravan",
            "unload-caravan",
            "load-target",
            "unload-target",
        },
        ["cargo-wagon"] = table.invert {
            "time-passed",
            "fill-inventory",
            "empty-inventory",
            "load-caravan",
            "unload-caravan",
            "load-target",
            "unload-target",
        },
        ["car"] = table.invert {
            "time-passed",
            "fill-inventory",
            "empty-inventory",
            "load-caravan",
            "unload-caravan",
            "load-target",
            "unload-target",
        },
        ["spider-vehicle"] = table.invert {
            "time-passed",
            "fill-inventory",
            "empty-inventory",
            "load-caravan",
            "unload-caravan",
            "load-target",
            "unload-target",
        },
        ["electric-pole"] = table.invert {
            "time-passed",
            "circuit-condition",
            "circuit-condition-static"
        },
        ["default"] = table.invert {
            "time-passed"
        },
    },
    ["interrupt-condition"] = {
        "is-inventory-full",
        "is-inventory-empty",
        "caravan-item-count",
        "target-item-count",
        "food-count",
        "circuit-condition",
        "circuit-condition-static",
        "at-outpost",
        "not-at-outpost",
    }
}
Caravan.valid_actions.nukavan = table.deepcopy(Caravan.valid_actions.caravan)
Caravan.valid_actions.nukavan["default"] = table.invert {"detonate"}

Caravan.foods = {
    all = {
        "dried-meat",
        "brain",
        "auog-food-01",
        "workers-food",
        "workers-food-02",
        "workers-food-03",
        "gastrocapacitor",
    },
    caravan = {
        ["dried-meat"] = 1,
        ["brain"] = 2,
        ["auog-food-01"] = 4,
        ["workers-food"] = 10,
        ["workers-food-02"] = 30,
        ["workers-food-03"] = 50
    },
    flyavan = {
        ["workers-food"] = 5,
        ["gastrocapacitor"] = 50
    },
}

local caravan_prototypes = {
    caravan = {
        inventory_size = 30,
        opens_player_inventory = true,
        fuel_size = 2,
        destructible = false,
        outpost = "outpost",
        favorite_foods = Caravan.foods.caravan,
        actions = Caravan.valid_actions.caravan,
        camera_zoom = 0.8,
        placeable_by = "caravan",
        map_tag = {
            type = "virtual",
            name = "caravan-map-tag-mk01"
        },
        requeue_required = true,
        pathfinder_flags = {
            cache = false
        }
    },
    flyavan = {
        inventory_size = 90,
        opens_player_inventory = true,
        fuel_size = 4,
        destructible = false,
        outpost = "outpost-aerial",
        favorite_foods = Caravan.foods.flyavan,
        actions = Caravan.valid_actions.caravan,
        camera_zoom = 0.5,
        placeable_by = "flyavan",
        map_tag = {
            type = "virtual",
            name = "caravan-map-tag-mk02"
        },
        requeue_required = true,
        pathfinder_flags = {
            allow_destroy_friendly_entities = true,
            allow_paths_through_own_entities = true
        }
    },
    nukavan = {
        inventory_size = 10,
        opens_player_inventory = true,
        fuel_size = 2,
        outpost = "outpost",
        favorite_foods = {
            ["brain"] = 2,
            ["auog-food-01"] = 4,
            ["workers-food"] = 10,
            ["workers-food-02"] = 30,
            ["workers-food-03"] = 50
        },
        actions = Caravan.valid_actions.nukavan,
        placeable_by = "nukavan",
        map_tag = {
            type = "virtual",
            name = "caravan-map-tag-mk03"
        },
        pathfinder_flags = {
            cache = false
        }
    }
}

caravan_prototypes["caravan-turd"] = caravan_prototypes["caravan"]
caravan_prototypes["flyavan-turd"] = caravan_prototypes["flyavan"]
caravan_prototypes["nukavan-turd"] = caravan_prototypes["nukavan"]
caravan_prototypes["caravan-turd"].placeable_by = "caravan-turd"
caravan_prototypes["flyavan-turd"].placeable_by = "flyavan-turd"
caravan_prototypes["nukavan-turd"].placeable_by = "nukavan-turd"

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

-- small migration script to ensure we are not transfering deleted items
-- I have no access to the JSON migrations so invalid items are just deleted
-- TODO: Use JSON migrations after they are added to base factorio under prototypes
py.on_event(py.events.on_init(), function()
    for _, caravan_data in pairs(storage.caravans or {}) do
        for _, schedule in pairs(caravan_data.schedule or {}) do
            for _, action in pairs(schedule.actions or {}) do
                local item = action.elem_value
                if item and not prototypes.item[item] then
                    local position
                    if caravan_data.entity.valid then
                        position = caravan_data.entity.position
                        position = "[gps=" .. position.x .. ", " .. position.y .. "]"
                    else
                        position = "UNKNOWN POSITION"
                    end

                    action.elem_value = nil
                    game.print('CARAVAN MIGRATION: "' .. item .. '" is not a valid item prototype. You will need to manually fix a caravan @ ' .. position)
                end
            end
        end
    end
end)

Caravan.actions = {
    ["time-passed"] = function(caravan_data, schedule, action)
        if not action.timer or action.timer == 1 then
            action.timer = nil
            return true
        end
        action.timer = action.timer - 1
        return false
    end,

    ["store-food"] = function(caravan_data, schedule, action)
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
    end,

    ["store-specific-food"] = function(caravan_data, schedule, action)
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
    end,

    ["fill-inventory"] = function(caravan_data, schedule, action)
        local chest = schedule.entity
        if not chest or not chest.valid then return true end
        local outpost_inventory = get_outpost_inventory(chest)
        if not outpost_inventory then return true end
        local inventory = caravan_data.inventory

        local amount = transfer_all_items(outpost_inventory, inventory)
        local completed = action.async or inventory.is_full()
        if amount and amount > 0 and completed then
            Caravan.eat(caravan_data)
        end
        return completed
    end,

    ["empty-inventory"] = function(caravan_data, schedule, action)
        local chest = schedule.entity
        if not chest or not chest.valid then return true end
        local outpost_inventory = get_outpost_inventory(chest)
        if not outpost_inventory then return true end
        local inventory = caravan_data.inventory

        local amount = transfer_all_items(inventory, outpost_inventory)
        local completed = action.async or inventory.is_empty()
        if amount and amount > 0 and completed then
            Caravan.eat(caravan_data)
        end
        return completed
    end,

    ["empty-autotrash"] = function(caravan_data, schedule, action)
        local character = schedule.entity
        if not character or not character.valid then return true end
        local autotrash_inventory = character.get_inventory(defines.inventory.character_trash)
        if not autotrash_inventory then return true end
        local inventory = caravan_data.inventory

        local amount = transfer_all_items(autotrash_inventory, inventory)
        if amount and amount > 0 then
            Caravan.eat(caravan_data)
        end
        return true
    end,

    ["load-caravan"] = function(caravan_data, schedule, action)
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
            Caravan.eat(caravan_data)
        end

        return completed
    end,

    ["unload-caravan"] = function(caravan_data, schedule, action)
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
            Caravan.eat(caravan_data)
        end

        return completed
    end,

    ["load-target"] = function(caravan_data, schedule, action)
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
            Caravan.eat(caravan_data)
        end

        return completed
    end,

    ["unload-target"] = function(caravan_data, schedule, action)
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
            Caravan.eat(caravan_data)
        end

        return completed
    end,

    ["detonate"] = function(caravan_data, schedule, action)
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
    end,

    ["circuit-condition"] = function(caravan_data, schedule, action)
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
    end,

    ["circuit-condition-static"] = function(caravan_data, schedule, action)
        local outpost = schedule.entity

        -- whoops, migration fail. https://github.com/pyanodon/pybugreports/issues/880
        if type(action.circuit_condition_left) == "number" then
            action.circuit_condition_left, action.circuit_condition_right = action.circuit_condition_right, action.circuit_condition_left
        end

        local right = action.circuit_condition_right
        local left = action.circuit_condition_left
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
    end,

    ["food-count"] = function(caravan_data, schedule, action)
        local item = action.elem_value

        local right = action.circuit_condition_right
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
    end,

    ["caravan-item-count"] = function(caravan_data, schedule, action)
        local item = action.elem_value

        local right = action.circuit_condition_right
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
    end,

    ["target-item-count"] = function(caravan_data, schedule, action)
        local outpost = schedule.entity
        if not outpost or not outpost.valid then return false end
        local item = action.elem_value

        local right = action.circuit_condition_right
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
    end,

    ["is-inventory-full"] = function(caravan_data, schedule, action)
        return caravan_data.inventory.is_full()
    end,

    ["is-inventory-empty"] = function(caravan_data, schedule, action)
        return caravan_data.inventory.is_empty()
    end,

    ["at-outpost"] = function(caravan_data, schedule, action)
        return schedule.entity == action.entity
    end,

    ["not-at-outpost"] = function(caravan_data, schedule, action)
        return schedule.entity ~= action.entity
    end,
}

Caravan.free_actions = { -- actions that don't use fuel
    ["time-passed"] = true,
    ["store-food"] = true,
    ["store-specific-food"] = true,
    ["detonate"] = true,
    ["circuit-condition"] = true,
    ["circuit-condition-static"] = true
}

return caravan_prototypes
