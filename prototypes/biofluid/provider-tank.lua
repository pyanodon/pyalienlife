RECIPE {
    type = 'recipe',
    name = 'provider-tank',
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
        {'provider-tank', 1}
    }
}:add_unlock('biofluid-mk01')

ITEM {
    type = 'item',
    name = 'provider-tank',
    icon = '__pyindustry__/graphics/icons/underflow-valve.png',
    icon_size = 32,
    flags = {},
    subgroup = 'py-alienlife-biofluid-network',
    order = 'c',
    place_result = 'provider-tank',
    stack_size = 10
}

ENTITY {
    name = 'provider-tank',
    type = 'storage-tank',
    minable = {mining_time = 0.2, result = 'provider-tank'},
    icon = '__pyindustry__/graphics/icons/overflow-valve.png',
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
        base_area = 2500,
        base_level = -1001,
        pipe_covers = _G.pipecoverspictures(),
        pipe_connections = {
            {position = {0, 1}},
            {position = {0, -1}, type = 'input'}
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
                    filename = '__pyalienlifegraphics2__/graphics/entity/bots/tanks/provider-tank.png',
                    priority = 'extra-high',
                    frames = 4,
                    width = 32,
                    height = 64,
                    shift = util.by_pixel(0, -18),
                    hr_version = {
                        filename = '__pyalienlifegraphics2__/graphics/entity/bots/tanks/hr-provider-tank.png',
                        priority = 'extra-high',
                        frames = 4,
                        width = 64,
                        height = 128,
                        shift = util.by_pixel(0, -16),
                        scale = 0.5
                    }
                },
                {
                    filename = '__pyalienlifegraphics2__/graphics/entity/bots/tanks/provider-tank-shadow.png',
                    priority = 'extra-high',
                    draw_as_shadow = true,
                    frames = 2,
                    width = 45,
                    height = 24,
                    shift = util.by_pixel(0, -0),
                    hr_version = {
                        filename = '__pyalienlifegraphics2__/graphics/entity/bots/tanks/hr-provider-tank-shadow.png',
                        priority = 'extra-high',
                        draw_as_shadow = true,
                        frames = 2,
                        width = 90,
                        height = 48,
                        shift = util.by_pixel(14, -0),
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
