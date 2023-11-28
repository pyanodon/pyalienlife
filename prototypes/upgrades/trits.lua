local FUN = require '__pycoalprocessing__/prototypes/functions/functions'

if data and not yafc_turd_integration then
    for _, recipe in pairs({
        table.deepcopy(data.raw.recipe['trits-cub-1']),
        table.deepcopy(data.raw.recipe['trits-cub-2']),
        table.deepcopy(data.raw.recipe['trits-cub-3']),
        table.deepcopy(data.raw.recipe['trits-cub-4']),
    }) do
        recipe.name = recipe.name .. '-mgo'
        FUN.remove_ingredient(recipe, 'trits')
        data:extend{recipe}
    end

    for _, recipe in pairs({
        table.deepcopy(data.raw.recipe['trits-1']),
        table.deepcopy(data.raw.recipe['trits-2']),
        table.deepcopy(data.raw.recipe['trits-3']),
        table.deepcopy(data.raw.recipe['trits-4']),
    }) do
        recipe.name = recipe.name .. '-dc'
        recipe.energy_required = recipe.energy_required * 2
        FUN.multiply_result_amount(recipe, 'trits', 1.5)
        data:extend{recipe}
    end

    for i, recipe in pairs({
        table.deepcopy(data.raw.recipe['trits-reef-mk01']),
        table.deepcopy(data.raw.recipe['trits-reef-mk02']),
        table.deepcopy(data.raw.recipe['trits-reef-mk03']),
        table.deepcopy(data.raw.recipe['trits-reef-mk04']),
    }) do
        recipe.name = recipe.name .. '-with-nexelit'
        FUN.add_ingredient(recipe, {'high-grade-nexelit', i * 100})
        data:extend{recipe}
    end
end

return {
    affected_entities = { -- the entities that should be effected by this tech upgrade
        'trits-reef-mk01',
        'trits-reef-mk02',
        'trits-reef-mk03',
        'trits-reef-mk04',
    },
    master_tech = { -- tech that is shown in the tech tree
        name = 'trits-upgrade',
        icon = '__pyalienlifegraphics3__/graphics/technology/updates/u-trits.png',
        icon_size = 128,
        order = 'c-a',
        prerequisites = {'photonics', 'nexelit-mk03'},
        unit = {
            count = 500,
            ingredients = {
                {'automation-science-pack', 1},
                {'py-science-pack-1', 1},
                {'logistic-science-pack', 1},
                {'military-science-pack', 1},
                {'py-science-pack-2', 1},
                {'chemical-science-pack', 1},
                {'py-science-pack-3', 1},
                {'production-science-pack', 1},
            },
            time = 45
        }
    },
    sub_techs = {
        {
            name = 'mgo',
            icon = '__pyalienlifegraphics3__/graphics/technology/mgo.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'recipe-replacement'
                {old = 'trits-cub-1', new = 'trits-cub-1-mgo', type = 'recipe-replacement'},
                {old = 'trits-cub-2', new = 'trits-cub-2-mgo', type = 'recipe-replacement'},
                {old = 'trits-cub-3', new = 'trits-cub-3-mgo', type = 'recipe-replacement'},
                {old = 'trits-cub-4', new = 'trits-cub-4-mgo', type = 'recipe-replacement'},
            },
        },
        {
            name = 'dc',
            icon = '__pyalienlifegraphics3__/graphics/technology/dc.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'recipe-replacement'
                {old = 'trits-1', new = 'trits-1-dc', type = 'recipe-replacement'},
                {old = 'trits-2', new = 'trits-2-dc', type = 'recipe-replacement'},
                {old = 'trits-3', new = 'trits-3-dc', type = 'recipe-replacement'},
                {old = 'trits-4', new = 'trits-4-dc', type = 'recipe-replacement'},
            }
        },
        {
            name = 'nexelit-axis',
            icon = '__pyalienlifegraphics3__/graphics/technology/nexelit-axis.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'recipe-replacement'
                {consumption = -0.2, productivity = 0.25, speed = 0.25, type = 'module-effects'},
                {old = 'trits-reef-mk01', new = 'trits-reef-mk01-with-nexelit', type = 'recipe-replacement'},
                {old = 'trits-reef-mk02', new = 'trits-reef-mk02-with-nexelit', type = 'recipe-replacement'},
                {old = 'trits-reef-mk03', new = 'trits-reef-mk03-with-nexelit', type = 'recipe-replacement'},
                {old = 'trits-reef-mk04', new = 'trits-reef-mk04-with-nexelit', type = 'recipe-replacement'},
            }
        }
    },
    module_category = 'trits'
}