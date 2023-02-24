local FUN = require '__pycoalprocessing__/prototypes/functions/functions'

if data then
    for _, recipe in pairs({
        table.deepcopy(data.raw.recipe['vrauks-1']),
        table.deepcopy(data.raw.recipe['vrauks-2']),
        table.deepcopy(data.raw.recipe['vrauks-3']),
        table.deepcopy(data.raw.recipe['vrauks-4']),
        table.deepcopy(data.raw.recipe['vrauks-5']),
    }) do
        recipe.name = recipe.name .. '-no-water'
        local barrel_number = FUN.remove_ingredient(recipe, 'water-barrel')
        FUN.add_result_amount(recipe, 'empty-barrel', -barrel_number)
        for i, result in pairs(recipe.results) do
            if result.name == 'empty-barrel' and result.amount == 0 then
                table.remove(recipe.results, i)
                break
            end
        end
        recipe.energy_required = math.ceil(recipe.energy_required * 1.04)
        data:extend{recipe}
    end

    data:extend{{
        type = 'recipe',
        name = 'ammonia-from-cyanic',
        category = 'distilator',
        enabled = false,
        energy_required = 8,
        ingredients = {
            {type = 'fluid', name = 'cyanic-acid', amount = 60},
            {type = 'fluid', name = 'hydrogen', amount = 10},
            {type = 'fluid', name = 'formic-acid', amount = 30},
        },
        results = {
            {type = 'fluid', name = 'ammonia', amount = 60},
            {type = 'fluid', name = 'carbon-dioxide', amount = 30},
        },
        main_product = 'ammonia',
        localised_name = {'technology-name.cyanic-recycling'}
    }}
end

return {
    affected_entities = { -- the entities that should be effected by this tech upgrade
        'vrauks-paddock-mk01',
        'vrauks-paddock-mk02',
        'vrauks-paddock-mk03',
        'vrauks-paddock-mk04',
    },
    master_tech = { -- tech that is shown in the tech tree
        name = 'vrauks-upgrade',
        icon = '__pyalienlifegraphics3__/graphics/technology/updates/u-vrauk.png',
        icon_size = 128,
        order = 'c-a',
        prerequisites = {'vrauks-mk02'},
        unit = {
            count = 500,
            ingredients = {
                {'automation-science-pack', 1},
                {'py-science-pack-1', 1},
            },
            time = 45
        }
    },
    sub_techs = {
        {
            name = 'reuse-water',
            icon = '__pyalienlifegraphics3__/graphics/technology/reuse-water.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'lock-recipe', 'recipe-replacement'
                {old = 'vrauks-1', new = 'vrauks-1-no-water', type = 'recipe-replacement'},
                {old = 'vrauks-2', new = 'vrauks-2-no-water', type = 'recipe-replacement'},
                {old = 'vrauks-3', new = 'vrauks-3-no-water', type = 'recipe-replacement'},
                {old = 'vrauks-4', new = 'vrauks-4-no-water', type = 'recipe-replacement'},
                {old = 'vrauks-5', new = 'vrauks-5-no-water', type = 'recipe-replacement'},
            },
        },
        {
            name = 'natural-cycle',
            icon = '__pyalienlifegraphics3__/graphics/technology/natural-cycle.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'lock-recipe', 'recipe-replacement'
                {consumption = -0.5, speed = -0.2, productivity = 0.1, type = 'module-effects'}
            }
        },
        {
            name = 'cyanic-recycling',
            icon = '__pyalienlifegraphics3__/graphics/technology/cyanic-recycling.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'lock-recipe', 'recipe-replacement'
                {recipe = 'ammonia-from-cyanic', type = 'unlock-recipe'}
            }
        }
    },
    module_category = 'vrauks'
}