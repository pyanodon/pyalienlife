return {
    affected_entities = { -- the entities that should be effected by this tech upgrade
        'rennea-plantation-mk01',
        'rennea-plantation-mk02',
        'rennea-plantation-mk03',
        'rennea-plantation-mk04',
    },
    master_tech = { -- tech that is shown in the tech tree
        name = 'rennea-upgrade',
        icon = '__pyalienlifegraphics3__/graphics/technology/updates/u-rennea.png',
        icon_size = 128,
        order = 'c-a',
        prerequisites = {'water-animals-mk02'},
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
            name = 'deadheading',
            icon = '__pyalienlifegraphics3__/graphics/technology/deadheading.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'lock-recipe', 'recipe-replacement'
                {consumption = 0.0, speed = 0.15, productivity = -0.12, type = 'module-effects'}
            },
        },
        {
            name = 'alltime',
            icon = '__pyalienlifegraphics3__/graphics/technology/alltime.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'lock-recipe', 'recipe-replacement'
                {consumption = -0.1, speed = 0, productivity = -0.1, type = 'module-effects'}
            }
        },
        {
            name = 'aphid-cleaning',
            icon = '__pyalienlifegraphics3__/graphics/technology/aphid-cleaning.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'lock-recipe', 'recipe-replacement'
                {consumption = 0.25, speed = 0, productivity = 0.2, type = 'module-effects'}
            }
        }
    },
    module_category = 'rennea'
}