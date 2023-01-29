RECIPE {
    type = "recipe",
    name = "vat-brain",
    energy_required = 0.5,
    enabled = false,
    ingredients = {
        {"brain", 15},
        {"washer", 1},
        {"nexelit-plate", 20},
        {"titanium-plate", 35},
        {"electronic-circuit", 10},
        {"glass", 50},
        {"nickel-plate", 25},
    },
    results = {
        {"vat-brain", 1}
    }
}:add_unlock("vatbrain-mk01")

ITEM {
    type = "item",
    name = "vat-brain",
    icon = "__pyalienlifegraphics__/graphics/icons/vat-brain.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-alienlife-buildings-others",
    order = "z",
    place_result = "vat-brain",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "vat-brain",
    icon = "__pyalienlifegraphics__/graphics/icons/vat-brain.png",
	icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "vat-brain"},
    fast_replaceable_group = "vat-brain",
    max_health = 100,
    corpse = "medium-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-3.3, -3.3}, {3.3, 3.3}},
    selection_box = {{-3.5, -3.5}, {3.5, 3.5}},
    match_animation_speed_to_activity = false,
    crafting_categories = {"vat"},
    crafting_speed = 1,
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = 0.2,
    },
    energy_usage = "900kW",
    animation = {
        layers = {
            {
                filename = "__pyalienlifegraphics3__/graphics/entity/vat-brain/bot.png",
                width = 256,
                height = 64,
                line_length = 8,
                frame_count = 120,
                animation_speed = 0.4,
                shift = util.by_pixel(16, 95)
            },
            {
                filename = "__pyalienlifegraphics3__/graphics/entity/vat-brain/1.png",
                width = 64,
                height = 288,
                line_length = 32,
                frame_count = 120,
                animation_speed = 0.4,
                shift = util.by_pixel(-80, -80)
            },
            {
                filename = "__pyalienlifegraphics3__/graphics/entity/vat-brain/2.png",
                width = 64,
                height = 288,
                line_length = 32,
                frame_count = 120,
                animation_speed = 0.4,
                shift = util.by_pixel(-16, -80)
            },
            {
                filename = "__pyalienlifegraphics3__/graphics/entity/vat-brain/3.png",
                width = 64,
                height = 288,
                line_length = 32,
                frame_count = 120,
                animation_speed = 0.4,
                shift = util.by_pixel(48, -80)
            },
            {
                filename = "__pyalienlifegraphics3__/graphics/entity/vat-brain/4.png",
                width = 64,
                height = 288,
                line_length = 32,
                frame_count = 120,
                animation_speed = 0.4,
                shift = util.by_pixel(112, -80)
            },
        }
    },
    fluid_boxes = {
        --1
        {
            production_type = "input",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {2.0, -4.0}}}
        },
        {
            production_type = "input",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {-2.0, -4.0}}}
        },
        {
            production_type = "input",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {-0.0, -4.0}}}
        },
        {
            production_type = "output",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_level = 1,
            pipe_connections = {{type = "output", position = {1.0, 4.0}}}
        },
        {
            production_type = "output",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_level = 1,
            pipe_connections = {{type = "output", position = {-1.0, 4.0}}}
        },
        off_when_no_fluid_recipe = true
    },
    radius_visualisation_specification = {
        sprite = {
          filename = '__base__/graphics/entity/electric-mining-drill/electric-mining-drill-radius-visualization.png',
          width = 1,
          height = 1
        },
        distance = 11.5,
        offset = {0, 0}
      },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pyalienlifegraphics__/sounds/vat-brain.ogg", volume = 1.5},
        idle_sound = {filename = "__pyalienlifegraphics__/sounds/vat-brain.ogg", volume = 0.3},
        apparent_volume = 2.5
    }
}
