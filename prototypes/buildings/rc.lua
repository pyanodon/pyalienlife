RECIPE {
    type = 'recipe',
    name = 'rc-mk01',
    energy_required = 10,
    enabled = false,
    ingredients = {
        {'iron-gear-wheel',    200},
        {'steel-plate',        100},
        {'iron-plate',         200},
        {'titanium-plate',     100},
        {'glass',              50},
        {'stone-brick',        400},
        {'electronic-circuit', 20},
        {'concrete',           100},
        {'steam-engine',       3},
    },
    results = {
        {'rc-mk01', 1}
    }
}:add_unlock('biotech-machines-mk01')

RECIPE {
    type = 'recipe',
    name = 'rc-mk02',
    energy_required = 10,
    enabled = false,
    ingredients = {
        {'rc-mk01',          1},
        {'advanced-circuit', 20},
        {'nexelit-plate',    50},
        {'stainless-steel',  60},
        {'glass',            50},
        {'concrete',         100},
        {'engine-unit',      3},
        {'small-parts-02',   150},
        -- {"eva", 100},
        {'neuroprocessor',   20},
    },
    results = {
        {'rc-mk02', 1}
    }
}:add_unlock('biotech-machines-mk02')

RECIPE {
    type = 'recipe',
    name = 'rc-mk03',
    energy_required = 10,
    enabled = false,
    ingredients = {
        {'rc-mk02',              1},
        {'electric-engine-unit', 6},
        {'niobium-plate',        50},
        {'processing-unit',      20},
        {'kevlar',               100},
        {'super-steel',          100},
        {'molybdenum-plate',     100},
        {'ticocr-alloy',         50},
        {'nbti-alloy',           100},
        {'small-parts-03',       100},
    },
    results = {
        {'rc-mk03', 1}
    }
}:add_unlock('biotech-machines-mk03')

RECIPE {
    type = 'recipe',
    name = 'rc-mk04',
    energy_required = 10,
    enabled = false,
    ingredients = {
        {'rc-mk03',               1},
        {'science-coating',       40},
        {'wall-shield',           20},
        {'nbfe-alloy',            100},
        {'super-alloy',           200},
        {'control-unit',          40},
        {'nenbit-matrix',         50},
        {'silver-foam',           30},
        {'metallic-glass',        30},
        {'low-density-structure', 100},
    },
    results = {
        {'rc-mk04', 1}
    }
}:add_unlock('biotech-machines-mk04')

for i = 1, 4 do
    local name = 'rc-mk0' .. i
    local icon = '__pyalienlifegraphics2__/graphics/icons/' .. name .. '.png'
    local icon_size = 64
    local module_slots = 2 * i

    ITEM {
        type = 'item',
        name = name,
        icon = icon,
        icon_size = icon_size,
        flags = {},
        subgroup = 'py-alienlife-buildings-mk0' .. i,
        order = 'h',
        place_result = name,
        stack_size = 10
    }

    ENTITY {
        type = 'assembling-machine',
        name = name,
        icon = icon,
        icon_size = icon_size,
        flags = {'placeable-neutral', 'player-creation'},
        minable = {mining_time = 0.5, result = name},
        fast_replaceable_group = 'reproductive-complex',
        max_health = 2000 * i,
        corpse = 'big-remnants',
        dying_explosion = 'big-explosion',
        collision_box = {{-10.6, -10.6}, {10.6, 10.6}},
        selection_box = {{-11.0, -11.0}, {11.0, 11.0}},
        match_animation_speed_to_activity = false,
        draw_entity_info_icon_background = false,
        entity_info_icon_shift = util.by_pixel(165, 265),
        module_specification = {
            module_info_icon_scale = 0.6,
            module_info_icon_shift = util.by_pixel(160, 230),
            module_slots = module_slots,
        },
        allowed_effects = {'speed', 'consumption', 'pollution', 'productivity'},
        crafting_categories = {'rc'},
        crafting_speed = i / (module_slots + 1), -- # modules + 1 building = target speed of 1
        energy_source = {
            type = 'electric',
            usage_priority = 'secondary-input',
            emissions_per_minute = 0.5 * i,
        },
        energy_usage = (500 * i) .. 'kW',
        animation = {
            layers = {
                --TERRAIN
                {
                    filename = '__pyalienlifegraphics2__/graphics/entity/rc/off.png',
                    width = 768,
                    height = 768,
                    frame_count = 1,
                    shift = util.by_pixel(0, -0),
                    priority = 'low',
                },
                {
                    filename = '__pyalienlifegraphics2__/graphics/entity/rc/mask.png',
                    width = 768,
                    height = 768,
                    frame_count = 1,
                    shift = util.by_pixel(0, 1),
                    priority = 'low',
                    tint = py.tints[i],
                },
                {
                    filename = '__pyalienlifegraphics2__/graphics/entity/rc/l.png',
                    width = 768,
                    height = 768,
                    frame_count = 1,
                    draw_as_glow = true,
                    priority = 'extra-high',
                    shift = util.by_pixel(0, -0),
                },
                {
                    filename = '__pyalienlifegraphics2__/graphics/entity/rc/l.png',
                    width = 768,
                    height = 768,
                    frame_count = 1,
                    draw_as_glow = true,
                    priority = 'extra-high',
                    shift = util.by_pixel(0, -0),
                },
            }
        },
        working_visualisations = {
            --trits
            {
                north_position = util.by_pixel(-192, -224),
                west_position = util.by_pixel(-192, -224),
                south_position = util.by_pixel(-192, -224),
                east_position = util.by_pixel(-192, -224),
                animation = {
                    filename = '__pyalienlifegraphics2__/graphics/entity/rc/trit.png',
                    frame_count = 75,
                    width = 192,
                    height = 192,
                    line_length = 10,
                    animation_speed = 0.3,
                    priority = 'medium'
                }
            },
            {
                north_position = util.by_pixel(-112, 48),
                west_position = util.by_pixel(-112, 48),
                south_position = util.by_pixel(-112, 48),
                east_position = util.by_pixel(-112, 48),
                animation = {
                    filename = '__pyalienlifegraphics2__/graphics/entity/rc/tree.png',
                    frame_count = 50,
                    width = 160,
                    height = 160,
                    line_length = 10,
                    animation_speed = 0.5,
                    priority = 'medium'
                }
            },
            {
                north_position = util.by_pixel(160, -176),
                west_position = util.by_pixel(160, -176),
                south_position = util.by_pixel(160, -176),
                east_position = util.by_pixel(160, -176),
                animation = {
                    filename = '__pyalienlifegraphics2__/graphics/entity/rc/arqad.png',
                    frame_count = 100,
                    width = 192,
                    height = 160,
                    line_length = 10,
                    animation_speed = 0.5,
                    priority = 'medium'
                }
            },
            {
                north_position = util.by_pixel(-48, -192),
                west_position = util.by_pixel(-48, -192),
                south_position = util.by_pixel(-48, -192),
                east_position = util.by_pixel(-48, -192),
                animation = {
                    filename = '__pyalienlifegraphics2__/graphics/entity/rc/screen.png',
                    frame_count = 152,
                    width = 96,
                    height = 64,
                    line_length = 20,
                    animation_speed = 0.3,
                    draw_as_glow = true,
                    priority = 'medium'
                }
            },
            {
                north_position = util.by_pixel(-48, -192),
                west_position = util.by_pixel(-48, -192),
                south_position = util.by_pixel(-48, -192),
                east_position = util.by_pixel(-48, -192),
                animation = {
                    filename = '__pyalienlifegraphics2__/graphics/entity/rc/screen.png',
                    frame_count = 152,
                    width = 96,
                    height = 64,
                    line_length = 20,
                    animation_speed = 0.3,
                    draw_as_glow = true,
                    priority = 'medium'
                }
            },
        },
        fluid_boxes = {
            --1
            {
                production_type = 'input',
                pipe_picture = py.pipe_pictures('assembling-machine-3', nil, {0.0, -0.88}, nil, nil),
                pipe_covers = py.pipe_covers(true, true, true, true),
                base_area = 10,
                base_level = -1,
                pipe_connections = {{flow_direction = 'input', position = {4.5, 10.6}, direction = defines.direction.south}}
            },
            {
                production_type = 'input',
                pipe_picture = py.pipe_pictures('assembling-machine-3', nil, {0.0, -0.88}, nil, nil),
                pipe_covers = py.pipe_covers(true, true, true, true),
                base_area = 10,
                base_level = -1,
                pipe_connections = {{flow_direction = 'input', position = {6.5, 10.6}, direction = defines.direction.south}}
            },
            {
                production_type = 'input',
                pipe_picture = py.pipe_pictures('assembling-machine-3', nil, {0.0, -0.88}, nil, nil),
                pipe_covers = py.pipe_covers(true, true, true, true),
                base_area = 10,
                base_level = -1,
                pipe_connections = {{flow_direction = 'input', position = {0.5, 10.6}, direction = defines.direction.south}}
            },
            {
                production_type = 'output',
                pipe_picture = py.pipe_pictures('assembling-machine-3', nil, {0.0, -0.88}, nil, nil),
                pipe_covers = py.pipe_covers(true, true, true, true),
                base_level = 1,
                pipe_connections = {{flow_direction = 'output', position = {-1.5, 10.6}, direction = defines.direction.south}}
            },
            off_when_no_fluid_recipe = true
        },
        vehicle_impact_sound = {filename = '__base__/sound/car-metal-impact.ogg', volume = 0.65},
        working_sound = {
            sound = {filename = '__pyalienlifegraphics2__/sounds/rc.ogg', volume = 0.85},
            idle_sound = {filename = '__pyalienlifegraphics2__/sounds/rc.ogg', volume = 0.85},
            audible_distance_modifier = 1,
        }
    }
end