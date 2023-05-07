RECIPE {
    type = "recipe",
    name = "fluid-drill-mk01",
    energy_required = 0.5,
    enabled = false,
    ingredients = {
        {"burner-mining-drill", 2},
        {"iron-gear-wheel", 30},
        {"pipe", 20},
        {"inductor1", 10},
        {"steel-plate", 5},
        {"steam-engine", 1},
    },
    results = {
        {"fluid-drill-mk01", 1}
    }
}:add_unlock("mining-with-fluid")

ITEM {
    type = "item",
    name = "fluid-drill-mk01",
    icon = "__pyalienlifegraphics2__/graphics/icons/fluid-drill-mk01.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-cp-buildings-mk01",
    order = "a",
    place_result = "fluid-drill-mk01",
    stack_size = 10
}

ENTITY {
    type = "mining-drill",
    name = "fluid-drill-mk01",
    icon = "__pyalienlifegraphics2__/graphics/icons/fluid-drill-mk01.png",
    icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1, result = "fluid-drill-mk01"},
    fast_replaceable_group = "fluid-drill",
    max_health = 700,
    resource_categories = {"basic-with-fluid"},
    corpse = "big-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-2.3, -2.3}, {2.3, 2.3}},
    selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
    match_animation_speed_to_activity = false,
    module_specification = {
        module_slots = 0
    },
    --allowed_effects = {"consumption", "speed", "pollution"},
    mining_speed = 0.5,
    input_fluid_box =
    {
        production_type = "input-output",
        pipe_covers = pipecoverspictures(),
        base_area = 1,
        height = 2,
        base_level = -1,
        pipe_connections = {
            { position = {-3, 0}},
            { position = {3, 0} },
            { position = {0, 3} }
        }
    },
    energy_source =
    {
        type = "burner",
        fuel_categories = {"chemical", "biomass"},
        effectivity = 1,
        fuel_inventory_size = 1,
        burnt_inventory_size = 1,
        emissions_per_minute = 20,
        light_flicker =
        {
            minimum_intensity = 0,
            maximum_intensity = 0,
            light_intensity_to_size_coefficient = 0,
            color = {0,0,0},
        },
        smoke =
        {
            {
                name = "smoke",
                deviation = {0.1, 0.1},
                frequency = 10,
                north_position = util.by_pixel(-0, -132),
                south_position = util.by_pixel(-0, -132),
                east_position = util.by_pixel(-0, -132),
                west_position = util.by_pixel(-0, -132),
            }
        },
    },
    energy_usage = "400kW",
    resource_searching_radius = 3.49,
    vector_to_place_result = {0, -2.65},
    radius_visualisation_picture = {
        filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-radius-visualization.png",
        width = 12,
        height = 12
    },
    circuit_wire_connection_points = circuit_connector_definitions["fluid-drill-mkxx"].points,
    circuit_connector_sprites = circuit_connector_definitions["fluid-drill-mkxx"].sprites,
    circuit_wire_max_distance = default_circuit_wire_max_distance,
    animations = {
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
                tint = {r = 1.0, g = 1.0, b = 0.0, a = 1.0},
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
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/electric-mining-drill.ogg",
        volume = 0.5
      },
      audible_distance_modifier = 0.6,
      fade_in_ticks = 4,
      fade_out_ticks = 20
    },
}
