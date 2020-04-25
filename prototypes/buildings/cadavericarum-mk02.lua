local pipe = {
    south = {
        filename = "__pyhightechgraphics__/graphics/entity/cadaveric-arum/bottom.png",
        priority = "extra-high",
        width = 288,
        height = 295
    }
}

RECIPE {
    type = "recipe",
    name = "cadavericarum-mk02",
    energy_required = 0.5,
    enabled = false,
    ingredients = {
        {"plastic-bar", 100},
        {"advanced-circuit", 20},
        {"duralumin", 60},
        {"cadavericarum-mk01", 1},
        {"latex", 10},
        {"neuroprocessor", 10},
        {"titanium-plate", 50},
    },
    results = {
        {"cadavericarum-mk02", 1}
    }
}:add_unlock("cadaveric-arum-mk02")

ITEM {
    type = "item",
    name = "cadavericarum-mk02",
    icon = "__pyhightechgraphics__/graphics/icons/cadaveric-arum-mk02.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-alienlife-buildings-mk02",
    order = "b",
    place_result = "cadavericarum-mk02",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "cadavericarum-mk02",
    icon = "__pyhightechgraphics__/graphics/icons/cadaveric-arum-mk02.png",
	icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "cadavericarum-mk02"},
    fast_replaceable_group = "cadaveric-arum",
    max_health = 100,
    corpse = "big-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-4.2, -4.2}, {4.2, 4.2}},
    selection_box = {{-4.5, -4.5}, {4.5, 4.5}},
    match_animation_speed_to_activity = false,
    module_specification = {
        module_slots = 6
    },
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    crafting_categories = {"arum"},
    crafting_speed = 0.02,
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = -3,
    },
    energy_usage = "650kW",
    ingredient_count = 10,
    animation = {
        layers = {
            {
                filename = "__pyhightechgraphics__/graphics/entity/cadaveric-arum/cadaveric-arum.png",
				priority = "extra-high",
                width = 288,
                height = 295,
                line_length = 5,
                frame_count = 20,
                animation_speed = 0.3,
                shift = util.by_pixel(0, -4),
            },
            {
                filename = "__pyhightechgraphics__/graphics/entity/cadaveric-arum/cadaveric-arum-mask.png",
				priority = "extra-high",
                width = 288,
                height = 295,
                line_length = 5,
                frame_count = 20,
                animation_speed = 0.3,
                shift = util.by_pixel(0, -4),
                tint = {r = 1.0, g = 0.0, b = 0.0, a = 1.0}
            },
            {
                filename = "__pyhightechgraphics__/graphics/entity/cadaveric-arum/shadow.png",
				priority = "extra-high",
                width = 298,
                height = 295,
                line_length = 5,
                frame_count = 20,
                animation_speed = 0.3,
                shift = util.by_pixel(6, -4),
                draw_as_shadow = true,
            }
        }
    },
    fluid_boxes = {
        --1
        {
            production_type = "input",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.0, -5.1}, nil, nil, pipe),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {0.0, 5.0}}}
        },
        {
            production_type = "input",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.0, -5.1}, nil, nil, pipe),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {5.0, 0.0}}}
        },
        {
            production_type = "input",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.0, -5.1}, nil, nil, pipe),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {0.0, -5.0}}}
        },
        {
            production_type = "output",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.0, -5.1}, nil, nil, pipe),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_level = 1,
            pipe_connections = {{type = "output", position = {-5.0, 0.0}}}
        },
        off_when_no_fluid_recipe = false
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pyhightechgraphics__/sounds/cadaveric-arum.ogg", volume = 1.5},
        idle_sound = {filename = "__pyhightechgraphics__/sounds/cadaveric-arum.ogg", volume = 0.9},
        apparent_volume = 2.5
    }
}
