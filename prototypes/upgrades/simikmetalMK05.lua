return {
    affected_entities = { -- the entities that should be effected by this tech upgrade
        'simik-den-mk01',
        'simik-den-mk02',
        'simik-den-mk03',
        'simik-den-mk04',
    },
    master_tech = { -- tech that is shown in the tech tree
        name = 'simik-digestion-mk05',
        icon = '__pyalienlifegraphics3__/graphics/technology/updates/simik-digestion-mk05.png',
        icon_size = 128,
        order = 'c-a',
        prerequisites = {'simik-digestion-mk04', 'simik-mk04'},
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
            name = 'simik-titanium',
            icon = '__pyalienlifegraphics3__/graphics/technology/simik-titanium.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'recipe-replacement'
                {recipe = 'simik-titanium', type = 'unlock-recipe'}
            },
        },
        {
            name = 'simik-niobium',
            icon = '__pyalienlifegraphics3__/graphics/technology/simik-niobium.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'recipe-replacement'
                {recipe = 'simik-niobium', type = 'unlock-recipe'}
            }
        },
        {
            name = 'simik-nexelit',
            icon = '__pyalienlifegraphics3__/graphics/technology/simik-nexelit.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'recipe-replacement'
                {recipe = 'simik-nexelit', type = 'unlock-recipe'}
            }
        }
    }
}