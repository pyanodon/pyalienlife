RECIPE {
    type = "recipe",
    name = "rc-mk01",
    energy_required = 10,
    enabled = false,
    ingredients = {
        {type = "item", name = "iron-gear-wheel",    amount = 200},
        {type = "item", name = "steel-plate",        amount = 100},
        {type = "item", name = "iron-plate",         amount = 200},
        {type = "item", name = "titanium-plate",     amount = 100},
        {type = "item", name = "glass",              amount = 50},
        {type = "item", name = "stone-brick",        amount = 400},
        {type = "item", name = "electronic-circuit", amount = 20},
        {type = "item", name = "concrete",           amount = 100},
        {type = "item", name = "steam-engine",       amount = 3},
    },
    results = {
        {type = "item", name = "rc-mk01", amount = 1}
    }
}:add_unlock("biotech-machines-mk01")

RECIPE {
    type = "recipe",
    name = "rc-mk02",
    energy_required = 10,
    enabled = false,
    ingredients = {
        {"rc-mk01",          1},
        {"advanced-circuit", 20},
        {"nexelit-plate",    50},
        {"stainless-steel",  60},
        {"glass",            50},
        {"concrete",         100},
        {"engine-unit",      3},
        {"small-parts-02",   150},
        -- {"eva", 100},
        {"neuroprocessor",   20},
    },
    results = {
        {"rc-mk02", 1}
    }
}:add_unlock("biotech-machines-mk02")

RECIPE {
    type = "recipe",
    name = "rc-mk03",
    energy_required = 10,
    enabled = false,
    ingredients = {
        {"rc-mk02",              1},
        {"electric-engine-unit", 6},
        {"niobium-plate",        50},
        {"processing-unit",      20},
        {"kevlar",               100},
        {"super-steel",          100},
        {"molybdenum-plate",     100},
        {"ticocr-alloy",         50},
        {"nbti-alloy",           100},
        {"small-parts-03",       100},
    },
    results = {
        {"rc-mk03", 1}
    }
}:add_unlock("biotech-machines-mk03")

RECIPE {
    type = "recipe",
    name = "rc-mk04",
    energy_required = 10,
    enabled = false,
    ingredients = {
        {"rc-mk03",               1},
        {"science-coating",       40},
        {"wall-shield",           20},
        {"nbfe-alloy",            100},
        {"super-alloy",           200},
        {"control-unit",          40},
        {"nenbit-matrix",         50},
        {"silver-foam",           30},
        {"metallic-glass",        30},
        {"low-density-structure", 100},
    },
    results = {
        {"rc-mk04", 1}
    }
}:add_unlock("biotech-machines-mk04")

for i = 1, 4 do
    local name = "rc-mk0" .. i
    local icon = "__pyalienlifegraphics2__/graphics/icons/" .. name .. ".png"
    local icon_size = 64
    local module_slots = 2 * i

    ITEM {
        type = "item",
        name = name,
        icon = icon,
        icon_size = icon_size,
        flags = {},
        subgroup = "py-alienlife-buildings-mk0" .. i,
        order = "h",
        place_result = name,
        stack_size = 10
    }

    ENTITY {
        type = "assembling-machine",
        name = name,
        icon = icon,
        icon_size = icon_size,
        flags = {"placeable-neutral", "player-creation"},
        minable = {mining_time = 0.5, result = name},
        fast_replaceable_group = "reproductive-complex",
        max_health = 2000 * i,
        corpse = "big-remnants",
        dying_explosion = "big-explosion",
        collision_box = {{-10.6, -10.6}, {10.6, 10.6}},
        selection_box = {{-11.0, -11.0}, {11.0, 11.0}},
        forced_symmetry = "diagonal-pos",
        draw_entity_info_icon_background = false,
        entity_info_icon_shift = util.by_pixel(165, 265),
        module_slots = module_slots,
        allowed_effects = {"speed", "consumption", "pollution", "productivity"},
        crafting_categories = {"rc"},
        crafting_speed = i / (module_slots + 1), -- # modules + 1 building = target speed of 1
        energy_source = {
            type = "electric",
            usage_priority = "secondary-input",
            emissions_per_minute = {
                pollution = 0.5 * i
            },
        },
        energy_usage = (500 * i) .. "kW",
        graphics_set = {
            working_visualisations = {
                --trits
                {
                    north_position = util.by_pixel(-192, -224),
                    west_position = util.by_pixel(-192, -224),
                    south_position = util.by_pixel(-192, -224),
                    east_position = util.by_pixel(-192, -224),
                    animation = {
                        filename = "__pyalienlifegraphics2__/graphics/entity/rc/trit.png",
                        frame_count = 75,
                        width = 192,
                        height = 192,
                        line_length = 10,
                        animation_speed = 0.3,
                        priority = "medium"
                    }
                },
                {
                    north_position = util.by_pixel(-112, 48),
                    west_position = util.by_pixel(-112, 48),
                    south_position = util.by_pixel(-112, 48),
                    east_position = util.by_pixel(-112, 48),
                    animation = {
                        filename = "__pyalienlifegraphics2__/graphics/entity/rc/tree.png",
                        frame_count = 50,
                        width = 160,
                        height = 160,
                        line_length = 10,
                        animation_speed = 0.5,
                        priority = "medium"
                    }
                },
                {
                    north_position = util.by_pixel(160, -176),
                    west_position = util.by_pixel(160, -176),
                    south_position = util.by_pixel(160, -176),
                    east_position = util.by_pixel(160, -176),
                    animation = {
                        filename = "__pyalienlifegraphics2__/graphics/entity/rc/arqad.png",
                        frame_count = 100,
                        width = 192,
                        height = 160,
                        line_length = 10,
                        animation_speed = 0.5,
                        priority = "medium"
                    }
                },
                {
                    north_position = util.by_pixel(-48, -192),
                    west_position = util.by_pixel(-48, -192),
                    south_position = util.by_pixel(-48, -192),
                    east_position = util.by_pixel(-48, -192),
                    animation = {
                        filename = "__pyalienlifegraphics2__/graphics/entity/rc/screen.png",
                        frame_count = 152,
                        width = 96,
                        height = 64,
                        line_length = 20,
                        animation_speed = 0.3,
                        draw_as_glow = true,
                        priority = "medium"
                    }
                },
                {
                    north_position = util.by_pixel(-48, -192),
                    west_position = util.by_pixel(-48, -192),
                    south_position = util.by_pixel(-48, -192),
                    east_position = util.by_pixel(-48, -192),
                    animation = {
                        filename = "__pyalienlifegraphics2__/graphics/entity/rc/screen.png",
                        frame_count = 152,
                        width = 96,
                        height = 64,
                        line_length = 20,
                        animation_speed = 0.3,
                        draw_as_glow = true,
                        priority = "medium"
                    }
                },
            },
            animation = {
                layers = {
                    --TERRAIN
                    {
                        filename = "__pyalienlifegraphics2__/graphics/entity/rc/off.png",
                        width = 768,
                        height = 768,
                        frame_count = 1,
                        shift = util.by_pixel(0, -0),
                        priority = "low",
                    },
                    {
                        filename = "__pyalienlifegraphics2__/graphics/entity/rc/mask.png",
                        width = 768,
                        height = 768,
                        frame_count = 1,
                        shift = util.by_pixel(0, 1),
                        priority = "low",
                        tint = py.tints[i],
                    },
                    {
                        filename = "__pyalienlifegraphics2__/graphics/entity/rc/l.png",
                        width = 768,
                        height = 768,
                        frame_count = 1,
                        draw_as_glow = true,
                        priority = "extra-high",
                        shift = util.by_pixel(0, -0),
                    },
                    {
                        filename = "__pyalienlifegraphics2__/graphics/entity/rc/l.png",
                        width = 768,
                        height = 768,
                        frame_count = 1,
                        draw_as_glow = true,
                        priority = "extra-high",
                        shift = util.by_pixel(0, -0),
                    },
                }
            },
        },
        fluid_boxes_off_when_no_fluid_recipe = true,
        fluid_boxes = {
            --1
            {
                production_type = "input",
                pipe_picture = py.pipe_pictures("assembling-machine-3", nil, {0.0, -0.88}, nil, nil),
                pipe_covers = py.pipe_covers(true, true, true, true),
                volume = 1000,
                pipe_connections = {{flow_direction = "input", position = {4.5, 10.5}, direction = defines.direction.south}}
            },
            {
                production_type = "input",
                pipe_picture = py.pipe_pictures("assembling-machine-3", nil, {0.0, -0.88}, nil, nil),
                pipe_covers = py.pipe_covers(true, true, true, true),
                volume = 1000,
                pipe_connections = {{flow_direction = "input", position = {6.5, 10.5}, direction = defines.direction.south}}
            },
            {
                production_type = "input",
                pipe_picture = py.pipe_pictures("assembling-machine-3", nil, {0.0, -0.88}, nil, nil),
                pipe_covers = py.pipe_covers(true, true, true, true),
                volume = 1000,
                pipe_connections = {{flow_direction = "input", position = {0.5, 10.5}, direction = defines.direction.south}}
            },
            {
                production_type = "output",
                pipe_picture = py.pipe_pictures("assembling-machine-3", nil, {0.0, -0.88}, nil, nil),
                pipe_covers = py.pipe_covers(true, true, true, true),
                volume = 100,
                pipe_connections = {{flow_direction = "output", position = {-1.5, 10.5}, direction = defines.direction.south}}
            },
        },
        impact_category = "metal",
        working_sound = {
            sound = {filename = "__pyalienlifegraphics2__/sounds/rc.ogg", volume = 0.7, max_count = 1, audible_distance_modifier = 1,},
            idle_sound = {filename = "__pyalienlifegraphics2__/sounds/rc.ogg", volume = 0.4, max_count = 1, audible_distance_modifier = 1,},
            max_sounds_per_prototype = 1,
        }
    }
end
