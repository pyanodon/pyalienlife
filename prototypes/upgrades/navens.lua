return {
    affected_entities = { -- the entities that should be effected by this tech upgrade
        'navens-culture-mk01',
        'navens-culture-mk02',
        'navens-culture-mk03',
        'navens-culture-mk04',
    },
    master_tech = { -- tech that is shown in the tech tree
        name = 'navens-upgrade',
        icon = '__pyalienlifegraphics3__/graphics/technology/updates/u-navens.png',
        icon_size = 128,
        order = 'c-a',
        prerequisites = {'navens-mk02'},
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
            name = 'cytotoxicity',
            icon = '__pyalienlifegraphics3__/graphics/technology/cytotoxicity.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'lock-recipe'
                {consumption = 0.0, speed = 0.15, productivity = -0.12, type = 'module-effects'}
            },
        },
        {
            name = 'pre-sterilization',
            icon = '__pyalienlifegraphics3__/graphics/technology/pre-sterilization.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'lock-recipe'
                {consumption = -0.1, speed = 0, productivity = -0.1, type = 'module-effects'}
            }
        },
        {
            name = 'n2-ferti',
            icon = '__pyalienlifegraphics3__/graphics/technology/n2-ferti.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'lock-recipe'
                {consumption = 0.25, speed = 0, productivity = 0.2, type = 'module-effects'}
            }
        }
    },
    module_category = 'navens'
}