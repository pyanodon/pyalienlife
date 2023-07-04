RECIPE {
    type = 'recipe',
    name = 'vessel',
    energy_required = 20,
    enabled = false,
    category = 'creature-chamber',
    ingredients = {
        {'earth-generic-sample', 1},
        {'microcin-j25', 1},
        {'alien-sample01', 2},
        {'bio-sample', 2},
        {type = 'fluid', name = 'water-saline', amount = 20},
        {type = 'fluid', name = 'coal-slurry', amount = 20},
    },
    results = {
        {'vessel', 9}
    }
}:add_unlock('biofluid-mk01')

RECIPE {
    type = 'recipe',
    name = 'vessel-to-ground',
    energy_required = 40,
    enabled = false,
    category = 'creature-chamber',
    ingredients = {
        {'vessel', 9},
        {'earth-generic-sample', 1},
        {'peptidase-m58', 1},
        {'alien-sample-02', 2},
        {'bio-sample', 3},
        {type = 'fluid', name = 'water-saline', amount = 40},
        {type = 'fluid', name = 'fetal-serum', amount = 10},
        {type = 'fluid', name = 'coal-slurry', amount = 40},
    },
    results = {
        {'vessel-to-ground', 4}
    }
}:add_unlock('biofluid-mk02')

ITEM {
    type = 'item',
    name = 'vessel',
    icon = '__pyindustry__/graphics/icons/niobium-pipe.png',
    icon_size = 32,
    flags = {},
    subgroup = 'py-alienlife-biofluid-network',
    order = 'da',
    place_result = 'vessel',
    stack_size = 100
}

ITEM {
    type = 'item',
    name = 'vessel-to-ground',
    icon = '__pyindustry__/graphics/icons/niobium-pipe-to-ground.png',
    icon_size = 32,
    flags = {},
    subgroup = 'py-alienlife-biofluid-network',
    order = 'db',
    place_result = 'vessel-to-ground',
    stack_size = 100
}

local pipe = table.deepcopy(data.raw['heat-pipe']['heat-pipe'])
pipe.name = 'vessel'
pipe.minable = {mining_time = 0.2, result = 'vessel'}
pipe.heat_buffer = {
    max_temperature = 0,
    default_temperature = 0,
    min_working_temperature = 0,
    max_transfer = '1W',
    specific_heat = '1W',
    connections = {
        {
            direction = 0,
            position = {
                0,
                0
            }
        },
        {
            direction = 2,
            position = {
                0,
                0
            }
        },
        {
            direction = 4,
            position = {
                0,
                0
            }
        },
        {
            direction = 6,
            position = {
                0,
                0
            }
        }
    },
}

local underground_pipe = table.deepcopy(data.raw['pipe-to-ground']['pipe-to-ground'])
underground_pipe.name = 'vessel-to-ground'
underground_pipe.minable = {mining_time = 0.2, result = 'vessel-to-ground'}
underground_pipe.fluid_box = {
    base_area = 0.01,
    base_level = 1999,
    pipe_connections = {
        {
            position = {0, -1}
        },
        {
            position = {0, 1},
            max_underground_distance = 8
        }
    }
}

data:extend{pipe, underground_pipe}