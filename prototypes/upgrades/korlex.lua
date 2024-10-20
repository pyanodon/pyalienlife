if data and not yafc_turd_integration then
    for _, recipe in pairs {
        RECIPE("korlex-milk-1"):copy(),
        RECIPE("korlex-milk-2"):copy(),
        RECIPE("korlex-milk-3"):copy(),
        RECIPE("korlex-milk-4"):copy(),
    } do
        recipe.name = recipe.name .. "-doubled"
        recipe:multiply_ingredient_amount("water-barrel", 2)
        recipe:multiply_ingredient_amount("empty-barrel-milk", 2)
        recipe:multiply_result_amount("barrel", 2)
        recipe:multiply_result_amount("barrel-milk", 2)
        recipe.energy_required = recipe.energy_required * 2
        data:extend {recipe}
    end

    data:extend {{
        name = "kimberlite-into-lime",
        type = "recipe",
        category = "crusher",
        enabled = false,
        energy_required = 10,
        ingredients = {
            {type = "item", name = "kimberlite-grade3", amount = 10},
        },
        results = {
            {type = "item", name = "lime",           amount = 5},
            {type = "item", name = "diamond-reject", amount = 1, probability = 0.5},
        },
        main_product = "lime",
    }}

    for i, recipe in pairs {
        RECIPE("korlex-1"):copy(),
        RECIPE("korlex-2"):copy(),
        RECIPE("korlex-3"):copy(),
        RECIPE("korlex-4"):copy(),
    } do
        recipe.name = recipe.name .. "-slowed"
        recipe:add_ingredient {"barrel-milk", i}
        recipe:add_result {"empty-barrel-milk", i}
        recipe.energy_required = math.ceil(recipe.energy_required * 1.3)
        data:extend {recipe}
    end

    for i, recipe in pairs {
        RECIPE("korlex-milk-1"):copy(),
        RECIPE("korlex-milk-2"):copy(),
        RECIPE("korlex-milk-3"):copy(),
        RECIPE("korlex-milk-4"):copy(),
    } do
        recipe.name = recipe.name .. "-pressured"
        recipe:add_ingredient {type = "fluid", name = "pressured-hydrogen", amount = 20}
        recipe.energy_required = math.ceil(recipe.energy_required * 0.7)
        recipe:add_result {type = "item", name = "kimberlite-grade3", amount_min = i * 11, amount_max = i * 16}
        recipe.main_product = "kimberlite-grade3"
        data:extend {recipe}
    end

    for i, recipe in pairs {
        RECIPE("ez-ranch-mk01"):copy(),
        RECIPE("ez-ranch-mk02"):copy(),
        RECIPE("ez-ranch-mk03"):copy(),
        RECIPE("ez-ranch-mk04"):copy(),
    } do
        recipe.name = recipe.name .. "-with-nexelit"
        recipe:add_ingredient {type = "item", name = "saturated-nexelit-cartridge", amount = 10 * i}
        data:extend {recipe}
    end
end

return {
    affected_entities = { -- the entities that should be effected by this tech upgrade
        "ez-ranch-mk01",
        "ez-ranch-mk02",
        "ez-ranch-mk03",
        "ez-ranch-mk04",
    },
    master_tech = { -- tech that is shown in the tech tree
        name = "korlex-upgrade",
        icon = "__pyalienlifegraphics3__/graphics/technology/updates/u-korlex.png",
        icon_size = 128,
        order = "c-a",
        prerequisites = {"korlex-mk03", "filtration-mk02"},
        unit = {
            count = 500,
            ingredients = {
                {"automation-science-pack", 1},
                {"logistic-science-pack",   1},
                {"chemical-science-pack",   1},
                {"py-science-pack-3",       1},
            },
            time = 45
        }
    },
    sub_techs = {
        {
            name = "multi-tit",
            icon = "__pyalienlifegraphics3__/graphics/technology/multi-tit.png",
            icon_size = 128,
            order = "c-a",
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'recipe-replacement', 'machine-replacement'
                {old = "korlex-milk-1", new = "korlex-milk-1-doubled", type = "recipe-replacement"},
                {old = "korlex-milk-2", new = "korlex-milk-2-doubled", type = "recipe-replacement"},
                {old = "korlex-milk-3", new = "korlex-milk-3-doubled", type = "recipe-replacement"},
                {old = "korlex-milk-4", new = "korlex-milk-4-doubled", type = "recipe-replacement"},
                {old = "korlex-1",      new = "korlex-1-slowed",       type = "recipe-replacement"},
                {old = "korlex-2",      new = "korlex-2-slowed",       type = "recipe-replacement"},
                {old = "korlex-3",      new = "korlex-3-slowed",       type = "recipe-replacement"},
                {old = "korlex-4",      new = "korlex-4-slowed",       type = "recipe-replacement"},
            },
        },
        {
            name = "high-pressure",
            icon = "__pyalienlifegraphics3__/graphics/technology/high-pressure.png",
            icon_size = 128,
            order = "c-a",
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'recipe-replacement', 'machine-replacement'
                {type = "unlock-recipe", recipe = "kimberlite-into-lime"},
                {old = "korlex-milk-1",  new = "korlex-milk-1-pressured", type = "recipe-replacement"},
                {old = "korlex-milk-2",  new = "korlex-milk-2-pressured", type = "recipe-replacement"},
                {old = "korlex-milk-3",  new = "korlex-milk-3-pressured", type = "recipe-replacement"},
                {old = "korlex-milk-4",  new = "korlex-milk-4-pressured", type = "recipe-replacement"},
            }
        },
        {
            name = "nx-heat-pump",
            icon = "__pyalienlifegraphics3__/graphics/technology/nx-heat-pump.png",
            icon_size = 128,
            order = "c-a",
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'recipe-replacement', 'machine-replacement'
                {consumption = -0.25,   speed = 0.3,                        productivity = 0.1,         type = "module-effects"},
                {old = "ez-ranch-mk01", new = "ez-ranch-mk01-with-nexelit", type = "recipe-replacement"},
                {old = "ez-ranch-mk02", new = "ez-ranch-mk02-with-nexelit", type = "recipe-replacement"},
                {old = "ez-ranch-mk03", new = "ez-ranch-mk03-with-nexelit", type = "recipe-replacement"},
                {old = "ez-ranch-mk04", new = "ez-ranch-mk04-with-nexelit", type = "recipe-replacement"},
            }
        }
    },
    module_category = "korlex"
}
