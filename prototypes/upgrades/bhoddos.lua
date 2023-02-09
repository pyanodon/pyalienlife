return {
    affected_entities = { -- the entities that should be effected by this tech upgrade
        'bhoddos-culture-mk01',
        'bhoddos-culture-mk02',
        'bhoddos-culture-mk03',
        'bhoddos-culture-mk04',
    },
    master_tech = { -- tech that is shown in the tech tree
        name = 'bhoddos-upgrade', -- this is the tech name. duh
        icon = '__pyalienlifegraphics3__/graphics/technology/updates/u-bhoddos.png',
        icon_size = 128,
        order = 'c-a',
        prerequisites = {'bhoddos-mk02'},
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
            name = 'extra-drones', -- this is the tech name. duh
            icon = '__pyalienlifegraphics3__/graphics/technology/extra-drones.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'lock-recipe'
                {consumption = 0.0, speed = 0.15, productivity = -0.12, type = 'module-effects'}
            },
        },
        {
            name = 'exoenzymes',
            icon = '__pyalienlifegraphics3__/graphics/technology/exoenzymes.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'lock-recipe'
                {consumption = -0.1, speed = 0, productivity = -0.1, type = 'module-effects'}
            }
        },
        {
            name = 'gills',
            icon = '__pyalienlifegraphics3__/graphics/technology/gills.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'lock-recipe'
                {consumption = 0.25, speed = 0, productivity = 0.2, type = 'module-effects'}
            }
        }
    },
    module_category = 'bhoddos'
}