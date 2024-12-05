if data and not yafc_turd_integration then
    data:extend {{
        name = "artifical-insemination",
        type = "recipe",
        enabled = false,
        energy_required = 75,
        category = "incubator",
        ingredients = {
            {name = "mukmoux",           amount = 1,   type = "item"},
            {name = "quartz-tube",       amount = 1,   type = "item"},
            {name = "immunosupressants", amount = 1,   type = "item"},
            {name = "bedding",           amount = 2,   type = "item"},
            {name = "mukmoux-food-01",   amount = 2,   type = "item"},
            {name = "water",             amount = 650, type = "fluid"},
        },
        results = {
            {name = "mukmoux-calf",      amount_min = 30,  amount_max = 80,  type = "item"},
            {name = "quartz-tube",       amount = 1,       type = "item",    probability = 0.5},
            {name = "immunosupressants", amount = 1,       type = "item",    probability = 0.5},
            {name = "meat",              amount = 3,       type = "item"},
            {name = "guts",              amount = 5,       type = "item"},
            {name = "mukmoux-fat",       amount = 5,       type = "item"},
            {name = "bones",             amount = 1,       type = "item"},
            {name = "artificial-blood",  amount_min = 200, amount_max = 500, type = "fluid"},
        },
        main_product = "mukmoux-calf",
        localised_name = {"technology-name.zero-cross"}
    }}

    for i, recipe in pairs {
        RECIPE("mukmoux-calf-1"):copy(),
        RECIPE("mukmoux-calf-2"):copy(),
        RECIPE("mukmoux-calf-3"):copy(),
        RECIPE("mukmoux-calf-4"):copy(),
    } do
        recipe.name = recipe.name .. "-microchip"
        recipe:add_ingredient {name = "microchip", amount = 1, type = "item"}
        recipe:add_result {name = "microchip", amount = 1, type = "item", probability = 0.25}
        recipe:add_result {name = "fetal-serum", amount_min = 50 * i, amount_max = 70 * i, type = "fluid"}
        data:extend {recipe}
    end

    for _, recipe in pairs {
        RECIPE("mukmoux-1"):copy(),
        RECIPE("mukmoux-2"):copy(),
        RECIPE("mukmoux-3"):copy(),
        RECIPE("mukmoux-4"):copy(),
    } do
        recipe.name = recipe.name .. "-bip"
        for _, ingredient in pairs(recipe.ingredients) do
            if ingredient.name == "mukmoux-food-01" or ingredient.name == "mukmoux-food-02" then
                recipe:add_result {name = ingredient.name, amount = 1, type = "item", probability = 0.5}
            end
        end
        recipe:remove_ingredient("fawogae")
        recipe:remove_ingredient("ralesia-seeds")
        recipe:remove_ingredient("bedding")
        data:extend {recipe}
    end

    for _, poop_recipe in pairs {
        RECIPE("manure-1"):copy(),
        RECIPE("manure-2"):copy(),
        RECIPE("manure-3"):copy(),
        RECIPE("manure-4"):copy(),
    } do
        poop_recipe.name = poop_recipe.name .. "-mukmoux-turd"
        poop_recipe:multiply_result_amount("manure", 2)
        for _, ingredient in pairs(poop_recipe.ingredients) do
            if ingredient.name == "mukmoux-food-01" or ingredient.name == "mukmoux-food-02" or ingredient.name == "bedding" then
                poop_recipe:add_result {name = ingredient.name, amount_min = 0, amount_max = ingredient.amount, type = "item"}
            end
        end
        data:extend {poop_recipe}
    end

    local electronics = {"controler-mk01", "controler-mk02", "controler-mk03", "controler-mk04"}
    for i, recipe in pairs {
        RECIPE("mukmoux-pasture-mk01"):copy(),
        RECIPE("mukmoux-pasture-mk02"):copy(),
        RECIPE("mukmoux-pasture-mk03"):copy(),
        RECIPE("mukmoux-pasture-mk04"):copy(),
    } do
        recipe.name = recipe.name .. "-with-electronics"
        recipe:add_ingredient {name = electronics[i], amount = 10 * i, type = "item"}
        recipe:remove_ingredient()
        data:extend {recipe}
    end
end

return {
    affected_entities = { -- the entities that should be effected by this tech upgrade
        "mukmoux-pasture-mk01",
        "mukmoux-pasture-mk02",
        "mukmoux-pasture-mk03",
        "mukmoux-pasture-mk04",
    },
    master_tech = { -- tech that is shown in the tech tree
        name = "mukmoux-upgrade",
        icon = "__pyalienlifegraphics3__/graphics/technology/updates/u-mukmoux.png",
        icon_size = 128,
        order = "c-a",
        prerequisites = {"mukmoux-mk03"},
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
            name = "zero-cross",
            icon = "__pyalienlifegraphics3__/graphics/technology/zero-cross.png",
            icon_size = 128,
            order = "c-a",
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'recipe-replacement', 'machine-replacement'
                {recipe = "artifical-insemination", type = "unlock-recipe"}
            },
        },
        {
            name = "bip",
            icon = "__pyalienlifegraphics3__/graphics/technology/bip.png",
            icon_size = 128,
            order = "c-a",
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'recipe-replacement', 'machine-replacement'
                {old = "mukmoux-1",            new = "mukmoux-1-bip",                         type = "recipe-replacement"},
                {old = "mukmoux-2",            new = "mukmoux-2-bip",                         type = "recipe-replacement"},
                {old = "mukmoux-3",            new = "mukmoux-3-bip",                         type = "recipe-replacement"},
                {old = "mukmoux-4",            new = "mukmoux-4-bip",                         type = "recipe-replacement"},
                {old = "manure-1",             new = "manure-1-mukmoux-turd",                 type = "recipe-replacement"},
                {old = "manure-2",             new = "manure-2-mukmoux-turd",                 type = "recipe-replacement"},
                {old = "manure-3",             new = "manure-3-mukmoux-turd",                 type = "recipe-replacement"},
                {old = "manure-4",             new = "manure-4-mukmoux-turd",                 type = "recipe-replacement"},
                {old = "mukmoux-pasture-mk01", new = "mukmoux-pasture-mk01-with-electronics", type = "recipe-replacement"},
                {old = "mukmoux-pasture-mk02", new = "mukmoux-pasture-mk02-with-electronics", type = "recipe-replacement"},
                {old = "mukmoux-pasture-mk03", new = "mukmoux-pasture-mk03-with-electronics", type = "recipe-replacement"},
                {old = "mukmoux-pasture-mk04", new = "mukmoux-pasture-mk04-with-electronics", type = "recipe-replacement"},
            }
        },
        {
            name = "think-collar",
            icon = "__pyalienlifegraphics3__/graphics/technology/think-collar.png",
            icon_size = 128,
            order = "c-a",
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'recipe-replacement', 'machine-replacement'
                {speed = -0.5,           productivity = 0.8,               type = "module-effects"},
                {old = "mukmoux-calf-1", new = "mukmoux-calf-1-microchip", type = "recipe-replacement"},
                {old = "mukmoux-calf-2", new = "mukmoux-calf-2-microchip", type = "recipe-replacement"},
                {old = "mukmoux-calf-3", new = "mukmoux-calf-3-microchip", type = "recipe-replacement"},
                {old = "mukmoux-calf-4", new = "mukmoux-calf-4-microchip", type = "recipe-replacement"},
            }
        }
    },
    module_category = "mukmoux"
}
