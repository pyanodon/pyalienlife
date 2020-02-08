RECIPE {
    type = "recipe",
    name = "lb-provider-chest",
    energy_required = 1,
    enabled = false,
    ingredients = {
        {"steel-plate", 50},
        {"glass", 40},
        {"titanium-plate", 100},
        {"duralumin", 50},
        {"electronic-circuit", 30},
        {"iron-gear-wheel", 50},
    },
    results = {
        {"lb-provider-chest", 1}
    }
}:add_unlock("domestication")

ITEM {
    type = "item",
    name = "lb-provider-chest",
    icon = "__pyalienlifegraphics__/graphics/icons/chest-provider.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-alienlife-buildings-others",
    order = "c",
    place_result = "lb-provider-chest",
    stack_size = 10
}

ENTITY {
    type = "container",
    name = "lb-provider-chest",
    icon = "__pyalienlifegraphics__/graphics/icons/chest-provider.png",
    icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.1, result = "lb-provider-chest"},
    max_health = 100,
    corpse = "wooden-chest-remnants",
    collision_box = {{-0.9, -0.9}, {0.9, 0.9}},
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
						filename = "__pyalienlifegraphics2__/graphics/entity/land-beetle/chest-provider.png",
						priority = "high",
						width = 69,
						height = 67,
						shift = util.by_pixel(3, 1)
					},
				}
		},
  }
