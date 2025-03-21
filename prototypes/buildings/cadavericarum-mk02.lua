local MODULE_SLOTS = 8

local pipe = {
    south = {
        filename = "__pyhightechgraphics__/graphics/entity/cadaveric-arum/bottom.png",
        priority = "extra-high",
        width = 288,
        height = 295
    }
}

RECIPE {
    type = "recipe",
    name = "cadaveric-arum-mk02",
    energy_required = 0.5,
    enabled = false,
    ingredients = {
        {type = "item", name = "plastic-bar",         amount = 100},
        {type = "item", name = "advanced-circuit",    amount = 20},
        {type = "item", name = "duralumin",           amount = 60},
        {type = "item", name = "cadaveric-arum-mk01", amount = 1},
        {type = "item", name = "latex",               amount = 10},
        {type = "item", name = "neuroprocessor",      amount = 10},
        {type = "item", name = "titanium-plate",      amount = 50},
    },
    results = {
        {type = "item", name = "cadaveric-arum-mk02", amount = 1}
    }
}:add_unlock("botany-mk02")

ITEM {
    type = "item",
    name = "cadaveric-arum-mk02",
    icon = "__pyhightechgraphics__/graphics/icons/cadaveric-arum-mk02.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-alienlife-farm-buildings-mk02",
    order = "b",
    place_result = "cadaveric-arum-mk02",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "cadaveric-arum-mk02",
    icon = "__pyhightechgraphics__/graphics/icons/cadaveric-arum-mk02.png",
    icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "cadaveric-arum-mk02"},
    fast_replaceable_group = "cadaveric-arum",
    max_health = 100,
    corpse = "big-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-4.2, -4.2}, {4.2, 4.2}},
    selection_box = {{-4.5, -4.5}, {4.5, 4.5}},
    forced_symmetry = "diagonal-pos",
    module_slots = MODULE_SLOTS,
    allowed_effects = {"speed", "productivity", "consumption", "pollution", "quality"},
    crafting_categories = {"arum"},
    crafting_speed = py.farm_speed_derived(MODULE_SLOTS, "cadaveric-arum-mk01"),
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = {
            pollution = -3
        },
    },
    energy_usage = "2600kW",
    graphics_set = {
        animation = {
            layers = {
                {
                    filename = "__pyhightechgraphics__/graphics/entity/cadaveric-arum/cadaveric-arum.png",
                    priority = "extra-high",
                    width = 288,
                    height = 295,
                    line_length = 5,
                    frame_count = 20,
                    animation_speed = 0.3,
                    shift = util.by_pixel(0, -4),
                },
                {
                    filename = "__pyhightechgraphics__/graphics/entity/cadaveric-arum/cadaveric-arum-mask.png",
                    priority = "extra-high",
                    width = 288,
                    height = 295,
                    line_length = 5,
                    frame_count = 20,
                    animation_speed = 0.3,
                    shift = util.by_pixel(0, -4),
                    tint = {r = 1.0, g = 0.0, b = 0.0, a = 1.0}
                },
                {
                    filename = "__pyhightechgraphics__/graphics/entity/cadaveric-arum/shadow.png",
                    priority = "extra-high",
                    width = 298,
                    height = 295,
                    line_length = 5,
                    frame_count = 20,
                    animation_speed = 0.3,
                    shift = util.by_pixel(6, -4),
                    draw_as_shadow = true,
                }
            }
        },
    },
    fluid_boxes_off_when_no_fluid_recipe = false,
    fluid_boxes = {
        --1
        {
            production_type = "input",
            pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -5.1}, nil, nil, pipe),
            pipe_covers = py.pipe_covers(false, true, true, true),
            volume = 1000,
            pipe_connections = {{flow_direction = "input", position = {0.0, 4.0}, direction = defines.direction.south}}
        },
        {
            production_type = "input",
            pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -5.1}, nil, nil, pipe),
            pipe_covers = py.pipe_covers(false, true, true, true),
            volume = 1000,
            pipe_connections = {{flow_direction = "input", position = {4.0, 0.0}, direction = defines.direction.east}}
        },
        {
            production_type = "input",
            pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -5.1}, nil, nil, pipe),
            pipe_covers = py.pipe_covers(false, true, true, true),
            volume = 1000,
            pipe_connections = {{flow_direction = "input", position = {0.0, -4.0}, direction = defines.direction.north}}
        },
        {
            production_type = "output",
            pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -5.1}, nil, nil, pipe),
            pipe_covers = py.pipe_covers(false, true, true, true),
            volume = 100,
            pipe_connections = {{flow_direction = "output", position = {-4.0, 0.0}, direction = defines.direction.west}}
        },
    },
    impact_category = "metal-large",
    working_sound = {
        sound = {filename = "__pyhightechgraphics__/sounds/cadaveric-arum.ogg", volume = 1.5},
        idle_sound = {filename = "__pyhightechgraphics__/sounds/cadaveric-arum.ogg", volume = 0.3},
        apparent_volume = 2.5
    }
}
