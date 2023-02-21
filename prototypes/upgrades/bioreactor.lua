local FUN = require '__pycoalprocessing__/prototypes/functions/functions'

if data then
    for i, recipe in pairs({
        table.deepcopy(data.raw.recipe['bio-reactor-mk01']),
        table.deepcopy(data.raw.recipe['bio-reactor-mk02']),
        table.deepcopy(data.raw.recipe['bio-reactor-mk03']),
        table.deepcopy(data.raw.recipe['bio-reactor-mk04']),
    }) do
        recipe.name = recipe.name .. '-with-baffles'
        FUN.add_ingredient(recipe, {name = 'baffles', amount = 20 * i, type = 'item'})
        data:extend{recipe}
    end

    data:extend{
        {
            type = 'item',
            stack_size = 50,
            name = 'baffles',
            icon = '__pyalienlifegraphics__/graphics/icons/baffles.png',
            icon_size = 64,
            subgroup = 'py-alternativeenergy-items'
        },
        {
            type = 'recipe',
            name = 'baffles',
            result = 'baffles',
            ingredients = {
                {type = 'item', name = 'ometad', amount = 10},
                {type = 'item', name = 'rpc-mesh', amount = 8},
                {type = 'item', name = 'cobalt-sulfate', amount = 20},
                {type = 'item', name = 'hardener', amount = 2},
                {type = 'fluid', name = 'fluorine-gas', amount = 100},
            },
            enabled = false,
            category = 'nmf',
            energy_required = 10
        },
        {
            type = 'recipe',
            name = 'liquid-manure-oxygen',
            ingredients = {
                {type = 'item', name = 'manure', amount = 8},
                {type = 'fluid', name = 'water', amount = 900},
                {type = 'fluid', name = 'oxygen', amount = 100},
                {type = 'fluid', name = 'manure-bacteria', amount = 30},
            },
            results = {
                {type = 'fluid', name = 'liquid-manure', amount = 350},
                {type = 'fluid', name = 'black-liquor', amount = 350},
            },
            enabled = false,
            category = 'bio-reactor',
            energy_required = 40,
            main_product = 'liquid-manure'
        },
        {
            type = 'recipe',
            name = 'jacket-bio-ore',
            enabled = false,
            category = 'bio-reactor',
            energy_required = 200,
            ingredients = {
                {type = 'item', name = 'coal', amount = 80},
                {type = 'item', name = 'biofet', amount = 1},
                {type = 'item', name = 'magnetic-beads', amount = 2},
                {type = 'fluid', name = 'hydrogen', amount = 250},
                {type = 'item', name = 'advanced-substrate', amount = 1},
            },
            results = {
                {type = 'item', name = 'bio-ore', amount = 80},
                {type = 'item', name = 'magnetic-beads', amount_min = 1, amount_max = 2},
            },
            main_product = 'bio-ore'
        },
        {
            type = 'recipe',
            name = 'jacket-bio-oil',
            enabled = false,
            category = 'bio-reactor',
            energy_required = 200,
            ingredients = {
                {type = 'fluid', name = 'scrude', amount = 1250},
                {type = 'item', name = 'biofet', amount = 1},
                {type = 'item', name = 'magnetic-beads', amount = 2},
                {type = 'fluid', name = 'hydrogen', amount = 250},
                {type = 'item', name = 'advanced-substrate', amount = 1},
            },
            results = {
                {type = 'fluid', name = 'bio-oil', amount = 1250},
                {type = 'item', name = 'magnetic-beads', amount_min = 1, amount_max = 2},
            },
            main_product = 'bio-oil'
        },
        {
            type = 'recipe',
            name = 'jacket-collagen',
            enabled = false,
            category = 'bio-reactor',
            energy_required = 200,
            ingredients = {
                {type = 'item', name = 'raw-coal', amount = 220},
                {type = 'item', name = 'biofet', amount = 1},
                {type = 'item', name = 'magnetic-beads', amount = 2},
                {type = 'fluid', name = 'hydrogen', amount = 250},
                {type = 'item', name = 'advanced-substrate', amount = 1},
            },
            results = {
                {type = 'item', name = 'collagen', amount = 220},
                {type = 'item', name = 'magnetic-beads', amount_min = 1, amount_max = 2},
            },
            main_product = 'collagen'
        }
    }
end

return {
    affected_entities = { -- the entities that should be effected by this tech upgrade
        'bio-reactor-mk01',
        'bio-reactor-mk02',
        'bio-reactor-mk03',
        'bio-reactor-mk04',
    },
    master_tech = { -- tech that is shown in the tech tree
        name = 'bioreactor-upgrade',
        icon = '__pyalienlifegraphics3__/graphics/technology/updates/u-bioreactor.png',
        icon_size = 128,
        order = 'c-a',
        prerequisites = {'mass-production', 'thermal-mk04'},
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
                {'py-science-pack-4', 1},
                {'utility-science-pack', 1},
            },
            time = 45
        }
    },
    sub_techs = {
        {
            name = 'aerators',
            icon = '__pyalienlifegraphics3__/graphics/technology/aerators.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'lock-recipe', 'recipe-replacement'
                {recipe = 'liquid-manure-oxygen', type = 'unlock-recipe'}
            },
        },
        {
            name = 'baffles',
            icon = '__pyalienlifegraphics3__/graphics/technology/baffles.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'lock-recipe', 'recipe-replacement'
                {consumption = -0.25, speed = 0.1, type = 'module-effects'},
                {recipe = 'baffles', type = 'unlock-recipe'},
                {old = 'bio-reactor-mk01', new = 'bio-reactor-mk01-with-baffles', type = 'recipe-replacement'},
                {old = 'bio-reactor-mk02', new = 'bio-reactor-mk02-with-baffles', type = 'recipe-replacement'},
                {old = 'bio-reactor-mk03', new = 'bio-reactor-mk03-with-baffles', type = 'recipe-replacement'},
                {old = 'bio-reactor-mk04', new = 'bio-reactor-mk04-with-baffles', type = 'recipe-replacement'},
            }
        },
        {
            name = 'jacket',
            icon = '__pyalienlifegraphics3__/graphics/technology/jacket.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'lock-recipe', 'recipe-replacement'
                {recipe = 'jacket-bio-ore', type = 'unlock-recipe'},
                {recipe = 'jacket-bio-oil', type = 'unlock-recipe'},
                {recipe = 'jacket-collagen', type = 'unlock-recipe'},
            }
        }
    }
}