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
        message = {"?", {"caravan-warnings.destination-destroyed"}, {"virtual-signal-name.destination_destroyed"}, {"gui-alert-tooltip.train-no-path"}}
    },
}

Caravan.all_actions = {
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
        ["outpost-fluid"] = table.invert{
            "time-passed",
            "fill-tank",
            "empty-tank",
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
        }
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
        }
    },
    fluidavan = {
        ["outpost"] = table.invert{
            "time-passed",
            "store-food",
            "store-specific-food",
            "circuit-condition",
            "circuit-condition-static"
        },
        ["outpost-fluid"] = table.invert{
            "time-passed",
            "fill-tank",
            "empty-tank",
            "circuit-condition",
            "circuit-condition-static"
        },
        ["electric-pole"] = table.invert{
            "time-passed",
            "circuit-condition",
            "circuit-condition-static"
        },
        ["default"] = table.invert{
            "time-passed"
        }
    },
    ["interrupt-condition"] = {
        "is-inventory-full",
        "is-inventory-empty",
        "caravan-item-count",
        "target-item-count",
        "is-tank-full",
        "is-tank-empty",
        "caravan-fluid-count",
        "target-fluid-count",
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
    fluidavan = {
        opens_player_inventory = true,
        max_volume = prototypes.entity["py-tank-4000"].fluid_capacity,
        fuel_size = 2,
        destructible = false,
        outpost = "outpost-fluid",
        favorite_foods = Caravan.foods.caravan,
        actions = Caravan.valid_actions.fluidavan,
        camera_zoom = 0.8,
        placeable_by = "fluidavan",
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

caravan_prototypes["caravan-turd"]   = caravan_prototypes["caravan"]
caravan_prototypes["fluidavan-turd"] = caravan_prototypes["fluidavan"]
caravan_prototypes["flyavan-turd"]   = caravan_prototypes["flyavan"]
caravan_prototypes["nukavan-turd"]   = caravan_prototypes["nukavan"]
caravan_prototypes["caravan-turd"].placeable_by   = "caravan-turd"
caravan_prototypes["fluidavan-turd"].placeable_by = "fluidavan-turd"
caravan_prototypes["flyavan-turd"].placeable_by   = "flyavan-turd"
caravan_prototypes["nukavan-turd"].placeable_by   = "nukavan-turd"

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

return caravan_prototypes
