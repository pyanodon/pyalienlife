py.autorecipes {
	name = "arqad-filled-honeycomb",
	category = "arqad",
	subgroup = "py-alienlife-arqad",
	number_icons = true,
	upgrades =
	{
		{
			tech = "pheromone-transition",
			ingredient_changes =
			{
				{name = "empty-honeycomb", add_amount = 3}
			},
			result_changes =
			{
				{name = "honeycomb", add_amount = 3}
			},
		},
		{
			tech = "diversified-mycoaccretion",
			ingredient_changes =
			{
				{name = "empty-honeycomb", add_amount = 3}
			},
			result_changes =
			{
				{name = "honeycomb", add_amount = 3}
			},
		},
	},
	mats =
	{
		--base
		{
			ingredients =
			{
				{name = "empty-honeycomb", amount = 3},
				{name = "ulric",           amount = 1},
			},
			results =
			{
				{name = "honeycomb", amount = 3},
			},
			crafting_speed = 100,
			tech = "arqad",
		},
		--py
		{
			ingredients =
			{
				{name = "empty-honeycomb", add_amount = 3},
				{name = "navens",          amount = 1},
				{name = "skin",            amount = 5},
				{name = "meat",            amount = 5},
			},
			results =
			{
				{name = "honeycomb", add_amount = 3}
			},
			crafting_speed = 70,
			tech = "arqad-mk02",
		},
		--prod
		{
			ingredients =
			{
				{name = "ulric",           remove_item = true},
				{name = "empty-honeycomb", add_amount = 5},
				{name = "cottongut",       amount = 4},
				{name = "mukmoux",         amount = 1},
			},
			results =
			{
				{name = "honeycomb", add_amount = 5}
			},
			crafting_speed = 40,
			tech = "arqad-mk03",
		},
		--utility
		{
			ingredients =
			{
				{name = "empty-honeycomb", add_amount = 5},
				{name = "meat",            add_amount = 4},
				{name = "skin",            add_amount = 5},
				{name = "cottongut",       add_amount = 3},
			},
			results =
			{
				{name = "honeycomb", add_amount = 5}
			},
			crafting_speed = 10,
			tech = "arqad-mk04",
		},
	}
}
