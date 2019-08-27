RECIPE {
    type = "recipe",
    name = "rennea-plantation-mk01",
    energy_required = 1,
    enabled = false,
    ingredients = {
        {"soil", 900},
        {"pump", 5},
        {"electric-engine-unit", 5},
        {"treated-wood", 50},
        {"niobium-pipe", 30},
        {"advanced-circuit", 50},
        {"tin-plate", 50},
        {"super-steel", 50},
        {"storage-tank", 4},
    },
    results = {
        {"rennea-plantation-mk01", 1}
    }
}:add_unlock("rennea")

ITEM {
    type = "item",
    name = "rennea-plantation-mk01",
    icon = "__pyalienlife__/graphics/icons/rennea-plantation-mk01.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-alienlife-buildings-mk01",
    order = "c",
    place_result = "rennea-plantation-mk01",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "rennea-plantation-mk01",
    icon = "__pyalienlife__/graphics/icons/rennea-plantation-mk01.png",
	icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "rennea-plantation-mk01"},
    fast_replaceable_group = "rennea-plantation",
    max_health = 100,
    corpse = "medium-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-6.2, -6.2}, {6.2, 6.2}},
    selection_box = {{-6.5, -6.5}, {6.5, 6.5}},
    --draw_entity_info_icon_background = false,
    match_animation_speed_to_activity = false,
    module_specification = {
        module_slots = 10
    },
    allowed_effects = {"speed"},
    crafting_categories = {"rennea"},
    crafting_speed = 1,
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = -5,
    },
    energy_usage = "150kW",
    ingredient_count = 10,
    animation = {
        layers = {
            {
                filename = "__pyalienlife__/graphics/entity/rennea-plantation/s1.png",
                width = 448,
                height = 96,
                line_length = 4,
                frame_count = 75,
                animation_speed = 0.35,
                shift = util.by_pixel(16, 160)
            },
            {
                filename = "__pyalienlife__/graphics/entity/rennea-plantation/s1-mask.png",
                width = 448,
                height = 96,
                line_length = 4,
                frame_count = 75,
                animation_speed = 0.35,
                shift = util.by_pixel(16, 160),
                tint = {r = 1.0, g = 1.0, b = 0.0, a = 1.0}
            },
            {
                filename = "__pyalienlife__/graphics/entity/rennea-plantation/s2.png",
                width = 448,
                height = 96,
                line_length = 4,
                frame_count = 75,
                animation_speed = 0.35,
                shift = util.by_pixel(16, 64)
            },
            {
                filename = "__pyalienlife__/graphics/entity/rennea-plantation/s2-mask.png",
                width = 448,
                height = 96,
                line_length = 4,
                frame_count = 75,
                animation_speed = 0.35,
                shift = util.by_pixel(16, 64),
                tint = {r = 1.0, g = 1.0, b = 0.0, a = 1.0}
            },
            {
                filename = "__pyalienlife__/graphics/entity/rennea-plantation/s3.png",
                width = 448,
                height = 96,
                line_length = 4,
                frame_count = 75,
                animation_speed = 0.35,
                shift = util.by_pixel(16, -32)
            },
            {
                filename = "__pyalienlife__/graphics/entity/rennea-plantation/s3-mask.png",
                width = 448,
                height = 96,
                line_length = 4,
                frame_count = 75,
                animation_speed = 0.35,
                shift = util.by_pixel(16, -32),
                tint = {r = 1.0, g = 1.0, b = 0.0, a = 1.0}
            },
            {
                filename = "__pyalienlife__/graphics/entity/rennea-plantation/s4.png",
                width = 448,
                height = 96,
                line_length = 4,
                frame_count = 75,
                animation_speed = 0.35,
                shift = util.by_pixel(16, -128)
            },
            {
                filename = "__pyalienlife__/graphics/entity/rennea-plantation/s4-mask.png",
                width = 448,
                height = 96,
                line_length = 4,
                frame_count = 75,
                animation_speed = 0.35,
                shift = util.by_pixel(16, -128),
                tint = {r = 1.0, g = 1.0, b = 0.0, a = 1.0}
            },
            {
                filename = "__pyalienlife__/graphics/entity/rennea-plantation/s5.png",
                width = 448,
                height = 96,
                line_length = 4,
                frame_count = 75,
                animation_speed = 0.35,
                shift = util.by_pixel(16, -224)
            },
            {
                filename = "__pyalienlife__/graphics/entity/rennea-plantation/s5-mask.png",
                width = 448,
                height = 96,
                line_length = 4,
                frame_count = 75,
                animation_speed = 0.35,
                shift = util.by_pixel(16, -224),
                tint = {r = 1.0, g = 1.0, b = 0.0, a = 1.0}
            },
        }
    },

    fluid_boxes = {
        --1
        {
            production_type = "input",
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            pipe_picture = DATA.Pipes.pictures("assembling-machine-3", nil, {0.0, -0.88}, nil, nil),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {2.0, -7.0}}}
        },
        {
            production_type = "input",
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            pipe_picture = DATA.Pipes.pictures("assembling-machine-3", nil, {0.0, -0.88}, nil, nil),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {-2.0, -7.0}}}
        },
        {
            production_type = "output",
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            pipe_picture = DATA.Pipes.pictures("assembling-machine-3", nil, {0.0, -0.88}, nil, nil),
            base_level = 1,
            pipe_connections = {{type = "output", position = {2.0, 7.0}}}
        },
        {
            production_type = "output",
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            pipe_picture = DATA.Pipes.pictures("assembling-machine-3", nil, {0.0, -0.88}, nil, nil),
            base_level = 1,
            pipe_connections = {{type = "output", position = {-2.0, 7.0}}}
        },
        off_when_no_fluid_recipe = false
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pycoalprocessing__/sounds/fawogae-plantation.ogg"},
        idle_sound = {filename = "__pycoalprocessing__/sounds/fawogae-plantation.ogg", volume = 0.55},
        apparent_volume = 1.2
    }
}
