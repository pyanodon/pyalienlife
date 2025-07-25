if data and not yafc_turd_integration then
    for i, recipe in pairs {
        RECIPE("auog-food-01"):copy(),
        RECIPE("auog-food-02"):copy(),
    } do
        recipe.name = recipe.name .. "-sawdust"
        recipe:add_ingredient {type = "item", name = "wood", amount = 6 * i}
        recipe:remove_ingredient("ash")
        recipe:remove_ingredient("moss")
        recipe:remove_ingredient("ralesia")
        recipe:remove_ingredient("starch")
        recipe:remove_ingredient("casein")
        recipe:multiply_result_amount("auog-food-0" .. i, 2)
        data:extend {recipe}
    end

    for i = 1, 4 do
        local results = {
            {name = i == 1 and "auog" or "auog-mk0" .. i, amount = 1, type = "item", probability = 0.95},
            {name = "yaedols",                            amount = 1, type = "item", probability = 0.85},
        }
        for _, result in pairs(data.raw.recipe["ex-used-auog"].results) do
            result = table.deepcopy(result)
            result.probability = 0.05
            table.insert(results, result)
        end
        data:extend {{
            name = "auog-recharge-glowing-mushroom-mk0" .. i,
            enabled = false,
            type = "recipe",
            energy_required = 5,
            ingredients = {
                {type = "item", name = "yaedols",                                      amount = 1},
                {type = "item", name = i == 1 and "used-auog" or "used-auog-mk0" .. i, amount = 1}
            },
            results = results,
            main_product = i == 1 and "auog" or "auog-mk0" .. i,
            category = "bay"
        }}
    end

    for recipe, dirt in pairs {
        [RECIPE("auog-paddock-mk01"):copy()] = {{type = "item", name = "soil", amount = 13}, {type = "item", name = "sand", amount = 7}, {type = "item", name = "stone", amount = 5}},
        [RECIPE("auog-paddock-mk02"):copy()] = {{type = "item", name = "coarse", amount = 8}, {type = "item", name = "limestone", amount = 12}, {type = "item", name = "rich-clay", amount = 5}},
        [RECIPE("auog-paddock-mk03"):copy()] = {{type = "item", name = "iron-oxide", amount = 6}, {type = "item", name = "coal-dust", amount = 3}, {type = "item", name = "gravel", amount = 11}},
        [RECIPE("auog-paddock-mk04"):copy()] = {{type = "item", name = "oil-sand", amount = 10}, {type = "item", name = "rare-earth-ore", amount = 2}, {type = "item", name = "biomass", amount = 5}},
    } do
        recipe.main_product = recipe.name
        recipe.name = recipe.name .. "-with-dirt"
        for _, result in pairs(dirt) do
            recipe:add_result(result)
        end
        data:extend {recipe}
    end

    local buffed_generator = table.deepcopy(data.raw["burner-generator"]["generator-1"])
    buffed_generator.burner.effectivity = 2
    buffed_generator.effectivity = 2
    buffed_generator.max_power_output = "111MW"
    buffed_generator.localised_description = buffed_generator.localised_description or {"entity-description." .. buffed_generator.name}
    buffed_generator.placeable_by = {item = buffed_generator.name, count = 1}
    buffed_generator.localised_name = {"entity-name." .. buffed_generator.name}
    buffed_generator.subgroup = data.raw.item[buffed_generator.name].subgroup
    buffed_generator.order = data.raw.item[buffed_generator.name].order
    buffed_generator.name = buffed_generator.name .. "-turd"
    data:extend {buffed_generator}
end

return {
    affected_entities = { -- the entities that should be effected by this tech upgrade
        "auog-paddock-mk01",
        "auog-paddock-mk02",
        "auog-paddock-mk03",
        "auog-paddock-mk04",
    },
    master_tech = { -- tech that is shown in the tech tree
        name = "auog-upgrade",
        icon = "__pyalienlifegraphics3__/graphics/technology/updates/u-auog.png",
        icon_size = 128,
        order = "c-a",
        prerequisites = {"auog-mk02"},
        unit = {
            count = 500,
            ingredients = {
                {"automation-science-pack", 1},
                {"py-science-pack-1",       1},
                {"logistic-science-pack",   1},
                {"py-science-pack-2",       1},
            },
            time = 45
        }
    },
    sub_techs = {
        {
            name = "sawdust",
            icon = "__pyalienlifegraphics3__/graphics/technology/sawdust.png",
            icon_size = 128,
            order = "c-a",
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'recipe-replacement', 'machine-replacement'
                {old = "auog-food-01", new = "auog-food-01-sawdust", type = "recipe-replacement"},
                {old = "auog-food-02", new = "auog-food-02-sawdust", type = "recipe-replacement"},
            },
        },
        {
            name = "glowing-mushrooms",
            icon = "__pyalienlifegraphics3__/graphics/technology/glowing-mushroom.png",
            icon_size = 128,
            order = "c-a",
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'recipe-replacement', 'machine-replacement'
                {recipe = "auog-recharge-glowing-mushroom-mk01", type = "unlock-recipe"},
                {recipe = "auog-recharge-glowing-mushroom-mk02", type = "unlock-recipe"},
                {recipe = "auog-recharge-glowing-mushroom-mk03", type = "unlock-recipe"},
                {recipe = "auog-recharge-glowing-mushroom-mk04", type = "unlock-recipe"},
                {type = "machine-replacement",                   old = "generator-1",   new = "generator-1-turd"},
            }
        },
        {
            name = "underground-chambers",
            icon = "__pyalienlifegraphics3__/graphics/technology/underground-chambers.png",
            icon_size = 128,
            order = "c-a",
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'recipe-replacement', 'machine-replacement'
                {consumption = 3,           productivity = 0.35,                 type = "module-effects"},
                {old = "auog-paddock-mk01", new = "auog-paddock-mk01-with-dirt", type = "recipe-replacement"},
                {old = "auog-paddock-mk02", new = "auog-paddock-mk02-with-dirt", type = "recipe-replacement"},
                {old = "auog-paddock-mk03", new = "auog-paddock-mk03-with-dirt", type = "recipe-replacement"},
                {old = "auog-paddock-mk04", new = "auog-paddock-mk04-with-dirt", type = "recipe-replacement"},
            }
        }
    },
    module_category = "auog"
}
