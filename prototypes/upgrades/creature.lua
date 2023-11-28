return {
    affected_entities = { -- the entities that should be effected by this tech upgrade
        'creature-chamber-mk01',
        'creature-chamber-mk02',
        'creature-chamber-mk03',
        'creature-chamber-mk04',
    },
    master_tech = { -- tech that is shown in the tech tree
        name = 'creature-upgrade',
        icon = '__pyalienlifegraphics3__/graphics/technology/updates/u-creature.png',
        icon_size = 128,
        order = 'c-a',
        prerequisites = {'biotech-mk02'},
        unit = {
            count = 500,
            ingredients = {
                {'automation-science-pack', 1},
                {'logistic-science-pack', 1},
                -- {'py-science-pack-3', 1},
                {'chemical-science-pack', 1},
            },
            time = 45
        }
    },
    sub_techs = {
        {
            name = 'respiratory',
            icon = '__pyalienlifegraphics3__/graphics/technology/respiratory.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'recipe-replacement'
                {consumption = 0.0, speed = 0.15, productivity = -0.12, type = 'module-effects'}
            },
        },
        {
            name = 'neural-fusion',
            icon = '__pyalienlifegraphics3__/graphics/technology/neural-fusion.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'recipe-replacement'
                {consumption = -0.1, speed = 0, productivity = -0.1, type = 'module-effects'}
            }
        },
        {
            name = 'cc',
            icon = '__pyalienlifegraphics3__/graphics/technology/cc.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'recipe-replacement'
                {consumption = 0.25, speed = 0, productivity = 0.2, type = 'module-effects'}
            }
        }
    }
}