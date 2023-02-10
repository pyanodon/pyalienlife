return {
    affected_entities = { -- the entities that should be effected by this tech upgrade
        'vrauks-paddock-mk01',
        'vrauks-paddock-mk02',
        'vrauks-paddock-mk03',
        'vrauks-paddock-mk04',
    },
    master_tech = { -- tech that is shown in the tech tree
        name = 'vrauks-upgrade',
        icon = '__pyalienlifegraphics3__/graphics/technology/updates/u-vrauk.png',
        icon_size = 128,
        order = 'c-a',
        prerequisites = {'vrauks-mk02'},
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
            name = 'parthenogenesis',
            icon = '__pyalienlifegraphics3__/graphics/technology/parthenogenesis.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'lock-recipe', 'recipe-replacement'
                {consumption = 0.0, speed = 0.15, productivity = -0.12, type = 'module-effects'}
            },
        },
        {
            name = 'natural-cycle',
            icon = '__pyalienlifegraphics3__/graphics/technology/natural-cycle.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'lock-recipe', 'recipe-replacement'
                {consumption = -0.1, speed = 0, productivity = -0.1, type = 'module-effects'}
            }
        },
        {
            name = 'reuse-water',
            icon = '__pyalienlifegraphics3__/graphics/technology/reuse-water.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'lock-recipe', 'recipe-replacement'
                {consumption = 0.25, speed = 0, productivity = 0.2, type = 'module-effects'}
            }
        }
    },
    module_category = 'vrauks'
}