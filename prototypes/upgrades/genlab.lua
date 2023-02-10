return {
    affected_entities = { -- the entities that should be effected by this tech upgrade
        'genlab-mk01',
        'genlab-mk02',
        'genlab-mk03',
        'genlab-mk04',
    },
    master_tech = { -- tech that is shown in the tech tree
        name = 'genlab-upgrade',
        icon = '__pyalienlifegraphics3__/graphics/technology/updates/u-genlab.png',
        icon_size = 128,
        order = 'c-a',
        prerequisites = {'biotech-mk02'},
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
            name = 'hsn',
                    icon = '__pyalienlifegraphics3__/graphics/technology/hsn.png',
                    icon_size = 128,
                    order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'lock-recipe'
                {consumption = 0.0, speed = 0.15, productivity = -0.12, type = 'module-effects'}
            },
        },
        {
            name = 'enn',
                    icon = '__pyalienlifegraphics3__/graphics/technology/enn.png',
                    icon_size = 128,
                    order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'lock-recipe'
                {consumption = -0.1, speed = 0, productivity = -0.1, type = 'module-effects'}
            }
        },
        {
            name = 'dwx',
                    icon = '__pyalienlifegraphics3__/graphics/technology/dwx.png',
                    icon_size = 128,
                    order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'lock-recipe'
                {consumption = 0.25, speed = 0, productivity = 0.2, type = 'module-effects'}
            }
        }
    }
}