return {
    affected_entities = { -- the entities that should be effected by this tech upgrade
        'simik-den-mk01',
        'simik-den-mk02',
        'simik-den-mk03',
        'simik-den-mk04',
    },
    master_tech = { -- tech that is shown in the tech tree
        name = 'simik-digestion-mk04',
        icon = '__pyalienlifegraphics3__/graphics/technology/updates/simik-digestion-mk04.png',
        icon_size = 128,
        order = 'c-a',
        prerequisites = {'simik-digestion-mk03','simik-mk03'},
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
                {'py-science-pack-4', 1},
            },
            time = 45
        }
    },
    sub_techs = {
        {
            name = 'simik-zinc',
            icon = '__pyalienlifegraphics3__/graphics/technology/simik-zinc.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'recipe-replacement'
                {recipe = 'simik-zinc', type = 'unlock-recipe'}
            },
        },
        {
            name = 'simik-nickel',
            icon = '__pyalienlifegraphics3__/graphics/technology/simik-nickel.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'recipe-replacement'
                {recipe = 'simik-nickel', type = 'unlock-recipe'}
            }
        },
        {
            name = 'simik-lead',
            icon = '__pyalienlifegraphics3__/graphics/technology/simik-lead.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'recipe-replacement'
                {recipe = 'simik-lead', type = 'unlock-recipe'}
            }
        }
    }
}