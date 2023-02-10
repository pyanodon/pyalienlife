return {
    affected_entities = { -- the entities that should be effected by this tech upgrade
        'research-center-mk01',
        'research-center-mk02',
        'research-center-mk03',
        'research-center-mk04',
    },
    master_tech = { -- tech that is shown in the tech tree
        name = 'research-upgrade',
        icon = '__pyalienlifegraphics3__/graphics/technology/updates/u-research.png',
        icon_size = 128,
        order = 'c-a',
        prerequisites = {'biotech-mk02'},
        unit = {
            count = 500,
            ingredients = {
                {'automation-science-pack', 1},
                {'logistic-science-pack', 1},
                -- {'py-science-pack-3', 1},
            },
            time = 45
        }
    },
    sub_techs = {
        {
            name = 'ms',
            icon = '__pyalienlifegraphics3__/graphics/technology/ms.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'lock-recipe', 'recipe-replacement'
                {consumption = 0.0, speed = 0.15, productivity = -0.12, type = 'module-effects'}
            },
        },
        {
            name = 'mci',
            icon = '__pyalienlifegraphics3__/graphics/technology/mci.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'lock-recipe', 'recipe-replacement'
                {consumption = -0.1, speed = 0, productivity = -0.1, type = 'module-effects'}
            }
        },
        {
            name = 'spg',
            icon = '__pyalienlifegraphics3__/graphics/technology/spg.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'lock-recipe', 'recipe-replacement'
                {consumption = 0.25, speed = 0, productivity = 0.2, type = 'module-effects'}
            }
        }
    }
}