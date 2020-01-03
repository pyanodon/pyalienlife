RECIPE {
    type = "recipe",
    name = "lb-requester-chest",
    energy_required = 1,
    enabled = true,
    ingredients = {
        {"steel-plate", 50},
        {"glass", 40},
        {"titanium-plate", 100},
        {"duralumin", 50},
        {"electronic-circuit", 30},
        {"iron-gear-wheel", 50},
    },
    results = {
        {"lb-requester-chest", 1}
    }
}--:add_unlock("xenobiology")

ITEM {
    type = "item",
    name = "lb-requester-chest",
    icon = "__pyalienlife__/graphics/icons/data-array.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-alienlife-buildings-others",
    order = "c",
    place_result = "lb-requester-chest",
    stack_size = 10
}

ENTITY {
    type = "container",
    name = "lb-requester-chest",
    icon = "__base__/graphics/icons/wooden-chest.png",
    icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.1, result = "lb-requester-chest"},
    max_health = 100,
    corpse = "wooden-chest-remnants",
    collision_box = {{-1, -1}, {1, 1}},
    fast_replaceable_group = "container",
    selection_box = {{-1, -1}, {1, 1}},
    inventory_size = 16,
    open_sound = { filename = "__base__/sound/wooden-chest-open.ogg" },
    close_sound = { filename = "__base__/sound/wooden-chest-close.ogg" },
    vehicle_impact_sound =  { filename = "__base__/sound/car-wood-impact.ogg", volume = 1.0 },
    picture =
		{
			layers =
				{
					{
						filename = "__pyindustry__/graphics/entity/shed/shed-requester.png",
						priority = "high",
						width = 68,
						height = 75,
						shift = {0, 0},
						hr_version =
							{
								filename = "__pyindustry__/graphics/entity/shed/hr-shed-requester.png",
								priority = "extra-high",
								width = 136,
								height = 150,
								shift = {0, 0},
								scale = 0.5
							}
					},
					{
						filename = "__base__/graphics/entity/transport-belt/connector/hr-ccm-belt-04a-sequence.png",
						priority = "high",
						width = 80,
						height = 94,
						shift = {0.25, -0.25},
					}
				}
		},
        --circuit_wire_max_distance = 9,
        --circuit_connector_sprites = connectors.sprites({0.75, 0.55}),
        --circuit_wire_connection_point = connectors.points({0.64, 0.13})
  }
