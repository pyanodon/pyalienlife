local FUN = require '__pycoalprocessing__/prototypes/functions/functions'

if data and not yafc_turd_integration then
    for _, recipe in pairs({
        table.deepcopy(data.raw.recipe['korlex-milk-1']),
        table.deepcopy(data.raw.recipe['korlex-milk-2']),
        table.deepcopy(data.raw.recipe['korlex-milk-3']),
        table.deepcopy(data.raw.recipe['korlex-milk-4']),
    }) do
        recipe.name = recipe.name .. '-doubled'
        FUN.multiply_ingredient_amount(recipe, 'water-barrel', 2)
        FUN.multiply_ingredient_amount(recipe, 'empty-barrel-milk', 2)
        FUN.multiply_result_amount(recipe, 'empty-barrel', 2)
        FUN.multiply_result_amount(recipe, 'barrel-milk', 2)
        recipe.energy_required = recipe.energy_required * 2
        data:extend{recipe}
    end

    for i, recipe in pairs({
        table.deepcopy(data.raw.recipe['korlex-1']),
        table.deepcopy(data.raw.recipe['korlex-2']),
        table.deepcopy(data.raw.recipe['korlex-3']),
        table.deepcopy(data.raw.recipe['korlex-4']),
    }) do
        recipe.name = recipe.name .. '-slowed'
        FUN.add_ingredient(recipe, {'barrel-milk', i})
        FUN.add_result(recipe, {'empty-barrel-milk', i})
        recipe.energy_required = math.ceil(recipe.energy_required * 1.3)
        data:extend{recipe}
    end

    for i, recipe in pairs({
        table.deepcopy(data.raw.recipe['korlex-milk-1']),
        table.deepcopy(data.raw.recipe['korlex-milk-2']),
        table.deepcopy(data.raw.recipe['korlex-milk-3']),
        table.deepcopy(data.raw.recipe['korlex-milk-4']),
    }) do
        recipe.name = recipe.name .. '-pressured'
        FUN.add_ingredient(recipe, {type = 'fluid', name = 'pressured-hydrogen', amount = 20})
        recipe.energy_required = math.ceil(recipe.energy_required * 0.7)
        FUN.add_result(recipe, {type = 'item', name = 'kimberlite-grade3', amount_min = i*11, amount_max = i*16})
        data:extend{recipe}
    end

    for i, recipe in pairs({
        table.deepcopy(data.raw.recipe['ez-ranch-mk01']),
        table.deepcopy(data.raw.recipe['ez-ranch-mk02']),
        table.deepcopy(data.raw.recipe['ez-ranch-mk03']),
        table.deepcopy(data.raw.recipe['ez-ranch-mk04']),
    }) do
        recipe.name = recipe.name .. '-with-nexelit'
        FUN.add_ingredient(recipe, {type = 'item', name = 'saturated-nexelit-cartridge', amount = 10 * i})
        data:extend{recipe}
    end
end

return {
    affected_entities = { -- the entities that should be effected by this tech upgrade
        'ez-ranch-mk01',
        'ez-ranch-mk02',
        'ez-ranch-mk03',
        'ez-ranch-mk04',
    },
    master_tech = { -- tech that is shown in the tech tree
        name = 'korlex-upgrade',
        icon = '__pyalienlifegraphics3__/graphics/technology/updates/u-korlex.png',
        icon_size = 128,
        order = 'c-a',
        prerequisites = {'korlex-mk03', 'filtration-mk02'},
        unit = {
            count = 500,
            ingredients = {
                {'automation-science-pack', 1},
                {'logistic-science-pack', 1},
                {'chemical-science-pack', 1},
                {'py-science-pack-3', 1},
            },
            time = 45
        }
    },
    sub_techs = {
        {
            name = 'multi-tit',
            icon = '__pyalienlifegraphics3__/graphics/technology/multi-tit.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'recipe-replacement'
                {old = 'korlex-milk-1', new = 'korlex-milk-1-doubled', type = 'recipe-replacement'},
                {old = 'korlex-milk-2', new = 'korlex-milk-2-doubled', type = 'recipe-replacement'},
                {old = 'korlex-milk-3', new = 'korlex-milk-3-doubled', type = 'recipe-replacement'},
                {old = 'korlex-milk-4', new = 'korlex-milk-4-doubled', type = 'recipe-replacement'},
                {old = 'korlex-1', new = 'korlex-1-slowed', type = 'recipe-replacement'},
                {old = 'korlex-2', new = 'korlex-2-slowed', type = 'recipe-replacement'},
                {old = 'korlex-3', new = 'korlex-3-slowed', type = 'recipe-replacement'},
                {old = 'korlex-4', new = 'korlex-4-slowed', type = 'recipe-replacement'},
            },
        },
        {
            name = 'high-pressure',
            icon = '__pyalienlifegraphics3__/graphics/technology/high-pressure.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'recipe-replacement'
                {old = 'korlex-milk-1', new = 'korlex-milk-1-pressured', type = 'recipe-replacement'},
                {old = 'korlex-milk-2', new = 'korlex-milk-2-pressured', type = 'recipe-replacement'},
                {old = 'korlex-milk-3', new = 'korlex-milk-3-pressured', type = 'recipe-replacement'},
                {old = 'korlex-milk-4', new = 'korlex-milk-4-pressured', type = 'recipe-replacement'},
            }
        },
        {
            name = 'nx-heat-pump',
            icon = '__pyalienlifegraphics3__/graphics/technology/nx-heat-pump.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'recipe-replacement'
                {consumption = -0.25, speed = 0.3, productivity = 0.1, type = 'module-effects'},
                {old = 'ez-ranch-mk01', new = 'ez-ranch-mk01-with-nexelit', type = 'recipe-replacement'},
                {old = 'ez-ranch-mk02', new = 'ez-ranch-mk02-with-nexelit', type = 'recipe-replacement'},
                {old = 'ez-ranch-mk03', new = 'ez-ranch-mk03-with-nexelit', type = 'recipe-replacement'},
                {old = 'ez-ranch-mk04', new = 'ez-ranch-mk04-with-nexelit', type = 'recipe-replacement'},
            }
        }
    },
    module_category = 'korlex'
}