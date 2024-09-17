local MODULE_SLOTS = 20

RECIPE {
    type = "recipe",
    name = "phagnot-corral-mk02",
    energy_required = 1,
    enabled = false,
    ingredients = {
        {type = "item", name = "phagnot-corral-mk01", amount = 1},
        {type = "item", name = "titanium-plate", amount = 50},
        {type = "item", name = "latex", amount = 100},
        {type = "item", name = "neuroprocessor", amount = 30},
        {type = "item", name = "nexelit-plate", amount = 80},
        {type = "item", name = "advanced-circuit", amount = 20},
    },
    results = {
        {type = "item", name = "phagnot-corral-mk02", amount = 1}
    }
}:add_unlock("land-animals-mk02")

ITEM {
    type = "item",
    name = "phagnot-corral-mk02",
    icon = "__pyalienlifegraphics__/graphics/icons/phagnot-corral-mk02.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-alienlife-farm-buildings-mk02",
    order = "d",
    place_result = "phagnot-corral-mk02",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "phagnot-corral-mk02",
    icon = "__pyalienlifegraphics__/graphics/icons/phagnot-corral-mk02.png",
    icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "phagnot-corral-mk02"},
    fast_replaceable_group = "phagnot-corral",
    max_health = 70,
    corpse = "big-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-5.8, -5.8}, {5.8, 5.8}},
    selection_box = {{-6.0, -6.0}, {6.0, 6.0}},
    match_animation_speed_to_activity = false,
    module_specification = {
        module_slots = MODULE_SLOTS
    },
    allowed_effects = {'speed', 'productivity', 'consumption', 'pollution'},
    crafting_categories = {"phagnot"},
    crafting_speed = py.farm_speed_derived(MODULE_SLOTS, "phagnot-corral-mk01"),
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = {
            pollution = 3
        },
    },
    energy_usage = "500kW",
    graphics_set = {
        working_visualisations = {
            {
                north_position = util.by_pixel(136, -63),
                west_position = util.by_pixel(0, -0),
                south_position = util.by_pixel(0, -0),
                east_position = util.by_pixel(0, -0),
                animation = {
                    filename = "__pyalienlifegraphics2__/graphics/entity/phagnot-corral/mom.png",
                    frame_count = 68,
                    line_length = 10,
                    width = 96,
                    height = 128,
                    animation_speed = 0.5
                }
            },
            {
                north_position = util.by_pixel(-56, -121),
                west_position = util.by_pixel(0, -0),
                south_position = util.by_pixel(0, -0),
                east_position = util.by_pixel(0, -0),
                animation = {
                    filename = "__pyalienlifegraphics2__/graphics/entity/phagnot-corral/porta.png",
                    frame_count = 68,
                    line_length = 10,
                    width = 64,
                    height = 96,
                    animation_speed = 0.5
                }
            },
            {
                north_position = util.by_pixel(143, -28),
                west_position = util.by_pixel(0, -0),
                south_position = util.by_pixel(0, -0),
                east_position = util.by_pixel(0, -0),
                animation = {
                    filename = "__pyalienlifegraphics2__/graphics/entity/phagnot-corral/pup.png",
                    frame_count = 68,
                    line_length = 10,
                    width = 64,
                    height = 96,
                    animation_speed = 0.5
                }
            },
            {
                north_position = util.by_pixel(-98, -27),
                west_position = util.by_pixel(0, -0),
                south_position = util.by_pixel(0, -0),
                east_position = util.by_pixel(0, -0),
                animation = {
                    filename = "__pyalienlifegraphics2__/graphics/entity/phagnot-corral/sit.png",
                    frame_count = 68,
                    line_length = 10,
                    width = 64,
                    height = 96,
                    animation_speed = 0.3
                }
            },
            {
                north_position = util.by_pixel(-16, 17),
                west_position = util.by_pixel(0, -0),
                south_position = util.by_pixel(0, -0),
                east_position = util.by_pixel(0, -0),
                animation = {
                    filename = "__pyalienlifegraphics2__/graphics/entity/phagnot-corral/walk-01.png",
                    frame_count = 130,
                    line_length = 16,
                    width = 128,
                    height = 205,
                    animation_speed = 0.3
                }
            },
            {
                north_position = util.by_pixel(100, 17),
                west_position = util.by_pixel(0, -0),
                south_position = util.by_pixel(0, -0),
                east_position = util.by_pixel(0, -0),
                animation = {
                    filename = "__pyalienlifegraphics2__/graphics/entity/phagnot-corral/walk-02.png",
                    frame_count = 130,
                    line_length = 16,
                    width = 105,
                    height = 205,
                    animation_speed = 0.3
                }
            },
        },
        animation = {
            layers = {
            {
            filename = "__pyalienlifegraphics2__/graphics/entity/phagnot-corral/off.png",
            width = 416,
            height = 448,
            frame_count = 1,
            line_length = 1,
            shift = util.by_pixel(16, -32)
            },
            {
                filename = "__pyalienlifegraphics2__/graphics/entity/phagnot-corral/off-mask.png",
                width = 416,
                height = 448,
                frame_count = 1,
                line_length = 1,
                shift = util.by_pixel(16, -32),
                tint = {r = 1.0, g = 0.0, b = 0.0, a = 1.0}
                },
          },
        },
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact-1.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pyalienlifegraphics__/sounds/phagnot-corral.ogg", volume = 1.0},
        idle_sound = {filename = "__pyalienlifegraphics__/sounds/phagnot-corral.ogg", volume = 0.3},
        apparent_volume = 0.45
    }
}
