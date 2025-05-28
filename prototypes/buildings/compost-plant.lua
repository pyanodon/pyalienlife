RECIPE {
    type = "recipe",
    name = "compost-plant-mk01",
    energy_required = 0.5,
    enabled = false,
    ingredients = {
        {type = "item", name = "titanium-plate",     amount = 80},
        {type = "item", name = "steam-engine",       amount = 10},
        {type = "item", name = "steel-plate",        amount = 100},
        {type = "item", name = "duralumin",          amount = 30},
        {type = "item", name = "electronic-circuit", amount = 40},
        {type = "item", name = "iron-gear-wheel",    amount = 50},
    },
    results = {
        {type = "item", name = "compost-plant-mk01", amount = 1}
    }
}:add_unlock("compost")

RECIPE {
    type = "recipe",
    name = "compost-plant-mk02",
    energy_required = 0.5,
    enabled = false,
    ingredients = {
        {type = "item", name = "compost-plant-mk01", amount = 1},
        {type = "item", name = "stainless-steel",    amount = 60},
        {type = "item", name = "advanced-circuit",   amount = 30},
        {type = "item", name = "titanium-plate",     amount = 20},
        {type = "item", name = "latex",              amount = 30},
        {type = "item", name = "engine-unit",        amount = 30},
        {type = "item", name = "neuroprocessor",     amount = 20},
    },
    results = {
        {type = "item", name = "compost-plant-mk02", amount = 1}
    }
}:add_unlock("biotech-machines-mk02"):add_ingredient {type = "item", name = "small-parts-02", amount = 30}

RECIPE {
    type = "recipe",
    name = "compost-plant-mk03",
    energy_required = 0.5,
    enabled = false,
    ingredients = {
        {type = "item", name = "compost-plant-mk02",   amount = 1},
        {type = "item", name = "super-alloy",          amount = 40},
        {type = "item", name = "py-heat-exchanger",    amount = 1},
        {type = "item", name = "stainless-steel",      amount = 30},
        {type = "item", name = "processing-unit",      amount = 30},
        {type = "item", name = "electric-engine-unit", amount = 20},
        {type = "item", name = "ticocr-alloy",         amount = 20},
    },
    results = {
        {type = "item", name = "compost-plant-mk03", amount = 1}
    }
}:add_unlock("biotech-machines-mk03"):add_ingredient {type = "item", name = "small-parts-03", amount = 30}

RECIPE {
    type = "recipe",
    name = "compost-plant-mk04",
    energy_required = 0.5,
    enabled = false,
    ingredients = {
        {type = "item", name = "compost-plant-mk03", amount = 1},
        {type = "item", name = "super-steel",        amount = 100},
        {type = "item", name = "boron-carbide",      amount = 50},
        {type = "item", name = "control-unit",       amount = 10},
        {type = "item", name = "metallic-glass",     amount = 20},
        {type = "item", name = "nenbit-matrix",      amount = 40},
        {type = "item", name = "science-coating",    amount = 30},
    },
    results = {
        {type = "item", name = "compost-plant-mk04", amount = 1}
    }
}:add_unlock("biotech-machines-mk04")

for i = 1, 4 do
    local name = "compost-plant-mk0" .. i
    local icon = "__pyalienlifegraphics__/graphics/icons/" .. name .. ".png"
    local icon_size = 64

    ITEM {
        type = "item",
        name = name,
        icon = icon,
        icon_size = icon_size,
        flags = {},
        subgroup = "py-alienlife-buildings-mk0" .. i,
        order = "d",
        place_result = "compost-plant-mk0" .. i,
        stack_size = 10
    }

    ENTITY {
        type = "furnace",
        name = name,
        icon = icon,
        icon_size = icon_size,
        flags = {"placeable-neutral", "player-creation"},
        minable = {mining_time = 0.5, result = name},
        fast_replaceable_group = "compost-plant",
        max_health = 300 * i,
        corpse = "big-remnants",
        dying_explosion = "big-explosion",
        collision_box = {{-5.2, -5.2}, {5.2, 5.2}},
        selection_box = {{-5.5, -5.5}, {5.5, 5.5}},
        forced_symmetry = "diagonal-pos",
        module_slots = i,
        allowed_effects = {"speed", "consumption"},
        allowed_module_categories = {"speed", "efficiency", "compost-plant"},
        crafting_categories = {"compost"},
        crafting_speed = i,
        source_inventory_size = 1,
        result_inventory_size = 1,
        energy_source = {
            type = "electric",
            usage_priority = "secondary-input",
            emissions_per_minute = {
                pollution = -i
            },
        },
        energy_usage = (500 * i) .. "kW",
        graphics_set = {
            animation = {
                layers = {
                    {
                        filename = "__pyalienlifegraphics2__/graphics/entity/compost-plant/bottom.png",
                        width = 384,
                        height = 32,
                        frame_count = 1,
                        line_length = 1,
                        shift = util.by_pixel(16, 160)
                    },
                    {
                        filename = "__pyalienlifegraphics2__/graphics/entity/compost-plant/off.png",
                        width = 384,
                        height = 512,
                        frame_count = 1,
                        line_length = 1,
                        shift = util.by_pixel(16, -112)
                    },
                    {
                        filename = "__pyalienlifegraphics2__/graphics/entity/compost-plant/off-mask.png",
                        width = 384,
                        height = 512,
                        frame_count = 1,
                        line_length = 1,
                        shift = util.by_pixel(16, -112),
                        tint = py.tints[i]
                    },
                },
            },
        },
        working_visualisations = {
            {
                north_position = util.by_pixel(-144, -112),
                west_position = util.by_pixel(-144, -112),
                south_position = util.by_pixel(-144, -112),
                east_position = util.by_pixel(-144, -112),
                animation = {
                    filename = "__pyalienlifegraphics2__/graphics/entity/compost-plant/a1.png",
                    frame_count = 100,
                    line_length = 32,
                    width = 64,
                    height = 512,
                    animation_speed = 0.4
                }
            },
            {
                north_position = util.by_pixel(-144, -112),
                west_position = util.by_pixel(-144, -112),
                south_position = util.by_pixel(-144, -112),
                east_position = util.by_pixel(-144, -112),
                animation = {
                    filename = "__pyalienlifegraphics2__/graphics/entity/compost-plant/a1-mask.png",
                    frame_count = 100,
                    line_length = 32,
                    width = 64,
                    height = 512,
                    animation_speed = 0.4,
                    tint = py.tints[i]
                }
            },
            {
                north_position = util.by_pixel(-80, -112),
                west_position = util.by_pixel(-80, -112),
                south_position = util.by_pixel(-80, -112),
                east_position = util.by_pixel(-80, -112),
                animation = {
                    filename = "__pyalienlifegraphics2__/graphics/entity/compost-plant/a2.png",
                    frame_count = 100,
                    line_length = 32,
                    width = 64,
                    height = 512,
                    animation_speed = 0.4
                }
            },
            {
                north_position = util.by_pixel(-80, -112),
                west_position = util.by_pixel(-80, -112),
                south_position = util.by_pixel(-80, -112),
                east_position = util.by_pixel(-80, -112),
                animation = {
                    filename = "__pyalienlifegraphics2__/graphics/entity/compost-plant/a2-mask.png",
                    frame_count = 100,
                    line_length = 32,
                    width = 64,
                    height = 512,
                    animation_speed = 0.4,
                    tint = py.tints[i]
                }
            },
            {
                north_position = util.by_pixel(-16, -112),
                west_position = util.by_pixel(-16, -112),
                south_position = util.by_pixel(-16, -112),
                east_position = util.by_pixel(-16, -112),
                animation = {
                    filename = "__pyalienlifegraphics2__/graphics/entity/compost-plant/a3.png",
                    frame_count = 100,
                    line_length = 32,
                    width = 64,
                    height = 512,
                    animation_speed = 0.4
                }
            },
            {
                north_position = util.by_pixel(-16, -112),
                west_position = util.by_pixel(-16, -112),
                south_position = util.by_pixel(-16, -112),
                east_position = util.by_pixel(-16, -112),
                animation = {
                    filename = "__pyalienlifegraphics2__/graphics/entity/compost-plant/a3-mask.png",
                    frame_count = 100,
                    line_length = 32,
                    width = 64,
                    height = 512,
                    animation_speed = 0.4,
                    tint = py.tints[i]
                }
            },
            {
                north_position = util.by_pixel(48, -112),
                west_position = util.by_pixel(48, -112),
                south_position = util.by_pixel(48, -112),
                east_position = util.by_pixel(48, -112),
                animation = {
                    filename = "__pyalienlifegraphics2__/graphics/entity/compost-plant/a4.png",
                    frame_count = 100,
                    line_length = 32,
                    width = 64,
                    height = 512,
                    animation_speed = 0.4
                }
            },
            {
                north_position = util.by_pixel(48, -112),
                west_position = util.by_pixel(48, -112),
                south_position = util.by_pixel(48, -112),
                east_position = util.by_pixel(48, -112),
                animation = {
                    filename = "__pyalienlifegraphics2__/graphics/entity/compost-plant/a4-mask.png",
                    frame_count = 100,
                    line_length = 32,
                    width = 64,
                    height = 512,
                    animation_speed = 0.4,
                    tint = py.tints[i]
                }
            },
            {
                north_position = util.by_pixel(112, -112),
                west_position = util.by_pixel(112, -112),
                south_position = util.by_pixel(112, -112),
                east_position = util.by_pixel(112, -112),
                animation = {
                    filename = "__pyalienlifegraphics2__/graphics/entity/compost-plant/a5.png",
                    frame_count = 100,
                    line_length = 32,
                    width = 64,
                    height = 512,
                    animation_speed = 0.4
                }
            },
            {
                north_position = util.by_pixel(112, -112),
                west_position = util.by_pixel(112, -112),
                south_position = util.by_pixel(112, -112),
                east_position = util.by_pixel(112, -112),
                animation = {
                    filename = "__pyalienlifegraphics2__/graphics/entity/compost-plant/a5-mask.png",
                    frame_count = 100,
                    line_length = 32,
                    width = 64,
                    height = 512,
                    animation_speed = 0.4,
                    tint = py.tints[i]
                }
            },
        },
        fluid_boxes = {
            --1
            {
                production_type = "input",
                pipe_covers = py.pipe_covers(false, true, true, true),
                pipe_picture = py.pipe_pictures("assembling-machine-3", nil, {0.0, -0.88}, nil, nil),
                volume = 1000,
                pipe_connections = {{flow_direction = "input", position = {0.0, -5.0}, direction = defines.direction.north}},
                secondary_draw_orders = {north = -1}
            },
            --[[
        {
            production_type = "input",
            pipe_covers = py.pipe_covers(false, true, true, true),
            pipe_picture = py.pipe_pictures("assembling-machine-3", nil, {0.0, -0.88}, nil, nil),
            volume = 1000,
            pipe_connections = {{flow_direction = "input", position = {-2.0, -5.0}, direction = defines.direction.north}},
            secondary_draw_orders = { north = -1 }
        },
        ]]
            --off_when_no_fluid_recipe = true
        },
        impact_category = "metal",
        working_sound = {
            sound = {filename = "__pyalienlifegraphics3__/sounds/compost-plant.ogg", volume = 1.2},
            idle_sound = {filename = "__pyalienlifegraphics3__/sounds/compost-plant.ogg", volume = 0.3},
            apparent_volume = 0.45
        }
    }
end
