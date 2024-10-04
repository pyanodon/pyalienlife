local MODULE_SLOTS = 6

RECIPE {
    type = "recipe",
    name = "sap-extractor-mk03",
    energy_required = 0.5,
    enabled = false,
    ingredients = {
        {type = "item", name = "sap-extractor-mk02", amount = 1},
        {type = "item", name = "nexelit-plate", amount = 100},
        {type = "item", name = "molybdenum-plate", amount = 20},
        {type = "item", name = "stainless-steel", amount = 50},
        {type = "item", name = "electric-engine-unit", amount = 3},
        {type = "item", name = "processing-unit", amount = 30},
        {type = "item", name = "nichrome", amount = 40},
    },
    results = {
        {type = "item", name = "sap-extractor-mk03", amount = 1}
    }
}:add_unlock("botany-mk03"):add_ingredient({type = "item", name = "small-parts-03", amount = 50})

ITEM {
    type = "item",
    name = "sap-extractor-mk03",
    icon = "__pyalienlifegraphics__/graphics/icons/sap-extractor-mk03.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-alienlife-farm-buildings-mk03",
    order = "e",
    place_result = "sap-extractor-mk03",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "sap-extractor-mk03",
    icon = "__pyalienlifegraphics__/graphics/icons/sap-extractor-mk03.png",
	icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "sap-extractor-mk03"},
    fast_replaceable_group = "sap-extractor",
    max_health = 100,
    corpse = "medium-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-2.4, -2.4}, {2.4, 2.4}},
    selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
    match_animation_speed_to_activity = false,
    
    module_slots = MODULE_SLOTS,
    allowed_effects = {"consumption", "speed", 'pollution', 'productivity'},
    crafting_categories = {"sap"},
    crafting_speed = py.farm_speed_derived(MODULE_SLOTS, "sap-extractor-mk01"),
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = {
            pollution = -15
        },
    },
    energy_usage = "550kW",
    graphics_set = {
        animation = {
            layers = {
                {
                    filename = "__pyalienlifegraphics2__/graphics/entity/sap-extractor/i.png",
                    width = 160,
                    height = 178,
                    line_length = 10,
                    frame_count = 100,
                    animation_speed = 0.3,
                    shift = util.by_pixel(0, -10)
                },
                {
                    filename = "__pyalienlifegraphics2__/graphics/entity/sap-extractor/i-mask.png",
                    width = 160,
                    height = 178,
                    line_length = 10,
                    frame_count = 100,
                    animation_speed = 0.3,
                    shift = util.by_pixel(0, -10),
                    tint = {r = 0.223, g = 0.490, b = 0.858, a = 1.0}
                },
                {
                    filename = "__pyalienlifegraphics2__/graphics/entity/sap-extractor/shadow.png",
                    width = 160,
                    height = 160,
                    line_length = 10,
                    frame_count = 100,
                    animation_speed = 0.3,
                    shift = util.by_pixel(5, -5),
                    draw_as_shadow = true,
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
            base_level = -1,
            pipe_connections = {{flow_direction = "input", position = {0.0, -2.0}, direction = defines.direction.north}},
            secondary_draw_orders = { north = -1 }
        },
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact-1.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pyalienlifegraphics__/sounds/sap-extractor.ogg", volume = 0.6},
        idle_sound = {filename = "__pyalienlifegraphics__/sounds/sap-extractor.ogg", volume = 0.3},
        apparent_volume = 2.5
    }
}
