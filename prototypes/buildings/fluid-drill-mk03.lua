RECIPE {
    type = "recipe",
    name = "fluid-drill-mk03",
    energy_required = 0.5,
    enabled = false,
    ingredients = {
        {type = "item", name = "fluid-drill-mk02",     amount = 1},
        {type = "item", name = "small-parts-02",       amount = 20},
        {type = "item", name = "electric-engine-unit", amount = 4},
        {type = "item", name = "advanced-circuit",     amount = 5},
        {type = "item", name = "stainless-steel",      amount = 40},
        {type = "item", name = "niobium-pipe",         amount = 20},
    },
    results = {
        {type = "item", name = "fluid-drill-mk03", amount = 1}
    }
}:add_unlock("machines-mk03")

ITEM {
    type = "item",
    name = "fluid-drill-mk03",
    icon = "__pyalienlifegraphics2__/graphics/icons/fluid-drill-mk03.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-cp-buildings-mk03",
    order = "a",
    place_result = "fluid-drill-mk03",
    stack_size = 10
}

ENTITY {
    type = "mining-drill",
    name = "fluid-drill-mk03",
    icon = "__pyalienlifegraphics2__/graphics/icons/fluid-drill-mk03.png",
    icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1, result = "fluid-drill-mk03"},
    fast_replaceable_group = "fluid-drill",
    max_health = 700,
    resource_categories = {"basic-with-fluid"},
    corpse = "big-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-2.3, -2.3}, {2.3, 2.3}},
    selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
    module_slots = 0,
    --allowed_effects = {"consumption", "speed", "pollution"},
    mining_speed = 2,
    input_fluid_box =
    {
        pipe_covers = pipecoverspictures(),
        volume = 200,
        pipe_connections = {
            {flow_direction = "input-output", position = {-2.0, 0}, direction = defines.direction.west},
            {flow_direction = "input-output", position = {2.0, 0},  direction = defines.direction.east},
            {flow_direction = "input-output", position = {0, 2.0},  direction = defines.direction.south}
        }
    },
    energy_source =
    {
        type = "electric",
        emissions_per_minute = {
            pollution = 10
        },
        usage_priority = "secondary-input"
    },
    energy_usage = "1200kW",
    resource_searching_radius = 3.49,
    vector_to_place_result = {0, -2.65},
    radius_visualisation_picture = {
        filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-radius-visualization.png",
        width = 12,
        height = 12
    },
    circuit_connector = circuit_connector_definitions["fluid-drill-mkxx"],
    circuit_wire_max_distance = _G.default_circuit_wire_max_distance,
    graphics_set = {
        animation = {
            layers = {
                {
                    filename = "__pyalienlifegraphics2__/graphics/entity/fluid-mining-drill/raw.png",
                    width = 224,
                    height = 288,
                    priority = "extra-high",
                    line_length = 10,
                    frame_count = 50,
                    animation_speed = 0.15,
                    shift = util.by_pixel(-0, -32),
                },
                {
                    filename = "__pyalienlifegraphics2__/graphics/entity/fluid-mining-drill/ao.png",
                    width = 224,
                    height = 288,
                    --priority = "extra-high",
                    line_length = 10,
                    frame_count = 50,
                    animation_speed = 0.15,
                    shift = util.by_pixel(-0, -32),
                },
                {
                    filename = "__pyalienlifegraphics2__/graphics/entity/fluid-mining-drill/mask.png",
                    width = 224,
                    height = 288,
                    priority = "extra-high",
                    line_length = 10,
                    frame_count = 50,
                    animation_speed = 0.15,
                    tint = {r = 0.223, g = 0.490, b = 0.858, a = 1.0},
                    shift = util.by_pixel(-0, -32),
                },
                {
                    filename = "__pyalienlifegraphics2__/graphics/entity/fluid-mining-drill/sh.png",
                    width = 192,
                    height = 192,
                    draw_as_shadow = true,
                    line_length = 10,
                    frame_count = 50,
                    animation_speed = 0.15,
                    shift = util.by_pixel(16, 0),
                },
            }
        },
    },
    impact_category = "metal-large",
    working_sound =
    {
        sound =
        {
            filename = "__base__/sound/electric-mining-drill.ogg",
            volume = 0.5,
            audible_distance_modifier = 0.6,
        },
        fade_in_ticks = 4,
        fade_out_ticks = 20
    },
}
