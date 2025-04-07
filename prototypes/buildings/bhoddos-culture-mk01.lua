local MODULE_SLOTS = 1
local FULL_CRAFTING_SPEED = 1 -- crafting speed when full of mk01 modules

RECIPE {
    type = "recipe",
    name = "bhoddos-culture-mk01",
    energy_required = 1,
    enabled = false,
    ingredients = {
        {type = "item", name = mods.pyalternativeenergy and "nuclear-reactor" or "gasifier", amount = 1},
        {type = "item", name = "glass",                                                      amount = 30},
        {type = "item", name = "nexelit-plate",                                              amount = 20},
        {type = "item", name = "duralumin",                                                  amount = 35},
        {type = "item", name = "steel-plate",                                                amount = 50},
        {type = "item", name = "electronic-circuit",                                         amount = 15},
        {type = "item", name = "tin-plate",                                                  amount = 50},
    },
    results = {
        {type = "item", name = "bhoddos-culture-mk01", amount = 1}
    }
}:add_unlock("bhoddos")

ITEM {
    type = "item",
    name = "bhoddos-culture-mk01",
    icon = "__pyalienlifegraphics__/graphics/icons/bhoddos-culture-mk01.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-alienlife-farm-buildings-mk01",
    order = "c",
    place_result = "bhoddos-culture-mk01",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "bhoddos-culture-mk01",
    icon = "__pyalienlifegraphics__/graphics/icons/bhoddos-culture-mk01.png",
    icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "bhoddos-culture-mk01"},
    fast_replaceable_group = "bhoddos-culture",
    max_health = 50,
    corpse = "medium-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-5.3, -5.3}, {5.3, 5.3}},
    selection_box = {{-5.5, -5.5}, {5.5, 5.5}},
    forced_symmetry = "diagonal-pos",
    module_slots = MODULE_SLOTS,
    allowed_effects = {"speed", "productivity", "consumption", "pollution", "quality"},
    crafting_categories = {"bhoddos"},
    crafting_speed = py.farm_speed(MODULE_SLOTS, FULL_CRAFTING_SPEED),
    energy_source = {
        type = "burner",
        fuel_categories = {"fuelrod"},
        effectivity = 1,
        fuel_inventory_size = 1,
        burnt_inventory_size = 1,
        emissions_per_minute = {
            pollution = 0
        },
    },
    energy_usage = "1MW",
    graphics_set = {
        working_visualisations = {
            {
                north_position = util.by_pixel(-128, -48),
                west_position = util.by_pixel(-128, -48),
                south_position = util.by_pixel(-128, -48),
                east_position = util.by_pixel(-128, -48),
                animation = {
                    filename = "__pyalienlifegraphics__/graphics/entity/bhoddos-culture/a1.png",
                    frame_count = 100,
                    line_length = 20,
                    width = 96,
                    height = 384,
                    animation_speed = 0.4
                }
            },
            {
                north_position = util.by_pixel(-32, -48),
                west_position = util.by_pixel(-32, -48),
                south_position = util.by_pixel(-32, -48),
                east_position = util.by_pixel(-32, -48),
                animation = {
                    filename = "__pyalienlifegraphics__/graphics/entity/bhoddos-culture/a2.png",
                    frame_count = 100,
                    line_length = 20,
                    width = 96,
                    height = 384,
                    animation_speed = 0.4
                }
            },
            {
                north_position = util.by_pixel(64, -48),
                west_position = util.by_pixel(64, -48),
                south_position = util.by_pixel(64, -48),
                east_position = util.by_pixel(64, -48),
                animation = {
                    filename = "__pyalienlifegraphics__/graphics/entity/bhoddos-culture/a3.png",
                    frame_count = 100,
                    line_length = 20,
                    width = 96,
                    height = 384,
                    animation_speed = 0.4
                }
            },
            {
                north_position = util.by_pixel(160, -48),
                west_position = util.by_pixel(160, -48),
                south_position = util.by_pixel(160, -48),
                east_position = util.by_pixel(160, -48),
                animation = {
                    filename = "__pyalienlifegraphics__/graphics/entity/bhoddos-culture/a4.png",
                    frame_count = 100,
                    line_length = 20,
                    width = 96,
                    height = 384,
                    animation_speed = 0.4
                }
            },
        },
        animation = {
            layers = {
                {
                    filename = "__pyalienlifegraphics__/graphics/entity/bhoddos-culture/off.png",
                    width = 384,
                    height = 416,
                    frame_count = 1,
                    shift = util.by_pixel(16, -32)
                },
                {
                    filename = "__pyalienlifegraphics__/graphics/entity/bhoddos-culture/off-mask.png",
                    width = 384,
                    height = 416,
                    frame_count = 1,
                    shift = util.by_pixel(16, -32),
                    tint = {r = 1.0, g = 1.0, b = 0.0, a = 1.0}
                },
            }
        },
    },


    fluid_boxes_off_when_no_fluid_recipe = true,
    fluid_boxes = {
        --1
        {
            production_type = "input",
            pipe_covers = py.pipe_covers(false, true, true, true),
            pipe_picture = py.pipe_pictures("assembling-machine-3", nil, {0.0, -0.88}, nil, nil),
            volume = 1000,
            pipe_connections = {{flow_direction = "input", position = {1.0, -5.0}, direction = defines.direction.north}}
        },
        {
            production_type = "input",
            pipe_covers = py.pipe_covers(false, true, true, true),
            pipe_picture = py.pipe_pictures("assembling-machine-3", nil, {0.0, -0.88}, nil, nil),
            volume = 1000,
            pipe_connections = {{flow_direction = "input", position = {-1.0, -5.0}, direction = defines.direction.north}}
        },
        {
            production_type = "output",
            pipe_covers = py.pipe_covers(false, true, true, true),
            pipe_picture = py.pipe_pictures("assembling-machine-3", nil, {0.0, -0.88}, nil, nil),
            volume = 100,
            pipe_connections = {{flow_direction = "output", position = {1.0, 5.0}, direction = defines.direction.south}}
        },
        {
            production_type = "output",
            pipe_covers = py.pipe_covers(false, true, true, true),
            pipe_picture = py.pipe_pictures("assembling-machine-3", nil, {0.0, -0.88}, nil, nil),
            volume = 100,
            pipe_connections = {{flow_direction = "output", position = {-1.0, 5.0}, direction = defines.direction.south}}
        },
    },
    impact_category = "metal-large",
    working_sound = {
        sound = {filename = "__pyalienlifegraphics__/sounds/bhoddos-culture.ogg", volume = 2.0},
        idle_sound = {filename = "__pyalienlifegraphics__/sounds/bhoddos-culture.ogg", volume = 0.3},
        apparent_volume = 2.5
    }
}
