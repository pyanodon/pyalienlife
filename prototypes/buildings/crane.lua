if not settings.startup["enable-cranes"].value then
  return
end

RECIPE {
  type = "recipe",
  name = "crane-mk01",
  category = "creature-chamber",
  subgroup = "inserter",
  order = "i[crane-mk01]",
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
  subgroup = "inserter",
  order = "i[crane-mk02]",
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
  subgroup = "inserter",
  order = "i[crane-mk03]",
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
  subgroup = "inserter",
  order = "i[crane-mk04]",
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
	local icon = {
	  {icon = "__pyalienlifegraphics3__/graphics/entity/crane/inserter-icon-greyscale.png", tint = py.tints[i]},
	  {icon = "__pyalienlifegraphics__/graphics/icons/meat.png", scale = .5, shift = {16, 16}}
  }

	ITEM {
	  type = "item",
	  name = name,
	  icons = icon,
	  subgroup = "inserter",
	  order = "i[" .. name .. "]",
	  stack_size = 10,
	  place_result = name,
	}

	ENTITY {
	  type = "inserter",
	  name = name,
	  icons = icon,
	  subgroup = "inserter",
	  order = "i[" .. name .. "]",
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
	  extension_speed = 0.005*(1.2^i),
	  rotation_speed = 0.005*(1.2^i),
	  pickup_position = {0, 1.5},
	  insert_position = {0, -1.6},
	  minable = {mining_time = 0.2, result = name},
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
	  allow_copy_past = true,
    hand_base_picture =
    {
      filename = "__pyalienlifegraphics3__/graphics/entity/crane/hand-base-greyscale.png",
      priority = "extra-high",
      width = 72,
      height = 164,
      scale = 0.3,
      tint = py.tints[i]
    },
    hand_closed_picture =
    {
      filename = "__pyalienlifegraphics3__/graphics/entity/crane/hand-closed-greyscale.png",
      priority = "extra-high",
      width = 72,
      height = 164,
      scale = 0.3,
      tint = py.tints[i]
    },
    hand_open_picture =
    {
      filename = "__pyalienlifegraphics3__/graphics/entity/crane/hand-open-greyscale.png",
      priority = "extra-high",
      width = 72,
      height = 164,
      scale = 0.3,
      tint = py.tints[i]
    },
    platform_picture =
    {
      sheet =
      {
        filename = "__pyalienlifegraphics3__/graphics/entity/crane/inserter-platform-greyscale.png",
        priority = "extra-high",
        width = 105,
        height = 79,
        shift = util.by_pixel(1.5, 7.5-1),
        scale = 0.75,
        tint = py.tints[i]
      }
    },
	}
  if feature_flags.belt_stacking then
    data.raw.inserter[name].max_belt_stack_size = 10000
  end
end
