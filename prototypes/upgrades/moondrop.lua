local FUN = require '__pycoalprocessing__/prototypes/functions/functions'

if data then
    for _, recipe in pairs({
        table.deepcopy(data.raw.recipe['moondrop-1']),
        table.deepcopy(data.raw.recipe['moondrop-2']),
        table.deepcopy(data.raw.recipe['moondrop-3']),
        table.deepcopy(data.raw.recipe['moondrop-4']),
        table.deepcopy(data.raw.recipe['moondrop-5']),
    }) do
        recipe.name = recipe.name .. '-cu'
        FUN.add_ingredient(recipe, {name = 'copper-ore', amount = 20, type = 'item'})
        FUN.multiply_result_amount(recipe, 'moondrop', 1.1)
        data:extend{recipe}
    end

    data:extend{{
        name = 'moondrop-co2',
        results = {{type = 'fluid', amount = 100, name = 'carbon-dioxide'}},
        energy_required = 5,
        ingredients = {},
        category = 'moon',
        enabled = false,
        type = 'recipe'
    }}

    local machine_recipe = table.deepcopy(data.raw.recipe['moondrop-greenhouse-mk01'])
    machine_recipe.name = machine_recipe.name .. '-with-lamp'
    FUN.add_ingredient(machine_recipe, {name = 'small-lamp', amount = 10, type = 'item'})
    data:extend{machine_recipe}
end

return {
    affected_entities = { -- the entities that should be effected by this tech upgrade
        'moondrop-greenhouse-mk01',
        'moondrop-greenhouse-mk02',
        'moondrop-greenhouse-mk03',
        'moondrop-greenhouse-mk04',
    },
    master_tech = { -- tech that is shown in the tech tree
        name = 'moondrop-upgrade',
        icon = '__pyalienlifegraphics3__/graphics/technology/updates/u-moondrop.png',
        icon_size = 128,
        order = 'c-a',
        prerequisites = {'moondrop'},
        unit = {
            count = 500,
            ingredients = {
                {'automation-science-pack', 1},
            },
            time = 45
        }
    },
    sub_techs = {
        {
            name = 'cu',
            icon = '__pyalienlifegraphics3__/graphics/technology/cu.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'lock-recipe', 'recipe-replacement'
                {old = 'moondrop-1', new = 'moondrop-1-cu', type = 'recipe-replacement'},
                {old = 'moondrop-2', new = 'moondrop-2-cu', type = 'recipe-replacement'},
                {old = 'moondrop-3', new = 'moondrop-3-cu', type = 'recipe-replacement'},
                {old = 'moondrop-4', new = 'moondrop-4-cu', type = 'recipe-replacement'},
                {old = 'moondrop-5', new = 'moondrop-5-cu', type = 'recipe-replacement'},
            },
        },
        {
            name = 'moon',
            icon = '__pyalienlifegraphics3__/graphics/technology/moon.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'lock-recipe', 'recipe-replacement'
                {consumption = 2, speed = 0.2, type = 'module-effects'},
                {old = 'moondrop-greenhouse-mk01', new = 'moondrop-greenhouse-mk01-with-lamp', type = 'recipe-replacement'},
            }
        },
        {
            name = 'carbon-capture',
            icon = '__pyalienlifegraphics3__/graphics/technology/carbon-capture.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'lock-recipe', 'recipe-replacement'
                {recipe = 'moondrop-co2', type = 'unlock-recipe'}
            }
        }
    },
    module_category = 'moondrop'
}