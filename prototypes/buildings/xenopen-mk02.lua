RECIPE {
    type = "recipe",
    name = "xenopen-mk02",
    energy_required = 1,
    enabled = false,
    ingredients = {
        {"advanced-circuit", 40},
        {"latex", 35},
        {"neuroprocessor", 20},
        {"xenopen-mk01", 1},
        {"duralumin", 30},
        {"plastic-bar", 50},
    },
    results = {
        {"xenopen-mk02", 1}
    }
}:add_unlock("xeno-mk02"):add_ingredient({type = "item", name = "small-parts-02", amount = 30})

ITEM {
    type = "item",
    name = "xenopen-mk02",
    icon = "__pyalienlifegraphics__/graphics/icons/xenopen-mk02.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-alienlife-buildings-mk02",
    order = "d",
    place_result = "xenopen-mk02",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "xenopen-mk02",
    icon = "__pyalienlifegraphics__/graphics/icons/xenopen-mk02.png",
	icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "xenopen-mk02"},
    fast_replaceable_group = "xenopen",
    max_health = 60,
    corpse = "medium-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-6.3, -6.3}, {6.3, 6.3}},
    selection_box = {{-6.5, -6.5}, {6.5, 6.5}},
    --draw_entity_info_icon_background = false,
    match_animation_speed_to_activity = false,
    module_specification = {
        module_slots = 18
    },
    allowed_effects = {"speed","productivity",'consumption','pollution'},
    crafting_categories = {"xeno"},
    crafting_speed = 0.04,
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = 1.0,
    },
    energy_usage = "700kW",
    animation = {
        layers = {
        {
        filename = "__pyalienlifegraphics3__/graphics/entity/xenopen/off.png",
        width = 448,
        height = 480,
        frame_count = 1,
        line_length = 1,
        shift = util.by_pixel(16, -32)
        },
        {
            filename = "__pyalienlifegraphics3__/graphics/entity/xenopen/off-mask.png",
            width = 448,
            height = 480,
            frame_count = 1,
            line_length = 1,
            shift = util.by_pixel(16, -32),
            tint = {r = 1.0, g = 0.0, b = 0.0, a = 1.0}
            },
      },
    },

    working_visualisations = {
        {
            north_position = util.by_pixel(-89, -10),
            west_position = util.by_pixel(-89, -10),
            south_position = util.by_pixel(-89, -10),
            east_position = util.by_pixel(-89, -10),
            animation = {
                filename = "__pyalienlifegraphics3__/graphics/entity/xenopen/claw.png",
                frame_count = 34,
                line_length = 8,
                width = 192,
                height = 128,
                animation_speed = 0.4
            }
        },
        {
            north_position = util.by_pixel(60, -102),
            west_position = util.by_pixel(60, -102),
            south_position = util.by_pixel(60, -102),
            east_position = util.by_pixel(60, -102),
            animation = {
                filename = "__pyalienlifegraphics3__/graphics/entity/xenopen/roar.png",
                frame_count = 100,
                line_length = 10,
                width = 160,
                height = 128,
                animation_speed = 0.4
            }
        },
        {
            north_position = util.by_pixel(-24, -20),
            west_position = util.by_pixel(-24, -20),
            south_position = util.by_pixel(-24, -20),
            east_position = util.by_pixel(-24, -20),
            animation = {
                filename = "__pyalienlifegraphics3__/graphics/entity/xenopen/m-left.png",
                frame_count = 60,
                line_length = 12,
                width = 160,
                height = 352,
                animation_speed = 0.4
            }
        },
        {
            north_position = util.by_pixel(120, -20),
            west_position = util.by_pixel(120, -20),
            south_position = util.by_pixel(120, -20),
            east_position = util.by_pixel(120, -20),
            animation = {
                filename = "__pyalienlifegraphics3__/graphics/entity/xenopen/m-right.png",
                frame_count = 60,
                line_length = 12,
                width = 128,
                height = 352,
                animation_speed = 0.4
            }
        },
        {
            north_position = util.by_pixel(-75, 66),
            west_position = util.by_pixel(-75, 66),
            south_position = util.by_pixel(-75, 66),
            east_position = util.by_pixel(-75, 66),
            animation = {
                filename = "__pyalienlifegraphics3__/graphics/entity/xenopen/hit.png",
                frame_count = 60,
                line_length = 10,
                run_mode = "forward-then-backward",
                width = 160,
                height = 96,
                animation_speed = 0.4
            }
        },
    },

    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pyalienlifegraphics__/sounds/xenopen.ogg", volume = 0.65},
        idle_sound = {filename = "__pyalienlifegraphics__/sounds/xenopen.ogg", volume = 0.5},
        apparent_volume = 1.2
    }
}
