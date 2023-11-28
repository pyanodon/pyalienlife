local FUN = require '__pycoalprocessing__/prototypes/functions/functions'

if data and not yafc_turd_integration then
    data:extend{
        {
            type = 'recipe',
            name = 'gas-bladder-to-deuterium',
            enabled = false,
            energy_required = 10,
            category = 'gas-refinery',
            ingredients = {{'gas-bladder', 1}},
            results = {{type = 'fluid', name = 'deuterium', amount = 5}}
        },
        {
            type = 'recipe',
            name = 'gas-bladder-to-dry-gas-stream',
            enabled = false,
            energy_required = 10,
            category = 'gas-refinery',
            ingredients = {{'gas-bladder', 1}},
            results = {{type = 'fluid', name = 'dry-gas-stream', amount = 5}}
        }
    }

    for _, recipe in pairs({
        table.deepcopy(data.raw.recipe['phagnot-cub-1']),
        table.deepcopy(data.raw.recipe['phagnot-cub-2']),
        table.deepcopy(data.raw.recipe['phagnot-cub-3']),
        table.deepcopy(data.raw.recipe['phagnot-cub-4']),
    }) do
        recipe.name = recipe.name .. '-fast'
        recipe.energy_required = math.ceil(recipe.energy_required * 0.7)
        FUN.multiply_ingredient_amount(recipe, 'yotoi-seeds', 2/3)
        FUN.add_result_amount(recipe, 'phagnot-cub', 1)
        data:extend{recipe}
    end

    for _, recipe in pairs({
        table.deepcopy(data.raw.recipe['phagnot-1']),
        table.deepcopy(data.raw.recipe['phagnot-2']),
        table.deepcopy(data.raw.recipe['phagnot-3']),
        table.deepcopy(data.raw.recipe['phagnot-4']),
        table.deepcopy(data.raw.recipe['phagnot-cub-1']),
        table.deepcopy(data.raw.recipe['phagnot-cub-2']),
        table.deepcopy(data.raw.recipe['phagnot-cub-3']),
        table.deepcopy(data.raw.recipe['phagnot-cub-4']),
    }) do
        recipe.name = recipe.name .. '-kicalk'
        FUN.add_ingredient(recipe, {name = 'kicalk', amount = 1, type = 'item'})
        FUN.remove_ingredient(recipe, 'raw-fiber')
        data:extend{recipe}
    end

    for _, recipe in pairs({
        table.deepcopy(data.raw.recipe['phagnot-food-01']),
        table.deepcopy(data.raw.recipe['phagnot-food-02']),
    }) do
        recipe.name = recipe.name .. '-kicalk'
        FUN.remove_ingredient(recipe, 'raw-fiber')
        data:extend{recipe}
    end
end

return {
    affected_entities = { -- the entities that should be effected by this tech upgrade
        'phagnot-corral-mk01',
        'phagnot-corral-mk02',
        'phagnot-corral-mk03',
        'phagnot-corral-mk04',
    },
    master_tech = { -- tech that is shown in the tech tree
        name = 'phagnot-upgrade',
        icon = '__pyalienlifegraphics3__/graphics/technology/updates/u-phagnot.png',
        icon_size = 128,
        order = 'c-a',
        prerequisites = {'phagnot-mk02'},
        unit = {
            count = 500,
            ingredients = {
                {'automation-science-pack', 1},
                {'logistic-science-pack', 1},
                {'chemical-science-pack', 1},
            },
            time = 45
        }
    },
    sub_techs = {
        {
            name = 'leader',
            icon = '__pyalienlifegraphics3__/graphics/technology/leader.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'recipe-replacement'
                {recipe = 'gas-bladder-to-deuterium', type = 'unlock-recipe'},
                {recipe = 'gas-bladder-to-dry-gas-stream', type = 'unlock-recipe'},
            },
        },
        {
            name = 'socialization',
            icon = '__pyalienlifegraphics3__/graphics/technology/socialization.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'recipe-replacement'
            {old = 'phagnot-cub-1', new = 'phagnot-cub-1-fast', type = 'recipe-replacement'},
            {old = 'phagnot-cub-2', new = 'phagnot-cub-2-fast', type = 'recipe-replacement'},
            {old = 'phagnot-cub-3', new = 'phagnot-cub-3-fast', type = 'recipe-replacement'},
            {old = 'phagnot-cub-4', new = 'phagnot-cub-4-fast', type = 'recipe-replacement'},
            }
        },
        {
            name = 'hr',
            icon = '__pyalienlifegraphics3__/graphics/technology/hr.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'recipe-replacement'
                {old = 'phagnot-1', new = 'phagnot-1-kicalk', type = 'recipe-replacement'},
                {old = 'phagnot-2', new = 'phagnot-2-kicalk', type = 'recipe-replacement'},
                {old = 'phagnot-3', new = 'phagnot-3-kicalk', type = 'recipe-replacement'},
                {old = 'phagnot-4', new = 'phagnot-4-kicalk', type = 'recipe-replacement'},
                {old = 'phagnot-cub-1', new = 'phagnot-cub-1-kicalk', type = 'recipe-replacement'},
                {old = 'phagnot-cub-2', new = 'phagnot-cub-2-kicalk', type = 'recipe-replacement'},
                {old = 'phagnot-cub-3', new = 'phagnot-cub-3-kicalk', type = 'recipe-replacement'},
                {old = 'phagnot-cub-4', new = 'phagnot-cub-4-kicalk', type = 'recipe-replacement'},
                {old = 'phagnot-food-01', new = 'phagnot-food-01-kicalk', type = 'recipe-replacement'},
                {old = 'phagnot-food-02', new = 'phagnot-food-02-kicalk', type = 'recipe-replacement'},
            }
        }
    },
    module_category = 'phagnot'
}