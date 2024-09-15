---WIP---
---REDO RECIPE---
RECIPE {
    type = "recipe",
    name = "space-cridren-enclosure-mk01",
    energy_required = 1,
    enabled = false,
    ingredients = {
        {type = "item", name = "titanium-plate", amount = 100},
        {type = "item", name = "stainless-steel", amount = 100},
        {type = "item", name = "concrete-wall", amount = 50},
        {type = "item", name = "glass", amount = 30},
        {type = "item", name = "advanced-circuit", amount = 40},
    },
    results = {
        {type = "item", name = "space-cridren-enclosure-mk01", amount = 1}
    }
}:add_unlock("cridren")

ITEM {
    type = "item",
    name = "space-cridren-enclosure-mk01",
    icon = "__pyalienlifegraphics__/graphics/icons/cridren-enclosure-mk01.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-alienlife-buildings-mk01",
    order = "d",
    place_result = "space-cridren-enclosure-mk01",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "space-cridren-enclosure-mk01",
    icon = "__pyalienlifegraphics__/graphics/icons/cridren-enclosure-mk01.png",
    icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "space-cridren-enclosure-mk01"},
    fast_replaceable_group = "cridren-enclosure",
    max_health = 100,
    corpse = "big-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-4.8, -4.8}, {4.8, 4.8}},
    selection_box = {{-5.0, -5.0}, {5.0, 5.0}},
    match_animation_speed_to_activity = false,
    module_specification = {
        module_slots = 1
    },
    allowed_effects = {'speed', 'productivity', 'consumption', 'pollution'},
    crafting_categories = {"cridren"},
    crafting_speed = 0.01,
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = -1,
    },
    energy_usage = "200kW",
    animation = {
        layers = {
        {
        filename = "__pyalienlifegraphics__/graphics/entity/cridren-enclosure/off.png",
        width = 352,
        height = 352,
        frame_count = 1,
        line_length = 1,
        shift = util.by_pixel(16, -16)
        },
        {
            filename = "__pyalienlifegraphics__/graphics/entity/cridren-enclosure/off-mask.png",
            width = 352,
            height = 352,
            frame_count = 1,
            line_length = 1,
            shift = util.by_pixel(16, -16),
            tint = {r = 1.0, g = 1.0, b = 0.0, a = 1.0}
        },

      },
    },
    working_visualisations = {
        {
            north_position = util.by_pixel(-96, -62),
            west_position = util.by_pixel(0, -0),
            south_position = util.by_pixel(0, -0),
            east_position = util.by_pixel(0, -0),
            animation = {
                filename = "__pyalienlifegraphics__/graphics/entity/cridren-enclosure/a1.png",
                frame_count = 182,
                line_length = 32,
                width = 64,
                height = 320,
                animation_speed = 0.3
            }
        },
        {
            north_position = util.by_pixel(-32, -62),
            west_position = util.by_pixel(0, -0),
            south_position = util.by_pixel(0, -0),
            east_position = util.by_pixel(0, -0),
            animation = {
                filename = "__pyalienlifegraphics__/graphics/entity/cridren-enclosure/a2.png",
                frame_count = 182,
                line_length = 32,
                width = 64,
                height = 320,
                animation_speed = 0.3
            }
        },
        {
            north_position = util.by_pixel(32, -62),
            west_position = util.by_pixel(0, -0),
            south_position = util.by_pixel(0, -0),
            east_position = util.by_pixel(0, -0),
            animation = {
                filename = "__pyalienlifegraphics__/graphics/entity/cridren-enclosure/a3.png",
                frame_count = 182,
                line_length = 32,
                width = 64,
                height = 320,
                animation_speed = 0.3
            }
        },
        {
            north_position = util.by_pixel(96, -62),
            west_position = util.by_pixel(0, -0),
            south_position = util.by_pixel(0, -0),
            east_position = util.by_pixel(0, -0),
            animation = {
                filename = "__pyalienlifegraphics__/graphics/entity/cridren-enclosure/a4.png",
                frame_count = 182,
                line_length = 32,
                width = 64,
                height = 320,
                animation_speed = 0.3
            }
        },
        {
            north_position = util.by_pixel(144, -62),
            west_position = util.by_pixel(0, -0),
            south_position = util.by_pixel(0, -0),
            east_position = util.by_pixel(0, -0),
            animation = {
                filename = "__pyalienlifegraphics__/graphics/entity/cridren-enclosure/a5.png",
                frame_count = 182,
                line_length = 32,
                width = 32,
                height = 320,
                animation_speed = 0.3
            }
        },

    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact-1.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pyalienlifegraphics__/sounds/cridren-enclosure.ogg", volume = 1.0},
        idle_sound = {filename = "__pyalienlifegraphics__/sounds/cridren-enclosure.ogg", volume = 0.3},
        apparent_volume = 0.45
    }
}
