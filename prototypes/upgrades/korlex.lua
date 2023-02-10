return {
    affected_entities = { -- the entities that should be effected by this tech upgrade
        'ez-ranch-mk01',
        'ez-ranch-mk02',
        'ez-ranch-mk03',
        'ez-ranch-mk04',
    },
    master_tech = { -- tech that is shown in the tech tree
        name = 'korlex-upgrade',
        icon = '__pyalienlifegraphics3__/graphics/technology/updates/u-korlex.png',
        icon_size = 128,
        order = 'c-a',
        prerequisites = {'korlex-mk02'},
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
            name = 'multi-tit',
            icon = '__pyalienlifegraphics3__/graphics/technology/multi-tit.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'lock-recipe'
                {consumption = 0.0, speed = 0.15, productivity = -0.12, type = 'module-effects'}
            },
        },
        {
            name = 'high-pressure',
            icon = '__pyalienlifegraphics3__/graphics/technology/high-pressure.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'lock-recipe'
                {consumption = -0.1, speed = 0, productivity = -0.1, type = 'module-effects'}
            }
        },
        {
            name = 'nx-heat-pump',
            icon = '__pyalienlifegraphics3__/graphics/technology/nx-heat-pump.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'lock-recipe'
                {consumption = 0.25, speed = 0, productivity = 0.2, type = 'module-effects'}
            }
        }
    },
    module_category = 'korlex'
}