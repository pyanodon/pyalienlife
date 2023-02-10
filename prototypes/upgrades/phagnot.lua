return {
    affected_entities = { -- the entities that should be effected by this tech upgrade
        'phagnot-corral-mk01',
        'phagnot-corral-mk02',
        'phagnot-corral-mk03',
        'phagnot-corral-mk04',
    },
    master_tech = { -- tech that is shown in the tech tree
        name = 'phagnot-upgrade',
        icon = '__pyalienlifegraphics3__/graphics/technology/updates/u-phagnot.png',
        icon_size = 128,
        order = 'c-a',
        prerequisites = {'phagnot-mk02'},
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
            name = 'leader',
            icon = '__pyalienlifegraphics3__/graphics/technology/leader.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'lock-recipe'
                {consumption = 0.0, speed = 0.15, productivity = -0.12, type = 'module-effects'}
            },
        },
        {
            name = 'socialization',
            icon = '__pyalienlifegraphics3__/graphics/technology/socialization.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'lock-recipe'
                {consumption = -0.1, speed = 0, productivity = -0.1, type = 'module-effects'}
            }
        },
        {
            name = 'hr',
            icon = '__pyalienlifegraphics3__/graphics/technology/hr.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'lock-recipe'
                {consumption = 0.25, speed = 0, productivity = 0.2, type = 'module-effects'}
            }
        }
    },
    module_category = 'phagnot'
}