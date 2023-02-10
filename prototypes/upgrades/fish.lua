return {
    affected_entities = { -- the entities that should be effected by this tech upgrade
        'fish-farm-mk01',
        'fish-farm-mk02',
        'fish-farm-mk03',
        'fish-farm-mk04',
    },
    master_tech = { -- tech that is shown in the tech tree
        name = 'fish-upgrade',
        icon = '__pyalienlifegraphics3__/graphics/technology/updates/u-fish.png',
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
            name = 'a-select',
            icon = '__pyalienlifegraphics3__/graphics/technology/a-select.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'lock-recipe'
                {consumption = 0.0, speed = 0.15, productivity = -0.12, type = 'module-effects'}
            },
        },
        {
            name = 'temp-control',
            icon = '__pyalienlifegraphics3__/graphics/technology/temp-control.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'lock-recipe'
                {consumption = -0.1, speed = 0, productivity = -0.1, type = 'module-effects'}
            }
        },
        {
            name = 'dosing-pump',
            icon = '__pyalienlifegraphics3__/graphics/technology/dosing-pump.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'lock-recipe'
                {consumption = 0.25, speed = 0, productivity = 0.2, type = 'module-effects'}
            }
        }
    },
    module_category = 'fish'
}