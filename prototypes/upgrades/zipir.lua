return {
    affected_entities = { -- the entities that should be effected by this tech upgrade
        'zipir-reef-mk01',
        'zipir-reef-mk02',
        'zipir-reef-mk03',
        'zipir-reef-mk04',
    },
    master_tech = { -- tech that is shown in the tech tree
        name = 'zipir-upgrade',
        icon = '__pyalienlifegraphics3__/graphics/technology/updates/u-zipir.png',
        icon_size = 128,
        order = 'c-a',
        prerequisites = {'zipir-mk02'},
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
            name = 'suicide',
            icon = '__pyalienlifegraphics3__/graphics/technology/suicide.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'lock-recipe', 'recipe-replacement'
                {consumption = 0.0, speed = 0.15, productivity = -0.12, type = 'module-effects'}
            },
        },
        {
            name = 'sr',
            icon = '__pyalienlifegraphics3__/graphics/technology/sr.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'lock-recipe', 'recipe-replacement'
                {consumption = -0.1, speed = 0, productivity = -0.1, type = 'module-effects'}
            }
        },
        {
            name = 'hatchery',
            icon = '__pyalienlifegraphics3__/graphics/technology/hatchery.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'lock-recipe', 'recipe-replacement'
                {consumption = 0.25, speed = 0, productivity = 0.2, type = 'module-effects'}
            }
        }
    },
    module_category = 'zipir'
}