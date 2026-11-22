if data and not yafc_turd_integration then
    local biomass = {"nacl-biomass", "s-biomass", "ni-biomass", "ti-biomass"}
    for i, recipe in pairs {
        RECIPE("bhoddos-1"):copy(),
        RECIPE("bhoddos-2"):copy(),
        RECIPE("bhoddos-3"):copy(),
        RECIPE("bhoddos-4"):copy(),
    } do
        recipe.name = recipe.name .. "-meltdown"
        recipe.energy_required = math.ceil(recipe.energy_required * 0.3333)
        recipe:remove_ingredient("fungal-substrate")
        recipe:remove_ingredient("fungal-substrate-02")
        recipe:remove_ingredient("fungal-substrate-03")
        recipe:remove_ingredient("biomass")
        recipe:remove_ingredient("moss")
        recipe:remove_ingredient("manure")
        recipe:remove_ingredient("bacteria-1-barrel")
        recipe:remove_result("barrel")
        data:extend {recipe}
    end

    for i, recipe in pairs {
        RECIPE("bhoddos-1"):copy(),
        RECIPE("bhoddos-2"):copy(),
        RECIPE("bhoddos-3"):copy(),
        RECIPE("bhoddos-4"):copy(),
    } do
        recipe.name = recipe.name .. "-exoenzymes"
        recipe:add_ingredient {type = "item", name = "soil", amount = i}
        recipe:add_result {type = "item", name = "plutonium-oxide", amount = i}
        recipe.main_product = "plutonium-oxide"
        data:extend {recipe}
    end

    for i, spore in pairs {
        RECIPE("bhoddos-spore"):copy(),
    } do
        spore.name = spore.name .. "-upgraded"
        spore.main_product = "bhoddos-spore"
        spore.ingredients = {
            {type = "item", name = "rich-dust", amount = 1}
        }
        spore:multiply_result_amount("bhoddos-spore", 10)
        data:extend {spore}
    end

    local sporopollenin = RECIPE("sporopollenin"):copy()
    sporopollenin.name = "sporopollenin-gills"
    sporopollenin:remove_ingredient("navens-spore")
    sporopollenin:remove_ingredient("rennea")
    data:extend {sporopollenin}

    local biomass_sporopollenin = RECIPE("biomass-sporopollenin"):copy()
    biomass_sporopollenin.name = biomass_sporopollenin.name .. "-nerfed"
    biomass_sporopollenin:multiply_ingredient_amount("sporopollenin", 3)
    biomass_sporopollenin.results = {
        {type = "item", name = "fungal-substrate", amount = 2}
    }
    biomass_sporopollenin.icons = nil
    biomass_sporopollenin.icon = nil
    biomass_sporopollenin.icon_size = nil
    data:extend {biomass_sporopollenin}
    table.insert(
        data.raw.technology["microfilters-mk02"].effects,
        {
            type = "change-recipe-productivity",
            recipe = "bhoddos-spore-upgraded",
            change = 1,
            hidden = true,
        }
    )
end

return {
    affected_entities = { -- the entities that should be effected by this tech upgrade
        "bhoddos-culture-mk01",
        "bhoddos-culture-mk02",
        "bhoddos-culture-mk03",
        "bhoddos-culture-mk04",
    },
    master_tech = { -- tech that is shown in the tech tree
        name = "bhoddos-upgrade",
        icon = "__pyalienlifegraphics3__/graphics/technology/updates/u-bhoddos.png",
        icon_size = 128,
        order = "c-a",
        prerequisites = {"bhoddos-mk02", "phytomining", "efficiency-module-2"},
        unit = {
            count = 500,
            ingredients = {
                {"automation-science-pack", 1},
                {"logistic-science-pack",   1},
                {"py-science-pack-2",       1},
                {"chemical-science-pack",   1},
                {"py-science-pack-3",       1},
            },
            time = 45
        }
    },
    sub_techs = {
        {
            name = "extra-drones",
            icon = "__pyalienlifegraphics3__/graphics/technology/extra-drones.png",
            icon_size = 128,
            order = "c-a",
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'recipe-replacement', 'machine-replacement'
                {old = "bhoddos-1", new = "bhoddos-1-meltdown", type = "recipe-replacement"},
                {old = "bhoddos-2", new = "bhoddos-2-meltdown", type = "recipe-replacement"},
                {old = "bhoddos-3", new = "bhoddos-3-meltdown", type = "recipe-replacement"},
                {old = "bhoddos-4", new = "bhoddos-4-meltdown", type = "recipe-replacement"},
            },
        },
        {
            name = "exoenzymes",
            icon = "__pyalienlifegraphics3__/graphics/technology/exoenzymes.png",
            icon_size = 128,
            order = "c-a",
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'recipe-replacement', 'machine-replacement'
                {type = "module-effects", consumption = 0.3},
                {old = "bhoddos-1",       new = "bhoddos-1-exoenzymes", type = "recipe-replacement"},
                {old = "bhoddos-2",       new = "bhoddos-2-exoenzymes", type = "recipe-replacement"},
                {old = "bhoddos-3",       new = "bhoddos-3-exoenzymes", type = "recipe-replacement"},
                {old = "bhoddos-4",       new = "bhoddos-4-exoenzymes", type = "recipe-replacement"},
            }
        },
        {
            name = "gills",
            icon = "__pyalienlifegraphics3__/graphics/technology/gills.png",
            icon_size = 128,
            order = "c-a",
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'recipe-replacement', 'machine-replacement'
                {old = "bhoddos-spore",       new = "bhoddos-spore-upgraded", type = "recipe-replacement"},
                {type = "recipe-replacement", old = "sporopollenin",          new = "sporopollenin-gills"},
                {type = "recipe-replacement", old = "biomass-sporopollenin",  new = "biomass-sporopollenin-nerfed"}
            }
        }
    },
    module_category = "bhoddos"
}
