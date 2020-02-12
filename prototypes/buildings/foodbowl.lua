	RECIPE {
        type = "recipe",
        name = 'food-bowl',
        enabled = false,
        ingredients =
			{
			{'iron-plate', 5}
			},
        results = {
            {'food-bowl', 1}
        }
    }:add_unlock("domestication")

    ITEM {
        type = "item",
        name = 'food-bowl',
        icon = "__pyalienlifegraphics__/graphics/icons/food-bowl.png",
        icon_size = 64,
        flags = {},
        subgroup = "py-containers-warehouse",
        order = 'a',
        place_result = 'food-bowl',
        stack_size = 15
    }

	ENTITY {
        type = "container",
        name = 'food-bowl',
        icon = "__pyalienlifegraphics__/graphics/icons/food-bowl.png",
        icon_size = 64,
        flags = {"placeable-neutral", "placeable-player", "player-creation"},
        minable = {mining_time = 2, result = 'food-bowl'},
        max_health = 350,
        corpse = "big-remnants",
        dying_explosion = "medium-explosion",
        open_sound = {filename = "__base__/sound/machine-open.ogg", volume = 0.85},
        close_sound = {filename = "__base__/sound/machine-close.ogg", volume = 0.75},
        vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
        resistances = {
            {
                type = "fire",
                percent = 90
            }
        },
        collision_box = {{-0.7, -0.7}, {0.7, 0.7}},
        selection_box = {{-1.0, -1.0}, {1.0, 1.0}},
        drawing_box = {{-3.0, -3.0}, {3.0, 3.0}},
        inventory_size = 800,
        scale_info_icons = true,
		picture = {
            filename = "__pyalienlifegraphics__/graphics/entity/outpost/hr-food-bowl.png",
            priority = "high",
            width = 136,
            height = 128,
            scale = 0.5,
            shift = {0, 0},
        }
    }
