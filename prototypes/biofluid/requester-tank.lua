local collision_mask_util = require '__core__/lualib/collision-mask-util'

RECIPE {
    type = 'recipe',
    name = 'requester-tank',
    energy_required = 40,
    category = 'creature-chamber',
    enabled = false,
    ingredients = {
        {'earth-generic-sample', 1},
        {'cdna', 1},
        {'alien-sample01', 2},
        {'green-wire', 2},
        {type = 'fluid', name = 'water-saline', amount = 50},
        {type = 'fluid', name = 'fetal-serum', amount = 10},
        {type = 'fluid', name = 'coal-slurry', amount = 50},
    },
    results = {
        {'requester-tank', 1}
    }
}:add_unlock('biofluid-mk01')

ITEM {
    type = 'item',
    name = 'requester-tank',
    icon = '__pyalienlifegraphics__/graphics/icons/chest-request.png',
    icon_size = 64,
    flags = {},
    subgroup = 'py-alienlife-biofluid-network',
    order = 'c',
    place_result = 'requester-tank',
    stack_size = 50
}

local graphic = {layers = {{
    filename = '__pyalienlifegraphics2__/graphics/entity/bots/tank/requester-tank.png',
    priority = 'high',
    width = 69,
    height = 67,
    shift = util.by_pixel(1.75, 0),
    scale = 0.5
}}}

ENTITY {
    name = 'requester-tank',
    type = 'furnace',
    bottleneck_ignore = true,
    additional_pastable_entities = {'requester-tank'},
    minable = {mining_time = 0.2, result = 'requester-tank'},
    icon = '__pyindustry__/graphics/icons/overflow-valve.png',
    icon_size = 32,
    flags = {'placeable-player', 'player-creation', 'placeable-neutral', 'placeable-enemy'},
    corpse = 'small-remnants',
    max_health = data.raw['pipe']['pipe'].max_health,
    resistances = data.raw['pipe']['pipe'].resistances,
    fast_replaceable_group = 'vessel',
    collision_box = data.raw['pipe']['pipe'].collision_box,
    selection_box = data.raw['pipe']['pipe'].selection_box,
    working_sound = nil, -- TODO
    fluid_boxes = {{
        base_area = Biofluid.tank_size / 100,
        base_level = 999,
        pipe_covers = _G.pipecoverspictures(),
        pipe_connections = {
            {position = {0, -1}, type = 'output'},
        },
        production_type = 'output'
    }},
    animation = {
        north = graphic,
        east = graphic,
        south = graphic,
        west = graphic,
    },
    show_recipe_icon = false,
    crafting_speed = 1,
    result_inventory_size = 0,
    source_inventory_size = 0,
    crafting_categories = {'biofluid'},
    energy_source = {
        connections = {
          {
            direction = 4,
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
    circuit_wire_connection_points = {
        {
            shadow = {red = {0.171875, 0.140625}, green = {0.171875, 0.265625}},
            wire = {red = {-0.53125, -0.15625}, green = {-0.53125, 0}}
        },
        {
            shadow = {red = {0.890625, 0.703125}, green = {0.75, 0.75}},
            wire = {red = {0.34375, 0.28125}, green = {0.34375, 0.4375}}
        },
        {
            shadow = {red = {0.15625, 0.0625}, green = {0.09375, 0.125}},
            wire = {red = {-0.53125, -0.09375}, green = {-0.53125, 0.03125}}
        },
        {
            shadow = {red = {0.796875, 0.703125}, green = {0.625, 0.75}},
            wire = {red = {0.40625, 0.28125}, green = {0.40625, 0.4375}}
        }
    },
    circuit_connector_sprites = _G.circuit_connector_definitions['inserter'].sprites,
    circuit_wire_max_distance = data.raw['storage-tank']['storage-tank'].circuit_wire_max_distance,
    collision_mask = collision_mask_util.get_default_mask('furnace')
}

collision_mask_util.add_layer(data.raw.furnace['requester-tank'].collision_mask, vessel_collision_mask)