local MODULE_SLOTS = 40

RECIPE {
    type = "recipe",
    name = "prandium-lab-mk02",
    energy_required = 0.5,
    enabled = false,
    ingredients = {
        {type = "item", name = "prandium-lab-mk01", amount = 1},
        {type = "item", name = "advanced-circuit",  amount = 20},
        {type = "item", name = "small-lamp",        amount = 8},
        {type = "item", name = "nexelit-plate",     amount = 30},
        {type = "item", name = "steel-plate",       amount = 40},
        {type = "item", name = "glass",             amount = 50},
    },
    results = {
        {type = "item", name = "prandium-lab-mk02", amount = 1}
    }
}:add_unlock("land-animals-mk02"):add_ingredient("small-parts-02")

ITEM {
    type = "item",
    name = "prandium-lab-mk02",
    icon = "__pyalienlifegraphics__/graphics/icons/prandium-lab-mk02.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-alienlife-farm-buildings-mk02",
    order = "d",
    place_result = "prandium-lab-mk02",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "prandium-lab-mk02",
    icon = "__pyalienlifegraphics__/graphics/icons/prandium-lab-mk02.png",
    icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "prandium-lab-mk02"},
    fast_replaceable_group = "prandium-lab",
    max_health = 400,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-5.7, -5.7}, {5.7, 5.7}},
    selection_box = {{-6.0, -6.0}, {6.0, 6.0}},
    module_slots = MODULE_SLOTS,
    allowed_effects = {"speed", "productivity", "consumption", "pollution", "quality"},
    crafting_categories = {"cottongut"},
    crafting_speed = py.farm_speed_derived(MODULE_SLOTS, "prandium-lab-mk01"),
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = {
            pollution = 1
        },
    },
    energy_usage = "350kW",
    graphics_set = {
        working_visualisations = {
            --critters
            {
                north_position = util.by_pixel(-128, -0),
                west_position = util.by_pixel(-128, -0),
                south_position = util.by_pixel(-128, -0),
                east_position = util.by_pixel(-128, -0),
                animation = {
                    filename = "__pyalienlifegraphics2__/graphics/entity/prandium-lab/a1.png",
                    frame_count = 150,
                    width = 64,
                    height = 320,
                    line_length = 30,
                    animation_speed = 0.4,
                    priority = "low"
                }
            },
            {
                north_position = util.by_pixel(-64, -0),
                west_position = util.by_pixel(-64, -0),
                south_position = util.by_pixel(-64, -0),
                east_position = util.by_pixel(-64, -0),
                animation = {
                    filename = "__pyalienlifegraphics2__/graphics/entity/prandium-lab/a2.png",
                    frame_count = 150,
                    width = 64,
                    height = 320,
                    line_length = 30,
                    animation_speed = 0.4,
                    priority = "low"
                }
            },
            {
                north_position = util.by_pixel(-0, -0),
                west_position = util.by_pixel(-0, -0),
                south_position = util.by_pixel(-0, -0),
                east_position = util.by_pixel(-0, -0),
                animation = {
                    filename = "__pyalienlifegraphics2__/graphics/entity/prandium-lab/a3.png",
                    frame_count = 150,
                    width = 64,
                    height = 320,
                    line_length = 30,
                    animation_speed = 0.4,
                    priority = "low"
                }
            },
            {
                north_position = util.by_pixel(64, -0),
                west_position = util.by_pixel(64, -0),
                south_position = util.by_pixel(64, -0),
                east_position = util.by_pixel(64, -0),
                animation = {
                    filename = "__pyalienlifegraphics2__/graphics/entity/prandium-lab/a4.png",
                    frame_count = 150,
                    width = 64,
                    height = 320,
                    line_length = 30,
                    animation_speed = 0.4,
                    priority = "low"
                }
            },
            {
                north_position = util.by_pixel(128, -0),
                west_position = util.by_pixel(128, -0),
                south_position = util.by_pixel(128, -0),
                east_position = util.by_pixel(128, -0),
                animation = {
                    filename = "__pyalienlifegraphics2__/graphics/entity/prandium-lab/a5.png",
                    frame_count = 150,
                    width = 64,
                    height = 320,
                    line_length = 30,
                    animation_speed = 0.4,
                    priority = "low"
                }
            },
            --CENTER
            {
                north_position = util.by_pixel(-0, -32),
                west_position = util.by_pixel(-0, -32),
                south_position = util.by_pixel(-0, -32),
                east_position = util.by_pixel(-0, -32),
                animation = {
                    filename = "__pyalienlifegraphics2__/graphics/entity/prandium-lab/center.png",
                    width = 384,
                    height = 448,
                    frame_count = 1,
                    shift = util.by_pixel(-0, -0),
                    priority = "medium"
                }
            },
            {
                north_position = util.by_pixel(-0, -32),
                west_position = util.by_pixel(-0, -32),
                south_position = util.by_pixel(-0, -32),
                east_position = util.by_pixel(-0, -32),
                animation = {
                    filename = "__pyalienlifegraphics2__/graphics/entity/prandium-lab/center-mask.png",
                    width = 384,
                    height = 448,
                    frame_count = 1,
                    shift = util.by_pixel(-0, -0),
                    priority = "medium",
                    tint = {r = 1.0, g = 0.0, b = 0.0, a = 1.0}
                }
            },
            --POSTE
            {
                north_position = util.by_pixel(-0, -32),
                west_position = util.by_pixel(-0, -32),
                south_position = util.by_pixel(-0, -32),
                east_position = util.by_pixel(-0, -32),
                animation = {
                    filename = "__pyalienlifegraphics2__/graphics/entity/prandium-lab/poste.png",
                    width = 384,
                    height = 448,
                    frame_count = 1,
                    util.by_pixel(-0, -0),
                    priority = "medium"
                }
            },
            --FRONT
            {
                north_position = util.by_pixel(-0, -32),
                west_position = util.by_pixel(-0, -32),
                south_position = util.by_pixel(-0, -32),
                east_position = util.by_pixel(-0, -32),
                animation = {
                    filename = "__pyalienlifegraphics2__/graphics/entity/prandium-lab/front.png",
                    width = 384,
                    height = 448,
                    frame_count = 1,
                    util.by_pixel(-0, -0),
                    priority = "extra-high"
                }
            },
            {
                north_position = util.by_pixel(-0, -32),
                west_position = util.by_pixel(-0, -32),
                south_position = util.by_pixel(-0, -32),
                east_position = util.by_pixel(-0, -32),
                animation = {
                    filename = "__pyalienlifegraphics2__/graphics/entity/prandium-lab/front-mask.png",
                    width = 384,
                    height = 448,
                    frame_count = 1,
                    util.by_pixel(-0, -0),
                    priority = "extra-high",
                    tint = {r = 1.0, g = 0.0, b = 0.0, a = 1.0}
                }
            },
        },
        animation = {
            layers = {
                --TERRAIN
                {
                    filename = "__pyalienlifegraphics2__/graphics/entity/prandium-lab/off.png",
                    width = 384,
                    height = 448,
                    frame_count = 1,
                    shift = util.by_pixel(-0, -32),
                    priority = "very-low",
                },
                {
                    filename = "__pyalienlifegraphics2__/graphics/entity/prandium-lab/off-mask.png",
                    width = 384,
                    height = 448,
                    frame_count = 1,
                    shift = util.by_pixel(-0, -32),
                    priority = "very-low",
                    tint = {r = 1.0, g = 0.0, b = 0.0, a = 1.0}
                },
            }
        },
    },
    impact_category = "metal-large",
    working_sound = {
        sound = {filename = "__pyalienlifegraphics__/sounds/prandium-lab.ogg", volume = 1.4},
        idle_sound = {filename = "__pyalienlifegraphics__/sounds/prandium-lab.ogg", volume = 0.3},
        apparent_volume = 2.5
    }
}
