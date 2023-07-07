RECIPE {
    type = "recipe",
    name = "generator-2",
    energy_required = 0.5,
    enabled = false,
    ingredients = {
        {"stainless-steel", 15},
        {"niobium-pipe", 10},
        {"nexelit-plate", 25},
        {"advanced-circuit", 10},
        {"dingrits", 1},
        {"engine-unit", 5},
        {"nbfe-alloy", 20},
        {"iron-gear-wheel", 40}
    },
    results = {
        {"generator-2", 1}
    }
}:add_unlock("domestication-mk04")

ITEM {
    type = "item",
    name = "generator-2",
    icon = "__pyalienlifegraphics__/graphics/icons/generator-2.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-alienlife-buildings-others",
    order = "a",
    place_result = "generator-2",
    stack_size = 10
}

ENTITY {
    type = "burner-generator",
    name = "generator-2",
    icon = "__pyalienlifegraphics__/graphics/icons/generator-2.png",
    icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "generator-2"},
    max_health = 100,
    corpse = "big-remnants",
    resistances = {
        {
            type = "fire",
            percent = 70
        }
    },
    collision_box = {{-3.4, -3.4}, {3.4, 3.4}},
    selection_box = {{-3.5, -3.5}, {3.5, 3.5}},
    energy_source =
		{
				type = "electric",
				usage_priority = "secondary-output",
		},
	burner =
		{
			type = "burner",
			fuel_category = "dingrits",
			effectivity = 3,
            fuel_inventory_size = 1,
            burnt_inventory_size = 1,
			emissions_per_minute = 0,
		},
	effectivity = 2,
	max_power_output = "60MW",
    animation = {
        layers = {
            {
                filename = "__pyalienlifegraphics__/graphics/entity/generator-2/a1.png",
                width = 128,
                height = 256,
                line_length = 16,
                frame_count = 85,
                animation_speed = 0.4,
                shift = util.by_pixel(-48, -16)
            },
            {
                filename = "__pyalienlifegraphics__/graphics/entity/generator-2/a2.png",
                width = 128,
                height = 256,
                line_length = 16,
                frame_count = 85,
                animation_speed = 0.4,
                shift = util.by_pixel(80, -16)
            },
            {
                filename = "__pyalienlifegraphics__/graphics/entity/generator-2/a1.png",
                width = 128,
                height = 256,
                line_length = 16,
                frame_count = 85,
                animation_speed = 0.4,
                shift = util.by_pixel(-48, -16)
            },
            {
                filename = "__pyalienlifegraphics__/graphics/entity/generator-2/a2.png",
                width = 128,
                height = 256,
                line_length = 16,
                frame_count = 85,
                animation_speed = 0.4,
                shift = util.by_pixel(80, -16)
            },
    },
},

    min_perceived_performance = 0.1,
    performance_to_sound_speedup = 0.0,
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pyalienlifegraphics__/sounds/generator-2.ogg", volume = 0.9},
        idle_sound = {filename = "__pyalienlifegraphics__/sounds/generator-2.ogg", volume = 0.3},
        apparent_volume = 2.5
    }
}
