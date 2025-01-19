if data and not yafc_turd_integration then
    data:extend {
        {
            type = "fuel-category",
            name = "bio-reactor-1"
        },
        {
            type = "fuel-category",
            name = "bio-reactor-2"
        },
        {
            type = "fuel-category",
            name = "bio-reactor-3"
        },
        {
            type = "recipe-category",
            name = "advanced-bio-reactor"
        }
    }
    data.raw.item["xeno-egg"].fuel_value = "1.2MJ"
    data.raw.item["xeno-egg"].fuel_category = "bio-reactor-1"
    data.raw.item["high-flux-core"].fuel_value = "240kJ"
    data.raw.item["high-flux-core"].fuel_category = "bio-reactor-2"
    data.raw.item["strorix-unknown-sample"].fuel_value = "1.2MJ"
    data.raw.item["strorix-unknown-sample"].fuel_category = "bio-reactor-3"

    for j = 1, 3 do
        for i = 1, 4 do
            local name = "bio-reactor-mk0" .. i
            local entity = table.deepcopy(data.raw["assembling-machine"][name])
            entity.name = "advanced-" .. name .. "-turd" .. j
            if i ~= 4 then
                entity.next_upgrade = "advanced-bio-reactor-mk0" .. i + 1 .. "-turd" .. j
            end
            entity.crafting_speed = entity.crafting_speed * 2
            local old_module_slots = entity.module_slots
            entity.module_slots = math.floor(entity.module_slots * 1.7)
            if entity.module_slots == old_module_slots then
                entity.module_slots = entity.module_slots + 1
            end
            entity.crafting_categories = {"advanced-bio-reactor", "bio-reactor"}

            entity.localised_name = {"entity-name." .. name}
            entity.placeable_by = {item = name, count = 1}
            entity.localised_description = entity.localised_description or {"entity-description." .. name}
            table.insert(entity.flags, "not-in-made-in")
            entity.energy_source = {
                type = "burner",
                fuel_categories = {"bio-reactor-" .. j},
                effectivity = 1,
                fuel_inventory_size = 1,
                burnt_inventory_size = 1,
                emissions_per_minute = {
                    pollution = 0.06
                },
            }
            entity.energy_usage = "1kW"
            data:extend {entity}
        end
    end

    data:extend {
        {
            type = "recipe",
            name = "path-1-advanced-recipe",
            ingredients = {
                {type = "item", name = "stone-wall",     amount = 1},
                {type = "item", name = "poison-capsule", amount = 5},
                {type = "item", name = "caged-xeno",     amount = 1},
            },
            results = {
                {type = "fluid", name = "hydrogen-peroxide", amount = 75},
                {type = "fluid", name = "anthraquinone",     amount = 125},
                {type = "item",  name = "cage",              amount = 1,  probability = 0.5},
            },
            main_product = "hydrogen-peroxide",
            enabled = false,
            category = "advanced-bio-reactor",
            energy_required = 10,
        },
        {
            type = "recipe",
            name = "path-2-advanced-recipe",
            ingredients = {
                {type = "item",  name = "fawogae-substrate",  amount = 1},
                {type = "item",  name = "magnetic-beads",     amount = 1},
                {type = "item",  name = "nanozymes",          amount = 1},
                {type = "item",  name = "quartz-tube",        amount = 1},
                {type = "item",  name = "nano-cellulose",     amount = 1},
                {type = "fluid", name = "clean-organic-pulp", amount = 100},
            },
            result = "nems",
            enabled = false,
            category = "advanced-bio-reactor",
            energy_required = 10,
        },
    }

    local path3 = RECIPE("chitosan"):copy()
    path3.name = "path-3-advanced-recipe"
    path3.ingredients[3] = {type = "fluid", name = "blood", amount = 50}
    path3.category = "advanced-bio-reactor"
    data:extend {path3}
end

return {
    affected_entities = { -- the entities that should be effected by this tech upgrade
        "bio-reactor-mk01",
        "bio-reactor-mk02",
        "bio-reactor-mk03",
        "bio-reactor-mk04",
    },
    master_tech = { -- tech that is shown in the tech tree
        name = "bioreactor-upgrade",
        icon = "__pyalienlifegraphics3__/graphics/technology/updates/u-bioreactor.png",
        icon_size = 128,
        order = "c-a",
        prerequisites = {"mass-production", "thermal-mk04"},
        unit = {
            count = 500,
            ingredients = {
                {"automation-science-pack", 1},
                {"py-science-pack-1",       1},
                {"logistic-science-pack",   1},
                {"military-science-pack",   1},
                {"py-science-pack-2",       1},
                {"chemical-science-pack",   1},
                {"py-science-pack-3",       1},
                {"production-science-pack", 1},
                {"py-science-pack-4",       1},
                {"utility-science-pack",    1},
            },
            time = 45
        }
    },
    sub_techs = {
        {
            name = "aerators",
            icon = "__pyalienlifegraphics3__/graphics/technology/aerators.png",
            icon_size = 128,
            order = "c-a",
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'recipe-replacement', 'machine-replacement'
                {type = "machine-replacement", old = "bio-reactor-mk01",         new = "advanced-bio-reactor-mk01-turd1"},
                {type = "machine-replacement", old = "bio-reactor-mk02",         new = "advanced-bio-reactor-mk02-turd1"},
                {type = "machine-replacement", old = "bio-reactor-mk03",         new = "advanced-bio-reactor-mk03-turd1"},
                {type = "machine-replacement", old = "bio-reactor-mk04",         new = "advanced-bio-reactor-mk04-turd1"},
                {type = "unlock-recipe",       recipe = "path-1-advanced-recipe"},
            },
        },
        {
            name = "baffles",
            icon = "__pyalienlifegraphics3__/graphics/technology/baffles.png",
            icon_size = 128,
            order = "c-a",
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'recipe-replacement', 'machine-replacement'
                {type = "machine-replacement", old = "bio-reactor-mk01",         new = "advanced-bio-reactor-mk01-turd2"},
                {type = "machine-replacement", old = "bio-reactor-mk02",         new = "advanced-bio-reactor-mk02-turd2"},
                {type = "machine-replacement", old = "bio-reactor-mk03",         new = "advanced-bio-reactor-mk03-turd2"},
                {type = "machine-replacement", old = "bio-reactor-mk04",         new = "advanced-bio-reactor-mk04-turd2"},
                {type = "unlock-recipe",       recipe = "path-2-advanced-recipe"},
            }
        },
        {
            name = "jacket",
            icon = "__pyalienlifegraphics3__/graphics/technology/jacket.png",
            icon_size = 128,
            order = "c-a",
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'recipe-replacement', 'machine-replacement'
                {type = "machine-replacement", old = "bio-reactor-mk01",         new = "advanced-bio-reactor-mk01-turd3"},
                {type = "machine-replacement", old = "bio-reactor-mk02",         new = "advanced-bio-reactor-mk02-turd3"},
                {type = "machine-replacement", old = "bio-reactor-mk03",         new = "advanced-bio-reactor-mk03-turd3"},
                {type = "machine-replacement", old = "bio-reactor-mk04",         new = "advanced-bio-reactor-mk04-turd3"},
                {type = "unlock-recipe",       recipe = "path-3-advanced-recipe"},
            }
        }
    },
    module_category = "bio-reactor",
}
