return {
        affected_entities = { -- the entities that should be effected by this tech upgrade
        'kicalk-plantation-mk01',
        'kicalk-plantation-mk02',
        'kicalk-plantation-mk03',
        'kicalk-plantation-mk04',
    },
    master_tech = { -- tech that is shown in the tech tree
        name = 'kicalk-upgrade',
        icon = '__pyalienlifegraphics3__/graphics/technology/updates/u-kicalk.png',
        icon_size = 128,
        order = 'c-a',
        prerequisites = {'kicalk-mk02'},
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
            name = 'wire-netting',
            icon = '__pyalienlifegraphics3__/graphics/technology/wire-netting.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'lock-recipe', 'recipe-replacement'
                {consumption = 0.0, speed = 0.15, productivity = -0.12, type = 'module-effects'}
            },
        },
        {
            name = 'extra-water',
            icon = '__pyalienlifegraphics3__/graphics/technology/extra-water.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'lock-recipe', 'recipe-replacement'
                {consumption = -0.1, speed = 0, productivity = -0.1, type = 'module-effects'}
            }
        },
        {
            name = 'crop-rotation',
            icon = '__pyalienlifegraphics3__/graphics/technology/crop-rotation.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'lock-recipe', 'recipe-replacement'
                {consumption = 0.25, speed = 0, productivity = 0.2, type = 'module-effects'}
            }
        }
    },
    module_category = 'kicalk'
}