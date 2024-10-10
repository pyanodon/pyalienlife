if data and not yafc_turd_integration then
    for _, recipe in pairs {
        RECIPE("kmauts-cub-1"):copy(),
        RECIPE("kmauts-cub-2"):copy(),
        RECIPE("kmauts-cub-3"):copy(),
        RECIPE("kmauts-cub-4"):copy(),
    } do
        recipe.name = recipe.name .. "-ratio"
        recipe:multiply_result_amount("kmauts-cub", 1.35)
        data:extend {recipe}
    end

    for _, recipe in pairs {
        RECIPE("kmauts-1"):copy(),
        RECIPE("kmauts-2"):copy(),
        RECIPE("kmauts-3"):copy(),
        RECIPE("kmauts-4"):copy(),
    } do
        recipe.name = recipe.name .. "-ratio"
        for _, result in pairs(recipe.results) do
            if result.name == "kmauts" then
                result.probability = 0.65
                break
            end
        end
        local _, amount = recipe:remove_result("barrel")
        recipe:add_result {"soaked-gel-barrel", amount}
        data:extend {recipe}
    end

    for _, recipe in pairs {
        RECIPE("kmauts-cub-1"):copy(),
        RECIPE("kmauts-cub-2"):copy(),
        RECIPE("kmauts-cub-3"):copy(),
        RECIPE("kmauts-cub-4"):copy(),
    } do
        recipe.name = recipe.name .. "-eye-out"
        for _, result in pairs(recipe.results) do
            if result.name == "kmauts-cub" then
                recipe:add_result {type = "item", name = "animal-eye", amount = result.amount}
                break
            end
        end
        data:extend {recipe}
    end

    local food = RECIPE("kmauts-ration"):copy()
    food:add_ingredient {type = "item", name = "chitin", amount = 3}
    food:add_result_amount("kmauts-ration", 4)
    food.name = "kmauts-ration-chitin"
    data:extend {food}
end

return {
    affected_entities = { -- the entities that should be effected by this tech upgrade
        "kmauts-enclosure-mk01",
        "kmauts-enclosure-mk02",
        "kmauts-enclosure-mk03",
        "kmauts-enclosure-mk04",
    },
    master_tech = { -- tech that is shown in the tech tree
        name = "kmauts-upgrade",
        icon = "__pyalienlifegraphics3__/graphics/technology/updates/u-kmauts.png",
        icon_size = 128,
        order = "c-a",
        prerequisites = {"kmauts-mk03"},
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
            },
            time = 45
        }
    },
    sub_techs = {
        {
            name = "sex-ratio",
            icon = "__pyalienlifegraphics3__/graphics/technology/sex-ratio.png",
            icon_size = 128,
            order = "c-a",
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'recipe-replacement', 'machine-replacement'
                {old = "kmauts-cub-1", new = "kmauts-cub-1-ratio", type = "recipe-replacement"},
                {old = "kmauts-cub-2", new = "kmauts-cub-2-ratio", type = "recipe-replacement"},
                {old = "kmauts-cub-3", new = "kmauts-cub-3-ratio", type = "recipe-replacement"},
                {old = "kmauts-cub-4", new = "kmauts-cub-4-ratio", type = "recipe-replacement"},
                {old = "kmauts-1",     new = "kmauts-1-ratio",     type = "recipe-replacement"},
                {old = "kmauts-2",     new = "kmauts-2-ratio",     type = "recipe-replacement"},
                {old = "kmauts-3",     new = "kmauts-3-ratio",     type = "recipe-replacement"},
                {old = "kmauts-4",     new = "kmauts-4-ratio",     type = "recipe-replacement"},
            },
        },
        {
            name = "eye-out",
            icon = "__pyalienlifegraphics3__/graphics/technology/eye-out.png",
            icon_size = 128,
            order = "c-a",
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'recipe-replacement', 'machine-replacement'
                {old = "kmauts-cub-1", new = "kmauts-cub-1-eye-out", type = "recipe-replacement"},
                {old = "kmauts-cub-2", new = "kmauts-cub-2-eye-out", type = "recipe-replacement"},
                {old = "kmauts-cub-3", new = "kmauts-cub-3-eye-out", type = "recipe-replacement"},
                {old = "kmauts-cub-4", new = "kmauts-cub-4-eye-out", type = "recipe-replacement"},
            }
        },
        {
            name = "moult-recycle",
            icon = "__pyalienlifegraphics3__/graphics/technology/moult-recycle.png",
            icon_size = 128,
            order = "c-a",
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'recipe-replacement', 'machine-replacement'
                {old = "kmauts-ration", new = "kmauts-ration-chitin", type = "recipe-replacement"}
            }
        }
    },
    module_category = "kmauts"
}
