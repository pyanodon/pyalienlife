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
}:add_unlock("railway")

RECIPE {
  type = "recipe",
  name = "crane-mk02",
  category = "creature-chamber",
  energy_required = 1,
  ingredients = {
		{type = "item", name = "crane-mk01", amount = 2},
		{type = "item", name = "neuroprocessor", amount = 2},
		{type = "item", name = "mechanical-parts-02", amount = 2},
		{type = "item", name = "small-parts-02", amount = 12},
		{type = "item", name = "stainless-steel", amount = 30},
		{type = "fluid", name = "fetal-serum", amount = 100},
		{type = "fluid", name = "artificial-blood", amount = 150},
		{type = "item", name = "meat", amount = 25},
		{type = "item", name = "skin", amount = 8},
		{type = "item", name = "alien-sample-02", amount = 1},
	},
  results = {
    { type = "item", name = "crane-mk02", amount = 2 }
  }
}:add_unlock("railway-mk02")

RECIPE {
  type = "recipe",
  name = "crane-mk03",
  category = "creature-chamber",
  energy_required = 1,
  ingredients = {
    {type = "item", name = "crane-mk02", amount = 3},
    {type = "item", name = "neuromorphic-chip", amount = 1},
    {type = "item", name = "mechanical-parts-03", amount = 3},
    {type = "item", name = "small-parts-03", amount = 8},
    {type = "item", name = "super-steel", amount = 30},
    {type = "item", name = "meat", amount = 100},
    {type = "item", name = "skin", amount = 30},
    {type = "item", name = "alien-sample-03", amount = 1},
    {type = "item", name = "gh", amount = 5},
    {type = "item", name = "nanofibrils", amount = 4},
	{type = "fluid", name = "arqad-jelly", amount = 15},
  },
  results = {
    { type = "item", name = "crane-mk03", amount = 3 }
  }
}:add_unlock("railway-mk03")

RECIPE {
  type = "recipe",
  name = "crane-mk04",
  category = "creature-chamber",
  energy_required = 1,
  ingredients = {
    {type = "item", name = "crane-mk03", amount = 4},
    {type = "item", name = "mechanical-parts-04", amount = 4},
    {type = "item", name = "meat", amount = 300},
    {type = "item", name = "skin", amount = 50},
    {type = "item", name = "hydraulic-system-mk02", amount = 1},
    {type = "item", name = "biopolymer", amount = 20},
	{type = "item", name = "reca", amount = 10},
    {type = "item", name = "super-alloy", amount = 60},
    {type = "item", name = "electronics-mk04", amount = 1},
    {type = "item", name = "recombinant-ery", amount = 35},
  },
  results = {
    { type = "item", name = "crane-mk04", amount = 4 }
  }
}:add_unlock("railway-mk04")

for i = 1, 4 do
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
	  extension_speed = 0.005*(1.2^i),
	  rotation_speed = 0.005*(1.2^i),
	  pickup_position = {0, 1.5},
	  insert_position = {0, -1.6},
	  energy_source = {
  		type = "electric",
  		usage_priority = "secondary-input",
  		drain = 500*i .. "kW",
	  },
	  energy_per_movement = 1*i .. "MW",
	  energy_per_rotation = 1*i .. "MW",
	  collision_box = {{-1.4, -0.9}, {1.4, 0.9}},
	  selection_box = {{-1.4, -0.9}, {1.4, 0.9}},
	  uses_inserter_stack_size_bonus = false,
	  grab_less_to_match_belt_stack = true,
	  wait_for_full_hand = true,
	  filter_count = 1 + i,
	  stack_size_bonus = 149 + (25 * (i - 1)),
	}
  if feature_flags.belt_stacking then
    data.raw.inserter[name].max_belt_stack_size = 10000
  end
end
