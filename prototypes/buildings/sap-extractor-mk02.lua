RECIPE {
    type = "recipe",
    name = "sap-extractor-mk02",
    energy_required = 0.5,
    enabled = false,
    ingredients = {
        {"sap-extractor-mk01", 1},
        {"treated-wood", 100},
        {"duralumin", 2},
        {"fast-inserter", 2},
        {"advanced-circuit", 15},
        {"steel-plate", 40},
    },
    results = {
        {"sap-extractor-mk02", 1}
    }
}:add_unlock("botany-mk02"):add_ingredient({type = "item", name = "small-parts-02", amount = 15})

ITEM {
    type = "item",
    name = "sap-extractor-mk02",
    icon = "__pyalienlife__/graphics/icons/sap-extractor-mk02.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-alienlife-buildings-mk02",
    order = "e",
    place_result = "sap-extractor-mk02",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "sap-extractor-mk02",
    icon = "__pyalienlife__/graphics/icons/sap-extractor-mk02.png",
	icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "sap-extractor-mk02"},
    fast_replaceable_group = "sap-extractor",
    max_health = 100,
    corpse = "medium-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-2.4, -2.4}, {2.4, 2.4}},
    selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
    draw_entity_info_icon_background = false,
    match_animation_speed_to_activity = false,
    fixed_recipe = "sap-01",
    module_specification = {
        module_slots = 2
    },
    allowed_effects = {"consumption", "speed"},
    crafting_categories = {"sap"},
    crafting_speed = 2,
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = -15,
    },
    energy_usage = "350kW",
    ingredient_count = 10,
    animation = {
        layers = {
            {
                filename = "__pyalienlife__/graphics/entity/sap-extractor/i.png",
                width = 160,
                height = 178,
                line_length = 10,
                frame_count = 100,
                animation_speed = 0.3,
                shift = util.by_pixel(0, -10)
            },
            {
                filename = "__pyalienlife__/graphics/entity/sap-extractor/i-mask.png",
                width = 160,
                height = 178,
                line_length = 10,
                frame_count = 100,
                animation_speed = 0.3,
                shift = util.by_pixel(0, -10),
                tint = {r = 1.0, g = 0.0, b = 0.0, a = 1.0}
            },
            {
                filename = "__pyalienlife__/graphics/entity/sap-extractor/shadow.png",
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

    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pyalienlife__/sounds/sap-extractor.ogg", volume = 0.6},
        idle_sound = {filename = "__pyalienlife__/sounds/sap-extractor.ogg", volume = 0.4},
        apparent_volume = 2.5
    }
}
