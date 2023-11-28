return {
    affected_entities = { -- the entities that should be effected by this tech upgrade
        'simik-den-mk01',
        'simik-den-mk02',
        'simik-den-mk03',
        'simik-den-mk04',
    },
    master_tech = { -- tech that is shown in the tech tree
        name = 'simik-digestion-mk01',
        icon = '__pyalienlifegraphics3__/graphics/technology/updates/simik-digestion-mk01.png',
        icon_size = 128,
        order = 'c-a',
        prerequisites = {'simik-mk01'},
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
            name = 'simik-iron',
            icon = '__pyalienlifegraphics3__/graphics/technology/simik-iron.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'recipe-replacement'
                {recipe = 'simik-iron', type = 'unlock-recipe'}
            },
        },
        {
            name = 'simik-copper',
            icon = '__pyalienlifegraphics3__/graphics/technology/simik-copper.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'recipe-replacement'
                {recipe = 'simik-copper', type = 'unlock-recipe'}
            }
        },
        {
            name = 'simik-quartz',
            icon = '__pyalienlifegraphics3__/graphics/technology/simik-quartz.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'recipe-replacement'
                {recipe = 'simik-quartz', type = 'unlock-recipe'}
            }
        }
    }
}