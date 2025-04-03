if data and not yafc_turd_integration then
    data:extend {
        {
            type = "module",
            name = "dingrits-alpha",
            stack_size = 50,
            subgroup = "py-alienlife-dingrits",
            category = "dingrits",
            icon = "__pyalienlifegraphics__/graphics/icons/alpha-dingrit.png",
            icon_size = 64,
            tier = 5,
            order = "d-e",
            effect = {pollution = 1, speed = 4, productivity = 0.01},
            fuel_category = "dingrits",
            fuel_value = "1.5GW",
            burnt_result = "dingrits-mk04"
        },
        {
            type = "recipe",
            name = "dingrits-alpha",
            enabled = false,
            energy_required = 36000,
            ingredients = {{"dingrits-mk04", 1}},
            results = {{name = "dingrits-alpha", probability = 0.5, type = "item", amount = 1}},
            allow_productivity = true,
            category = "dingrits"
        }
    }

    local recipe = RECIPE("snarer-heart"):copy()
    recipe.name = "snarer-heart-mutation"
    recipe.results = {
        {type = "item", probability = 0.99,  name = "snarer-heart", amount = 1},
        {type = "item", probability = 0.099, name = "snarer-heart", amount = 1}
    }
    data:extend {recipe}

    recipe = RECIPE("space-suit"):copy()
    recipe:remove_ingredient("science-coating")
    recipe.name = "space-suit-mutation"
    data:extend {recipe}

    recipe = RECIPE("space-dingrit"):copy("space-dingrit-mutation")
    recipe:multiply_ingredient_amount("immunosupressants", 0.5)
    data:extend {recipe}

    for i, recipe in pairs {
        RECIPE("dingrits-1"):copy(),
        RECIPE("dingrits-2"):copy(),
        RECIPE("dingrits-3"):copy(),
        RECIPE("dingrits-4"):copy(),
    } do
        recipe.name = recipe.name .. "-training"
        recipe:add_result {type = "item", amount = 1, probability = 0.8, name = "dingrits-food-01", ignored_by_productivity = 1}
        if i > 2 then recipe:add_result {type = "item", amount = 1, probability = 0.8, name = "dingrits-food-02", ignored_by_productivity = 1} end
        data:extend {recipe}
    end
end

return {
    affected_entities = { -- the entities that should be effected by this tech upgrade
        "dingrits-pack-mk01",
        "dingrits-pack-mk02",
        "dingrits-pack-mk03",
        "dingrits-pack-mk04",
    },
    master_tech = { -- tech that is shown in the tech tree
        name = "dingrits-upgrade",
        icon = "__pyalienlifegraphics3__/graphics/technology/updates/u-dingrits.png",
        icon_size = 128,
        order = "c-a",
        prerequisites = {"dingrits-mk04"},
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
        },
        effects = {{type = "unlock-recipe", recipe = "dingrits-pack-mk04"}}
    },
    sub_techs = {
        {
            name = "alpha",
            icon = "__pyalienlifegraphics3__/graphics/technology/alpha.png",
            icon_size = 128,
            order = "c-a",
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'recipe-replacement', 'machine-replacement'
                {recipe = "dingrits-alpha", type = "unlock-recipe"}
            },
        },
        {
            name = "c-mutation",
            icon = "__pyalienlifegraphics3__/graphics/technology/c-mutation.png",
            icon_size = 128,
            order = "c-a",
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'recipe-replacement', 'machine-replacement'
                {old = "snarer-heart",  new = "snarer-heart-mutation",  type = "recipe-replacement"},
                {old = "space-suit",    new = "space-suit-mutation",    type = "recipe-replacement"},
                {old = "space-dingrit", new = "space-dingrit-mutation", type = "recipe-replacement"},
            }
        },
        {
            name = "training",
            icon = "__pyalienlifegraphics3__/graphics/technology/training.png",
            icon_size = 128,
            order = "c-a",
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'recipe-replacement', 'machine-replacement'
                {old = "dingrits-1", new = "dingrits-1-training", type = "recipe-replacement"},
                {old = "dingrits-2", new = "dingrits-2-training", type = "recipe-replacement"},
                {old = "dingrits-3", new = "dingrits-3-training", type = "recipe-replacement"},
                {old = "dingrits-4", new = "dingrits-4-training", type = "recipe-replacement"},
            }
        }
    },
    module_category = "dingrits"
}
