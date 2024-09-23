local MODULE_SLOTS = 3
local FULL_CRAFTING_SPEED = .6 -- crafting speed when full of mk01 modules

RECIPE {
    type = "recipe",
    name = "antelope-enclosure-mk01",
    energy_required = 1,
    enabled = false,
    ingredients = {
        {type = "item", name = "concrete", amount = 200},
        {type = "item", name = "paramagnetic-material", amount = 50},
        {type = "item", name = "super-alloy", amount = 50},
        {type = "item", name = "graphene-roll", amount = 50},
        {type = "item", name = "glass", amount = 100},
        {type = "item", name = "processing-unit", amount = 40},
    },
    results = {
        {type = "item", name = "antelope-enclosure-mk01", amount = 1}
    }
}:add_unlock("schrodinger-antelope")

ITEM {
    type = "item",
    name = "antelope-enclosure-mk01",
    icon = "__pyalienlifegraphics__/graphics/icons/antelope-enclosure-mk01.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-alienlife-buildings-others",
    order = "d",
    place_result = "antelope-enclosure-mk01",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "antelope-enclosure-mk01",
    icon = "__pyalienlifegraphics__/graphics/icons/antelope-enclosure-mk01.png",
    icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "antelope-enclosure-mk01"},
    fast_replaceable_group = "antelope-enclosure",
    max_health = 100,
    corpse = "big-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-8.3, -8.3}, {8.3, 8.3}},
    selection_box = {{-8.5, -8.5}, {8.5, 8.5}},
    --collision_mask = {layers = {ground_tile = true,water_tile = true,['layer-14'] = true}},
    match_animation_speed_to_activity = false,
    module_slots = MODULE_SLOTS,
    allowed_effects = {'speed', 'productivity', 'consumption', 'pollution'},
    crafting_categories = {"antelope"},
    crafting_speed = py.farm_speed(MODULE_SLOTS, FULL_CRAFTING_SPEED),
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = {
            pollution = 3
        },
    },
    energy_usage = "5MW",
    graphics_set = {
        working_visualisations = {
            {
                north_position = util.by_pixel(-192, -128),
                west_position = util.by_pixel(-192, -128),
                south_position = util.by_pixel(-192, -128),
                east_position = util.by_pixel(-192, -128),
                animation = {
                    filename = "__pyalienlifegraphics__/graphics/entity/antelope-enclosure/v1.png",
                    frame_count = 150,
                    line_length = 12,
                    width = 160,
                    height = 160,
                    draw_as_glow = true,
                    animation_speed = 0.25,
                }
            },
            {
                north_position = util.by_pixel(-32, -128),
                west_position = util.by_pixel(-32, -128),
                south_position = util.by_pixel(-32, -128),
                east_position = util.by_pixel(-32, -128),
                animation = {
                    filename = "__pyalienlifegraphics__/graphics/entity/antelope-enclosure/v2.png",
                    frame_count = 150,
                    line_length = 12,
                    width = 160,
                    height = 160,
                    draw_as_glow = true,
                    animation_speed = 0.25,
                }
            },
            {
                north_position = util.by_pixel(128, -128),
                west_position = util.by_pixel(128, -128),
                south_position = util.by_pixel(128, -128),
                east_position = util.by_pixel(128, -128),
                animation = {
                    filename = "__pyalienlifegraphics__/graphics/entity/antelope-enclosure/v3.png",
                    frame_count = 150,
                    line_length = 12,
                    width = 160,
                    height = 160,
                    draw_as_glow = true,
                    animation_speed = 0.25,
                }
            },
            {
                north_position = util.by_pixel(240, -128),
                west_position = util.by_pixel(240, -128),
                south_position = util.by_pixel(240, -128),
                east_position = util.by_pixel(240, -128),
                animation = {
                    filename = "__pyalienlifegraphics__/graphics/entity/antelope-enclosure/v4.png",
                    frame_count = 150,
                    line_length = 12,
                    width = 64,
                    height = 160,
                    draw_as_glow = true,
                    animation_speed = 0.25,
                }
            },
            --circle
            {
                north_position = util.by_pixel(-288, -208),
                west_position = util.by_pixel(-288, -208),
                south_position = util.by_pixel(-288, -208),
                east_position = util.by_pixel(-288, -208),
                animation = {
                    filename = "__pyalienlifegraphics__/graphics/entity/antelope-enclosure/1.png",
                    frame_count = 100,
                    line_length = 20,
                    width = 96,
                    height = 512,
                    draw_as_glow = true,
                    animation_speed = 0.4,
                }
            },
            {
                north_position = util.by_pixel(-192, -208),
                west_position = util.by_pixel(-192, -208),
                south_position = util.by_pixel(-192, -208),
                east_position = util.by_pixel(-192, -208),
                animation = {
                    filename = "__pyalienlifegraphics__/graphics/entity/antelope-enclosure/2.png",
                    frame_count = 100,
                    line_length = 20,
                    width = 96,
                    height = 512,
                    draw_as_glow = true,
                    animation_speed = 0.4,
                }
            },
            {
                north_position = util.by_pixel(-96, -208),
                west_position = util.by_pixel(-96, -208),
                south_position = util.by_pixel(-96, -208),
                east_position = util.by_pixel(-96, -208),
                animation = {
                    filename = "__pyalienlifegraphics__/graphics/entity/antelope-enclosure/3.png",
                    frame_count = 100,
                    line_length = 20,
                    width = 96,
                    height = 512,
                    draw_as_glow = true,
                    animation_speed = 0.4,
                }
            },
            {
                north_position = util.by_pixel(0, -208),
                west_position = util.by_pixel(-0, -208),
                south_position = util.by_pixel(-0, -208),
                east_position = util.by_pixel(-0, -208),
                animation = {
                    filename = "__pyalienlifegraphics__/graphics/entity/antelope-enclosure/4.png",
                    frame_count = 100,
                    line_length = 20,
                    width = 96,
                    height = 512,
                    draw_as_glow = true,
                    animation_speed = 0.4,
                }
            },
            {
                north_position = util.by_pixel(96, -208),
                west_position = util.by_pixel(96, -208),
                south_position = util.by_pixel(96, -208),
                east_position = util.by_pixel(96, -208),
                animation = {
                    filename = "__pyalienlifegraphics__/graphics/entity/antelope-enclosure/5.png",
                    frame_count = 100,
                    line_length = 20,
                    width = 96,
                    height = 512,
                    draw_as_glow = true,
                    animation_speed = 0.4,
                }
            },
            {
                north_position = util.by_pixel(192, -208),
                west_position = util.by_pixel(192, -208),
                south_position = util.by_pixel(192, -208),
                east_position = util.by_pixel(192, -208),
                animation = {
                    filename = "__pyalienlifegraphics__/graphics/entity/antelope-enclosure/6.png",
                    frame_count = 100,
                    line_length = 20,
                    width = 96,
                    height = 512,
                    draw_as_glow = true,
                    animation_speed = 0.4,
                }
            },
            {
                north_position = util.by_pixel(288, -208),
                west_position = util.by_pixel(288, -208),
                south_position = util.by_pixel(288, -208),
                east_position = util.by_pixel(288, -208),
                animation = {
                    filename = "__pyalienlifegraphics__/graphics/entity/antelope-enclosure/7.png",
                    frame_count = 100,
                    line_length = 20,
                    width = 96,
                    height = 512,
                    draw_as_glow = true,
                    animation_speed = 0.4,
                }
            },
    
            --gazels
            {
                north_position = util.by_pixel(-192, -448),
                west_position = util.by_pixel(-192, -448),
                south_position = util.by_pixel(-192, -448),
                east_position = util.by_pixel(-192, -448),
                animation = {
                    filename = "__pyalienlifegraphics__/graphics/entity/antelope-enclosure/t1.png",
                    frame_count = 150,
                    line_length = 12,
                    width = 160,
                    height = 160,
                    draw_as_glow = true,
                    animation_speed = 0.25,
                }
            },
            {
                north_position = util.by_pixel(-32, -448),
                west_position = util.by_pixel(-32, -448),
                south_position = util.by_pixel(-32, -448),
                east_position = util.by_pixel(-32, -448),
                animation = {
                    filename = "__pyalienlifegraphics__/graphics/entity/antelope-enclosure/t2.png",
                    frame_count = 150,
                    line_length = 12,
                    width = 160,
                    height = 160,
                    draw_as_glow = true,
                    animation_speed = 0.25,
                }
            },
            {
                north_position = util.by_pixel(128, -448),
                west_position = util.by_pixel(128, -448),
                south_position = util.by_pixel(128, -448),
                east_position = util.by_pixel(128, -448),
                animation = {
                    filename = "__pyalienlifegraphics__/graphics/entity/antelope-enclosure/t3.png",
                    frame_count = 150,
                    line_length = 12,
                    width = 160,
                    height = 160,
                    draw_as_glow = true,
                    animation_speed = 0.25,
                }
            },
            {
                north_position = util.by_pixel(-192, -288),
                west_position = util.by_pixel(-192, -288),
                south_position = util.by_pixel(-192, -288),
                east_position = util.by_pixel(-192, -288),
                animation = {
                    filename = "__pyalienlifegraphics__/graphics/entity/antelope-enclosure/u1.png",
                    frame_count = 150,
                    line_length = 12,
                    width = 160,
                    height = 160,
                    draw_as_glow = true,
                    animation_speed = 0.25,
                }
            },
            {
                north_position = util.by_pixel(-32, -288),
                west_position = util.by_pixel(-32, -288),
                south_position = util.by_pixel(-32, -288),
                east_position = util.by_pixel(-32, -288),
                animation = {
                    filename = "__pyalienlifegraphics__/graphics/entity/antelope-enclosure/u2.png",
                    frame_count = 150,
                    line_length = 12,
                    width = 160,
                    height = 160,
                    draw_as_glow = true,
                    animation_speed = 0.25,
                }
            },
            {
                north_position = util.by_pixel(128, -288),
                west_position = util.by_pixel(128, -288),
                south_position = util.by_pixel(128, -288),
                east_position = util.by_pixel(128, -288),
                animation = {
                    filename = "__pyalienlifegraphics__/graphics/entity/antelope-enclosure/u3.png",
                    frame_count = 150,
                    line_length = 12,
                    width = 160,
                    height = 160,
                    draw_as_glow = true,
                    animation_speed = 0.25,
                }
            },
            {
                north_position = util.by_pixel(240, -288),
                west_position = util.by_pixel(240, -288),
                south_position = util.by_pixel(240, -288),
                east_position = util.by_pixel(240, -288),
                animation = {
                    filename = "__pyalienlifegraphics__/graphics/entity/antelope-enclosure/u4.png",
                    frame_count = 150,
                    line_length = 12,
                    width = 64,
                    height = 160,
                    draw_as_glow = true,
                    animation_speed = 0.25,
                }
            },
    
            {
                north_position = util.by_pixel(-192, -0),
                west_position = util.by_pixel(-192, -0),
                south_position = util.by_pixel(-192, -0),
                east_position = util.by_pixel(-192, -0),
                animation = {
                    filename = "__pyalienlifegraphics__/graphics/entity/antelope-enclosure/w1.png",
                    frame_count = 150,
                    line_length = 12,
                    width = 160,
                    height = 96,
                    draw_as_glow = true,
                    animation_speed = 0.25,
                }
            },
            {
                north_position = util.by_pixel(-32, -0),
                west_position = util.by_pixel(-32, -0),
                south_position = util.by_pixel(-32, -0),
                east_position = util.by_pixel(-32, -0),
                animation = {
                    filename = "__pyalienlifegraphics__/graphics/entity/antelope-enclosure/w2.png",
                    frame_count = 150,
                    line_length = 12,
                    width = 160,
                    height = 96,
                    draw_as_glow = true,
                    animation_speed = 0.25,
                }
            },
            {
                north_position = util.by_pixel(128, -0),
                west_position = util.by_pixel(128, -0),
                south_position = util.by_pixel(128, -0),
                east_position = util.by_pixel(128, -0),
                animation = {
                    filename = "__pyalienlifegraphics__/graphics/entity/antelope-enclosure/w3.png",
                    frame_count = 150,
                    line_length = 12,
                    width = 160,
                    height = 96,
                    draw_as_glow = true,
                    animation_speed = 0.25,
                }
            },
            {
                north_position = util.by_pixel(128, 16),
                west_position = util.by_pixel(128, 16),
                south_position = util.by_pixel(128, 16),
                east_position = util.by_pixel(128, 16),
                animation = {
                    filename = "__pyalienlifegraphics__/graphics/entity/antelope-enclosure/w4.png",
                    frame_count = 150,
                    line_length = 12,
                    width = 64,
                    height = 96,
                    draw_as_glow = true,
                    animation_speed = 0.25,
                }
            },
    
        },
        animation = {
            layers = {
            {
                filename = "__pyalienlifegraphics__/graphics/entity/antelope-enclosure/r.png",
                width = 544,
                height = 800,
                shift = util.by_pixel(0, -128)
            },
            {
                filename = "__pyalienlifegraphics__/graphics/entity/antelope-enclosure/m.png",
                width = 544,
                height = 800,
                shift = util.by_pixel(0, -128),
                tint = {r = 1.0, g = 1.0, b = 0.0, a = 1.0}
            },
            {
                filename = "__pyalienlifegraphics__/graphics/entity/antelope-enclosure/ao.png",
                width = 608,
                height = 832,
                shift = util.by_pixel(0, -112)
            },
            {
                filename = "__pyalienlifegraphics__/graphics/entity/antelope-enclosure/l.png",
                width = 544,
                height = 800,
                shift = util.by_pixel(0, -128),
                draw_as_light = true,
            },
            {
                filename = "__pyalienlifegraphics__/graphics/entity/antelope-enclosure/g.png",
                width = 544,
                height = 800,
                shift = util.by_pixel(0, -128),
                draw_as_light = true,
            },
          },
        },
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact-1.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pyalienlifegraphics__/sounds/antelope-enclosure.ogg", volume = 0.8},
        idle_sound = {filename = "__pyalienlifegraphics__/sounds/antelope-enclosure.ogg", volume = 0.3},
        apparent_volume = 0.45
    }
}
