local FUN = require '__pycoalprocessing__/prototypes/functions/functions'

if data then
    for _, recipe in pairs({
        table.deepcopy(data.raw.recipe['breed-fish-1']),
        table.deepcopy(data.raw.recipe['breed-fish-2']),
        table.deepcopy(data.raw.recipe['breed-fish-3']),
        table.deepcopy(data.raw.recipe['breed-fish-4']),
    }) do
        recipe.name = recipe.name .. '-agressive-selection'
        FUN.multiply_result_amount(recipe, 'fish', 0.9)
        FUN.add_result(recipe, {'fish-food-01', 1})
        data:extend{recipe}
    end

    for ingredients, recipe in pairs({
        [{{'cooling-tower-mk01', 1}, {'boiler', 1}}] = table.deepcopy(data.raw.recipe['fish-farm-mk01']),
        [{{'cooling-tower-mk02', 1}, {'py-heat-exchanger', 1}}] = table.deepcopy(data.raw.recipe['fish-farm-mk02']),
        [{{'cooling-system', 1}, {'heat-exchanger', 1}}] = table.deepcopy(data.raw.recipe['fish-farm-mk03']),
        [{{'cryocooler', 1}, {'heating-system', 1}}] = table.deepcopy(data.raw.recipe['fish-farm-mk04']),
    }) do
        recipe.name = recipe.name .. '-heating-cooling'
        FUN.remove_ingredient(recipe, 'py-heat-exchanger')
        for _, ingredient in pairs(ingredients) do FUN.add_ingredient(recipe, ingredient) end
        data:extend{recipe}
    end

    for _, recipe in pairs({
        table.deepcopy(data.raw.recipe['breed-fish-egg-1']),
        table.deepcopy(data.raw.recipe['breed-fish-egg-2']),
        table.deepcopy(data.raw.recipe['breed-fish-egg-3']),
        table.deepcopy(data.raw.recipe['breed-fish-egg-4']),
    }) do
        recipe.name = recipe.name .. '-doused'
        FUN.remove_result(recipe, 'waste-water')
        FUN.add_result(recipe, {type = 'fluid', name = 'pressured-water', amount = 10})
        FUN.multiply_result_amount(recipe, 'fish-egg', 1.15)
        recipe.energy_required = math.ceil(recipe.energy_required * 0.9)
        data:extend{recipe}
    end
end

return {
    affected_entities = { -- the entities that should be effected by this tech upgrade
        'fish-farm-mk01',
        'fish-farm-mk02',
        'fish-farm-mk03',
        'fish-farm-mk04',
    },
    master_tech = { -- tech that is shown in the tech tree
        name = 'fish-upgrade',
        icon = '__pyalienlifegraphics3__/graphics/technology/updates/u-fish.png',
        icon_size = 128,
        order = 'c-a',
        prerequisites = {'fish-mk01', 'cooling-tower-1'},
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
            name = 'a-select',
            icon = '__pyalienlifegraphics3__/graphics/technology/a-select.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'lock-recipe', 'recipe-replacement'
                {old = 'breed-fish-1', new = 'breed-fish-1-agressive-selection', type = 'recipe-replacement'},
                {old = 'breed-fish-2', new = 'breed-fish-2-agressive-selection', type = 'recipe-replacement'},
                {old = 'breed-fish-3', new = 'breed-fish-3-agressive-selection', type = 'recipe-replacement'},
                {old = 'breed-fish-4', new = 'breed-fish-4-agressive-selection', type = 'recipe-replacement'},
            },
        },
        {
            name = 'temp-control',
            icon = '__pyalienlifegraphics3__/graphics/technology/temp-control.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'lock-recipe', 'recipe-replacement'
                {consumption = 1, speed = 0.1, type = 'module-effects'},
                {old = 'fish-farm-mk01', new = 'fish-farm-mk01-heating-cooling', type = 'recipe-replacement'},
                {old = 'fish-farm-mk02', new = 'fish-farm-mk02-heating-cooling', type = 'recipe-replacement'},
                {old = 'fish-farm-mk03', new = 'fish-farm-mk03-heating-cooling', type = 'recipe-replacement'},
                {old = 'fish-farm-mk04', new = 'fish-farm-mk04-heating-cooling', type = 'recipe-replacement'},
            }
        },
        {
            name = 'dosing-pump',
            icon = '__pyalienlifegraphics3__/graphics/technology/dosing-pump.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'lock-recipe', 'recipe-replacement'
                {old = 'breed-fish-egg-1', new = 'breed-fish-egg-1-doused', type = 'recipe-replacement'},
                {old = 'breed-fish-egg-2', new = 'breed-fish-egg-2-doused', type = 'recipe-replacement'},
                {old = 'breed-fish-egg-3', new = 'breed-fish-egg-3-doused', type = 'recipe-replacement'},
                {old = 'breed-fish-egg-4', new = 'breed-fish-egg-4-doused', type = 'recipe-replacement'},
            }
        }
    },
    module_category = 'fish'
}