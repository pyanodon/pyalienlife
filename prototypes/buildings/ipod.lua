RECIPE {
    type = "recipe",
    name = "ipod",
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
        {"ipod", 1}
    }
}--:add_unlock("xenobiology")

ITEM {
    type = "item",
    name = "ipod",
    icon = "__pyalienlifegraphics__/graphics/icons/eye-pod.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-alienlife-buildings-others",
    order = "c",
    place_result = "ipod",
    stack_size = 10
}

ENTITY {
    type = "container",
    name = "ipod",
    icon = "__pyalienlifegraphics__/graphics/icons/eye-pod.png",
    icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.1, result = "ipod"},
    max_health = 100,
    corpse = "wooden-chest-remnants",
    collision_box = {{-1.45, -1.45}, {1.45, 1.45}},
    fast_replaceable_group = "container",
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    inventory_size = 16,
    open_sound = { filename = "__base__/sound/wooden-chest-open.ogg" },
    close_sound = { filename = "__base__/sound/wooden-chest-close.ogg" },
    vehicle_impact_sound =  { filename = "__base__/sound/car-wood-impact.ogg", volume = 1.0 },
    picture =
    {
      layers =
      {
        {
          filename = "__pyalienlifegraphics2__/graphics/entity/ocula/eye-pod.png",
          priority = "extra-high",
          width = 100,
          height = 96,
          --shift = util.by_pixel(0.5, -2),
        },
      }
    }
  }
