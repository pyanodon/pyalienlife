local FUN = require '__pycoalprocessing__/prototypes/functions/functions'

if data then
    data:extend{
        {
            type = 'item',
            name = 'deadhead',
            stack_size = 50,
            subgroup = 'py-alienlife-rennea',
            icon = '__pyalienlifegraphics__/graphics/icons/deadhead.png',
            icon_size = 28,
        },
        {
            type = 'recipe',
            name = 'deadhead-recycle',
            ingredients = {
                {'deadhead', 8},
                {type = 'fluid', name = 'water', amount = 100},
                {'coarse', 2}
            },
            results = {{'native-flora', 10}},
            enabled = false,
            category = 'rennea',
            energy_required = 10
        }
    }

    for amount, recipe in pairs({
        [15] = table.deepcopy(data.raw.recipe['rennea-1']),
        [34] = table.deepcopy(data.raw.recipe['rennea-2']),
        [66] = table.deepcopy(data.raw.recipe['rennea-3']),
        [108] = table.deepcopy(data.raw.recipe['rennea-4']),
    }) do
        recipe.name = recipe.name .. '-deadhead'
        FUN.add_result(recipe, {'deadhead', amount})
        recipe.main_product = 'deadhead'
        data:extend{recipe}
    end

    for _, recipe in pairs({
        table.deepcopy(data.raw.recipe['rennea-1']),
        table.deepcopy(data.raw.recipe['rennea-2']),
        table.deepcopy(data.raw.recipe['rennea-3']),
        table.deepcopy(data.raw.recipe['rennea-4']),
    }) do
        recipe.name = recipe.name .. '-hydrophile'
        recipe.energy_required = math.ceil(recipe.energy_required * 0.85)
        FUN.multiply_ingredient_amount(recipe, 'water', 10)
        --error(serpent.block(recipe.ingredients))
        data:extend{recipe}
    end
end

return {
    affected_entities = { -- the entities that should be effected by this tech upgrade
        'rennea-plantation-mk01',
        'rennea-plantation-mk02',
        'rennea-plantation-mk03',
        'rennea-plantation-mk04',
    },
    master_tech = { -- tech that is shown in the tech tree
        name = 'rennea-upgrade',
        icon = '__pyalienlifegraphics3__/graphics/technology/updates/u-rennea.png',
        icon_size = 128,
        order = 'c-a',
        prerequisites = {'rennea'},
        unit = {
            count = 500,
            ingredients = {
                {'automation-science-pack', 1},
                {'logistic-science-pack', 1},
                {'py-science-pack-2', 1},
            },
            time = 45
        }
    },
    sub_techs = {
        {
            name = 'deadheading',
            icon = '__pyalienlifegraphics3__/graphics/technology/deadheading.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'lock-recipe', 'recipe-replacement'
                {recipe = 'deadhead-recycle', type = 'unlock-recipe'},
                {old = 'rennea-1', new = 'rennea-1-deadhead', type = 'recipe-replacement'},
                {old = 'rennea-2', new = 'rennea-2-deadhead', type = 'recipe-replacement'},
                {old = 'rennea-3', new = 'rennea-3-deadhead', type = 'recipe-replacement'},
                {old = 'rennea-4', new = 'rennea-4-deadhead', type = 'recipe-replacement'},
            },
        },
        {
            name = 'alltime',
            icon = '__pyalienlifegraphics3__/graphics/technology/alltime.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'lock-recipe', 'recipe-replacement'
                {consumption = 0.5, type = 'module-effects'},
                {old = 'rennea-1', new = 'rennea-1-hydrophile', type = 'recipe-replacement'},
                {old = 'rennea-2', new = 'rennea-2-hydrophile', type = 'recipe-replacement'},
                {old = 'rennea-3', new = 'rennea-3-hydrophile', type = 'recipe-replacement'},
                {old = 'rennea-4', new = 'rennea-4-hydrophile', type = 'recipe-replacement'},
            }
        },
        {
            name = 'aphid-cleaning',
            icon = '__pyalienlifegraphics3__/graphics/technology/aphid-cleaning.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'lock-recipe', 'recipe-replacement'
                {consumption = 0.25, speed = 0, productivity = 0.2, type = 'module-effects'}
            }
        }
    },
    module_category = 'rennea'
}