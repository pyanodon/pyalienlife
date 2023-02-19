local FUN = require '__pycoalprocessing__/prototypes/functions/functions'

if data then
    for i, recipe in pairs{
        table.deepcopy(data.raw.recipe['auog-food-01']),
        table.deepcopy(data.raw.recipe['auog-food-02']),
    } do
        recipe.name = recipe.name .. '-sawdust'
        FUN.add_ingredient(recipe, {'wood', 4 * i})
        FUN.multiply_result_amount(recipe, 'auog-food-0'..i, 2)
        data:extend{recipe}
    end

    for _, recipe in pairs{
        table.deepcopy(data.raw.recipe['auog-pup-breeding-2']),
        table.deepcopy(data.raw.recipe['auog-pup-breeding-3']),
        table.deepcopy(data.raw.recipe['auog-pup-breeding-4']),
        table.deepcopy(data.raw.recipe['auog-pup-breeding-5']),
    } do
        recipe.name = recipe.name .. '-glowing-mushroom'
        FUN.add_result_amount(recipe, 'auog-pup', 1)
        data:extend{recipe}
    end

    do
        local machine_recipe = table.deepcopy(data.raw.recipe['auog-paddock-mk01'])
        machine_recipe.name = machine_recipe.name .. '-with-moondrop'
        FUN.add_ingredient(machine_recipe, {name = 'moondrop', amount = 30, type = 'item'})
        data:extend{machine_recipe}
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
        prerequisites = {'auog', 'moondrop'},
        unit = {
            count = 500,
            ingredients = {
                {'automation-science-pack', 1},
                {'py-science-pack-1', 1}
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
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'lock-recipe', 'recipe-replacement'
                {speed = -0.1, type = 'module-effects'},
                {old = 'auog-food-01', new = 'auog-food-01-sawdust', type = 'recipe-replacement'},
                {old = 'auog-food-02', new = 'auog-food-02-sawdust', type = 'recipe-replacement'},
            },
        },
        {
            name = 'glowing-mushrooms',
            icon = '__pyalienlifegraphics3__/graphics/technology/glowing-mushroom.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'lock-recipe', 'recipe-replacement'
                {old = 'auog-paddock-mk01', new = 'auog-paddock-mk01-with-moondrop', type = 'recipe-replacement'},
                {old = 'auog-pup-breeding-2', new = 'auog-pup-breeding-2-glowing-mushroom', type = 'recipe-replacement'},
                {old = 'auog-pup-breeding-3', new = 'auog-pup-breeding-3-glowing-mushroom', type = 'recipe-replacement'},
                {old = 'auog-pup-breeding-4', new = 'auog-pup-breeding-4-glowing-mushroom', type = 'recipe-replacement'},
                {old = 'auog-pup-breeding-5', new = 'auog-pup-breeding-5-glowing-mushroom', type = 'recipe-replacement'},
            }
        },
        {
            name = 'underground-chambers',
            icon = '__pyalienlifegraphics3__/graphics/technology/underground-chambers.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'lock-recipe', 'recipe-replacement'
                {consumption = 0.25, speed = 0.1, type = 'module-effects'},
                {old = 'auog-paddock-mk01', new = 'auog-paddock-mk01-with-dirt', type = 'recipe-replacement'},
                {old = 'auog-paddock-mk02', new = 'auog-paddock-mk02-with-dirt', type = 'recipe-replacement'},
                {old = 'auog-paddock-mk03', new = 'auog-paddock-mk03-with-dirt', type = 'recipe-replacement'},
                {old = 'auog-paddock-mk04', new = 'auog-paddock-mk04-with-dirt', type = 'recipe-replacement'},
            }
        }
    },
    module_category = 'auog'
}