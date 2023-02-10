return {
    affected_entities = { -- the entities that should be effected by this tech upgrade
        'mukmoux-pasture-mk01',
        'mukmoux-pasture-mk02',
        'mukmoux-pasture-mk03',
        'mukmoux-pasture-mk04',
    },
    master_tech = { -- tech that is shown in the tech tree
        name = 'mukmoux-upgrade',
        icon = '__pyalienlifegraphics3__/graphics/technology/updates/u-mukmoux.png',
        icon_size = 128,
        order = 'c-a',
        prerequisites = {'microbiology-mk02'},
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
            name = 'zero-cross',
            icon = '__pyalienlifegraphics3__/graphics/technology/zero-cross.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'lock-recipe'
                {consumption = 0.0, speed = 0.15, productivity = -0.12, type = 'module-effects'}
            },
        },
        {
            name = 'bip',
            icon = '__pyalienlifegraphics3__/graphics/technology/bip.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'lock-recipe'
                {consumption = -0.1, speed = 0, productivity = -0.1, type = 'module-effects'}
            }
        },
        {
            name = 'think-collar',
            icon = '__pyalienlifegraphics3__/graphics/technology/think-collar.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'lock-recipe'
                {consumption = 0.25, speed = 0, productivity = 0.2, type = 'module-effects'}
            }
        }
    },
    module_category = 'mukmoux'
}