
-- TODO: smart-farm mod-data

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

        local function use_bioreserve_copy(farm)
            farm.crop = "ore-bioreserve-farming"
            return farm
        end

        -- List of all available smartfarming
        local farms = {
            require "__pyalienlife__/scripts/smart-farm/farm-ralesia",
            require "__pyalienlife__/scripts/smart-farm/farm-rennea",
            require "__pyalienlife__/scripts/smart-farm/farm-tuuphra",
            require "__pyalienlife__/scripts/smart-farm/farm-grod",
            require "__pyalienlife__/scripts/smart-farm/farm-yotoi",
            require "__pyalienlife__/scripts/smart-farm/farm-kicalk",
            require "__pyalienlife__/scripts/smart-farm/farm-arum",
            require "__pyalienlife__/scripts/smart-farm/farm-yotoi-fruit",
            use_bioreserve_copy(require "__pyalienlife__/scripts/smart-farm/farm-bioreserve")
        }

        if mods["pyalternativeenergy"] then
            farms[#farms + 1] = require "__pyalternativeenergy__/scripts/crops/farm-mova"
        end

        for _, farm in ipairs(farms) do
            local fluid_name = farm.crop .. "-farming-fluid"
            local resource = data.raw["resource"][farm.crop]
            local fluid = FLUID {
                type = "fluid",
                name = fluid_name,
                localised_name = {"", "Smart farming with ", {"item-name." .. farm.name}},
                icon = resource.icon,
                icon_size = resource.icon_size,
                default_temperature = 15,
                base_color = {1, 1, 1},
                flow_color = {1, 1, 1}
            }
            resource.minable.required_fluid = fluid_name
            resource.minable.fluid_amount = 10
            resource.autoplace = {control = "trees"}

            for _, recipe_data in ipairs(farm.recipes) do
                local recipe = RECIPE(recipe_data.recipe_name)
                RECIPE(recipe):add_ingredient {name = farm.name, amount = 1, type = "item"}
                recipe.results[1] = {type = "fluid", name = fluid_name, amount = math.floor(recipe_data.crop_output) * 529}
            end
        end

        -- Collector and harvester need a fluid box - an empty table is enough for YAFC
        data.raw["mining-drill"]["harvester"].input_fluid_box = {}
        data.raw["mining-drill"]["flora-collector-mk01"].input_fluid_box = {}
        data.raw["mining-drill"]["flora-collector-mk02"].input_fluid_box = {}
        data.raw["mining-drill"]["flora-collector-mk03"].input_fluid_box = {}
        data.raw["mining-drill"]["flora-collector-mk04"].input_fluid_box = {}

        -- No rocket launches in farm, make it a normal assembling machine
        data.raw["rocket-silo"]["mega-farm"].type = "assembling-machine"
        data.raw["assembling-machine"]["mega-farm"] = data.raw["rocket-silo"]["mega-farm"]
        data.raw["rocket-silo"]["mega-farm"] = nil
    end
end
