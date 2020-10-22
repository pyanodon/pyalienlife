RECIPE {
    type = "recipe",
    name = "antelope-enclosure-mk01",
    energy_required = 1,
    enabled = false,
    ingredients = {
        {"concrete", 200},
        {"paramagnetic-material", 50},
        {"super-alloy", 50},
        {"graphene-roll", 50},
        {"glass", 100},
        {"processing-unit", 40},
    },
    results = {
        {"antelope-enclosure-mk01", 1}
    }
}:add_unlock("schrodinger-antelope")

ITEM {
    type = "item",
    name = "antelope-enclosure-mk01",
    icon = "__pyalienlifegraphics__/graphics/icons/antelope-enclosure-mk01.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-alienlife-buildings-others",
    order = "d",
    place_result = "antelope-enclosure-mk01",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "antelope-enclosure-mk01",
    icon = "__pyalienlifegraphics__/graphics/icons/antelope-enclosure-mk01.png",
    icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "antelope-enclosure-mk01"},
    fast_replaceable_group = "antelope-enclosure",
    max_health = 100,
    corpse = "big-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-3.8, -3.8}, {3.8, 3.8}},
    selection_box = {{-4.0, -4.0}, {4.0, 4.0}},
    --collision_mask = {'ground-tile','water-tile','layer-11'},
    draw_entity_info_icon_background = false,
    match_animation_speed_to_activity = false,
    module_specification = {
        module_slots = 2
    },
    allowed_effects = {"speed","productivity",'consumption','pollution'},
    crafting_categories = {"antelope"},
    crafting_speed = 0.01,
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = 3,
    },
    energy_usage = "1200kW",
    animation = {
        layers = {
        {
        filename = "__pyalienlifegraphics__/graphics/entity/antelope-enclosure/off.png",
        width = 256,
        height = 320,
        frame_count = 1,
        line_length = 1,
        shift = util.by_pixel(0, -32)
        },
        {
            filename = "__pyalienlifegraphics__/graphics/entity/antelope-enclosure/off-mask.png",
            width = 256,
            height = 320,
            frame_count = 1,
            line_length = 1,
            shift = util.by_pixel(0, -32),
            tint = {r = 1.0, g = 1.0, b = 0.0, a = 1.0}
            },
      },
    },
    working_visualisations = {
        {
            north_position = util.by_pixel(-96, -32),
            west_position = util.by_pixel(-96, -32),
            south_position = util.by_pixel(-96, -32),
            east_position = util.by_pixel(-96, -32),
            animation = {
                filename = "__pyalienlifegraphics__/graphics/entity/antelope-enclosure/b1.png",
                frame_count = 120,
                line_length = 20,
                width = 64,
                height = 320,
                animation_speed = 0.3
            }
        },
        {
            north_position = util.by_pixel(-32, -32),
            west_position = util.by_pixel(-32, -32),
            south_position = util.by_pixel(-32, -32),
            east_position = util.by_pixel(-32, -32),
            animation = {
                filename = "__pyalienlifegraphics__/graphics/entity/antelope-enclosure/b2.png",
                frame_count = 120,
                line_length = 20,
                width = 64,
                height = 320,
                animation_speed = 0.3
            }
        },
        {
            north_position = util.by_pixel(32, -32),
            west_position = util.by_pixel(32, -32),
            south_position = util.by_pixel(32, -32),
            east_position = util.by_pixel(32, -32),
            animation = {
                filename = "__pyalienlifegraphics__/graphics/entity/antelope-enclosure/b3.png",
                frame_count = 120,
                line_length = 20,
                width = 64,
                height = 320,
                animation_speed = 0.3
            }
        },
        {
            north_position = util.by_pixel(96, -32),
            west_position = util.by_pixel(96, -32),
            south_position = util.by_pixel(96, -32),
            east_position = util.by_pixel(96, -32),
            animation = {
                filename = "__pyalienlifegraphics__/graphics/entity/antelope-enclosure/b4.png",
                frame_count = 120,
                line_length = 20,
                width = 64,
                height = 320,
                animation_speed = 0.3
            }
        },
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pyalienlifegraphics__/sounds/antelope-enclosure.ogg", volume = 1.0},
        idle_sound = {filename = "__pyalienlifegraphics__/sounds/antelope-enclosure.ogg", volume = 0.65},
        apparent_volume = 0.45
    }
}
