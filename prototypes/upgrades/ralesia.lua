return {
    affected_entities = { -- the entities that should be effected by this tech upgrade
        'ralesia-plantation-mk01',
        'ralesia-plantation-mk02',
        'ralesia-plantation-mk03',
        'ralesia-plantation-mk04',
    },
    master_tech = { -- tech that is shown in the tech tree
        name = 'ralesia-upgrade',
        icon = '__pyalienlifegraphics3__/graphics/technology/updates/u-ralesia.png',
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
            name = 'improved-burst',
            icon = '__pyalienlifegraphics3__/graphics/technology/improved-burst.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'lock-recipe'
                {consumption = 0.0, speed = 0.15, productivity = -0.12, type = 'module-effects'}
            },
        },
        {
            name = 'sun-concentration',
            icon = '__pyalienlifegraphics3__/graphics/technology/sun-concentration.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'lock-recipe'
                {consumption = -0.1, speed = 0, productivity = -0.1, type = 'module-effects'}
            }
        },
        {
            name = 'h2-recycle',
            icon = '__pyalienlifegraphics3__/graphics/technology/h2-recycle.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'lock-recipe'
                {consumption = 0.25, speed = 0, productivity = 0.2, type = 'module-effects'}
            }
        }
    },
    module_category = 'ralesia'
}