RECIPE {
    type = "recipe",
    name = "seaweed-crop-mk01",
    energy_required = 1,
    enabled = false,
    ingredients = {
        {type = "item", name = "stone-brick",        amount = 30},
        {type = "item", name = "limestone",          amount = 25},
        {type = "item", name = "pipe",               amount = 15},
        {type = "item", name = "electronic-circuit", amount = 10},
        {type = "item", name = "steam-engine",       amount = 3},
        {type = "item", name = "tin-plate",          amount = 50},
    },
    results = {
        {type = "item", name = "seaweed-crop-mk01", amount = 1}
    }
}:add_unlock("seaweed-mk01")

RECIPE {
    type = "recipe",
    name = "seaweed-crop-mk02",
    energy_required = 0.5,
    enabled = false,
    ingredients = {
        {type = "item", name = "duralumin",         amount = 35},
        {type = "item", name = "engine-unit",       amount = 5},
        {type = "item", name = "seaweed-crop-mk01", amount = 1},
        {type = "item", name = "niobium-pipe",      amount = 20},
        {type = "item", name = "advanced-circuit",  amount = 20},
        {type = "item", name = "steel-plate",       amount = 40},
    },
    results = {
        {type = "item", name = "seaweed-crop-mk02", amount = 1}
    }
}:add_unlock("botany-mk02"):add_ingredient {type = "item", name = "small-parts-02", amount = 30}

RECIPE {
    type = "recipe",
    name = "seaweed-crop-mk03",
    energy_required = 0.5,
    enabled = false,
    ingredients = {
        {type = "item", name = "ticocr-alloy",         amount = 35},
        {type = "item", name = "seaweed-crop-mk02",    amount = 1},
        {type = "item", name = "neuromorphic-chip",    amount = 20},
        {type = "item", name = "processing-unit",      amount = 30},
        {type = "item", name = "stainless-steel",      amount = 50},
        {type = "item", name = "electric-engine-unit", amount = 10},
    },
    results = {
        {type = "item", name = "seaweed-crop-mk03", amount = 1}
    }
}:add_unlock("botany-mk03"):add_ingredient {type = "item", name = "small-parts-03", amount = 50}

RECIPE {
    type = "recipe",
    name = "seaweed-crop-mk04",
    energy_required = 0.5,
    enabled = false,
    ingredients = {
        {type = "item", name = "metallic-glass",        amount = 30},
        {type = "item", name = "seaweed-crop-mk03",     amount = 1},
        {type = "item", name = "low-density-structure", amount = 20},
        {type = "item", name = "control-unit",          amount = 10},
        {type = "item", name = "nenbit-matrix",         amount = 50},
    },
    results = {
        {type = "item", name = "seaweed-crop-mk04", amount = 1}
    }
}:add_unlock("botany-mk04")

local FULL_CRAFTING_SPEED = 1 -- crafting speed when full of mk01 modules

for i = 1, 4 do
    local name = "seaweed-crop-mk0" .. i
    local icon = "__pyalienlifegraphics__/graphics/icons/seaweed-crop-mk0" .. i .. ".png"
    local icon_size = 64
    local MODULE_SLOTS = 10 * i

    ITEM {
        type = "item",
        name = name,
        icon = icon,
        icon_size = icon_size,
        flags = {},
        subgroup = "py-alienlife-farm-buildings-mk0" .. i,
        order = "e",
        place_result = name,
        stack_size = 10
    }

    ENTITY {
        type = "assembling-machine",
        name = name,
        icon = icon,
        icon_size = icon_size,
        flags = {"placeable-neutral", "player-creation"},
        minable = {mining_time = 0.5, result = name},
        fast_replaceable_group = "seaweed-crop",
        max_health = 200 * i,
        corpse = "medium-remnants",
        dying_explosion = "big-explosion",
        collision_box = {{-6.2, -6.2}, {6.2, 6.2}},
        selection_box = {{-6.5, -6.5}, {6.5, 6.5}},
        forced_symmetry = "diagonal-pos",
        module_slots = MODULE_SLOTS,
        allowed_effects = {"speed", "productivity", "consumption", "pollution", "quality"},
        crafting_categories = {"seaweed"},
        crafting_speed = py.farm_speed(MODULE_SLOTS, FULL_CRAFTING_SPEED),
        energy_source = {
            type = "electric",
            usage_priority = "secondary-input",
            emissions_per_minute = {
                pollution = (i == 1) and py.farm_speed(MODULE_SLOTS, FULL_CRAFTING_SPEED) or py.farm_speed_derived(MODULE_SLOTS, "seaweed-crop-mk01"),
            },
        },
        energy_usage = (450 * i) .. "kW",
        graphics_set = {
            animation = {
                layers = {
                    {
                        filename = "__pyalienlifegraphics2__/graphics/entity/seaweed-crop/base.png",
                        width = 416,
                        height = 50,
                        line_length = 4,
                        frame_count = 100,
                        animation_speed = 0.4,
                        shift = util.by_pixel(0, 183)
                    },
                    {
                        filename = "__pyalienlifegraphics2__/graphics/entity/seaweed-crop/base-mask.png",
                        width = 416,
                        height = 50,
                        line_length = 4,
                        frame_count = 100,
                        animation_speed = 0.4,
                        shift = util.by_pixel(0, 183),
                        tint = py.tints[i]
                    },
                    {
                        filename = "__pyalienlifegraphics2__/graphics/entity/seaweed-crop/a1.png",
                        width = 64,
                        height = 384,
                        line_length = 25,
                        frame_count = 100,
                        animation_speed = 0.4,
                        shift = util.by_pixel(-176, -34)
                    },
                    {
                        filename = "__pyalienlifegraphics2__/graphics/entity/seaweed-crop/a1-mask.png",
                        width = 64,
                        height = 384,
                        line_length = 25,
                        frame_count = 100,
                        animation_speed = 0.4,
                        shift = util.by_pixel(-176, -34),
                        tint = py.tints[i]
                    },
                    {
                        filename = "__pyalienlifegraphics2__/graphics/entity/seaweed-crop/a2.png",
                        width = 64,
                        height = 384,
                        line_length = 25,
                        frame_count = 100,
                        animation_speed = 0.4,
                        shift = util.by_pixel(-112, -34)
                    },
                    {
                        filename = "__pyalienlifegraphics2__/graphics/entity/seaweed-crop/a2-mask.png",
                        width = 64,
                        height = 384,
                        line_length = 25,
                        frame_count = 100,
                        animation_speed = 0.4,
                        shift = util.by_pixel(-112, -34),
                        tint = py.tints[i]
                    },
                    {
                        filename = "__pyalienlifegraphics2__/graphics/entity/seaweed-crop/a3.png",
                        width = 64,
                        height = 384,
                        line_length = 25,
                        frame_count = 100,
                        animation_speed = 0.4,
                        shift = util.by_pixel(-48, -34)
                    },
                    {
                        filename = "__pyalienlifegraphics2__/graphics/entity/seaweed-crop/a3-mask.png",
                        width = 64,
                        height = 384,
                        line_length = 25,
                        frame_count = 100,
                        animation_speed = 0.4,
                        shift = util.by_pixel(-48, -34),
                        tint = py.tints[i]
                    },
                    {
                        filename = "__pyalienlifegraphics2__/graphics/entity/seaweed-crop/a4.png",
                        width = 64,
                        height = 384,
                        line_length = 25,
                        frame_count = 100,
                        animation_speed = 0.4,
                        shift = util.by_pixel(16, -34)
                    },
                    {
                        filename = "__pyalienlifegraphics2__/graphics/entity/seaweed-crop/a4-mask.png",
                        width = 64,
                        height = 384,
                        line_length = 25,
                        frame_count = 100,
                        animation_speed = 0.4,
                        shift = util.by_pixel(16, -34),
                        tint = py.tints[i]
                    },
                    {
                        filename = "__pyalienlifegraphics2__/graphics/entity/seaweed-crop/a5.png",
                        width = 64,
                        height = 384,
                        line_length = 25,
                        frame_count = 100,
                        animation_speed = 0.4,
                        shift = util.by_pixel(80, -34)
                    },
                    {
                        filename = "__pyalienlifegraphics2__/graphics/entity/seaweed-crop/a5-mask.png",
                        width = 64,
                        height = 384,
                        line_length = 25,
                        frame_count = 100,
                        animation_speed = 0.4,
                        shift = util.by_pixel(80, -34),
                        tint = py.tints[i]
                    },
                    {
                        filename = "__pyalienlifegraphics2__/graphics/entity/seaweed-crop/a6.png",
                        width = 64,
                        height = 384,
                        line_length = 25,
                        frame_count = 100,
                        animation_speed = 0.4,
                        shift = util.by_pixel(144, -34)
                    },
                    {
                        filename = "__pyalienlifegraphics2__/graphics/entity/seaweed-crop/a6-mask.png",
                        width = 64,
                        height = 384,
                        line_length = 25,
                        frame_count = 100,
                        animation_speed = 0.4,
                        shift = util.by_pixel(144, -34),
                        tint = py.tints[i]
                    },
                    {
                        filename = "__pyalienlifegraphics2__/graphics/entity/seaweed-crop/a7.png",
                        width = 32,
                        height = 384,
                        line_length = 25,
                        frame_count = 100,
                        animation_speed = 0.4,
                        shift = util.by_pixel(192, -34)
                    },
                    {
                        filename = "__pyalienlifegraphics2__/graphics/entity/seaweed-crop/a7-mask.png",
                        width = 32,
                        height = 384,
                        line_length = 25,
                        frame_count = 100,
                        animation_speed = 0.4,
                        shift = util.by_pixel(192, -34),
                        tint = py.tints[i]
                    },
                }
            },
        },
        fluid_boxes_off_when_no_fluid_recipe = true,
        fluid_boxes = {
            --1
            {
                production_type = "input",
                pipe_picture = py.sexy_pipe_pictures(),
                pipe_picture_frozen = py.sexy_pipe_pictures_frozen(),
                pipe_covers = pipecoverspictures(),
                secondary_draw_orders = {north = -1, east = -1, west = -1},
                volume = 1000,
                pipe_connections = {{flow_direction = "input", position = {4.0, -6.0}, direction = defines.direction.north}}
            },
            {
                production_type = "input",
                pipe_picture = py.sexy_pipe_pictures(),
                pipe_picture_frozen = py.sexy_pipe_pictures_frozen(),
                pipe_covers = pipecoverspictures(),
                secondary_draw_orders = {north = -1, east = -1, west = -1},
                volume = 1000,
                pipe_connections = {{flow_direction = "input", position = {2.0, -6.0}, direction = defines.direction.north}}
            },
            {
                production_type = "input",
                pipe_picture = py.sexy_pipe_pictures(),
                pipe_picture_frozen = py.sexy_pipe_pictures_frozen(),
                pipe_covers = pipecoverspictures(),
                secondary_draw_orders = {north = -1, east = -1, west = -1},
                volume = 1000,
                pipe_connections = {{flow_direction = "input", position = {-2.0, -6.0}, direction = defines.direction.north}}
            },
            {
                production_type = "input",
                pipe_picture = py.sexy_pipe_pictures(),
                pipe_picture_frozen = py.sexy_pipe_pictures_frozen(),
                pipe_covers = pipecoverspictures(),
                secondary_draw_orders = {north = -1, east = -1, west = -1},
                volume = 1000,
                pipe_connections = {{flow_direction = "input", position = {-4.0, -6.0}, direction = defines.direction.north}}
            },
            {
                production_type = "output",
                pipe_picture = py.sexy_pipe_pictures(),
                pipe_picture_frozen = py.sexy_pipe_pictures_frozen(),
                pipe_covers = pipecoverspictures(),
                secondary_draw_orders = {north = -1, east = -1, west = -1},
                volume = 100,
                pipe_connections = {{flow_direction = "output", position = {2.0, 6.0}, direction = defines.direction.south}}
            },
            {
                production_type = "output",
                pipe_picture = py.sexy_pipe_pictures(),
                pipe_picture_frozen = py.sexy_pipe_pictures_frozen(),
                pipe_covers = pipecoverspictures(),
                secondary_draw_orders = {north = -1, east = -1, west = -1},
                volume = 100,
                pipe_connections = {{flow_direction = "output", position = {-2.0, 6.0}, direction = defines.direction.south}}
            },
        },
        impact_category = "metal-large",
        working_sound = {
            sound = {filename = "__pyalienlifegraphics__/sounds/seaweed-crop.ogg", volume = 1.5, audible_distance_modifier = 0.6,},
            idle_sound = {filename = "__pyalienlifegraphics__/sounds/seaweed-crop.ogg", volume = 0.3, audible_distance_modifier = 0.6,},
        }
    }
end
