	RECIPE {
        type = "recipe",
        name = 'Caravan-outpost',
        enabled = true,
        ingredients = 
			{
			{'iron-plate', 5}
			},
        results = {
            {'Caravan-outpost', 1}
        }
    }

    ITEM {
        type = "item",
        name = 'Caravan-outpost',
        icon = "__pyalienlife__/graphics/icons/outpost.png",
        icon_size = 64,
        flags = {},
        subgroup = "py-containers-warehouse",
        order = a,
        place_result = 'Caravan-outpost',
        stack_size = 15
    }

	ENTITY {
        type = "container",
        name = 'Caravan-outpost',
        icon = "__pyalienlife__/graphics/entity/Caravan-outpost/Caravan-outpost.png",
        icon_size = 64,
        flags = {"placeable-neutral", "placeable-player", "player-creation"},
        minable = {mining_time = 2, result = 'Caravan-outpost'},
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
        collision_box = {{-2.7, -2.7}, {2.7, 2.7}},
        selection_box = {{-3.0, -3.0}, {3.0, 3.0}},
        drawing_box = {{-3.0, -3.0}, {3.0, 3.0}},
        --fast_replaceable_group = "warehouse",
        inventory_size = 800,
        scale_info_icons = true,
        picture = {
            filename = "__pyalienlife__/graphics/entity/Caravan-outpost/Caravan-outpost.png",
            priority = "high",
            width = 193,
            height = 192,
            shift = {0, 0},
            hr_version = {
                filename = "__pyalienlife__/graphics/entity/Caravan-outpost/hr-Caravan-outpost.png",
                priority = "extra-high",
                width = 386,
                height = 383,
                shift = {0, 0},
                scale = 0.5
            }
        },
    }
