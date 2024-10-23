if data and not yafc_turd_integration then
    data:extend {
        {
            name = "paper-towel",
            type = "item",
            stack_size = 50,
            subgroup = "py-alienlife-items",
            icon = "__pyalienlifegraphics__/graphics/icons/paper-towel.png",
            icon_size = 64
        },
        {
            name = "paper-towel",
            type = "recipe",
            enabled = false,
            category = "pulp",
            energy_required = 4,
            ingredients = {
                {name = "cellulose", type = "item",  amount = 2},
                {name = "water",     type = "fluid", amount = 25},
                {name = "hot-air",   type = "fluid", amount = 25},
            },
            result = "paper-towel",
            result_count = 4
        }
    }

    local recipe = RECIPE("ralesia-seeds"):copy()
    recipe:add_ingredient {"paper-towel", 1}
    recipe.energy_required = 3
    recipe:multiply_result_amount("ralesia-seeds", 2)
    recipe.name = "ralesia-seeds-paper-towel"
    data:extend {recipe}

    for i, recipe in pairs {
        RECIPE("ralesia-plantation-mk01"):copy(),
        RECIPE("ralesia-plantation-mk02"):copy(),
        RECIPE("ralesia-plantation-mk03"):copy(),
        RECIPE("ralesia-plantation-mk04"):copy(),
    } do
        recipe.name = recipe.name .. "-with-ceramic"
        recipe:add_ingredient {name = "mirror-mk0" .. i, amount = 50 * i, type = "item"}
        data:extend {recipe}
    end

    local fluidbox_indexs = {2, 2, 1, 1}
    for i, recipe in pairs {
        RECIPE("ralesia-1"):copy(),
        RECIPE("ralesia-2"):copy(),
        RECIPE("ralesia-3"):copy(),
        RECIPE("ralesia-4"):copy(),
    } do
        recipe.name = recipe.name .. "-hydrogen-burn"
        recipe:remove_ingredient("water")
        local _, old_hydrogen = recipe:remove_ingredient("hydrogen")
        recipe:add_ingredient {name = "hydrogen", amount = old_hydrogen + 50, type = "fluid", fluidbox_index = fluidbox_indexs[i]}
        recipe:add_result {name = "helium", type = "fluid", amount = i * 2}
        recipe.main_product = "helium"
        data:extend {recipe}
    end
end

return {
    affected_entities = { -- the entities that should be effected by this tech upgrade
        "ralesia-plantation-mk01",
        "ralesia-plantation-mk02",
        "ralesia-plantation-mk03",
        "ralesia-plantation-mk04",
    },
    master_tech = { -- tech that is shown in the tech tree
        name = "ralesia-upgrade",
        icon = "__pyalienlifegraphics3__/graphics/technology/updates/u-ralesia.png",
        icon_size = 128,
        order = "c-a",
        prerequisites = {"ralesia-mk02", "helium-processing", "thermal-mk01"},
        unit = {
            count = 500,
            ingredients = {
                {"automation-science-pack", 1},
                {"py-science-pack-1",       1},
                {"logistic-science-pack",   1},
                {"military-science-pack",   1},
                {"py-science-pack-2",       1},
                {"chemical-science-pack",   1},
            },
            time = 45
        }
    },
    sub_techs = {
        {
            name = "improved-burst",
            icon = "__pyalienlifegraphics3__/graphics/technology/improved-burst.png",
            icon_size = 128,
            order = "c-a",
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'recipe-replacement', 'machine-replacement'
                {recipe = "paper-towel", type = "unlock-recipe"},
                {old = "ralesia-seeds",  new = "ralesia-seeds-paper-towel", type = "recipe-replacement"}
            },
        },
        {
            name = "sun-concentration",
            icon = "__pyalienlifegraphics3__/graphics/technology/sun-concentration.png",
            icon_size = 128,
            order = "c-a",
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'recipe-replacement', 'machine-replacement'
                {speed = 0.12,                    type = "module-effects"},
                {old = "ralesia-plantation-mk01", new = "ralesia-plantation-mk01-with-ceramic", type = "recipe-replacement"},
                {old = "ralesia-plantation-mk02", new = "ralesia-plantation-mk02-with-ceramic", type = "recipe-replacement"},
                {old = "ralesia-plantation-mk03", new = "ralesia-plantation-mk03-with-ceramic", type = "recipe-replacement"},
                {old = "ralesia-plantation-mk04", new = "ralesia-plantation-mk04-with-ceramic", type = "recipe-replacement"},
            }
        },
        {
            name = "h2-recycle",
            icon = "__pyalienlifegraphics3__/graphics/technology/h2-recycle.png",
            icon_size = 128,
            order = "c-a",
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'recipe-replacement', 'machine-replacement'
                {old = "ralesia-1", new = "ralesia-1-hydrogen-burn", type = "recipe-replacement"},
                {old = "ralesia-2", new = "ralesia-2-hydrogen-burn", type = "recipe-replacement"},
                {old = "ralesia-3", new = "ralesia-3-hydrogen-burn", type = "recipe-replacement"},
                {old = "ralesia-4", new = "ralesia-4-hydrogen-burn", type = "recipe-replacement"},
            }
        }
    },
    module_category = "ralesia"
}
