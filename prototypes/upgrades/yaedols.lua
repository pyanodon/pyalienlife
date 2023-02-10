return {
    affected_entities = { -- the entities that should be effected by this tech upgrade
        'yaedols-culture-mk01',
        'yaedols-culture-mk02',
        'yaedols-culture-mk03',
        'yaedols-culture-mk04',
    },
    master_tech = { -- tech that is shown in the tech tree
        name = 'yaedols-upgrade',
        icon = '__pyalienlifegraphics3__/graphics/technology/updates/u-yaedols.png',
        icon_size = 128,
        order = 'c-a',
        prerequisites = {'yaedols-mk02'},
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
            name = 'sub-s',
            icon = '__pyalienlifegraphics3__/graphics/technology/sub-s.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'lock-recipe', 'recipe-replacement'
                {consumption = 0.0, speed = 0.15, productivity = -0.12, type = 'module-effects'}
            },
        },
        {
            name = 'duct',
            icon = '__pyalienlifegraphics3__/graphics/technology/duct.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'lock-recipe', 'recipe-replacement'
                {consumption = -0.1, speed = 0, productivity = -0.1, type = 'module-effects'}
            }
        },
        {
            name = 'humidity-control',
            icon = '__pyalienlifegraphics3__/graphics/technology/humidity-control.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'lock-recipe', 'recipe-replacement'
                {consumption = 0.25, speed = 0, productivity = 0.2, type = 'module-effects'}
            }
        }
    },
    module_category = 'yaedols'
}