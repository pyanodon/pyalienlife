---WIP---
---REDO RECIPE---
RECIPE {
    type = "recipe",
    name = "space-fwf-mk01",
    energy_required = 1,
    enabled = false,
    ingredients = {
        {type = "item", name = "stone-brick", amount = 50},
        {type = "item", name = "steel-plate", amount = 10},
        {type = "item", name = "engine-unit", amount = 3},
        {type = "item", name = "electronic-circuit", amount = 10},
        {type = "item", name = "iron-gear-wheel", amount = 20},
    },
    results = {
        {type = "item", name = "space-fwf-mk01", amount = 1}
    }
}:add_unlock("botany-mk01")

ITEM {
    type = "item",
    name = "space-fwf-mk01",
    icon = "__pyalienlifegraphics__/graphics/icons/fwf-mk01.png",
    icon_size = 32,
    flags = {},
    subgroup = "py-alienlife-buildings-mk01",
    order = "e",
    place_result = "space-fwf-mk01",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "space-fwf-mk01",
    icon = "__pyalienlifegraphics__/graphics/icons/fwf-mk01.png",
	icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "space-fwf-mk01"},
    fast_replaceable_group = "fwf",
    max_health = 100,
    corpse = "medium-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-5.1, -5.1}, {5.1, 5.1}},
    selection_box = {{-5.5, -5.5}, {5.5, 5.5}},
    match_animation_speed_to_activity = false,
    module_specification = {
        module_slots = 25
    },
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    crafting_categories = {"fwf"},
    crafting_speed = 0.05,
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = {
            pollution = -35
        },
    },
    energy_usage = "200kW",
    graphics_set = {
        animation = {
            layers = {
                {
                    filename = "__pyalienlifegraphics__/graphics/entity/fwf/base.png",
                    width = 352,
                    height = 32,
                    line_length = 5,
                    frame_count = 136,
                    animation_speed = 0.4,
                    shift = util.by_pixel(0, 160)
                },
                {
                    filename = "__pyalienlifegraphics__/graphics/entity/fwf/f1.png",
                    width = 64,
                    height = 384,
                    line_length = 32,
                    frame_count = 136,
                    animation_speed = 0.4,
                    shift = util.by_pixel(-144, -48)
                },
                {
                    filename = "__pyalienlifegraphics__/graphics/entity/fwf/f2.png",
                    width = 64,
                    height = 384,
                    line_length = 32,
                    frame_count = 136,
                    animation_speed = 0.4,
                    shift = util.by_pixel(-80, -48)
                },
                {
                    filename = "__pyalienlifegraphics__/graphics/entity/fwf/f3.png",
                    width = 64,
                    height = 384,
                    line_length = 32,
                    frame_count = 136,
                    animation_speed = 0.4,
                    shift = util.by_pixel(-16, -48)
                },
                {
                    filename = "__pyalienlifegraphics__/graphics/entity/fwf/f4.png",
                    width = 64,
                    height = 384,
                    line_length = 32,
                    frame_count = 136,
                    animation_speed = 0.4,
                    shift = util.by_pixel(48, -48)
                },
                {
                    filename = "__pyalienlifegraphics__/graphics/entity/fwf/f5.png",
                    width = 64,
                    height = 384,
                    line_length = 32,
                    frame_count = 136,
                    animation_speed = 0.4,
                    shift = util.by_pixel(112, -48)
                },
                {
                    filename = "__pyalienlifegraphics__/graphics/entity/fwf/f6.png",
                    width = 32,
                    height = 384,
                    line_length = 32,
                    frame_count = 136,
                    animation_speed = 0.4,
                    shift = util.by_pixel(160, -48)
                },
            }
        },
    },

    fluid_boxes = {
        --1
        {
            production_type = "input",
            pipe_covers = py.pipe_covers(false, true, true, true),
            pipe_picture = py.pipe_pictures("assembling-machine-3", nil, {0.0, -0.88}, nil, nil),
            volume = 1000,
            base_level = -1,
            pipe_connections = {{flow_direction = "input", position = {1.0, 5.1}, direction = defines.direction.south}}
        },
        {
            production_type = "input",
            pipe_covers = py.pipe_covers(false, true, true, true),
            pipe_picture = py.pipe_pictures("assembling-machine-3", nil, {0.0, -0.88}, nil, nil),
            volume = 1000,
            base_level = -1,
            pipe_connections = {{flow_direction = "input", position = {-1.0, 5.1}, direction = defines.direction.south}}
        },
        {
            production_type = "output",
            pipe_covers = py.pipe_covers(false, true, true, true),
            pipe_picture = py.pipe_pictures("assembling-machine-3", nil, {0.0, -0.88}, nil, nil),
            volume = 100,
            pipe_connections = {{flow_direction = "output", position = {1.0, -5.1}, direction = defines.direction.north}}
        },
        off_when_no_fluid_recipe = true
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact-1.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pyalienlifegraphics__/sounds/fwf.ogg", volume = 0.80},
        idle_sound = {filename = "__pyalienlifegraphics__/sounds/fwf.ogg", volume = 0.3},
        apparent_volume = 2.5
    }
}
