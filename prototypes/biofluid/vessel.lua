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
        {type = 'fluid', name = 'water-saline', amount = 20},
        {type = 'fluid', name = 'coal-slurry', amount = 20},
    },
    results = {
        {'vessel', 40}
    }
}:add_unlock('biofluid-mk01')

RECIPE {
    type = 'recipe',
    name = 'vessel-to-ground',
    energy_required = 40,
    enabled = false,
    category = 'creature-chamber',
    ingredients = {
        {'vessel', 10},
        {'earth-generic-sample', 1},
        {'peptidase-m58', 1},
        {'alien-sample-02', 2},
        {'bio-sample', 3},
        {type = 'fluid', name = 'water-saline', amount = 40},
        {type = 'fluid', name = 'fetal-serum', amount = 10},
        {type = 'fluid', name = 'coal-slurry', amount = 40},
    },
    results = {
        {'vessel-to-ground', 10}
    }
}:add_unlock('biofluid-mk02')

ITEM {
    type = 'item',
    name = 'vessel',
    icons = {{
        icon = '__pyindustry__/graphics/icons/niobium-pipe.png',
        icon_size = 32,
        tint = {0.5, 0.5, 1}
    }},
    flags = {},
    subgroup = 'py-alienlife-biofluid-network',
    order = 'da',
    place_result = 'vessel',
    stack_size = 100
}

ITEM {
    type = 'item',
    name = 'vessel-to-ground',
    icons = {{
        icon = '__pyindustry__/graphics/icons/niobium-pipe-to-ground.png',
        icon_size = 32,
        tint = {0.5, 0.5, 1}
    }},
    flags = {},
    subgroup = 'py-alienlife-biofluid-network',
    order = 'db',
    place_result = 'vessel-to-ground',
    stack_size = 100
}

local pipe = table.deepcopy(data.raw['heat-pipe']['heat-pipe'])
pipe.name = 'vessel'
pipe.minable = {mining_time = 0.2, result = 'vessel'}
pipe.fast_replaceable_group = 'vessel'
pipe.next_upgrade = nil
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
underground_pipe.fast_replaceable_group = 'vessel'
underground_pipe.next_upgrade = nil
underground_pipe.fluid_box = {
    base_area = 0.01,
    base_level = 1999,
    pipe_connections = {
        {
            position = {0, -1}
        },
        {
            position = {0, 1},
            max_underground_distance = 48
        }
    }
}

data:extend{pipe, underground_pipe}

data:extend{{
    name = 'vessel-to-ground-heat-connection',
    type = 'furnace',
    bottleneck_ignore = true,
    icon = underground_pipe.icon or '__base__/graphics/icons/pipe-to-ground.png',
    icon_size = underground_pipe.icon_size or 64,
    localised_name = {'entity-name.vessel-to-ground'},
    localised_description = {'entity-description.vessel-to-ground'},
    flags = {'hidden', 'placeable-neutral', 'no-automated-item-insertion', 'no-automated-item-removal', 'not-flammable'},
    collision_box = underground_pipe.collision_box,
    collision_mask = {},
    show_recipe_icon = false,
    crafting_speed = 1,
    result_inventory_size = 0,
    source_inventory_size = 0,
    crafting_categories = {'biofluid'},
    energy_source = {
        connections = {
          {
            direction = 0,
            position = {0, 0}
          }
        },
        max_temperature = 0,
        default_temperature = 0,
        min_working_temperature = 0,
        max_transfer = '1W',
        specific_heat = '1W',
        type = 'heat',
        pipe_covers = require('__pyalienlife__/prototypes/biofluid/pipe-cover'),
        heat_pipe_covers = require('__pyalienlife__/prototypes/biofluid/pipe-cover'),
    },
    energy_usage = '1W',
    show_recipe_icon_on_map = false,
}}