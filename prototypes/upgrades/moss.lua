local FUN = require '__pycoalprocessing__/prototypes/functions/functions'

if data and not yafc_turd_integration then
    data:extend{{
        type = 'recipe',
        name = 'chlorinated-water',
        category = 'chemistry',
        enabled = false,
        energy_required = 3,
        ingredients = {
            {type = 'fluid', name = 'pressured-water', amount = 50},
            {type = 'fluid', name = 'chlorine', amount = 10},
            {'plastic-bar', 1}
        },
        results = {
            {type = 'item', name = 'chlorinated-water', amount = 1},
        },
    }}

    for _, recipe in pairs({
        table.deepcopy(data.raw.recipe['Moss 1']),
        table.deepcopy(data.raw.recipe['Moss 2']),
        table.deepcopy(data.raw.recipe['Moss 3']),
        table.deepcopy(data.raw.recipe['Moss 4']),
        table.deepcopy(data.raw.recipe['Moss 5']),
    }) do
        recipe.name = recipe.name .. '-chlorinated'
        FUN.add_ingredient(recipe, {name = 'chlorinated-water', amount = 1, type = 'item'})
        FUN.multiply_result_amount(recipe, 'moss', 1.3)
        recipe.energy_required = math.ceil(recipe.energy_required * 0.9)
        data:extend{recipe}
    end

    for _, recipe in pairs({
        table.deepcopy(data.raw.recipe['Moss 1']),
        table.deepcopy(data.raw.recipe['Moss 2']),
        table.deepcopy(data.raw.recipe['Moss 3']),
        table.deepcopy(data.raw.recipe['Moss 4']),
        table.deepcopy(data.raw.recipe['Moss 5']),
    }) do
        recipe.name = recipe.name .. '-without-sludge'
        FUN.remove_ingredient(recipe, 'dirty-water-light')
        data:extend{recipe}
    end

    data:extend{
        {
            type = 'recipe',
            name = 'unrefine-refsyngas',
            category = 'moss',
            energy_required = 16,
            ingredients = {
                {type = 'fluid', name = 'refsyngas', amount = 100},
                {type = 'item', name = 'moss', amount = 2},
                {type = 'fluid', name = 'dirty-water-light', amount = 50},
            },
            results = {
                {type = 'fluid', name = 'syngas', amount = 90}
            },
            enabled = false
        },
        {
            type = 'recipe',
            name = 'unrefine-refined-natural-gas',
            category = 'moss',
            energy_required = 16,
            ingredients = {
                {type = 'fluid', name = 'refined-natural-gas', amount = 100},
                {type = 'item', name = 'moss', amount = 2},
                {type = 'fluid', name = 'carbon-dioxide', amount = 50},
            },
            results = {
                {type = 'fluid', name = 'natural-gas', amount = 90}
            },
            enabled = false
        },
    }

    for i, recipe in pairs({
        table.deepcopy(data.raw.recipe['moss-farm-mk01']),
        table.deepcopy(data.raw.recipe['moss-farm-mk02']),
        table.deepcopy(data.raw.recipe['moss-farm-mk03']),
        table.deepcopy(data.raw.recipe['moss-farm-mk04']),
    }) do
        recipe.name = recipe.name .. '-with-bioreactor'
        FUN.add_ingredient(recipe, {name = 'bio-reactor-mk0'..i, amount = 1, type = 'item'})
        data:extend{recipe}
    end
end

return {
    affected_entities = { -- the entities that should be effected by this tech upgrade
        'moss-farm-mk01',
        'moss-farm-mk02',
        'moss-farm-mk03',
        'moss-farm-mk04',
    },
    master_tech = { -- tech that is shown in the tech tree
        name = 'moss-upgrade',
        icon = '__pyalienlifegraphics3__/graphics/technology/updates/u-moss.png',
        icon_size = 128,
        order = 'c-a',
        prerequisites = {'machines-mk01', 'moss-mk01', 'melamine'},
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
            name = 'spores',
            icon = '__pyalienlifegraphics3__/graphics/technology/spores.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'recipe-replacement'
                {recipe = 'chlorinated-water', type = 'unlock-recipe'},
                {old = 'Moss 1', new = 'Moss 1-chlorinated', type = 'recipe-replacement'},
                {old = 'Moss 2', new = 'Moss 2-chlorinated', type = 'recipe-replacement'},
                {old = 'Moss 3', new = 'Moss 3-chlorinated', type = 'recipe-replacement'},
                {old = 'Moss 4', new = 'Moss 4-chlorinated', type = 'recipe-replacement'},
                {old = 'Moss 5', new = 'Moss 5-chlorinated', type = 'recipe-replacement'},
            },
        },
        {
            name = 'hd-moss',
            icon = '__pyalienlifegraphics3__/graphics/technology/hd-moss.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'recipe-replacement'
                {consumption = 1.5, type = 'module-effects'},
                {old = 'Moss 1', new = 'Moss 1-without-sludge', type = 'recipe-replacement'},
                {old = 'Moss 2', new = 'Moss 2-without-sludge', type = 'recipe-replacement'},
                {old = 'Moss 3', new = 'Moss 3-without-sludge', type = 'recipe-replacement'},
                {old = 'Moss 4', new = 'Moss 4-without-sludge', type = 'recipe-replacement'},
                {old = 'Moss 5', new = 'Moss 5-without-sludge', type = 'recipe-replacement'},
            }
        },
        {
            name = 'inbuilt-moss',
            icon = '__pyalienlifegraphics3__/graphics/technology/inbuilt-moss.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'recipe-replacement'
                {pollution = -2.5, type = 'module-effects'},
                {recipe = 'unrefine-refsyngas', type = 'unlock-recipe'},
                {recipe = 'unrefine-refined-natural-gas', type = 'unlock-recipe'},
                {old = 'moss-farm-mk01', new = 'moss-farm-mk01-with-bioreactor', type = 'recipe-replacement'},
                {old = 'moss-farm-mk02', new = 'moss-farm-mk02-with-bioreactor', type = 'recipe-replacement'},
                {old = 'moss-farm-mk03', new = 'moss-farm-mk03-with-bioreactor', type = 'recipe-replacement'},
                {old = 'moss-farm-mk04', new = 'moss-farm-mk04-with-bioreactor', type = 'recipe-replacement'},
            }
        }
    },
    module_category = 'moss'
}