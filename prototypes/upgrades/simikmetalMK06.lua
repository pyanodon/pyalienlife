return {
    affected_entities = { -- the entities that should be effected by this tech upgrade
        'simik-den-mk01',
        'simik-den-mk02',
        'simik-den-mk03',
        'simik-den-mk04',
    },
    master_tech = { -- tech that is shown in the tech tree
        name = 'simik-digestion-mk06',
        icon = '__pyalienlifegraphics3__/graphics/technology/updates/simik-digestion-mk06.png',
        icon_size = 128,
        order = 'c-a',
        prerequisites = {'simik-digestion-mk05', 'quantum'},
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
                {'space-science-pack', 1},
            },
            time = 45,
        },
        effects = {{type = 'unlock-recipe', recipe = 'simik-den-mk04'}}
    },
    sub_techs = {
        {
            name = 'simik-silver',
            icon = '__pyalienlifegraphics3__/graphics/technology/simik-silver.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'recipe-replacement'
                {recipe = 'simik-silver', type = 'unlock-recipe'}
            },
        },
        {
            name = 'simik-gold',
            icon = '__pyalienlifegraphics3__/graphics/technology/simik-gold.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'recipe-replacement'
                {recipe = 'simik-gold', type = 'unlock-recipe'}
            }
        },
        {
            name = 'simik-uranium',
            icon = '__pyalienlifegraphics3__/graphics/technology/simik-uranium.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'recipe-replacement'
                {recipe = 'simik-uranium', type = 'unlock-recipe'}
            }
        }
    }
}