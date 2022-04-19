	RECIPE {
        type = "recipe",
        name = 'outpost',
        enabled = false,
        ingredients =
			{
                {"steel-plate", 50},
                {"duralumin", 30},
                {"electronic-circuit", 10},
                {"lead-plate", 50},
                {"titanium-plate", 100},
			},
        results = {
            {'outpost', 1}
        }
    }:add_unlock("auog"):add_ingredient({type = "item", name = "small-parts-01", amount = 100})

    ITEM {
        type = "item",
        name = 'outpost',
        icon = "__pyalienlifegraphics__/graphics/icons/outpost.png",
        icon_size = 64,
        flags = {},
        subgroup = "py-alienlife-buildings-others",
        order = "a",
        place_result = 'outpost',
        stack_size = 10
    }

	ENTITY {
        type = "container",
        name = 'outpost',
        icon = "__pyalienlifegraphics__/graphics/icons/outpost.png",
        icon_size = 64,
        flags = {"placeable-neutral", "placeable-player", "player-creation"},
        minable = {mining_time = 2, result = 'outpost'},
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
        inventory_size = 800,
        scale_info_icons = true,

		picture = {
            filename = "__pyalienlifegraphics2__/graphics/entity/outpost/off.png",
            priority = "high",
            width = 224,
            height = 224,
            shift = util.by_pixel(16, -16),
        },
    }
