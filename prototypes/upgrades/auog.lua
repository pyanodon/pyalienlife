local FUN = require '__pycoalprocessing__/prototypes/functions/functions'

if data and not yafc_turd_integration then
    for i, recipe in pairs{
        table.deepcopy(data.raw.recipe['auog-food-01']),
        table.deepcopy(data.raw.recipe['auog-food-02']),
    } do
        recipe.name = recipe.name .. '-sawdust'
        FUN.add_ingredient(recipe, {'wood', 6 * i})
        FUN.multiply_result_amount(recipe, 'auog-food-0'..i, 2)
        data:extend{recipe}
    end

    for i = 1, 4 do
        local results = {
            {name = i == 1 and 'auog' or 'auog-mk0' .. i, amount = 1, type = 'item', probability = 0.95},
            {name = 'yaedols', amount = 1, type = 'item', probability = 0.85},
        }
        for _, result in pairs(data.raw.recipe['ex-used-auog'].results) do
            result = table.deepcopy(result)
            result.probability = 0.05
            table.insert(results, result)
        end
        data:extend{{
            name = 'auog-recharge-glowing-mushroom-mk0' .. i,
            enabled = false,
            type = 'recipe',
            energy_required = 5,
            ingredients = {
                {'yaedols', 1},
                {i == 1 and 'used-auog' or 'used-auog-mk0' .. i, 1}
            },
            results = results,
            main_product = i == 1 and 'auog' or 'auog-mk0' .. i,
            category = 'bay'
        }}
    end

    for recipe, dirt in pairs{
        [table.deepcopy(data.raw.recipe['auog-paddock-mk01'])] = {{'soil', 13}, {'sand', 7}, {'stone', 5}},
        [table.deepcopy(data.raw.recipe['auog-paddock-mk02'])] = {{'coarse', 8}, {'limestone', 12}, {'rich-clay', 5}},
        [table.deepcopy(data.raw.recipe['auog-paddock-mk03'])] = {{'iron-oxide', 6}, {'coal-dust', 3}, {'gravel', 11}},
        [table.deepcopy(data.raw.recipe['auog-paddock-mk04'])] = {{'oil-sand', 10}, {'rare-earth-ore', 2}, {'biomass', 5}},
    } do
        recipe.main_product = recipe.name
        recipe.name = recipe.name .. '-with-dirt'
        for _, result in pairs(dirt) do
            FUN.add_result(recipe, result)
        end
        data:extend{recipe}
    end
end

return {
    affected_entities = { -- the entities that should be effected by this tech upgrade
        'auog-paddock-mk01',
        'auog-paddock-mk02',
        'auog-paddock-mk03',
        'auog-paddock-mk04',
    },
    master_tech = { -- tech that is shown in the tech tree
        name = 'auog-upgrade',
        icon = '__pyalienlifegraphics3__/graphics/technology/updates/u-auog.png',
        icon_size = 128,
        order = 'c-a',
        prerequisites = {'auog-mk02'},
        unit = {
            count = 500,
            ingredients = {
                {'automation-science-pack', 1},
                {'py-science-pack-1', 1},
                {'logistic-science-pack', 1},
                {'py-science-pack-2', 1},
            },
            time = 45
        }
    },
    sub_techs = {
        {
            name = 'sawdust',
            icon = '__pyalienlifegraphics3__/graphics/technology/sawdust.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'recipe-replacement'
                {old = 'auog-food-01', new = 'auog-food-01-sawdust', type = 'recipe-replacement'},
                {old = 'auog-food-02', new = 'auog-food-02-sawdust', type = 'recipe-replacement'},
            },
        },
        {
            name = 'glowing-mushrooms',
            icon = '__pyalienlifegraphics3__/graphics/technology/glowing-mushroom.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'recipe-replacement'
                {recipe = 'auog-recharge-glowing-mushroom-mk01', type = 'unlock-recipe'},
                {recipe = 'auog-recharge-glowing-mushroom-mk02', type = 'unlock-recipe'},
                {recipe = 'auog-recharge-glowing-mushroom-mk03', type = 'unlock-recipe'},
                {recipe = 'auog-recharge-glowing-mushroom-mk04', type = 'unlock-recipe'},
            }
        },
        {
            name = 'underground-chambers',
            icon = '__pyalienlifegraphics3__/graphics/technology/underground-chambers.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'recipe-replacement'
                {consumption = 3, productivity = 0.10, type = 'module-effects'},
                {old = 'auog-paddock-mk01', new = 'auog-paddock-mk01-with-dirt', type = 'recipe-replacement'},
                {old = 'auog-paddock-mk02', new = 'auog-paddock-mk02-with-dirt', type = 'recipe-replacement'},
                {old = 'auog-paddock-mk03', new = 'auog-paddock-mk03-with-dirt', type = 'recipe-replacement'},
                {old = 'auog-paddock-mk04', new = 'auog-paddock-mk04-with-dirt', type = 'recipe-replacement'},
            }
        }
    },
    module_category = 'auog'
}