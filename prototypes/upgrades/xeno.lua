if data and not yafc_turd_integration then
    for i, recipe in pairs {
        RECIPE("caged-xeno-1"):copy(),
        RECIPE("caged-xeno-2"):copy(),
        RECIPE("caged-xeno-3"):copy(),
        RECIPE("caged-xeno-4"):copy(),
    } do
        recipe.energy_required = math.ceil(recipe.energy_required / 2)
        recipe.name = recipe.name .. "-dna-polymerase"
        if i == 1 or i == 3 then
            recipe:add_result {name = "dna-polymerase", amount = i * 20, type = "item"}
        else
            recipe:add_result {name = "chimeric-proteins", amount = i * 20, type = "item"}
        end
        data:extend {recipe}
    end

    data:extend {{
        type = "recipe",
        name = "xeno-rc-breeding",
        enabled = false,
        energy_required = 150,
        category = "rc",
        main_product = "caged-xeno",
        ingredients = {
            {type = "item", name = "water-barrel",   amount = 6},
            {type = "item", name = "bones",          amount = 8},
            {type = "item", name = "guts",           amount = 7},
            {type = "item", name = "caged-dingrits", amount = 1},
            {type = "item", name = "bedding",        amount = 3},
        },
        results = {
            {type = "item", name = "caged-xeno", amount = 1},
            {type = "item", name = "xeno-egg",   amount = 6},
            {type = "item", name = "barrel",     amount = 6},
            {type = "item", name = "pelt",       amount = 10},
        },
        allowed_module_categories = {"xeno"},
    }}

    for _, recipe in pairs {
        RECIPE("xeno-egg-1"):copy(),
        RECIPE("xeno-egg-2"):copy(),
        RECIPE("xeno-egg-3"):copy(),
        RECIPE("xeno-egg-4"):copy(),
    } do
        recipe.name = recipe.name .. "-cheap"
        recipe:remove_ingredient("bones")
        recipe:remove_ingredient("fish")
        recipe:add_ingredient {type = "item", name = "hydrofluoric-acid-barrel", amount = 5}
        recipe:add_result_amount("barrel", 5)
        recipe:multiply_result_amount("xeno-egg", 10)
        data:extend {recipe}
    end
end

return {
    affected_entities = { -- the entities that should be effected by this tech upgrade
        "xenopen-mk01",
        "xenopen-mk02",
        "xenopen-mk03",
        "xenopen-mk04",
    },
    master_tech = { -- tech that is shown in the tech tree
        name = "xeno-upgrade",
        icon = "__pyalienlifegraphics3__/graphics/technology/updates/u-xeno.png",
        icon_size = 128,
        order = "c-a",
        prerequisites = {"xeno-mk03"},
        unit = {
            count = 500,
            ingredients = {
                {"automation-science-pack", 1},
                {"logistic-science-pack",   1},
                {"military-science-pack",   1},
                {"chemical-science-pack",   1},
                {"production-science-pack", 1},
                {"py-science-pack-4",       1},
            },
            time = 45
        }
    },
    sub_techs = {
        {
            name = "ap",
            icon = "__pyalienlifegraphics3__/graphics/technology/ap.png",
            icon_size = 128,
            order = "c-a",
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'recipe-replacement', 'machine-replacement'
                {old = "caged-xeno-1", new = "caged-xeno-1-dna-polymerase", type = "recipe-replacement"},
                {old = "caged-xeno-2", new = "caged-xeno-2-dna-polymerase", type = "recipe-replacement"},
                {old = "caged-xeno-3", new = "caged-xeno-3-dna-polymerase", type = "recipe-replacement"},
                {old = "caged-xeno-4", new = "caged-xeno-4-dna-polymerase", type = "recipe-replacement"},
            },
        },
        {
            name = "herm",
            icon = "__pyalienlifegraphics3__/graphics/technology/herm.png",
            icon_size = 128,
            order = "c-a",
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'recipe-replacement', 'machine-replacement'
                {consumption = 2,             speed = 1,                productivity = 1,           type = "module-effects"},
                {recipe = "xeno-rc-breeding", type = "unlock-recipe"},
                {old = "xeno-egg-1",          new = "xeno-egg-1-cheap", type = "recipe-replacement"},
                {old = "xeno-egg-2",          new = "xeno-egg-2-cheap", type = "recipe-replacement"},
                {old = "xeno-egg-3",          new = "xeno-egg-3-cheap", type = "recipe-replacement"},
                {old = "xeno-egg-4",          new = "xeno-egg-4-cheap", type = "recipe-replacement"},
            }
        },
        {
            name = "hive",
            icon = "__pyalienlifegraphics3__/graphics/technology/hive.png",
            icon_size = 128,
            order = "c-a",
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'recipe-replacement', 'machine-replacement'
                {consumption = 6.66, productivity = 6.66, speed = -0.95, type = "module-effects"},
            }
        }
    },
    module_category = "xeno"
}
