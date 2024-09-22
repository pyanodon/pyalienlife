RECIPE {
    type = "recipe",
    name = "collector-mk02",
    energy_required = 0.5,
    enabled = false,
    ingredients = {
        {type = "item", name = "collector", amount = 1},
        {type = "item", name = "glass", amount = 30},
        {type = "item", name = "nexelit-plate", amount = 15},
        {type = "item", name = "duralumin", amount = 10},
        {type = "item", name = "advanced-circuit", amount = 10},
        {type = "item", name = "engine-unit", amount = 1},
        {type = "item", name = "latex", amount = 10},
        {type = "item", name = "neuroprocessor", amount = 5},
    },
    results = {
        {type = "item", name = "collector-mk02", amount = 1}
    }
}:add_unlock("biotech-machines-mk02"):add_ingredient({type = "item", name = "small-parts-02", amount = 50})

ITEM {
    type = "item",
    name = "collector-mk02",
    icon = "__pyalienlifegraphics3__/graphics/icons/collector-mk02.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-alienlife-buildings-mk02",
    order = "x",
    place_result = "collector-mk02",
    stack_size = 10
}

ENTITY {
    type = "mining-drill",
    name = "collector-mk02",
    icon = "__pyalienlifegraphics3__/graphics/icons/collector-mk02.png",
    icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "collector-mk02"},
    fast_replaceable_group = "collector",
    max_health = 200,
    resource_categories = {"ore-bioreserve"},
    corpse = "big-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-3.4, -3.4}, {3.4, 3.4}},
    selection_box = {{-3.5, -3.5}, {3.5, 3.5}},
    module_slots = 1,
    allowed_effects = {"consumption", "speed"},
    mining_speed = 2,
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = {
            pollution = 1
        },
    },
    energy_usage = "250kW",
    mining_power = 1,
    resource_searching_radius = 4.49,
    vector_to_place_result = {0, -3.85},
    radius_visualisation_picture = {
        filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-radius-visualization.png",
        width = 4,
        height = 4
    },
    collision_mask = {layers = {["item-layer"] = true, ["object-layer"] = true, ["water-tile"] = true}},
    circuit_wire_connection_points = circuit_connector_definitions["collector-mkxx"].points,
    circuit_connector_sprites = circuit_connector_definitions["collector-mkxx"].sprites,
    circuit_wire_max_distance = default_circuit_wire_max_distance,
    graphics_set = {
        animations = {
            layers = {
                {
                    filename = "__pyalienlifegraphics__/graphics/entity/collector/f1.png",
                    width = 32,
                    height = 288,
                    line_length = 64,
                    frame_count = 255,
                    animation_speed = 0.2,
                    shift = util.by_pixel(-96, 0)
                },
                {
                    filename = "__pyalienlifegraphics__/graphics/entity/collector/f2.png",
                    width = 32,
                    height = 288,
                    line_length = 64,
                    frame_count = 255,
                    animation_speed = 0.2,
                    shift = util.by_pixel(-64, 0)
                },
                {
                    filename = "__pyalienlifegraphics__/graphics/entity/collector/f3.png",
                    width = 32,
                    height = 288,
                    line_length = 64,
                    frame_count = 255,
                    animation_speed = 0.2,
                    shift = util.by_pixel(-32, 0)
                },
                {
                    filename = "__pyalienlifegraphics__/graphics/entity/collector/f4.png",
                    width = 32,
                    height = 288,
                    line_length = 64,
                    frame_count = 255,
                    animation_speed = 0.2,
                    shift = util.by_pixel(0, 0)
                },
                {
                    filename = "__pyalienlifegraphics__/graphics/entity/collector/f5.png",
                    width = 32,
                    height = 288,
                    line_length = 64,
                    frame_count = 255,
                    animation_speed = 0.2,
                    shift = util.by_pixel(32, 0)
                },
                {
                    filename = "__pyalienlifegraphics__/graphics/entity/collector/f6.png",
                    width = 32,
                    height = 288,
                    line_length = 64,
                    frame_count = 255,
                    animation_speed = 0.2,
                    shift = util.by_pixel(64, 0)
                },
                {
                    filename = "__pyalienlifegraphics__/graphics/entity/collector/f7.png",
                    width = 32,
                    height = 288,
                    line_length = 64,
                    frame_count = 255,
                    animation_speed = 0.2,
                    shift = util.by_pixel(96, 0)
                },
                {
                    filename = "__pyalienlifegraphics__/graphics/entity/collector/f8.png",
                    width = 32,
                    height = 288,
                    line_length = 64,
                    frame_count = 255,
                    animation_speed = 0.2,
                    shift = util.by_pixel(128, 0)
                },
    --MASKS
                {
                    filename = "__pyalienlifegraphics__/graphics/entity/collector/f1-mask.png",
                    width = 32,
                    height = 288,
                    line_length = 64,
                    frame_count = 255,
                    animation_speed = 0.2,
                    tint = {r = 1.0, g = 0.0, b = 0.0, a = 1.0},
                    shift = util.by_pixel(-96, 0)
                },
                {
                    filename = "__pyalienlifegraphics__/graphics/entity/collector/f2-mask.png",
                    width = 32,
                    height = 288,
                    line_length = 64,
                    frame_count = 255,
                    animation_speed = 0.2,
                    tint = {r = 1.0, g = 0.0, b = 0.0, a = 1.0},
                    shift = util.by_pixel(-64, 0)
                },
                {
                    filename = "__pyalienlifegraphics__/graphics/entity/collector/f3-mask.png",
                    width = 32,
                    height = 288,
                    line_length = 64,
                    frame_count = 255,
                    animation_speed = 0.2,
                    tint = {r = 1.0, g = 0.0, b = 0.0, a = 1.0},
                    shift = util.by_pixel(-32, 0)
                },
                {
                    filename = "__pyalienlifegraphics__/graphics/entity/collector/f4-mask.png",
                    width = 32,
                    height = 288,
                    line_length = 64,
                    frame_count = 255,
                    animation_speed = 0.2,
                    tint = {r = 1.0, g = 0.0, b = 0.0, a = 1.0},
                    shift = util.by_pixel(0, 0)
                },
                {
                    filename = "__pyalienlifegraphics__/graphics/entity/collector/f5-mask.png",
                    width = 32,
                    height = 288,
                    line_length = 64,
                    frame_count = 255,
                    animation_speed = 0.2,
                    tint = {r = 1.0, g = 0.0, b = 0.0, a = 1.0},
                    shift = util.by_pixel(32, 0)
                },
                {
                    filename = "__pyalienlifegraphics__/graphics/entity/collector/f6-mask.png",
                    width = 32,
                    height = 288,
                    line_length = 64,
                    frame_count = 255,
                    animation_speed = 0.2,
                    tint = {r = 1.0, g = 0.0, b = 0.0, a = 1.0},
                    shift = util.by_pixel(64, 0)
                },
                {
                    filename = "__pyalienlifegraphics__/graphics/entity/collector/f7-mask.png",
                    width = 32,
                    height = 288,
                    line_length = 64,
                    frame_count = 255,
                    animation_speed = 0.2,
                    tint = {r = 1.0, g = 0.0, b = 0.0, a = 1.0},
                    shift = util.by_pixel(96, 0)
                },
            }
        },
    },

    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact-1.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pyalienlifegraphics__/sounds/collector.ogg", volume = 0.9},
        idle_sound = {filename = "__pyalienlifegraphics__/sounds/collector.ogg", volume = 0.3},
        apparent_volume = 2.5
    },
    next_upgrade = 'collector-mk03'
}
