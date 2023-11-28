local FUN = require '__pycoalprocessing__/prototypes/functions/functions'

if data and not yafc_turd_integration then
    data:extend{{
        type = 'recipe',
        name = 'cridren-sixth-layer-ethylene-chlorohydrin',
        enabled = false,
        category = 'cridren',
        ingredients = {
            {'caged-phadai', 1},
            {'silver-plate', 2},
            {'water-barrel', 20},
        },
        results = {
            {'cage', 1},
            {'ethylene-chlorohydrin-barrel',  20},
            {'bones', 2},
            {'cridren-seeds', 1},
        },
        energy_required = 40,
        main_product = 'ethylene-chlorohydrin-barrel',
        icon = '__pypetroleumhandlinggraphics__/graphics/icons/ethylene-chlorohydrin.png',
        icon_size = 32
    }}

    data:extend{{
        type = 'recipe',
        name = 'cridren-sixth-layer-organic-acid-anhydride',
        enabled = false,
        category = 'cridren',
        ingredients = {
            {'caged-vrauks', 1},
            {'geothermal-water-barrel', 20},
            {'p2s5', 1}
        },
        results = {
            {'chitin', 3},
            {'organic-acid-anhydride-barrel',  20},
            {'cage', 1},
            {'cridren-seeds', 1},
        },
        energy_required = 40,
        main_product = 'organic-acid-anhydride-barrel',
        icon = '__pyalternativeenergygraphics__/graphics/icons/organic-acid-anhydride.png',
        icon_size = 64
    }}

    for i, recipe in pairs({
        table.deepcopy(data.raw.recipe['cridren-1']),
        table.deepcopy(data.raw.recipe['cridren-2']),
        table.deepcopy(data.raw.recipe['cridren-3']),
        table.deepcopy(data.raw.recipe['cridren-4']),
    }) do
        recipe.name = recipe.name .. '-neural-cranio'
        FUN.multiply_ingredient_amount(recipe, 'caged-arthurian', 2)
        FUN.multiply_result_amount(recipe, 'cridren', 2)
        FUN.add_result_amount(recipe, 'cridren', 1)
        recipe.energy_required = recipe.energy_required * 2
        FUN.multiply_result_amount(recipe, 'cage', 2)
        data:extend{recipe}
    end

    local mufflers = {'polycrystalline-slab', 'alag-grid', 'wall-shield', 'reinforced-wall-shield'}
    for i, recipe in pairs({
        table.deepcopy(data.raw.recipe['cridren-enclosure-mk01']),
        table.deepcopy(data.raw.recipe['cridren-enclosure-mk02']),
        table.deepcopy(data.raw.recipe['cridren-enclosure-mk03']),
        table.deepcopy(data.raw.recipe['cridren-enclosure-mk04']),
    }) do
        recipe.name = recipe.name .. '-with-mufflers'
        FUN.add_ingredient(recipe, {mufflers[i], i * 35})
        data:extend{recipe}
    end
end

return {
    affected_entities = { -- the entities that should be effected by this tech upgrade
        'cridren-enclosure-mk01',
        'cridren-enclosure-mk02',
        'cridren-enclosure-mk03',
        'cridren-enclosure-mk04',
    },
    master_tech = { -- tech that is shown in the tech tree
        name = 'cridren-upgrade',
        icon = '__pyalienlifegraphics3__/graphics/technology/updates/u-cridren.png',
        icon_size = 128,
        order = 'c-a',
        prerequisites = {'cridren-mk02'},
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
            name = 'sixth-layer',
            icon = '__pyalienlifegraphics3__/graphics/technology/sixth-layer.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'recipe-replacement'
                {type = 'unlock-recipe', recipe = 'cridren-sixth-layer-ethylene-chlorohydrin'},
                {type = 'unlock-recipe', recipe = 'cridren-sixth-layer-organic-acid-anhydride'}
            },
        },
        {
            name = 'neural-cranio',
            icon = '__pyalienlifegraphics3__/graphics/technology/neural-cranio.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'recipe-replacement'
                {old = 'cridren-1', new = 'cridren-1-neural-cranio', type = 'recipe-replacement'},
                {old = 'cridren-2', new = 'cridren-2-neural-cranio', type = 'recipe-replacement'},
                {old = 'cridren-3', new = 'cridren-3-neural-cranio', type = 'recipe-replacement'},
                {old = 'cridren-4', new = 'cridren-4-neural-cranio', type = 'recipe-replacement'},
            }
        },
        {
            name = 'mufflers',
            icon = '__pyalienlifegraphics3__/graphics/technology/mufflers.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'recipe-replacement'
                {speed = 0.1, productivity = 0.1, consumption = -0.25, type = 'module-effects'},
                {old = 'cridren-enclosure-mk01', new = 'cridren-enclosure-mk01-with-mufflers', type = 'recipe-replacement'},
                {old = 'cridren-enclosure-mk02', new = 'cridren-enclosure-mk02-with-mufflers', type = 'recipe-replacement'},
                {old = 'cridren-enclosure-mk03', new = 'cridren-enclosure-mk03-with-mufflers', type = 'recipe-replacement'},
                {old = 'cridren-enclosure-mk04', new = 'cridren-enclosure-mk04-with-mufflers', type = 'recipe-replacement'},
            }
        }
    },
    module_category = 'cridren'
}