RECIPE {
    type = 'recipe',
    name = 'biopipe',
    energy_required = 1,
    enabled = false,
    ingredients = {
        {'iron-plate', 1},
    },
    results = {
        {'biopipe', 1}
    }
}:add_unlock('biofluid-mk01')

RECIPE {
    type = 'recipe',
    name = 'biopipe-to-ground',
    energy_required = 1,
    enabled = false,
    ingredients = {
        {'iron-plate', 1},
    },
    results = {
        {'biopipe-to-ground', 1}
    }
}:add_unlock('biofluid-mk02')

ITEM {
    type = 'item',
    name = 'biopipe',
    icon = '__pyindustry__/graphics/icons/niobium-pipe.png',
    icon_size = 32,
    flags = {},
    subgroup = 'py-alienlife-biofluid-network',
    order = 'da',
    place_result = 'biopipe',
    stack_size = 10
}

ITEM {
    type = 'item',
    name = 'biopipe-to-ground',
    icon = '__pyindustry__/graphics/icons/niobium-pipe-to-ground.png',
    icon_size = 32,
    flags = {},
    subgroup = 'py-alienlife-biofluid-network',
    order = 'db',
    place_result = 'biopipe-to-ground',
    stack_size = 10
}

local pipe = table.deepcopy(data.raw['heat-pipe']['heat-pipe'])
pipe.name = 'biopipe'
pipe.minable = {mining_time = 0.2, result = 'biopipe'}
pipe.heat_buffer = {
    max_temperature = 1,
    default_temperature = 0,
    min_working_temperature = 0,
    max_transfer = '1W',
    specific_heat = '1W',
}

local underground_pipe = table.deepcopy(data.raw['pipe-to-ground']['pipe-to-ground'])
underground_pipe.name = 'biopipe-to-ground'
underground_pipe.minable = {mining_time = 0.2, result = 'biopipe-to-ground'}
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