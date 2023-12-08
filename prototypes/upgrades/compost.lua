local FUN = require '__pycoalprocessing__/prototypes/functions/functions'

if data and not yafc_turd_integration then
    data.raw.fluid['sweet-syrup'].default_temperature = 0
    data.raw.recipe['sweet-syrup'].results[1].temperature = 10
    data.raw.recipe['empty-sweet-syrup-barrel'].results[2].temperature = 10
    for i = 1, 4 do
        local name = 'compost-plant-mk0' .. i
        local entity = table.deepcopy(data.raw['furnace'][name])
        entity.name = name .. '-turd'
        entity.localised_name = {'entity-name.' .. name}
        entity.placeable_by = {item = name, count = 1}
        entity.base_productivity = i * 0.05
        entity.localised_description = entity.localised_description or {'entity-description.' .. name}
        entity.energy_source = {
            type = 'fluid',
            emissions_per_minute = -1,
            fluid_box = {
                base_area = 0.5,
                pipe_covers = DATA.Pipes.covers(false, true, true, true),
                pipe_picture = DATA.Pipes.pictures('assembling-machine-3', nil, {0.0, -0.88}, nil, nil),
                pipe_connections = {
                    {position = {4, -6}},
                    {position = {-4, -6}},
                },
                production_type = 'input-output',
                filter = 'sweet-syrup',
                secondary_draw_orders = { north = -1 },
            },
            destroy_non_fuel_fluid = false,
            burns_fluid = false,
            scale_fluid_usage = true,
            maximum_temperature = 10,
            effectivity = 1000
        }
        entity.energy_usage = i .. 'MW'
        entity.subgroup = data.raw.item[name].subgroup
        entity.order = data.raw.item[name].order
        table.insert(entity.fluid_boxes, {
            production_type = 'output',
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            pipe_picture = DATA.Pipes.pictures('assembling-machine-3', nil, {0.0, -0.88}, nil, nil),
            base_area = 1,
            base_level = 1,
            pipe_connections = {{type = 'output', position = {0.0, 6.0}}},
            secondary_draw_orders = { north = -1 }
        })
        data:extend{entity}
    end

    data:extend{{
        type = 'recipe',
        name = 'free-manure-bacteria',
        category = 'compost',
        enabled = false,
        energy_required = 1,
        ingredients = {
            {type = 'item', name = 'biomass', amount = 4},
            {type = 'fluid', name = 'water', amount = 60},
        },
        results = {
            {type = 'fluid', name = 'manure-bacteria', amount = 60},
        },
        main_product = 'manure-bacteria',
    }}

    data:extend{{
        type = 'recipe',
        name = 'manure-bacteria-to-manure',
        category = 'bio-reactor',
        enabled = false,
        energy_required = 2,
        ingredients = {
            {type = 'fluid', name = 'manure-bacteria', amount = 60},
        },
        results = {
            {type = 'item', name = 'manure', amount = 1},
            {type = 'fluid', name = 'water', amount = 50},
        },
        main_product = 'manure',
    }}

    data:extend{{
        type = 'item',
        name = 'worm',
        icon = '__pyalienlifegraphics2__/graphics/icons/worm.png',
        icon_size = 64,
        flags = {},
        subgroup = 'py-alienlife-items',
        order = 'q',
        stack_size = 500
    }}

    data:extend{{
        type = 'item-subgroup',
        name = 'py-alienlife-worm',
        group = 'py-alienlife',
        order = 'bc'
    }}

    data:extend{{
        type = 'recipe',
        name = 'worm',
        category = 'biofactory',
        enabled = false,
        energy_required = 10,
        ingredients = {
            {type = 'item', name = 'biomass', amount = 1},
        },
        results = {
            {type = 'item', name = 'worm', amount_min = 15, amount_max = 22},
            {type = 'item', name = 'powdered-biomass', amount = 1},
        },
        main_product = 'worm',
        subgroup = 'py-alienlife-worm',
        order = 'a'
    }}

    data:extend{{
        type = 'recipe',
        name = 'worm-stone',
        category = 'agitator',
        enabled = false,
        energy_required = 1,
        ingredients = {
            {type = 'item', name = 'worm', amount = 1},
            {type = 'item', name = 'stone-brick', amount = 2},
        },
        results = {
            {type = 'item', name = 'stone', amount = 4},
        },
        subgroup = 'py-alienlife-worm',
        order = 'ba'
    }}

    data:extend{{
        type = 'recipe',
        name = 'worm-wood',
        category = 'agitator',
        enabled = false,
        energy_required = 2,
        ingredients = {
            {type = 'item', name = 'worm', amount = 1},
            {type = 'item', name = 'wood', amount = 2},
        },
        results = {
            {type = 'item', name = 'wood-seeds', amount = 2},
        },
        subgroup = 'py-alienlife-worm',
        order = 'bb'
    }}

    data:extend{{
        type = 'recipe',
        name = 'worm-coarse',
        category = 'agitator',
        enabled = false,
        energy_required = 3,
        ingredients = {
            {type = 'item', name = 'worm', amount = 1},
            {type = 'item', name = 'gravel', amount = 1},
        },
        results = {
            {type = 'item', name = 'coarse', amount = 2},
        },
        subgroup = 'py-alienlife-worm',
        order = 'bc'
    }}

    data:extend{{
        type = 'recipe',
        name = 'worm-manure',
        category = 'agitator',
        enabled = false,
        energy_required = 4,
        ingredients = {
            {type = 'item', name = 'worm', amount = 1},
            {type = 'item', name = 'guts', amount = 5},
        },
        results = {
            {type = 'item', name = 'manure', amount = 1},
        },
        subgroup = 'py-alienlife-worm',
        order = 'bd'
    }}

    for i, recipe in pairs({
        table.deepcopy(data.raw.recipe['compost-plant-mk01']),
        table.deepcopy(data.raw.recipe['compost-plant-mk02']),
        table.deepcopy(data.raw.recipe['compost-plant-mk03']),
        table.deepcopy(data.raw.recipe['compost-plant-mk04']),
    }) do
        recipe.name = recipe.name .. '-with-pump'
		FUN.add_ingredient(recipe, {type = 'item', name = 'offshore-pump', amount = 2*i})
        data:extend{recipe}
    end

    local fine_powdered_biomass = table.deepcopy(data.raw.recipe['fine-powdered-biomass'])
    fine_powdered_biomass.name = 'fine-powdered-biomass-irragration'
    FUN.add_ingredient(fine_powdered_biomass, {type = 'fluid', name = 'water', amount = 250})
    fine_powdered_biomass.category = 'washer'
    fine_powdered_biomass.energy_required = 3
    fine_powdered_biomass.main_product = 'steam'
    FUN.add_result(fine_powdered_biomass, {type = 'fluid', name = 'steam', amount = 250, temperature = 250})
    FUN.add_result(fine_powdered_biomass, {type = 'item', name = 'dried-biomass', amount = 12})
    data:extend{fine_powdered_biomass}
end

return {
    affected_entities = { -- the entities that should be effected by this tech upgrade
        'compost-plant-mk01',
        'compost-plant-mk02',
        'compost-plant-mk03',
        'compost-plant-mk04',
    },
    master_tech = { -- tech that is shown in the tech tree
        name = 'compost-upgrade',
        icon = '__pyalienlifegraphics3__/graphics/technology/updates/u-compost.png',
        icon_size = 128,
        order = 'c-a',
        prerequisites = {'tuuphra'},
        unit = {
            count = 500,
            ingredients = {
                {'automation-science-pack', 1},
                {'logistic-science-pack', 1},
                {'military-science-pack', 1},
            },
            time = 45
        }
    },
    sub_techs = {
        {
            name = 'constant',
            icon = '__pyalienlifegraphics3__/graphics/technology/constant.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'recipe-replacement', 'machine-replacement'
                {consumption = 0.45, speed = 0.3, productivity = 0, type = 'module-effects'},
                {type = 'recipe-replacement', old = 'fine-powdered-biomass', new = 'fine-powdered-biomass-irragration'},
                {type = 'recipe-replacement', old = 'compost-plant-mk01', new = 'compost-plant-mk01-with-pump'},
                {type = 'recipe-replacement', old = 'compost-plant-mk02', new = 'compost-plant-mk02-with-pump'},
                {type = 'recipe-replacement', old = 'compost-plant-mk03', new = 'compost-plant-mk03-with-pump'},
                {type = 'recipe-replacement', old = 'compost-plant-mk04', new = 'compost-plant-mk04-with-pump'},
            },
        },
        {
            name = 'humus',
            icon = '__pyalienlifegraphics3__/graphics/technology/humus.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'recipe-replacement', 'machine-replacement'
                {type = 'machine-replacement', old = 'compost-plant-mk01', new = 'compost-plant-mk01-turd'},
                {type = 'machine-replacement', old = 'compost-plant-mk02', new = 'compost-plant-mk02-turd'},
                {type = 'machine-replacement', old = 'compost-plant-mk03', new = 'compost-plant-mk03-turd'},
                {type = 'machine-replacement', old = 'compost-plant-mk04', new = 'compost-plant-mk04-turd'},
                {type = 'unlock-recipe', recipe = 'free-manure-bacteria'},
                {type = 'unlock-recipe', recipe = 'manure-bacteria-to-manure'},
                {recipe = 'sweet-syrup', type = 'unlock-recipe', also_unlocked_by_techs = true},
                {recipe = 'a-molasse', type = 'unlock-recipe', also_unlocked_by_techs = true},
            }
        },
        {
            name = 'worm-hotel',
            icon = '__pyalienlifegraphics3__/graphics/technology/worm-hotel.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'recipe-replacement', 'machine-replacement'
                {type = 'unlock-recipe', recipe = 'worm'},
                {type = 'unlock-recipe', recipe = 'worm-stone'},
                {type = 'unlock-recipe', recipe = 'worm-wood'},
                {type = 'unlock-recipe', recipe = 'worm-coarse'},
                {type = 'unlock-recipe', recipe = 'worm-manure'},
            }
        }
    }
}