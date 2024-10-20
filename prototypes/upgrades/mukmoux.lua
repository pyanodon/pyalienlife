if data and not yafc_turd_integration then
    data:extend {{
        name = "artifical-insemination",
        type = "recipe",
        enabled = false,
        energy_required = 150,
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
            {name = "mukmoux-calf",      amount_min = 150, amount_max = 250, type = "item"},
            {name = "quartz-tube",       amount = 1,       type = "item",    probability = 0.95},
            {name = "immunosupressants", amount = 1,       type = "item",    probability = 0.95},
            {name = "meat",              amount = 30,      type = "item"},
            {name = "guts",              amount = 150,     type = "item"},
            {name = "mukmoux-fat",       amount = 150,     type = "item"},
            {name = "bones",             amount = 50,      type = "item"},
            {name = "artificial-blood",  amount = 1000,    type = "fluid"},
        },
        main_product = "mukmoux-calf",
        localised_name = {"technology-name.zero-cross"}
    }}

    for _, recipe in pairs {
        RECIPE("mukmoux-calf-1"):copy(),
        RECIPE("mukmoux-calf-2"):copy(),
        RECIPE("mukmoux-calf-3"):copy(),
        RECIPE("mukmoux-calf-4"):copy(),
    } do
        recipe.name = recipe.name .. "-microchip"
        recipe:add_ingredient {name = "microchip", amount = 1, type = "item"}
        recipe:add_result {name = "microchip", amount = 1, type = "item", probability = 0.25}
        recipe:add_result {name = "fetal-serum", amount = 100, type = "fluid"}
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
        recipe:add_ingredient_amount("mukmoux-food-01", 1)
        recipe:add_ingredient_amount("mukmoux-food-02", 1)
        recipe:multiply_result_amount("mukmoux", 1.5)
        recipe:remove_ingredient("fawogae")
        recipe:remove_ingredient("ralesia-seeds")
        recipe:remove_ingredient("bedding")
        data:extend {recipe}
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
                {speed = 1,                    productivity = 1,                              type = "module-effects"},
                {old = "mukmoux-1",            new = "mukmoux-1-bip",                         type = "recipe-replacement"},
                {old = "mukmoux-2",            new = "mukmoux-2-bip",                         type = "recipe-replacement"},
                {old = "mukmoux-3",            new = "mukmoux-3-bip",                         type = "recipe-replacement"},
                {old = "mukmoux-4",            new = "mukmoux-4-bip",                         type = "recipe-replacement"},
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
                {speed = -0.5,           productivity = 2,                 type = "module-effects"},
                {old = "mukmoux-calf-1", new = "mukmoux-calf-1-microchip", type = "recipe-replacement"},
                {old = "mukmoux-calf-2", new = "mukmoux-calf-2-microchip", type = "recipe-replacement"},
                {old = "mukmoux-calf-3", new = "mukmoux-calf-3-microchip", type = "recipe-replacement"},
                {old = "mukmoux-calf-4", new = "mukmoux-calf-4-microchip", type = "recipe-replacement"},
            }
        }
    },
    module_category = "mukmoux"
}
