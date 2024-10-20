if data and not yafc_turd_integration then
    for i, recipe in pairs {
        RECIPE("xyhiphoe-1"):copy(),
        RECIPE("xyhiphoe-2"):copy(),
        RECIPE("xyhiphoe-3"):copy(),
        RECIPE("xyhiphoe-4"):copy(),
    } do
        recipe.name = recipe.name .. "-hot-cold"

        recipe:add_ingredient_amount("xyhiphoe-cub", 1)
        if i == 4 then
            recipe:add_result_amount("xyhiphoe", 1)
        else
            recipe:add_result {"xyhiphoe", 1}
        end

        local _, phyto_barrel_count = recipe:remove_ingredient("phytoplankton")
        phyto_barrel_count = math.ceil(phyto_barrel_count / 50)
        if phyto_barrel_count > 0 then
            recipe:add_ingredient {"phytoplankton-barrel", phyto_barrel_count}
            recipe:add_result {"barrel", phyto_barrel_count}
        end

        recipe:add_ingredient {name = "liquid-nitrogen", amount = 5, type = "fluid", fluidbox_index = 1}
        recipe:add_result {type = "fluid", name = "nitrogen", amount = 50}

        recipe:add_ingredient {name = "redhot-coke", amount = 1, type = "item"}
        recipe:add_result {type = "item", name = "coke", amount = 1}

        recipe.energy_required = math.ceil(recipe.energy_required * 8 / 14)
        data:extend {recipe}
    end

    data:extend {{
        type = "recipe",
        name = "xyhiphoe-single",
        ingredients = {
            {"fish-food-01", 1},
            {"xyhiphoe-cub", 1},
            {type = "fluid", name = "phytoplankton",   amount = 50},
            {type = "fluid", name = "pressured-water", amount = 1000},
        },
        results = {
            {type = "fluid", name = "waste-water", amount = 100},
            {"xyhiphoe",     1}
        },
        main_product = "xyhiphoe",
        enabled = false,
        category = "xyhiphoe",
        energy_required = 140
    }}

    for i, recipe in pairs {
        RECIPE("xyhiphoe-cub-1"):copy(),
        RECIPE("xyhiphoe-cub-2"):copy(),
        RECIPE("xyhiphoe-cub-3"):copy(),
        RECIPE("xyhiphoe-cub-4"):copy(),
    } do
        recipe.name = recipe.name .. "-acetone"
        recipe:remove_result("waste-water")
        recipe:add_ingredient {type = "fluid", name = "waste-water", amount = 250, fluidbox_index = 2}
        recipe:add_result_amount("xyhiphoe-cub", 2)
        recipe:remove_ingredient("pressured-water")
        recipe:add_result {type = "fluid", name = "acetone", amount = i * 150}
        data:extend {recipe}
    end
end

return {
    affected_entities = { -- the entities that should be effected by this tech upgrade
        "xyhiphoe-pool-mk01",
        "xyhiphoe-pool-mk02",
        "xyhiphoe-pool-mk03",
        "xyhiphoe-pool-mk04",
    },
    master_tech = { -- tech that is shown in the tech tree
        name = "xyhiphoe-upgrade",
        icon = "__pyalienlifegraphics3__/graphics/technology/updates/u-xyhiphoe.png",
        icon_size = 128,
        order = "c-a",
        prerequisites = {"water-invertebrates-mk01"},
        unit = {
            count = 500,
            ingredients = {
                {"automation-science-pack", 1},
                {"logistic-science-pack",   1},
            },
            time = 45
        }
    },
    sub_techs = {
        {
            name = "temp-c",
            icon = "__pyalienlifegraphics3__/graphics/technology/temp-c.png",
            icon_size = 128,
            order = "c-a",
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'recipe-replacement', 'machine-replacement'
                {old = "xyhiphoe-1", new = "xyhiphoe-1-hot-cold", type = "recipe-replacement"},
                {old = "xyhiphoe-2", new = "xyhiphoe-2-hot-cold", type = "recipe-replacement"},
                {old = "xyhiphoe-3", new = "xyhiphoe-3-hot-cold", type = "recipe-replacement"},
                {old = "xyhiphoe-4", new = "xyhiphoe-4-hot-cold", type = "recipe-replacement"},
            },
        },
        {
            name = "rst",
            icon = "__pyalienlifegraphics3__/graphics/technology/rst.png",
            icon_size = 128,
            order = "c-a",
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'recipe-replacement', 'machine-replacement'
                {recipe = "xyhiphoe-single", type = "unlock-recipe"}
            }
        },
        {
            name = "reuse-ev",
            icon = "__pyalienlifegraphics3__/graphics/technology/reuse-ev.png",
            icon_size = 128,
            order = "c-a",
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'recipe-replacement', 'machine-replacement'
                {old = "xyhiphoe-cub-1", new = "xyhiphoe-cub-1-acetone", type = "recipe-replacement"},
                {old = "xyhiphoe-cub-2", new = "xyhiphoe-cub-2-acetone", type = "recipe-replacement"},
                {old = "xyhiphoe-cub-3", new = "xyhiphoe-cub-3-acetone", type = "recipe-replacement"},
                {old = "xyhiphoe-cub-4", new = "xyhiphoe-cub-4-acetone", type = "recipe-replacement"},
            }
        }
    },
    module_category = "xyhiphoe"
}
