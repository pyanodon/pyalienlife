RECIPE {
    type = "recipe",
    name = "generator-1",
    energy_required = 0.5,
    enabled = false,
    ingredients = {
        {type = "item", name = "steel-plate", amount = 15},
        {type = "item", name = "pipe", amount = 10},
        {type = "item", name = "auog", amount = 1},
        {type = "item", name = "iron-plate", amount = 50},
        {type = "item", name = "aluminium-plate", amount = 50},
        {type = "item", name = "lead-plate", amount = 30},
        {type = "item", name = "iron-stick", amount = 30},
        {type = "item", name = "iron-gear-wheel", amount = 40}
    },
    results = {
        {type = "item", name = "generator-1", amount = 1}
    }
}:add_unlock("domestication")

ITEM {
    type = "item",
    name = "generator-1",
    icon = "__pyalienlifegraphics__/graphics/icons/generator-1.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-alienlife-buildings-others",
    order = "a",
    place_result = "generator-1",
    stack_size = 10
}

ENTITY {
    type = "burner-generator",
    name = "generator-1",
    icon = "__pyalienlifegraphics__/graphics/icons/generator-1.png",
    icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "generator-1"},
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
			fuel_categories = {"auog"},
			effectivity = 2,
            fuel_inventory_size = 1,
            burnt_inventory_size = 1,
			emissions_per_minute = {
			    pollution = 0
			},
		},
	effectivity = 1,
	max_power_output = "22MW",
    animation = {
            layers = {
                {
                    filename = "__pyalienlifegraphics__/graphics/entity/generator-1/a1.png",
                    width = 32,
                    height = 288,
                    line_length = 64,
                    frame_count = 250,
                    animation_speed = 0.4,
                    shift = util.by_pixel(-96, -32)
                },
                {
                    filename = "__pyalienlifegraphics__/graphics/entity/generator-1/a2.png",
                    width = 32,
                    height = 288,
                    line_length = 64,
                    frame_count = 250,
                    animation_speed = 0.4,
                    shift = util.by_pixel(-64, -32)
                },
                {
                    filename = "__pyalienlifegraphics__/graphics/entity/generator-1/a3.png",
                    width = 32,
                    height = 288,
                    line_length = 64,
                    frame_count = 250,
                    animation_speed = 0.4,
                    shift = util.by_pixel(-32, -32)
                },
                {
                    filename = "__pyalienlifegraphics__/graphics/entity/generator-1/a4.png",
                    width = 32,
                    height = 288,
                    line_length = 64,
                    frame_count = 250,
                    animation_speed = 0.4,
                    shift = util.by_pixel(-0, -32)
                },
                {
                    filename = "__pyalienlifegraphics__/graphics/entity/generator-1/a5.png",
                    width = 32,
                    height = 288,
                    line_length = 64,
                    frame_count = 250,
                    animation_speed = 0.4,
                    shift = util.by_pixel(32, -32)
                },
                {
                    filename = "__pyalienlifegraphics__/graphics/entity/generator-1/a6.png",
                    width = 32,
                    height = 288,
                    line_length = 64,
                    frame_count = 250,
                    animation_speed = 0.4,
                    shift = util.by_pixel(64, -32)
                },
                {
                    filename = "__pyalienlifegraphics__/graphics/entity/generator-1/a7.png",
                    width = 32,
                    height = 288,
                    line_length = 64,
                    frame_count = 250,
                    animation_speed = 0.4,
                    shift = util.by_pixel(96, -32)
                },
                {
                    filename = "__pyalienlifegraphics__/graphics/entity/generator-1/a8.png",
                    width = 32,
                    height = 288,
                    line_length = 64,
                    frame_count = 250,
                    animation_speed = 0.4,
                    shift = util.by_pixel(128, -32)
                },
        },
    },

    min_perceived_performance = 0.1,
    performance_to_sound_speedup = 0.0,
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact-1.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pyalienlifegraphics__/sounds/generator-1.ogg", volume = 0.80},
        idle_sound = {filename = "__pyalienlifegraphics__/sounds/generator-1.ogg", volume = 0.3},
        apparent_volume = 2.5
    }
}
