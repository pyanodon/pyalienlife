RECIPE {
    type = 'recipe',
    name = 'bioport',
    energy_required = 0.5,
    enabled = false,
    ingredients = {
        {'iron-plate', 1},
    },
    results = {
        {'bioport', 1}
    }
}:add_unlock{'biofluid-mk01'}

ITEM {
    type = 'item',
    name = 'bioport',
    icon = '__pyindustry__/graphics/icons/py-roboport-mk02.png',
    icon_size = 64,
    flags = {},
    subgroup = 'py-alienlife-biofluid-network',
    order = 'a',
    place_result = 'bioport',
    stack_size = 10
}

ENTITY {
    type = 'roboport',
    name = 'bioport',
    icon = '__pyindustry__/graphics/icons/py-roboport-mk02.png',
    icon_size = 64,
    flags = {'placeable-player', 'player-creation'},
    minable = {mining_time = 0.1, result = 'py-roboport-mk02'},
    max_health = 500,
    corpse = 'big-remnants',
    collision_box = {{-2.3, -2.3}, {2.3, 2.3}},
    selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
    resistances = {
        {
            type = 'fire',
            percent = 100
        },
        {
            type = 'impact',
            percent = 50
        }
    },
    dying_explosion = 'medium-explosion',
    energy_source = {
        type = 'void'
    },
    recharge_minimum = '0J',
    energy_usage = '0W',
    -- per one charge slot
    charging_energy = '0W',
    logistics_radius = 50,
    construction_radius = 0,
    charge_approach_distance = 5,
    robot_slots_count = 5,
    material_slots_count = 5,
    stationing_offset = util.by_pixel(0, -110),
    robots_shrink_when_entering_and_exiting = true,
    charging_offsets = {
        {-0, -3},
        {-0, -5},
        {1, -3.5},
        {-1, -3.5},
        {1, -4.5},
        {-1, -4.5},

    },
    base = {
        layers = {
            {
                filename = '__pyindustry__/graphics/icons/filler.png',
                width = 4,
                height = 4,
                shift = util.by_pixel(0, -0),
                hr_version = {
                    filename = '__pyindustry__/graphics/icons/filler.png',
                    width = 4,
                    height = 4,
                    shift = util.by_pixel(0, -0),
                }
            },
        }
    },
    base_patch = {
        filename = '__pyindustry__/graphics/entity/py-roboport-mk02/patch.png',
        priority = 'high',
        width = 160,
        height = 256,
        frame_count = 1,
        shift = util.by_pixel(0, -48),
        hr_version = {
            filename = '__pyindustry__/graphics/entity/py-roboport-mk02/hr-patch.png',
            priority = 'high',
            width = 320,
            height = 512,
            frame_count = 1,
            shift = util.by_pixel(0, -48),
            scale = 0.5
        }
    },
    base_animation = {
        layers = {
            {
                filename = '__pyindustry__/graphics/entity/py-roboport-mk02/raw.png',
                width = 160,
                height = 256,
                line_length = 12,
                frame_count = 50,
                animation_speed = 0.4,
                shift = util.by_pixel(0, -48),
                hr_version = {
                    filename = '__pyindustry__/graphics/entity/py-roboport-mk02/hr-raw.png',
                    width = 320,
                    height = 512,
                    line_length = 12,
                    frame_count = 50,
                    animation_speed = 0.4,
                    shift = util.by_pixel(0, -48),
                    scale = 0.5
                }
            },
            {
                filename = '__pyindustry__/graphics/entity/py-roboport-mk02/l.png',
                width = 128,
                height = 64,
                line_length = 12,
                frame_count = 50,
                animation_speed = 0.4,
                draw_as_glow = true,
                shift = util.by_pixel(0, -96),
                hr_version = {
                    filename = '__pyindustry__/graphics/entity/py-roboport-mk02/hr-l.png',
                    width = 256,
                    height = 128,
                    line_length = 12,
                    frame_count = 50,
                    animation_speed = 0.4,
                    draw_as_glow = true,
                    shift = util.by_pixel(0, -96),
                    scale = 0.5
                }
            },
            {
                filename = '__pyindustry__/graphics/entity/py-roboport-mk02/sh.png',
                width = 48,
                height = 96,
                line_length = 12,
                frame_count = 50,
                animation_speed = 0.4,
                draw_as_shadow = true,
                shift = util.by_pixel(102, 0),
                hr_version = {
                    filename = '__pyindustry__/graphics/entity/py-roboport-mk02/hr-sh.png',
                    width = 96,
                    height = 192,
                    line_length = 12,
                    frame_count = 50,
                    animation_speed = 0.4,
                    draw_as_shadow = true,
                    shift = util.by_pixel(102, 0),
                    scale = 0.5
                }
            }
        }
    },
    door_animation_up = {
        filename = '__pyindustry__/graphics/icons/filler.png',
        width = 4,
        height = 4,
        shift = util.by_pixel(0, -0),
        hr_version = {
            filename = '__pyindustry__/graphics/icons/filler.png',
            width = 4,
            height = 4,
            shift = util.by_pixel(0, -0),
        }
    },
    door_animation_down = {
        filename = '__pyindustry__/graphics/icons/filler.png',
        width = 4,
        height = 4,
        shift = util.by_pixel(0, -0),
        hr_version = {
            filename = '__pyindustry__/graphics/icons/filler.png',
            width = 4,
            height = 4,
            shift = util.by_pixel(0, -0),
        }
    },
    recharging_animation = {
        filename = '__pyindustry__/graphics/entity/py-roboport-mk01/effect.png',
        priority = 'high',
        width = 128,
        height = 88,
        frame_count = 16,
        shift = util.by_pixel(-1, -21),
        scale = 0.5,
        animation_speed = 0.5
    },
    vehicle_impact_sound = {filename = '__base__/sound/car-metal-impact.ogg', volume = 0.65},
    working_sound = {
        sound = {filename = '__base__/sound/roboport-working.ogg', volume = 0.6},
        max_sounds_per_type = 3,
        audible_distance_modifier = 0.5,
        probability = 1 / (5 * 60) -- average pause between the sound is 5 seconds
    },
    recharging_light = {intensity = 0.4, size = 5, color = {r = 1.0, g = 1.0, b = 1.0}},
    request_to_open_door_timeout = 15,
    spawn_and_station_height = -0.1,
    draw_logistic_radius_visualization = true,
    draw_construction_radius_visualization = true,
    open_door_trigger_effect = {
        {
            type = 'play-sound',
            sound = {filename = '__base__/sound/roboport-door.ogg', volume = 0.4}
        }
    },
    close_door_trigger_effect = {
        {
            type = 'play-sound',
            sound = {filename = '__base__/sound/roboport-door.ogg', volume = 0.4}
        }
    },
    circuit_wire_connection_point = _G.circuit_connector_definitions['roboport'].points,
    circuit_connector_sprites = _G.circuit_connector_definitions['roboport'].sprites,
    circuit_wire_max_distance = _G.default_circuit_wire_max_distance,
    default_available_logistic_output_signal = {type = 'virtual', name = 'signal-X'},
    default_total_logistic_output_signal = {type = 'virtual', name = 'signal-Y'},
    default_available_construction_output_signal = {type = 'virtual', name = 'signal-Z'},
    default_total_construction_output_signal = {type = 'virtual', name = 'signal-T'}
}
