local FUN = require '__pycoalprocessing__/prototypes/functions/functions'

if data then
    local bots = {'py-construction-robot-01', 'py-construction-robot-02', 'c-pynobot-mk03', 'construction-robot-ht'}
    for i, recipe in pairs({
        table.deepcopy(data.raw.recipe['bhoddos-culture-mk01']),
        table.deepcopy(data.raw.recipe['bhoddos-culture-mk02']),
        table.deepcopy(data.raw.recipe['bhoddos-culture-mk03']),
        table.deepcopy(data.raw.recipe['bhoddos-culture-mk04']),
    }) do
        recipe.name = recipe.name .. '-with-pybot'
        FUN.add_ingredient(recipe, {name = bots[i], amount = 2 * i, type = 'item'})
        data:extend{recipe}
    end

    local biomass = {'nacl-biomass', 's-biomass', 'ni-biomass', 'ti-biomass'}
    for i, recipe in pairs({
        table.deepcopy(data.raw.recipe['bhoddos-1']),
        table.deepcopy(data.raw.recipe['bhoddos-2']),
        table.deepcopy(data.raw.recipe['bhoddos-3']),
        table.deepcopy(data.raw.recipe['bhoddos-4']),
    }) do
        recipe.name = recipe.name .. '-exoenzymes'
        FUN.add_ingredient(recipe, {name = biomass[i], amount = 5, type = 'item'})
        FUN.multiply_result_amount(recipe, 'bhoddos', 1.2)
        data:extend{recipe}
    end

    for i, spore in pairs({
        table.deepcopy(data.raw.recipe['bhoddos-spore']),
        table.deepcopy(data.raw.recipe['bhoddos-spore-3']),
    }) do
        spore.name = spore.name .. '-upgraded'
        spore.results = {{name = 'bhoddos-spore', amount = i*6, type = 'item', probability = 0.9}}
        data:extend{spore}
    end
end

return {
    affected_entities = { -- the entities that should be effected by this tech upgrade
        'bhoddos-culture-mk01',
        'bhoddos-culture-mk02',
        'bhoddos-culture-mk03',
        'bhoddos-culture-mk04',
    },
    master_tech = { -- tech that is shown in the tech tree
        name = 'bhoddos-upgrade',
        icon = '__pyalienlifegraphics3__/graphics/technology/updates/u-bhoddos.png',
        icon_size = 128,
        order = 'c-a',
        prerequisites = {'bhoddos-mk02', 'phytomining', 'effectivity-module-2'},
        unit = {
            count = 500,
            ingredients = {
                {'automation-science-pack', 1},
                {'logistic-science-pack', 1},
                {'py-science-pack-2', 1},
                {'chemical-science-pack', 1},
                {'py-science-pack-3', 1},
            },
            time = 45
        }
    },
    sub_techs = {
        {
            name = 'extra-drones',
            icon = '__pyalienlifegraphics3__/graphics/technology/extra-drones.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'lock-recipe', 'recipe-replacement'
                {consumption = 0.5, speed = 0.25, type = 'module-effects'},
                {old = 'bhoddos-culture-mk01', new = 'bhoddos-culture-mk01-with-pybot', type = 'recipe-replacement'},
                {old = 'bhoddos-culture-mk02', new = 'bhoddos-culture-mk02-with-pybot', type = 'recipe-replacement'},
                {old = 'bhoddos-culture-mk03', new = 'bhoddos-culture-mk03-with-pybot', type = 'recipe-replacement'},
                {old = 'bhoddos-culture-mk04', new = 'bhoddos-culture-mk04-with-pybot', type = 'recipe-replacement'},
            },
        },
        {
            name = 'exoenzymes',
            icon = '__pyalienlifegraphics3__/graphics/technology/exoenzymes.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'lock-recipe', 'recipe-replacement'
                {old = 'bhoddos-1', new = 'bhoddos-1-exoenzymes', type = 'recipe-replacement'},
                {old = 'bhoddos-2', new = 'bhoddos-2-exoenzymes', type = 'recipe-replacement'},
                {old = 'bhoddos-3', new = 'bhoddos-3-exoenzymes', type = 'recipe-replacement'},
                {old = 'bhoddos-4', new = 'bhoddos-4-exoenzymes', type = 'recipe-replacement'},
            }
        },
        {
            name = 'gills',
            icon = '__pyalienlifegraphics3__/graphics/technology/gills.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'lock-recipe', 'recipe-replacement'
                {old = 'bhoddos-spore', new = 'bhoddos-spore-upgraded', type = 'recipe-replacement'},
                {old = 'bhoddos-spore-3', new = 'bhoddos-spore-3-upgraded', type = 'recipe-replacement'},
            }
        }
    },
    module_category = 'bhoddos'
}