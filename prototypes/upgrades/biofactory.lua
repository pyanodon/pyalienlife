return {
    affected_entities = { -- the entities that should be effected by this tech upgrade
        'biofactory-mk01',
        'biofactory-mk02',
        'biofactory-mk03',
        'biofactory-mk04',
    },
    master_tech = { -- tech that is shown in the tech tree
        name = 'biofactory-upgrade',
        icon = '__pyalienlifegraphics3__/graphics/technology/updates/u-biofactory.png',
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
            name = 'molecular-polyentomology',
            icon = '__pyalienlifegraphics3__/graphics/technology/molecular-polyentomology.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'lock-recipe'
                {consumption = 0.0, speed = 0.15, productivity = -0.12, type = 'module-effects'}
            },
        },
        {
            name = 'compusun',
            icon = '__pyalienlifegraphics3__/graphics/technology/compusun.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'lock-recipe'
                {consumption = -0.1, speed = 0, productivity = -0.1, type = 'module-effects'}
            }
        },
        {
            name = 'resonant',
            icon = '__pyalienlifegraphics3__/graphics/technology/resonant.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'lock-recipe'
                {consumption = 0.25, speed = 0, productivity = 0.2, type = 'module-effects'}
            }
        }
    }
}