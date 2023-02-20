local FUN = require("__pycoalprocessing__/prototypes/functions/functions")
local MODULE_SLOTS = 1
local FULL_CRAFTING_SPEED = 1 -- crafting speed when full of mk01 modules

RECIPE {
    type = "recipe",
    name = "bhoddos-culture-mk01",
    energy_required = 1,
    enabled = false,
    ingredients = {
        {"gasifier", 1},
        {"glass", 30},
        {"nexelit-plate", 20},
        {"duralumin", 35},
        {"steel-plate", 50},
        {"electronic-circuit", 15},
        {"steam-engine", 1},
        {"tin-plate", 50},
    },
    results = {
        {"bhoddos-culture-mk01", 1}
    }
}:add_unlock("bhoddos")

ITEM {
    type = "item",
    name = "bhoddos-culture-mk01",
    icon = "__pyalienlifegraphics__/graphics/icons/bhoddos-culture-mk01.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-alienlife-farm-buildings-mk01",
    order = "c",
    place_result = "bhoddos-culture-mk01",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "bhoddos-culture-mk01",
    icon = "__pyalienlifegraphics__/graphics/icons/bhoddos-culture-mk01.png",
	icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "bhoddos-culture-mk01"},
    fast_replaceable_group = "bhoddos-culture",
    max_health = 50,
    corpse = "medium-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-5.3, -5.3}, {5.3, 5.3}},
    selection_box = {{-5.5, -5.5}, {5.5, 5.5}},
    match_animation_speed_to_activity = false,
    module_specification = {
        module_slots = MODULE_SLOTS
    },
    allowed_effects = {"speed","productivity",'consumption','pollution'},
    crafting_categories = {"bhoddos"},
    crafting_speed = FUN.farm_speed(MODULE_SLOTS, FULL_CRAFTING_SPEED),
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = 1,
    },
    energy_usage = "400kW",
    animation = {
        layers = {
            {
                filename = "__pyalienlifegraphics__/graphics/entity/bhoddos-culture/off.png",
                width = 384,
                height = 416,
                --line_length = 5,
                frame_count = 1,
                --animation_speed = 0.4,
                shift = util.by_pixel(16, -32)
            },
            {
                filename = "__pyalienlifegraphics__/graphics/entity/bhoddos-culture/off-mask.png",
                width = 384,
                height = 416,
                --line_length = 5,
                frame_count = 1,
                --animation_speed = 0.4,
                shift = util.by_pixel(16, -32),
                tint = {r = 1.0, g = 1.0, b = 0.0, a = 1.0}
            },
        }
    },

    working_visualisations = {
        {
            north_position = util.by_pixel(-128, -48),
            west_position = util.by_pixel(-128, -48),
            south_position = util.by_pixel(-128, -48),
            east_position = util.by_pixel(-128, -48),
            animation = {
                filename = "__pyalienlifegraphics__/graphics/entity/bhoddos-culture/a1.png",
                frame_count = 100,
                line_length = 20,
                width = 96,
                height = 384,
                animation_speed = 0.4
            }
        },
        {
            north_position = util.by_pixel(-32, -48),
            west_position = util.by_pixel(-32, -48),
            south_position = util.by_pixel(-32, -48),
            east_position = util.by_pixel(-32, -48),
            animation = {
                filename = "__pyalienlifegraphics__/graphics/entity/bhoddos-culture/a2.png",
                frame_count = 100,
                line_length = 20,
                width = 96,
                height = 384,
                animation_speed = 0.4
            }
        },
        {
            north_position = util.by_pixel(64, -48),
            west_position = util.by_pixel(64, -48),
            south_position = util.by_pixel(64, -48),
            east_position = util.by_pixel(64, -48),
            animation = {
                filename = "__pyalienlifegraphics__/graphics/entity/bhoddos-culture/a3.png",
                frame_count = 100,
                line_length = 20,
                width = 96,
                height = 384,
                animation_speed = 0.4
            }
        },
        {
            north_position = util.by_pixel(160, -48),
            west_position = util.by_pixel(160, -48),
            south_position = util.by_pixel(160, -48),
            east_position = util.by_pixel(160, -48),
            animation = {
                filename = "__pyalienlifegraphics__/graphics/entity/bhoddos-culture/a4.png",
                frame_count = 100,
                line_length = 20,
                width = 96,
                height = 384,
                animation_speed = 0.4
            }
        },
    },

    fluid_boxes = {
        --1
        {
            production_type = "input",
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            pipe_picture = DATA.Pipes.pictures("assembling-machine-3", nil, {0.0, -0.88}, nil, nil),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {1.0, -6.0}}}
        },
        {
            production_type = "input",
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            pipe_picture = DATA.Pipes.pictures("assembling-machine-3", nil, {0.0, -0.88}, nil, nil),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {-1.0, -6.0}}}
        },
        {
            production_type = "output",
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            pipe_picture = DATA.Pipes.pictures("assembling-machine-3", nil, {0.0, -0.88}, nil, nil),
            base_level = 1,
            pipe_connections = {{type = "output", position = {1.0, 6.0}}}
        },
        {
            production_type = "output",
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            pipe_picture = DATA.Pipes.pictures("assembling-machine-3", nil, {0.0, -0.88}, nil, nil),
            base_level = 1,
            pipe_connections = {{type = "output", position = {-1.0, 6.0}}}
        },
        off_when_no_fluid_recipe = true
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pyalienlifegraphics__/sounds/bhoddos-culture.ogg", volume = 2.0},
        idle_sound = {filename = "__pyalienlifegraphics__/sounds/bhoddos-culture.ogg", volume = 0.3},
        apparent_volume = 2.5
    }
}
