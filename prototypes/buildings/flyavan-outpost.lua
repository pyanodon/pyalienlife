	RECIPE {
        type = "recipe",
        name = 'flyavan-outpost',
        enabled = false,
        ingredients =
			{
                {type = 'item', name = 'advanced-circuit', amount = 20},
                {type = 'item', name = 'stainless-steel', amount = 100},
                {type = 'item', name = 'neuroprocessor', amount = 5},
                {type = 'item', name = 'small-parts-02', amount = 100},
                {type = 'item', name = 'py-steel', amount = 40},
                {type = 'item', name = 'nbti-alloy', amount = 30},
                {type = 'item', name = 'automated-factory-mk01', amount = 1},
                {type = 'item', name = 'aramid', amount = 30},
                {type = 'item', name = 'py-shed-basic', amount = 5},
			},
        results = {
            {'flyavan-outpost', 1}
        }
    }:add_unlock("domestication-mk02")

    ITEM {
        type = "item",
        name = 'flyavan-outpost',
        icon = "__pyalienlifegraphics3__/graphics/icons/flyavan-outpost.png",
        icon_size = 64,
        flags = {},
        subgroup = "py-alienlife-buildings-others",
        order = 'a',
        place_result = 'flyavan-outpost',
        stack_size = 15
    }

	ENTITY {
        type = "container",
        name = 'flyavan-outpost',
        icon = "__pyalienlifegraphics3__/graphics/icons/flyavan-outpost.png",
        icon_size = 64,
        flags = {"placeable-neutral", "placeable-player", "player-creation"},
        minable = {mining_time = 2, result = 'flyavan-outpost'},
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
        collision_box = {{-6.3, -6.3}, {6.3, 6.3}},
        selection_box = {{-6.5, -6.5}, {6.5, 6.5}},
        drawing_box = {{-6.5, -6.5}, {6.5, 6.5}},
        inventory_size = 800,
        scale_info_icons = true,
		picture = {
            filename = "__pyalienlifegraphics3__/graphics/entity/flyavan/outpost.png",
            priority = "high",
            width = 480,
            height = 512,
            shift = util.by_pixel(32, -48),
        },
        working_sound = {
            sound = {filename = "__pyalienlifegraphics3__/sounds/flyavan.ogg", volume = 1.25},
        },
    }