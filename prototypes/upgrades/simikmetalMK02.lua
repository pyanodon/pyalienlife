return {
    affected_entities = { -- the entities that should be effected by this tech upgrade
        'simik-den-mk01',
        'simik-den-mk02',
        'simik-den-mk03',
        'simik-den-mk04',
    },
    master_tech = { -- tech that is shown in the tech tree
        name = 'simik-digestion-mk02',
        icon = '__pyalienlifegraphics3__/graphics/technology/updates/simik-digestion-mk02.png',
        icon_size = 128,
        order = 'c-a',
        prerequisites = {'simik-digestion-mk01'},
        unit = {
            count = 500,
            ingredients = {
                {'automation-science-pack', 1},
                {'py-science-pack-1', 1},
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
            name = 'simik-coal',
            icon = '__pyalienlifegraphics3__/graphics/technology/simik-coal.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'recipe-replacement'
                {recipe = 'simik-coal', type = 'unlock-recipe'}
            },
        },
        {
            name = 'simik-tin',
            icon = '__pyalienlifegraphics3__/graphics/technology/simik-tin.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'recipe-replacement'
                {recipe = 'simik-tin', type = 'unlock-recipe'}
            }
        },
        {
            name = 'simik-aluminium',
            icon = '__pyalienlifegraphics3__/graphics/technology/simik-aluminium.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'recipe-replacement'
                {recipe = 'simik-aluminium', type = 'unlock-recipe'}
            }
        }
    }
}