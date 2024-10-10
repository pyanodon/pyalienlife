local MODULE_SLOTS = 60

RECIPE {
    type = "recipe",
    name = "moss-farm-mk04",
    energy_required = 1,
    enabled = false,
    ingredients = {
        {type = "item", name = "moss-farm-mk03",  amount = 1},
        {type = "item", name = "divertor",        amount = 5},
        {type = "item", name = "boron-carbide",   amount = 100},
        {type = "item", name = "science-coating", amount = 20},
        {type = "item", name = "wall-shield",     amount = 10},
        {type = "item", name = "control-unit",    amount = 10}
    },
    results = {
        {type = "item", name = "moss-farm-mk04", amount = 1}
    }
}:add_unlock("botany-mk04")

ITEM {
    type = "item",
    name = "moss-farm-mk04",
    icon = "__pyalienlifegraphics__/graphics/icons/moss-farm-mk04.png",
    icon_size = 32,
    flags = {},
    subgroup = "py-alienlife-farm-buildings-mk04",
    order = "e",
    place_result = "moss-farm-mk04",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "moss-farm-mk04",
    icon = "__pyalienlifegraphics__/graphics/icons/moss-farm-mk04.png",
    icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "moss-farm-mk04"},
    fast_replaceable_group = "moss-farm",
    max_health = 100,
    corpse = "medium-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-2.9, -2.9}, {2.9, 2.9}},
    selection_box = {{-3.0, -3.0}, {3.0, 3.0}},
    match_animation_speed_to_activity = false,
    module_slots = MODULE_SLOTS,
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    crafting_categories = {"moss"},
    crafting_speed = py.farm_speed_derived(MODULE_SLOTS, "moss-farm-mk01"),
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = {
            pollution = -35
        },
    },
    energy_usage = "800kW",
    graphics_set = {
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
                    tint = {r = 1.0, g = 0.0, b = 1.0, a = 1.0}
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
                    tint = {r = 1.0, g = 0.0, b = 1.0, a = 1.0}
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
                    tint = {r = 1.0, g = 0.0, b = 1.0, a = 1.0}
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
    },

    fluid_boxes_off_when_no_fluid_recipe = true,
    fluid_boxes = {
        --1
        {
            production_type = "input",
            pipe_covers = py.pipe_covers(false, true, true, true),
            pipe_picture = py.pipe_pictures("assembling-machine-3", nil, {0.0, -0.88}, nil, nil),
            volume = 1000,
            base_level = -1,
            pipe_connections = {{flow_direction = "input", position = {1.5, -2.5}, direction = defines.direction.north}}
        },
        {
            production_type = "input",
            pipe_covers = py.pipe_covers(false, true, true, true),
            pipe_picture = py.pipe_pictures("assembling-machine-3", nil, {0.0, -0.88}, nil, nil),
            volume = 1000,
            base_level = -1,
            pipe_connections = {{flow_direction = "input", position = {-1.5, -2.5}, direction = defines.direction.north}}
        },
        {
            production_type = "output",
            pipe_covers = py.pipe_covers(false, true, true, true),
            pipe_picture = py.pipe_pictures("assembling-machine-3", nil, {0.0, -0.88}, nil, nil),
            volume = 100,
            pipe_connections = {{flow_direction = "output", position = {1.5, 2.5}, direction = defines.direction.south}}
        },
        {
            production_type = "output",
            pipe_covers = py.pipe_covers(false, true, true, true),
            pipe_picture = py.pipe_pictures("assembling-machine-3", nil, {0.0, -0.88}, nil, nil),
            volume = 100,
            pipe_connections = {{flow_direction = "output", position = {-1.5, 2.5}, direction = defines.direction.south}}
        },
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact-1.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pyalienlifegraphics__/sounds/moss-farm.ogg", volume = 2.0},
        idle_sound = {filename = "__pyalienlifegraphics__/sounds/moss-farm.ogg", volume = 0.3},
        apparent_volume = 2.5
    }
}
