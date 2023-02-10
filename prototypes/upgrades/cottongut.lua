return {
    affected_entities = { -- the entities that should be effected by this tech upgrade
        'prandium-lab-mk01',
        'prandium-lab-mk02',
        'prandium-lab-mk03',
        'prandium-lab-mk04',
    },
    master_tech = { -- tech that is shown in the tech tree
        name = 'cottongut-upgrade',
        icon = '__pyalienlifegraphics3__/graphics/technology/updates/u-cottongut.png',
        icon_size = 128,
        order = 'c-a',
        prerequisites = {'cottongut-mk02'},
        unit = {
            count = 500,
            ingredients = {
                {'automation-science-pack', 1},
                {'logistic-science-pack', 1},
                {'chemical-science-pack', 1},
            },
            time = 45
        }
    },
    sub_techs = {
        {
            name = 'igm',
            icon = '__pyalienlifegraphics3__/graphics/technology/igm.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'lock-recipe'
                {consumption = 0.0, speed = 0.15, productivity = -0.12, type = 'module-effects'}
            },
        },
        {
            name = 'ts',
            icon = '__pyalienlifegraphics3__/graphics/technology/ts.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'lock-recipe'
                {consumption = -0.1, speed = 0, productivity = -0.1, type = 'module-effects'}
            }
        },
        {
            name = 'ud',
            icon = '__pyalienlifegraphics3__/graphics/technology/ud.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'lock-recipe'
                {consumption = 0.25, speed = 0, productivity = 0.2, type = 'module-effects'}
            }
        }
    },
    module_category = 'cottongut'
}