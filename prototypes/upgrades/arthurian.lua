return {
    affected_entities = { -- the entities that should be effected by this tech upgrade
        'arthurian-pen-mk01',
        'arthurian-pen-mk02',
        'arthurian-pen-mk03',
        'arthurian-pen-mk04',
    },
    master_tech = { -- tech that is shown in the tech tree
        name = 'arthurian-upgrade', -- this is the tech name. duh
        icon = '__pyalienlifegraphics3__/graphics/technology/updates/u-arthurian.png',
        icon_size = 128,
        order = 'c-a',
        prerequisites = {'arthurian-mk02'},
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
            name = 'abacus', -- this is the tech name. duh
            icon = '__pyalienlifegraphics3__/graphics/technology/abacus.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'lock-recipe'
                {consumption = 0.0, speed = 0.15, productivity = -0.12, type = 'module-effects'}
            },
        },
        {
            name = 'heated-stone',
            icon = '__pyalienlifegraphics3__/graphics/technology/heated-stone.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'lock-recipe'
                {consumption = -0.1, speed = 0, productivity = -0.1, type = 'module-effects'}
            }
        },
        {
            name = 'cannibalism',
            icon = '__pyalienlifegraphics3__/graphics/technology/cannibalism.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'lock-recipe'
                {consumption = 0.25, speed = 0, productivity = 0.2, type = 'module-effects'}
            }
        }
    },
    module_category = 'arthurian'
}