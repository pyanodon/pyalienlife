local MODULE_SLOTS = 15
local FULL_CRAFTING_SPEED = 1

RECIPE {
    type = "recipe",
    name = "moss-farm-mk01",
    energy_required = 1,
    enabled = false,
    ingredients = {
        {"stone-brick", 50},
        {"soil", 50},
        {"iron-plate", 20},
        {"aluminium-plate", 10},
        {"electronic-circuit", 10},
        {"iron-gear-wheel", 10},
        {"steam-engine", 2},
    },
    results = {
        {"moss-farm-mk01", 1}
    }
}:add_unlock("moss-mk01")

ITEM {
    type = "item",
    name = "moss-farm-mk01",
    icon = "__pyalienlifegraphics__/graphics/icons/moss-farm-mk01.png",
    icon_size = 32,
    flags = {},
    subgroup = "py-alienlife-farm-buildings-mk01",
    order = "e",
    place_result = "moss-farm-mk01",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "moss-farm-mk01",
    icon = "__pyalienlifegraphics__/graphics/icons/moss-farm-mk01.png",
	icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "moss-farm-mk01"},
    fast_replaceable_group = "moss-farm",
    max_health = 100,
    corpse = "medium-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-2.9, -2.9}, {2.9, 2.9}},
    selection_box = {{-3.0, -3.0}, {3.0, 3.0}},
    match_animation_speed_to_activity = false,
    module_specification = {
        module_slots = MODULE_SLOTS
    },
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    crafting_categories = {"moss"},
    crafting_speed = py.farm_speed(MODULE_SLOTS, FULL_CRAFTING_SPEED),
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = -35,
    },
    energy_usage = "100kW",
    animation = {
        layers = {
            {
                filename = "__pyalienlifegraphics2__/graphics/entity/moss-farm/a-base.png",
                width = 192,
                height = 32,
                line_length = 10,
                frame_count = 120,
                animation_speed = 0.4,
                shift = util.by_pixel(0, 80)
            },
            {
                filename = "__pyalienlifegraphics2__/graphics/entity/moss-farm/a1.png",
                width = 64,
                height = 256,
                line_length = 20,
                frame_count = 120,
                animation_speed = 0.4,
                shift = util.by_pixel(-64, -64)
            },

            {
                filename = "__pyalienlifegraphics2__/graphics/entity/moss-farm/mask-1.png",
                width = 64,
                height = 256,
                line_length = 20,
                frame_count = 120,
                animation_speed = 0.4,
                shift = util.by_pixel(-64, -64),
                tint = {r = 1.0, g = 1.0, b = 0.0, a = 1.0}
            },
            {
                filename = "__pyalienlifegraphics2__/graphics/entity/moss-farm/a2.png",
                width = 64,
                height = 256,
                line_length = 20,
                frame_count = 120,
                animation_speed = 0.4,
                shift = util.by_pixel(0, -64)
            },
            {
                filename = "__pyalienlifegraphics2__/graphics/entity/moss-farm/mask-2.png",
                width = 64,
                height = 256,
                line_length = 20,
                frame_count = 120,
                animation_speed = 0.4,
                shift = util.by_pixel(0, -64),
                tint = {r = 1.0, g = 1.0, b = 0.0, a = 1.0}
            },
            {
                filename = "__pyalienlifegraphics2__/graphics/entity/moss-farm/a3.png",
                width = 64,
                height = 256,
                line_length = 20,
                frame_count = 120,
                animation_speed = 0.4,
                shift = util.by_pixel(64, -64)
            },
            {
                filename = "__pyalienlifegraphics2__/graphics/entity/moss-farm/mask-3.png",
                width = 64,
                height = 256,
                line_length = 20,
                frame_count = 120,
                animation_speed = 0.4,
                shift = util.by_pixel(64, -64),
                tint = {r = 1.0, g = 1.0, b = 0.0, a = 1.0}
            },
            {
                filename = "__pyalienlifegraphics2__/graphics/entity/moss-farm/sh.png",
                width = 64,
                height = 201,
                line_length = 20,
                frame_count = 120,
                draw_as_shadow = true,
                animation_speed = 0.4,
                shift = util.by_pixel(96, -10)
            },
        }
    },

    fluid_boxes = {
        --1
        {
            production_type = "input",
            pipe_covers = py.pipe_covers(false, true, true, true),
            pipe_picture = py.pipe_pictures("assembling-machine-3", nil, {0.0, -0.88}, nil, nil),
            volume = 1000,
            base_level = -1,
            pipe_connections = {{flow_direction = "input", position = {1.5, -2.9}, direction = defines.direction.north}}
        },
        {
            production_type = "input",
            pipe_covers = py.pipe_covers(false, true, true, true),
            pipe_picture = py.pipe_pictures("assembling-machine-3", nil, {0.0, -0.88}, nil, nil),
            volume = 1000,
            base_level = -1,
            pipe_connections = {{flow_direction = "input", position = {-1.5, -2.9}, direction = defines.direction.north}}
        },
        {
            production_type = "output",
            pipe_covers = py.pipe_covers(false, true, true, true),
            pipe_picture = py.pipe_pictures("assembling-machine-3", nil, {0.0, -0.88}, nil, nil),
            volume = 100,
            pipe_connections = {{flow_direction = "output", position = {1.5, 2.9}, direction = defines.direction.south}}
        },
        {
            production_type = "output",
            pipe_covers = py.pipe_covers(false, true, true, true),
            pipe_picture = py.pipe_pictures("assembling-machine-3", nil, {0.0, -0.88}, nil, nil),
            volume = 100,
            pipe_connections = {{flow_direction = "output", position = {-1.5, 2.9}, direction = defines.direction.south}}
        },
        off_when_no_fluid_recipe = true
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact-1.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pyalienlifegraphics__/sounds/moss-farm.ogg", volume = 2.0},
        idle_sound = {filename = "__pyalienlifegraphics__/sounds/moss-farm.ogg", volume = 0.3},
        apparent_volume = 2.5
    }
}
