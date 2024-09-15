---WIP---
---REDO RECIPE---
local pipe = {
    south = {
        filename = "__pyalienlifegraphics__/graphics/entity/kicalk-plantation/bottom.png",
        priority = "extra-high",
        width = 229,
        height = 235,
    }
}

RECIPE {
    type = "recipe",
    name = "space-kicalk-plantation-mk01",
    energy_required = 0.5,
    enabled = false,
    ingredients = {
        {"botanical-nursery", 1},
        {"duralumin", 40},
        {"glass", 30},
        {"steel-plate", 25},
    },
    results = {
        {"space-kicalk-plantation-mk01", 1}
    }
}:add_unlock('kicalk')

ITEM {
    type = "item",
    name = "space-kicalk-plantation-mk01",
    icon = "__pyalienlifegraphics__/graphics/icons/kicalk-plantation-mk01.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-alienlife-buildings-mk01",
    order = "e",
    place_result = "space-kicalk-plantation-mk01",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "space-kicalk-plantation-mk01",
    icon = "__pyalienlifegraphics__/graphics/icons/kicalk-plantation-mk01.png",
	icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "space-kicalk-plantation-mk01"},
    fast_replaceable_group = "kicalk-plantation",
    max_health = 100,
    corpse = "big-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-3.2, -3.2}, {3.2, 3.2}},
    selection_box = {{-3.5, -3.5}, {3.5, 3.5}},
    match_animation_speed_to_activity = false,
    module_specification = {
        module_slots = 25
    },
    allowed_effects = {'speed', 'productivity', 'consumption', 'pollution'},
    crafting_categories = {"kicalk"},
    crafting_speed = 0.04,
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = -35,
    },
    energy_usage = "900kW",
    animation = {
        layers = {
            {
                filename = "__pyalienlifegraphics__/graphics/entity/kicalk-plantation/kicalk-plantation.png",
				priority = "extra-high",
                width = 229,
                height = 235,
                line_length = 8,
                frame_count = 50,
                animation_speed = 0.4,
                shift = util.by_pixel(0, -5),
            },
            {
                filename = "__pyalienlifegraphics__/graphics/entity/kicalk-plantation/kicalk-plantation-mask.png",
				priority = "extra-high",
                width = 229,
                height = 235,
                line_length = 8,
                frame_count = 50,
                animation_speed = 0.4,
                shift = util.by_pixel(0, -5),
                tint = {r = 1.0, g = 1.0, b = 0.0, a = 1.0}
            },
            {
                filename = "__pyalienlifegraphics__/graphics/entity/kicalk-plantation/shadow.png",
				priority = "extra-high",
                width = 253,
                height = 242,
                line_length = 8,
                frame_count = 50,
                animation_speed = 0.4,
                shift = util.by_pixel(18, -1),
                draw_as_shadow = true,
            },
        }
    },
    fluid_boxes = {
        --1
        {
            production_type = "input",
            pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.1, -4.1}, nil, nil, pipe),
            pipe_covers = py.pipe_covers(false, true, true, true),
            volume = 1000,
            base_level = -1,
            pipe_connections = {{flow_direction = "input", position = {0.0, 3.2}, direction = defines.direction.south}}
        },
        {
            production_type = "input",
            pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.1, -4.1}, nil, nil, pipe),
            pipe_covers = py.pipe_covers(false, true, true, true),
            volume = 1000,
            base_level = -1,
            pipe_connections = {{flow_direction = "input", position = {0.0, -3.2}, direction = defines.direction.north}}
        },
        {
            production_type = "output",
            pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.1, -4.1}, nil, nil, pipe),
            pipe_covers = py.pipe_covers(false, false, true, true),
            volume = 100,
            pipe_connections = {{flow_direction = "output", position = {-3.2, 0.0}, direction = defines.direction.west}}
        },
        {
            production_type = "output",
            pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.1, -4.1}, nil, nil, pipe),
            pipe_covers = py.pipe_covers(false, false, true, true),
            volume = 100,
            pipe_connections = {{flow_direction = "output", position = {3.2, 0.0}, direction = defines.direction.east}}
        },
        off_when_no_fluid_recipe = true
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pyalienlifegraphics__/sounds/kicalk-plantation.ogg", volume = 1.5},
        idle_sound = {filename = "__pyalienlifegraphics__/sounds/kicalk-plantation.ogg", volume = 0.3},
        apparent_volume = 2.5
    }
}
