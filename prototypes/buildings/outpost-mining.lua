	RECIPE {
        type = "recipe",
        name = 'outpost-mining',
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
            {'outpost-mining', 1}
        }
    }:add_unlock("auog"):add_ingredient({type = "item", name = "small-parts-01", amount = 100})

    ITEM {
        type = "item",
        name = 'outpost-mining',
        icon = "__pyalienlifegraphics3__/graphics/icons/outpost-mining.png",
        icon_size = 64,
        flags = {},
        subgroup = "py-alienlife-buildings-others",
        order = "a",
        place_result = 'outpost-mining',
        stack_size = 15
    }

	ENTITY {
        type = "assembling-machine",
        name = 'outpost-mining',
        icon = "__pyalienlifegraphics3__/graphics/icons/outpost-mining.png",
        icon_size = 64,
        flags = {"placeable-neutral", "placeable-player", "player-creation"},
        minable = {mining_time = 2, result = 'outpost-mining'},
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
        collision_box = {{-3.3, -3.3}, {3.3, 3.3}},
        selection_box = {{-3.5, -3.5}, {3.5, 3.5}},
        drawing_box = {{-3.5, -3.5}, {3.5, 3.5}},
        inventory_size = 800,
        scale_info_icons = true,

		picture = {
            layers = {
                {
                filename = "__pyalienlifegraphics3__/graphics/entity/outpost-mining/outpost-mining.png",
                priority = "high",
                width = 224,
                height = 320,
                shift = util.by_pixel(0, -48),
                },
                {
                filename = "__pyalienlifegraphics3__/graphics/entity/outpost-mining/outpost-mining-mask.png",
                priority = "high",
                width = 224,
                height = 320,
                shift = util.by_pixel(0, -48),
                tint = {r = 1.0, g = 1.0, b = 0.0, a = 1.0}
                },
            },
        },
        radius_visualisation_specification =
            {
            sprite =
            {
                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-radius-visualization.png",
                width = 10,
                height = 10
            },
            distance = 40.5,
            offset = {0, -43}
            }
}
