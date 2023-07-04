RECIPE {
    type = 'recipe',
    name = 'requester-tank',
    energy_required = 1,
    enabled = false,
    ingredients = {
        {'steel-plate', 50},
        {'glass', 40},
        {'titanium-plate', 100},
        {'duralumin', 50},
        {'electronic-circuit', 30},
        {'iron-gear-wheel', 50},
    },
    results = {
        {'requester-tank', 1}
    }
}:add_unlock('biofluid-mk01')

ITEM {
    type = 'item',
    name = 'requester-tank',
    icon = '__pyindustry__/graphics/icons/check-valve.png',
    icon_size = 32,
    flags = {},
    subgroup = 'py-alienlife-biofluid-network',
    order = 'c',
    place_result = 'requester-tank',
    stack_size = 10
}

ENTITY {
    name = 'requester-tank',
    type = 'storage-tank',
    minable = {mining_time = 0.2, result = 'requester-tank'},
    icon = '__pyindustry__/graphics/icons/check-valve.png',
    icon_size = 32,
    flags = {'placeable-player', 'player-creation', 'placeable-neutral', 'placeable-enemy'},
    corpse = 'small-remnants',
    max_health = data.raw['pipe']['pipe'].max_health,
    resistances = data.raw['pipe']['pipe'].resistances,
    fast_replaceable_group = data.raw['pipe']['pipe'].fast_replaceable_group,
    collision_box = data.raw['pipe']['pipe'].collision_box,
    selection_box = data.raw['pipe']['pipe'].selection_box,
    window_bounding_box = {{0, 0}, {0, 0}},
    flow_length_in_ticks = data.raw['storage-tank']['storage-tank'].flow_length_in_ticks,
    two_direction_only = false,
    working_sound = nil,
    fluid_box = {
        base_area = 25,
        base_level = 999,
        pipe_covers = _G.pipecoverspictures(),
        pipe_connections = {
            {position = {0, 1}},
            {position = {0, -1}, type = 'output'}
        }
    },
    pictures = {
        gas_flow = ENTITY.Sprites.empty_pictures(),
        fluid_background = ENTITY.Sprites.empty_pictures(),
        window_background = ENTITY.Sprites.empty_pictures(),
        flow_sprite = ENTITY.Sprites.empty_pictures(),
        picture = {
            sheets = {
                {
                    filename = '__pyalienlifegraphics2__/graphics/entity/bots/tanks/requester-tank.png',
                    priority = 'extra-high',
                    frames = 4,
                    width = 32,
                    height = 64,
                    shift = {0.0, -0.5},
                    hr_version = {
                        filename = '__pyalienlifegraphics2__/graphics/entity/bots/tanks/hr-requester-tank.png',
                        priority = 'extra-high',
                        frames = 4,
                        width = 64,
                        height = 128,
                        shift = {0.0, -0.5},
                        scale = 0.5
                    }
                },
                {
                    filename = '__pyalienlifegraphics2__/graphics/entity/bots/tanks/requester-tank-shadow.png',
                    priority = 'extra-high',
                    draw_as_shadow = true,
                    frames = 4,
                    width = 64,
                    height = 35,
                    shift = {0.5, -0.0},
                    hr_version = {
                        filename = '__pyalienlifegraphics2__/graphics/entity/bots/tanks/hr-requester-tank-shadow.png',
                        priority = 'extra-high',
                        frames = 4,
                        draw_as_shadow = true,
                        width = 128,
                        height = 70,
                        shift = {0.5, -0.0},
                        scale = 0.5
                    }
                }
            }
        }
    },
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
    circuit_wire_max_distance = data.raw['storage-tank']['storage-tank'].circuit_wire_max_distance
}
