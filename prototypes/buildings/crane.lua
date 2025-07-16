RECIPE {
  type = "recipe",
  name = "crane-1",
  energy_required = 1,
  ingredients = {},
  results = {
    {
      type = "item",
      name = "crane-1",
      amount = 1
    }
  }
}

ITEM {
  type = "item",
  name = "crane-1",
  icon = "__pyalienlifegraphics__/graphics/icons/meat.png",
  icon_size = 32,
  stack_size = 50,
  place_result = "crane-1",
}

ENTITY {
  type = "inserter",
  name = "crane-1",
  icon = "__pyalienlifegraphics__/graphics/icons/meat.png",
  icon_size = 32,
  extension_speed = 0.005,
  rotation_speed = 0.005,
  pickup_position = {0, 1.5},
  insert_position = {0, -1.6},
  energy_source = {
    type = "electric",
    usage_priority = "secondary-input",
    drain = "500kW",
  },
  energy_per_movement = "500kW",
  energy_per_rotation = "500kW",
  collision_box = {{-1.4, -0.9}, {1.4, 0.9}},
  selection_box = {{-1.4, -0.9}, {1.4, 0.9}},
  uses_inserter_stack_size_bonus = false,
  stack_size_bonus = 147,
}
