return {
    affected_entities = { -- the entities that should be effected by this tech upgrade
        'arqad-hive-mk01',
        'arqad-hive-mk02',
        'arqad-hive-mk03',
        'arqad-hive-mk04',
    },
    master_tech = { -- tech that is shown in the tech tree
        name = 'arqad-upgrade', -- this is the tech name. duh
        icon = '__pyalienlifegraphics3__/graphics/technology/updates/u-arqad.png',
        icon_size = 128,
        order = 'c-a',
        prerequisites = {'arqad-mk02'},
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
            name = 'air-conditioner',
            icon = '__pyalienlifegraphics3__/graphics/technology/air-con.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'lock-recipe'
                {consumption = 0.0, speed = 0.15, productivity = -0.12, type = 'module-effects'}
            },
        },
        {
            name = 'cags',
            icon = '__pyalienlifegraphics3__/graphics/technology/cags.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'lock-recipe'
                {consumption = -0.1, speed = 0, productivity = -0.1, type = 'module-effects'}
            }
        },
        {
            name = 'drone',
            icon = '__pyalienlifegraphics3__/graphics/technology/drone.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'lock-recipe'
                {consumption = 0.25, speed = 0, productivity = 0.2, type = 'module-effects'}
            }
        }
    },
    module_category = 'arqad'
}