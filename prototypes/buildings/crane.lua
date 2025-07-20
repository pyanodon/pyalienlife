RECIPE {
  type = "recipe",
  name = "crane-mk01",
  category = "creature-chamber",
  energy_required = 1,
  ingredients = {
		{type = "item", name = "brain", amount = 1},
		{type = "item", name = "bio-sample", amount = 15},
		{type = "item", name = "moss-gen", amount = 20},
		{type = "item", name = "meat", amount = 15},
		{type = "item", name = "electronic-circuit", amount = 12},
		{type = "item", name = "small-parts-01", amount = 10},
		{type = "item", name = "brake-mk01", amount = 1},
		{type = "item", name = "gearbox-mk01", amount = 1},
		{type = "item", name = "shaft-mk01", amount = 2},
		{type = "item", name = "intermetallics", amount = 5},
	},
  results = {
    { type = "item", name = "crane-mk01", amount = 1 }
  }
}

RECIPE {
  type = "recipe",
  name = "crane-mk02",
  category = "creature-chamber",
  energy_required = 1,
  ingredients = {
		{type = "item", name = "crane-mk01", amount = 1},
		{type = "item", name = "neuroprocessor", amount = 2},
		{type = "item", name = "mechanical-parts-02", amount = 2},
		{type = "item", name = "small-parts-02", amount = 12},
		{type = "item", name = "stainless-steel", amount = 8},
		{type = "fluid", name = "fetal-serum", amount = 100},
		{type = "fluid", name = "artificial-blood", amount = 150},
		{type = "item", name = "meat", amount = 15},
		{type = "item", name = "skin", amount = 8},
		{type = "item", name = "alien-sample-02", amount = 1},
		{type = "item", name = "cdna", amount = 4},
	},
  results = {
    { type = "item", name = "crane-mk02", amount = 1 }
  }
}

RECIPE {
  type = "recipe",
  name = "crane-mk03",
  energy_required = 1,
  ingredients = { },
  results = {
    { type = "item", name = "crane-mk03", amount = 1 }
  }
}

for i = 1, 3 do
	local name = "crane-mk0" .. i
	local icon = "__pyalienlifegraphics__/graphics/icons/meat.png"
	local icon_size = 32

	ITEM {
	  type = "item",
	  name = name,
	  icon = icon,
	  icon_size = icon_size,
	  stack_size = 10,
	  place_result = name,
	}

	ENTITY {
	  type = "inserter",
	  name = name,
	  icon = icon,
	  icon_size = icon_size,
	  extension_speed = 0.005*(2^i),
	  rotation_speed = 0.005*(2^i),
	  pickup_position = {0, 1.5},
	  insert_position = {0, -1.6},
	  energy_source = {
		type = "electric",
		usage_priority = "secondary-input",
		drain = 500*i .. "kW",
	  },
	  energy_per_movement = 500*i .. "kW",
	  energy_per_rotation = 500*i .. "kW",
	  collision_box = {{-1.4, -0.9}, {1.4, 0.9}},
	  selection_box = {{-1.4, -0.9}, {1.4, 0.9}},
	  uses_inserter_stack_size_bonus = false,
	  stack_size_bonus = 147,
	}
end