RECIPE {
    type = "recipe",
    name = "atomizer-mk02",
    energy_required = 0.5,
    enabled = false,
    ingredients = {
        {type = "item", name = "atomizer-mk01", amount = 1},
        {type = "item", name = "advanced-circuit", amount = 10},
        {type = "item", name = "engine-unit", amount = 6},
        {type = "item", name = "lead-plate", amount = 20},
        {type = "item", name = "latex", amount = 30},
        {type = "item", name = "neuroprocessor", amount = 20},
    },
    results = {
        {type = "item", name = "atomizer-mk02", amount = 1}
    }
}:add_unlock("biotech-machines-mk02"):add_ingredient({type = "item", name = "small-parts-02", amount = 30})

ITEM {
    type = "item",
    name = "atomizer-mk02",
    icon = "__pyalienlifegraphics__/graphics/icons/atomizer-mk02.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-alienlife-buildings-mk02",
    order = "a",
    place_result = "atomizer-mk02",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "atomizer-mk02",
    icon = "__pyalienlifegraphics__/graphics/icons/atomizer-mk02.png",
	icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "atomizer-mk02"},
    fast_replaceable_group = "atomizer",
    max_health = 100,
    corpse = "medium-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-3.3, -3.3}, {3.3, 3.3}},
    selection_box = {{-3.5, -3.5}, {3.5, 3.5}},
    match_animation_speed_to_activity = false,
    module_specification = {
        module_slots = 2
    },
    allowed_effects = {'speed', 'productivity', 'consumption', 'pollution'},
    crafting_categories = {"atomizer"},
    crafting_speed = 2,
    energy_source =
    {
      type = "burner",
      --fuel_category = "chemical",
      fuel_categories = {"chemical", "biomass", "jerry"},
      effectivity = 1,
      fuel_inventory_size = 1,
      burnt_inventory_size = 1,
      emissions_per_minute = {
          pollution = 0.06
      },
    },
    energy_usage = "900kW",
    graphics_set = {
        working_visualisations = {
            {
                north_position = util.by_pixel(0, -16),
                west_position = util.by_pixel(0, -16),
                south_position = util.by_pixel(0, -16),
                east_position = util.by_pixel(0, -16),
                animation = {
                    filename = "__pyalienlifegraphics__/graphics/entity/atomizer/on.png",
                    priority = "high",
                    frame_count = 90,
                    line_length = 9,
                    width = 224,
                    height = 192,
                    animation_speed = 0.5,
                    draw_as_glow = true,
                }
            },
        },
        animation = {
            layers = {
                {
                    filename = "__pyalienlifegraphics__/graphics/entity/atomizer/off.png",
                    width = 256,
                    height = 256,
                    frame_count = 1,
                    shift = util.by_pixel(16, -16)
                },
                {
                    filename = "__pyalienlifegraphics__/graphics/entity/atomizer/off-mask.png",
                    width = 256,
                    height = 256,
                    frame_count = 1,
                    shift = util.by_pixel(16, -16),
                    tint = {r = 1.0, g = 0.0, b = 0.0, a = 1.0}
                },
            }
        },
    },
    fluid_boxes = {
        --1
        {
            production_type = "input",
            pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = py.pipe_covers(false, true, true, true),
            volume = 1000,
            base_level = -1,
            pipe_connections = {{flow_direction = "input", position = {1.0, -3.3}, direction = defines.direction.north}}
        },
        {
            production_type = "input",
            pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = py.pipe_covers(false, true, true, true),
            volume = 1000,
            base_level = -1,
            pipe_connections = {{flow_direction = "input", position = {-1.0, -3.3}, direction = defines.direction.north}}
        },
        {
            production_type = "output",
            pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = py.pipe_covers(false, true, true, true),
            volume = 100,
            pipe_connections = {{flow_direction = "output", position = {1.0, 3.3}, direction = defines.direction.south}}
        },
        {
            production_type = "output",
            pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = py.pipe_covers(false, true, true, true),
            volume = 100,
            pipe_connections = {{flow_direction = "output", position = {-1.0, 3.3}, direction = defines.direction.south}}
        },
        off_when_no_fluid_recipe = true
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact-1.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pyalienlifegraphics__/sounds/atomizer.ogg", volume = 1.0},
        idle_sound = {filename = "__pyalienlifegraphics__/sounds/atomizer.ogg", volume = 0.3},
        apparent_volume = 2.5
    }
}
