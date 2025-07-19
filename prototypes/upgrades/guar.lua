if data and not yafc_turd_integration then
    for i, recipe in pairs {
        RECIPE("guar-1"):copy(),
        RECIPE("guar-2"):copy(),
        RECIPE("guar-3"):copy(),
        RECIPE("guar-4"):copy(),
    } do
        recipe.name = recipe.name .. "-guarpulse"
        recipe:add_ingredient {type = "item", name = "fungicide", amount = 1}
        recipe:add_result {type = "item", name = "zinc-nanocomplex", amount = 2 ^ (i - 1)}
        recipe.main_product = "zinc-nanocomplex"
        data:extend {recipe}
    end

    for _, recipe in pairs {
        RECIPE("guar-1"):copy(),
        RECIPE("guar-2"):copy(),
        RECIPE("guar-3"):copy(),
        RECIPE("guar-4"):copy(),
    } do
        recipe.name = recipe.name .. "-aquaguar"
        local _, water = recipe:remove_ingredient("water")
        recipe:add_ingredient {type = "fluid", name = "water-saline", amount = math.ceil(water / 5), fluidbox_index = 1}
        recipe.energy_required = math.ceil(recipe.energy_required * 0.9)
        recipe:multiply_ingredient_amount("guar-seeds", 0.65)
        recipe:remove_ingredient("pesticide-mk01")
        recipe:remove_ingredient("pesticide-mk02")
        data:extend {recipe}
    end

    local bots = {"py-logistic-robot-mk01", "py-logistic-robot-mk02", "py-logistic-robot-mk03", "py-logistic-robot-mk04"}
    for i, recipe in pairs {
        RECIPE("guar-gum-plantation"):copy(),
        RECIPE("guar-gum-plantation-mk02"):copy(),
        RECIPE("guar-gum-plantation-mk03"):copy(),
        RECIPE("guar-gum-plantation-mk04"):copy(),
    } do
        recipe.name = recipe.name .. "-with-bots"
        recipe:add_ingredient {type = "item", name = bots[i], amount = 4 * i}
        data:extend {recipe}
    end
end

return {
    affected_entities = { -- the entities that should be effected by this tech upgrade
        "guar-gum-plantation",
        "guar-gum-plantation-mk02",
        "guar-gum-plantation-mk03",
        "guar-gum-plantation-mk04",
    },
    master_tech = { -- tech that is shown in the tech tree
        name = "guar-upgrade",
        icon = "__pyalienlifegraphics3__/graphics/technology/updates/u-guar.png",
        icon_size = 128,
        order = "c-a",
        prerequisites = {"pesticides-mk01", "guar-mk03"},
        unit = {
            count = 500,
            ingredients = {
                {"automation-science-pack", 1},
                {"py-science-pack-1",       1},
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
            name = "guarpulse",
            icon = "__pyalienlifegraphics3__/graphics/technology/guar-pulse.png",
            icon_size = 128,
            order = "c-a",
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'recipe-replacement', 'machine-replacement'
                {recipe = "alcl3",     type = "unlock-recipe"},
                {recipe = "fungicide", type = "unlock-recipe"},
                {old = "guar-1",       new = "guar-1-guarpulse", type = "recipe-replacement"},
                {old = "guar-2",       new = "guar-2-guarpulse", type = "recipe-replacement"},
                {old = "guar-3",       new = "guar-3-guarpulse", type = "recipe-replacement"},
                {old = "guar-4",       new = "guar-4-guarpulse", type = "recipe-replacement"},
            },
        },
        {
            name = "aquaguar",
            icon = "__pyalienlifegraphics3__/graphics/technology/aquaguar.png",
            icon_size = 128,
            order = "c-a",
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'recipe-replacement', 'machine-replacement'
                {old = "guar-1", new = "guar-1-aquaguar", type = "recipe-replacement"},
                {old = "guar-2", new = "guar-2-aquaguar", type = "recipe-replacement"},
                {old = "guar-3", new = "guar-3-aquaguar", type = "recipe-replacement"},
                {old = "guar-4", new = "guar-4-aquaguar", type = "recipe-replacement"},
            }
        },
        {
            name = "hh",
            icon = "__pyalienlifegraphics3__/graphics/technology/hh.png",
            icon_size = 128,
            order = "c-a",
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'recipe-replacement', 'machine-replacement'
                {speed = 0.35,                     productivity = 0.05,                        type = "module-effects"},
                {old = "guar-gum-plantation",      new = "guar-gum-plantation-with-bots",      type = "recipe-replacement"},
                {old = "guar-gum-plantation-mk02", new = "guar-gum-plantation-mk02-with-bots", type = "recipe-replacement"},
                {old = "guar-gum-plantation-mk03", new = "guar-gum-plantation-mk03-with-bots", type = "recipe-replacement"},
                {old = "guar-gum-plantation-mk04", new = "guar-gum-plantation-mk04-with-bots", type = "recipe-replacement"},
            }
        }
    },
    module_category = "guar"
}
