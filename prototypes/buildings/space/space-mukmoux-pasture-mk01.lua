---WIP---
---REDO RECIPE---
RECIPE {
    type = "recipe",
    name = "space-mukmoux-pasture-mk01",
    energy_required = 0.5,
    enabled = false,
    ingredients = {
        {type = "item", name = "soil",               amount = 500},
        {type = "item", name = "steel-plate",        amount = 100},
        {type = "item", name = "duralumin",          amount = 30},
        {type = "item", name = "storage-tank",       amount = 5},
        {type = "item", name = "electronic-circuit", amount = 10}
    },
    results = {
        {type = "item", name = "space-mukmoux-pasture-mk01", amount = 1}
    }
}:add_unlock("mukmoux")

ITEM {
    type = "item",
    name = "space-mukmoux-pasture-mk01",
    icon = "__pyalienlifegraphics__/graphics/icons/mukmoux-pasture-mk01.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-alienlife-buildings-mk01",
    order = "d",
    place_result = "space-mukmoux-pasture-mk01",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "space-mukmoux-pasture-mk01",
    icon = "__pyalienlifegraphics__/graphics/icons/mukmoux-pasture-mk01.png",
    icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "space-mukmoux-pasture-mk01"},
    fast_replaceable_group = "mukmoux-pasture",
    max_health = 100,
    corpse = "big-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-7.2, -7.2}, {7.2, 7.2}},
    selection_box = {{-7.5, -7.5}, {7.5, 7.5}},
    module_slots = 8,
    allowed_effects = {"speed", "productivity", "consumption", "pollution", "quality"},
    crafting_categories = {"mukmoux"},
    crafting_speed = 0.04,
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = {
            pollution = 3
        },
    },
    energy_usage = "190kW",
    graphics_set = {
        working_visualisations = {
            {
                north_position = util.by_pixel(7, -37),
                west_position = util.by_pixel(7, -37),
                south_position = util.by_pixel(7, -37),
                east_position = util.by_pixel(7, -37),
                animation = {
                    filename = "__pyalienlifegraphics2__/graphics/entity/mukmoux-pasture/alpha.png",
                    scale = 1,
                    frame_count = 92,
                    line_length = 16,
                    width = 128,
                    height = 160,
                    animation_speed = 0.25
                }
            },
            {
                north_position = util.by_pixel(-155, 170),
                west_position = util.by_pixel(-155, 170),
                south_position = util.by_pixel(-155, 170),
                east_position = util.by_pixel(-155, 170),
                animation = {
                    filename = "__pyalienlifegraphics2__/graphics/entity/mukmoux-pasture/eat-bottom-left.png",
                    scale = 1,
                    frame_count = 80,
                    line_length = 16,
                    width = 128,
                    height = 96,
                    animation_speed = 0.2
                }
            },
            {
                north_position = util.by_pixel(-145, 66),
                west_position = util.by_pixel(-145, 66),
                south_position = util.by_pixel(-145, 66),
                east_position = util.by_pixel(-145, 66),
                animation = {
                    filename = "__pyalienlifegraphics2__/graphics/entity/mukmoux-pasture/eat-mid-left.png",
                    scale = 0.85,
                    frame_count = 80,
                    line_length = 16,
                    width = 128,
                    height = 128,
                    animation_speed = 0.2
                }
            },
            {
                north_position = util.by_pixel(168, -32),
                west_position = util.by_pixel(168, -32),
                south_position = util.by_pixel(168, -32),
                east_position = util.by_pixel(168, -32),
                animation = {
                    filename = "__pyalienlifegraphics2__/graphics/entity/mukmoux-pasture/eat-mid-right.png",
                    scale = 1,
                    frame_count = 80,
                    line_length = 16,
                    width = 64,
                    height = 128,
                    animation_speed = 0.2
                }
            },
            {
                north_position = util.by_pixel(111, 139),
                west_position = util.by_pixel(111, 139),
                south_position = util.by_pixel(111, 139),
                east_position = util.by_pixel(111, 139),
                animation = {
                    filename = "__pyalienlifegraphics2__/graphics/entity/mukmoux-pasture/mom.png",
                    scale = 1,
                    frame_count = 60,
                    line_length = 10,
                    width = 160,
                    height = 128,
                    animation_speed = 0.2
                }
            },
            {
                north_position = util.by_pixel(45, -143),
                west_position = util.by_pixel(45, -143),
                south_position = util.by_pixel(45, -143),
                east_position = util.by_pixel(45, -143),
                animation = {
                    filename = "__pyalienlifegraphics2__/graphics/entity/mukmoux-pasture/shout.png",
                    scale = 1,
                    frame_count = 90,
                    line_length = 16,
                    width = 128,
                    height = 96,
                    animation_speed = 0.2
                }
            },
            {
                north_position = util.by_pixel(187, -138),
                west_position = util.by_pixel(187, -138),
                south_position = util.by_pixel(187, -138),
                east_position = util.by_pixel(187, -138),
                animation = {
                    filename = "__pyalienlifegraphics2__/graphics/entity/mukmoux-pasture/water.png",
                    scale = 1,
                    frame_count = 60,
                    line_length = 12,
                    width = 64,
                    height = 96,
                    animation_speed = 0.2
                }
            },

        },
        animation = {
            layers = {
                {
                    filename = "__pyalienlifegraphics2__/graphics/entity/mukmoux-pasture/base.png",
                    width = 480,
                    height = 544,
                    frame_count = 1,
                    line_length = 1,
                    shift = util.by_pixel(0, -32),
                },
                {
                    filename = "__pyalienlifegraphics2__/graphics/entity/mukmoux-pasture/base-mask.png",
                    width = 480,
                    height = 544,
                    frame_count = 1,
                    line_length = 1,
                    shift = util.by_pixel(0, -32),
                    tint = {r = 1.0, g = 1.0, b = 0.0, a = 1.0}
                },
            },
        },
    },
    impact_category = "metal-large",
    working_sound = {
        sound = {filename = "__pycoalprocessinggraphics__/sounds/mukmoux-pasture.ogg", volume = 1.3},
        idle_sound = {filename = "__pycoalprocessinggraphics__/sounds/mukmoux-pasture.ogg", volume = 0.3},
        apparent_volume = 0.45
    }
}
