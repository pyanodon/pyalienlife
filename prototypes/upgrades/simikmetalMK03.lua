return {
    affected_entities = { -- the entities that should be effected by this tech upgrade
        'simik-den-mk01',
        'simik-den-mk02',
        'simik-den-mk03',
        'simik-den-mk04',
    },
    master_tech = { -- tech that is shown in the tech tree
        name = 'simik-digestion-mk03',
        icon = '__pyalienlifegraphics3__/graphics/technology/updates/simik-digestion-mk03.png',
        icon_size = 128,
        order = 'c-a',
        prerequisites = {'simik-mk02', 'simik-digestion-mk02'},
        unit = {
            count = 500,
            ingredients = {
                {'automation-science-pack', 1},
                {'py-science-pack-1', 1},
                {'logistic-science-pack', 1},
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
            name = 'simik-boron',
            icon = '__pyalienlifegraphics3__/graphics/technology/simik-boron.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'recipe-replacement'
                {recipe = 'simik-boron', type = 'unlock-recipe'}
            },
        },
        {
            name = 'simik-chromium',
            icon = '__pyalienlifegraphics3__/graphics/technology/simik-chromium.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'recipe-replacement'
                {recipe = 'simik-chromium', type = 'unlock-recipe'}
            }
        },
        {
            name = 'simik-molybdenum',
            icon = '__pyalienlifegraphics3__/graphics/technology/simik-molybdenum.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'recipe-replacement'
                {recipe = 'simik-molybdenum', type = 'unlock-recipe'}
            }
        }
    }
}