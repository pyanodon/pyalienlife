local MODULE_SLOTS = 4
local FULL_CRAFTING_SPEED = 0.5 -- crafting speed when full of mk01 modules

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
    name = "cadaveric-arum-mk01",
    energy_required = 0.5,
    enabled = false,
    ingredients = {
        {type = "item", name = "botanical-nursery", amount = 1},
        {type = "item", name = "plastic-bar", amount = 100},
        {type = "item", name = "electronic-circuit", amount = 25},
        {type = "item", name = "steel-plate", amount = 60},
        {type = "item", name = "hydrocyclone-mk01", amount = 1}
    },
    results = {
        {type = "item", name = "cadaveric-arum-mk01", amount = 1}
    }
}:add_unlock("cadaveric-arum")

ITEM {
    type = "item",
    name = "cadaveric-arum-mk01",
    icon = "__pyhightechgraphics__/graphics/icons/cadaveric-arum-mk01.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-alienlife-farm-buildings-mk01",
    order = "b",
    place_result = "cadaveric-arum-mk01",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "cadaveric-arum-mk01",
    icon = "__pyhightechgraphics__/graphics/icons/cadaveric-arum-mk01.png",
	icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "cadaveric-arum-mk01"},
    fast_replaceable_group = "cadaveric-arum",
    max_health = 100,
    corpse = "big-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-4.2, -4.2}, {4.2, 4.2}},
    selection_box = {{-4.5, -4.5}, {4.5, 4.5}},
    match_animation_speed_to_activity = false,
    module_slots = MODULE_SLOTS,
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    crafting_categories = {"arum"},
    crafting_speed = py.farm_speed(MODULE_SLOTS, FULL_CRAFTING_SPEED),
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = {
            pollution = -3
        },
    },
    energy_usage = "1800kW",
    graphics_set = {
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
                    tint = {r = 1.0, g = 1.0, b = 0.0, a = 1.0}
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
    },
    fluid_boxes_off_when_no_fluid_recipe = false,
    fluid_boxes = {
        --1
        {
            production_type = "input",
            pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -5.1}, nil, nil, pipe),
            pipe_covers = py.pipe_covers(false, true, true, true),
            volume = 1000,
            base_level = -1,
            pipe_connections = {{flow_direction = "input", position = {0.0, 4.2}, direction = defines.direction.south}}
        },
        {
            production_type = "input",
            pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -5.1}, nil, nil, pipe),
            pipe_covers = py.pipe_covers(false, true, true, true),
            volume = 1000,
            base_level = -1,
            pipe_connections = {{flow_direction = "input", position = {4.2, 0.0}, direction = defines.direction.east}}
        },
        {
            production_type = "input",
            pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -5.1}, nil, nil, pipe),
            pipe_covers = py.pipe_covers(false, true, true, true),
            volume = 1000,
            base_level = -1,
            pipe_connections = {{flow_direction = "input", position = {0.0, -4.2}, direction = defines.direction.north}}
        },
        {
            production_type = "output",
            pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -5.1}, nil, nil, pipe),
            pipe_covers = py.pipe_covers(false, true, true, true),
            volume = 100,
            pipe_connections = {{flow_direction = "output", position = {-4.2, 0.0}, direction = defines.direction.west}}
        },
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact-1.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pyhightechgraphics__/sounds/cadaveric-arum.ogg", volume = 1.5},
        idle_sound = {filename = "__pyhightechgraphics__/sounds/cadaveric-arum.ogg", volume = 0.3},
        apparent_volume = 2.5
    }
}
