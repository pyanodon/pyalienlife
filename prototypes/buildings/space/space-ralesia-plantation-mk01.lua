---WIP---
---REDO RECIPE---
local pipes = {
    north = {
        filename = "__pycoalprocessinggraphics__/graphics/entity/ralesia-plantation/top.png",
        priority = "low",
        width = 224,
        height = 230
    },
    south = {
        filename = "__pycoalprocessinggraphics__/graphics/entity/ralesia-plantation/bottom.png",
        priority = "extra-high",
        width = 224,
        height = 230
    },
    west = {
        filename = "__pycoalprocessinggraphics__/graphics/entity/ralesia-plantation/left.png",
        priority = "extra-high",
        width = 224,
        height = 230
    },
    east = {
        filename = "__pycoalprocessinggraphics__/graphics/entity/ralesia-plantation/right.png",
        priority = "extra-high",
        width = 224,
        height = 230
    }
}

RECIPE {
    type = "recipe",
    name = "space-ralesia-plantation-mk01",
    energy_required = 1,
    enabled = false,
    ingredients = {
        {type = "item", name = "soil", amount = 300},
        {type = "item", name = "pipe", amount = 15},
        {type = "item", name = "electronic-circuit", amount = 25},
        {type = "item", name = "stone", amount = 100},
        {type = "item", name = "iron-plate", amount = 30},
        {type = "item", name = "duralumin", amount = 10},
        {type = "item", name = "treated-wood", amount = 50},
        {type = "item", name = "small-lamp", amount = 20}
    },
    results = {
        {type = "item", name = "space-ralesia-plantation-mk01", amount = 1}
    }
}:add_unlock("ralesia")

ITEM {
    type = "item",
    name = "space-ralesia-plantation-mk01",
    icon = "__pyalienlifegraphics__/graphics/icons/ralesia-plantation-mk01.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-alienlife-buildings-mk01",
    order = "e",
    place_result = "space-ralesia-plantation-mk01",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "space-ralesia-plantation-mk01",
    icon = "__pyalienlifegraphics__/graphics/icons/ralesia-plantation-mk01.png",
    icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "space-ralesia-plantation-mk01"},
    fast_replaceable_group = "ralesia-plantation",
    max_health = 60,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-3.2, -3.2}, {3.2, 3.2}},
    selection_box = {{-3.5, -3.5}, {3.5, 3.5}},
    match_animation_speed_to_activity = false,
    module_slots = 12,
    allowed_effects = {'speed', 'productivity', 'consumption', 'pollution'},
    crafting_categories = {"ralesia"},
    crafting_speed = 0.06,
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = {
            pollution = -4
        },
    },
    energy_usage = "400kW",
    graphics_set = {
        animation = {
            filename = "__pycoalprocessinggraphics__/graphics/entity/ralesia-plantation/ralesia-plantation.png",
            width = 224,
            height = 230,
            frame_count = 50,
            line_length = 8,
            animation_speed = 0.5,
            run_mode = "forward-then-backward",
            shift = {0.0, -0.163}
        },
    },
    fluid_boxes = {
        --1
        {
            production_type = "input",
            pipe_picture = py.pipe_pictures("assembling-machine-3", {-0.0, 3.837}, {-0.0, -3.837}, {4.0, 0.0}, {-4.0, 0.0}, pipes),
            pipe_covers = py.pipe_covers(true, true, true, true),
            volume = 1000,
            base_level = -1,
            pipe_connections = {{flow_direction = "input", position = {0.0, 3.2}, direction = defines.direction.south}}
        },
        {
            production_type = "input",
            pipe_picture = py.pipe_pictures("assembling-machine-3", {-0.0, 3.837}, {-0.0, -3.837}, {4.0, 0.0}, {-4.0, 0.0}, pipes),
            pipe_covers = py.pipe_covers(true, true, true, true),
            volume = 1000,
            base_level = -1,
            pipe_connections = {{flow_direction = "input", position = {0.0, -3.2}, direction = defines.direction.north}}
        },
        {
            production_type = "output",
            pipe_covers = py.pipe_covers(false, true, true, true),
            pipe_picture = py.pipe_pictures("assembling-machine-3", {-0.0, 3.837}, {-0.0, -3.837}, {4.0, 0.0}, {-4.0, 0.0}, pipes),
            volume = 100,
            pipe_connections = {{flow_direction = "output", position = {3.2, 0.0}, direction = defines.direction.east}}
        },
    },
    fluid_boxes_off_when_no_fluid_recipe = true,
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact-1.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pycoalprocessinggraphics__/sounds/ralesia-plantation.ogg", volume = 1.2},
        idle_sound = {filename = "__pycoalprocessinggraphics__/sounds/ralesia-plantation.ogg", volume = 0.3},
        apparent_volume = 2.5
    }
}
