local mod_data = py.mod_data --[[@as pyModData]]

---@class (partial) pyModData
---@field smart_farm SmartFarmData

---@class SmartFarmData
---@field crops table<data.ResourceEntityName, SmartFarmCropData>

---@class SmartFarmCropData
---@field launch_item data.ItemName item launched
---@field resource data.ResourceEntityName
---@field recipes table<data.RecipeName, number> recipe - yield per tile. decimal values indicate a chance of resource per tile, 1.5 means one garunteed resource and 50% chance of an extra

mod_data.smart_farm = {
    crops = {
        ["arum"] = {
            launch_item = "replicator-cadaveric-arum",
            resource = "arum",
            recipes = {
                ["arum-super-1"] = 1,
                ["arum-super-2"] = 2,
                ["arum-super-3"] = 3,
                ["arum-super-4"] = 4,
                ["arum-super-5"] = 5,
                ["arum-super-6"] = 6,
                ["arum-super-7"] = 7,
                ["arum-super-8"] = 8,
                ["arum-super-9"] = 9,
                ["arum-super-10"] = 10,
            }
        },
        ["ore-bioreserve"] = {
            launch_item = "replicator-bioreserve",
            resource = "ore-bioreserve",
            recipes = {
                ["bioreserve-super-1"] = 1,
                ["bioreserve-super-2"] = 2,
                ["bioreserve-super-3"] = 3,
                ["bioreserve-super-4"] = 4,
                ["bioreserve-super-5"] = 5,
                ["bioreserve-super-6"] = 6,
                ["bioreserve-super-7"] = 7,
                ["bioreserve-super-8"] = 8,
                ["bioreserve-super-9"] = 9,
                ["bioreserve-super-10"] = 10,
            }
        },
        ["grod-flower"] = {
            launch_item = "replicator-grod",
            resource = "grod-flower",
            recipes = {
                ["grod-super-1"] = 1,
                ["grod-super-2"] = 2,
                ["grod-super-3"] = 3,
                ["grod-super-4"] = 4,
                ["grod-super-5"] = 5,
                ["grod-super-6"] = 6,
                ["grod-super-7"] = 7,
                ["grod-super-8"] = 8,
                ["grod-super-9"] = 9,
                ["grod-super-10"] = 10,
            }
        },
        ["kicalk-tree"] = {
            launch_item = "replicator-kicalk",
            resource = "kicalk-tree",
            recipes = {
                ["kicalk-super-1"] = 1,
                ["kicalk-super-2"] = 2,
                ["kicalk-super-3"] = 3,
                ["kicalk-super-4"] = 4,
                ["kicalk-super-5"] = 5,
                ["kicalk-super-6"] = 6,
                ["kicalk-super-7"] = 7,
                ["kicalk-super-8"] = 8,
                ["kicalk-super-9"] = 9,
                ["kicalk-super-10"] = 10,
            }
        },
        ["ralesia-flowers"] = {
            launch_item = "replicator-ralesia",
            resource = "ralesia-flowers",
            recipes = {
                ["ralesia-super-1"] = 1,
                ["ralesia-super-2"] = 2,
                ["ralesia-super-3"] = 3,
                ["ralesia-super-4"] = 4,
                ["ralesia-super-5"] = 5,
                ["ralesia-super-6"] = 6,
                ["ralesia-super-7"] = 7,
                ["ralesia-super-8"] = 8,
                ["ralesia-super-9"] = 9,
                ["ralesia-super-10"] = 10,
            }
        },
        ["rennea-flowers"] = {
            launch_item = "replicator-rennea",
            resource = "rennea-flowers",
            recipes = {
                ["rennea-super-1"] = 1,
                ["rennea-super-2"] = 2,
                ["rennea-super-3"] = 3,
                ["rennea-super-4"] = 4,
                ["rennea-super-5"] = 5,
                ["rennea-super-6"] = 6,
                ["rennea-super-7"] = 7,
                ["rennea-super-8"] = 8,
                ["rennea-super-9"] = 9,
                ["rennea-super-10"] = 10,
            }
        },
        ["tuuphra-tuber"] = {
            launch_item = "replicator-tuuphra",
            resource = "tuuphra-tuber",
            recipes = {
                ["tuuphra-super-1"] = 1,
                ["tuuphra-super-2"] = 2,
                ["tuuphra-super-3"] = 3,
                ["tuuphra-super-4"] = 4,
                ["tuuphra-super-5"] = 5,
                ["tuuphra-super-6"] = 6,
                ["tuuphra-super-7"] = 7,
                ["tuuphra-super-8"] = 8,
                ["tuuphra-super-9"] = 9,
                ["tuuphra-super-10"] = 10,
            }
        },
        ["yotoi-tree-fruit"] = {
            launch_item = "replicator-yotoi-fruit",
            resource = "yotoi-tree-fruit",
            recipes = {
                ["yotoi-fruit-super-1"] = 1,
                ["yotoi-fruit-super-2"] = 2,
                ["yotoi-fruit-super-3"] = 3,
                ["yotoi-fruit-super-4"] = 4,
                ["yotoi-fruit-super-5"] = 5,
                ["yotoi-fruit-super-6"] = 6,
                ["yotoi-fruit-super-7"] = 7,
                ["yotoi-fruit-super-8"] = 8,
                ["yotoi-fruit-super-9"] = 9,
                ["yotoi-fruit-super-10"] = 10,
            }
        },
        ["yotoi-tree"] = {
            launch_item = "replicator-yotoi",
            resource = "yotoi-tree",
            recipes = {
                ["yotoi-super-1"] = 1,
                ["yotoi-super-2"] = 2,
                ["yotoi-super-3"] = 3,
                ["yotoi-super-4"] = 4,
                ["yotoi-super-5"] = 5,
                ["yotoi-super-6"] = 6,
                ["yotoi-super-7"] = 7,
                ["yotoi-super-8"] = 8,
                ["yotoi-super-9"] = 9,
                ["yotoi-super-10"] = 10,
            }
        }
    }
}

if helpers.stage == "prototype" then
    py.yafc_integrations.pyalienlife_smartfarm = function()
        py.log.debug("Fix Automated smartfarm")
        -- Add the replicator as proper ingredient
        -- Smartfarm recipe produces fluid that is used for mining

        -- Create copy of bioreserve for farming
        local bioreserve_copy = table.deepcopy(data.raw["resource"]["ore-bioreserve"])
        bioreserve_copy.name = "ore-bioreserve-farming"
        bioreserve_copy.localised_name = {"entity-name.ore-bioreserve"}
        data:extend {bioreserve_copy}

        if mod_data.smart_farm.crops["ore-bioreserve"] then
            mod_data.smart_farm.crops["ore-bioreserve-farming"] = mod_data.smart_farm.crops["ore-bioreserve"]
            mod_data.smart_farm.crops["ore-bioreserve"] = nil
            mod_data.smart_farm.crops["ore-bioreserve-farming"].resource = "ore-bioreserve-farming"
        end

        for _, cropdata in pairs(mod_data.smart_farm.crops) do
            local fluid_name = cropdata.resource .. "-farming-fluid"
            local resource = data.raw["resource"][cropdata.resource]
            FLUID {
                type = "fluid",
                name = fluid_name,
                localised_name = {"", "Smart farming with ", {"item-name." .. cropdata.launch_item}},
                icon = resource.icon,
                icon_size = resource.icon_size,
                default_temperature = 15,
                base_color = {1, 1, 1},
                flow_color = {1, 1, 1}
            }
            resource.minable.required_fluid = fluid_name
            resource.minable.fluid_amount = 10
            resource.autoplace = {control = "trees", probability_expression = ""}

            for recipe_name, yield in pairs(cropdata.recipes) do
                local recipe = RECIPE(recipe_name)
                RECIPE(recipe):add_ingredient {name = cropdata.launch_item, amount = 1, type = "item"} --[[@as data.IngredientPrototype]]
                recipe.results[1] = {type = "fluid", name = fluid_name, amount = math.floor(yield * 529)}
            end
        end

        -- Collector and harvester need a fluid box - an empty table is enough for YAFC
        data.raw["mining-drill"]["harvester"].input_fluid_box = {volume = 1, pipe_connections = {}}
        data.raw["mining-drill"]["flora-collector-mk01"].input_fluid_box = {volume = 1, pipe_connections = {}}
        data.raw["mining-drill"]["flora-collector-mk02"].input_fluid_box = {volume = 1, pipe_connections = {}}
        data.raw["mining-drill"]["flora-collector-mk03"].input_fluid_box = {volume = 1, pipe_connections = {}}
        data.raw["mining-drill"]["flora-collector-mk04"].input_fluid_box = {volume = 1, pipe_connections = {}}

        -- No rocket launches in farm, make it a normal assembling machine
        data.raw["rocket-silo"]["mega-farm"].type = "assembling-machine"
        data.raw["assembling-machine"]["mega-farm"] = data.raw["rocket-silo"]["mega-farm"]
        data.raw["rocket-silo"]["mega-farm"] = nil
    end
end
