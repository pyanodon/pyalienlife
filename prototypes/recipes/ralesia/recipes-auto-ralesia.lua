py.autorecipes {
	name = "ralesia",
	category = "ralesia",
	subgroup = "py-alienlife-ralesia",
	order = "a",
	number_icons = true,
	mats =
	{
		--base
		{
			ingredients =
			{
				{name = "ralesia-seeds", amount = 8},
				{name = "water",         amount = 100, fluidbox_index = 1},
				{name = "hydrogen",      amount = 100, fluidbox_index = 2},
				{name = "soil",          amount = 15},
			},
			results =
			{
				{name = "ralesia", amount = 10},
			},
			crafting_speed = 125,
			tech = "ralesia"
		},
		--green
		{
			ingredients =
			{
				{name = "ralesia-seeds", add_amount = 5},
				{name = "fertilizer",    amount = 5},
				{name = "ash",           amount = 10},
				{name = "biomass",       amount = 10},
			},
			results =
			{
				{name = "ralesia", add_amount = 15}
			},
			crafting_speed = 100,
			tech = "ralesia-mk02"
		},
		--py
		{
			ingredients =
			{
				{name = "ralesia-seeds", add_amount = 5},
				{name = "hydrogen",      remove_item = true},
				{name = "syngas",        amount = 100,      fluidbox_index = 2},
				{name = "flue-gas",      amount = 50,       fluidbox_index = 3},
			},
			results =
			{
				{name = "ralesia", add_amount = 25}
			},
			crafting_speed = 75,
			tech = "ralesia-mk03"
		},
		--prod
		{
			ingredients =
			{
				{name = "ralesia-seeds", add_amount = 5},
				{name = "fertilizer",    add_amount = 5},
				{name = "urea",          amount = 15,    fallback = "manure"},
				{name = "biomass",       add_amount = 15}
			},
			results =
			{
				{name = "ralesia", add_amount = 35}
			},
			crafting_speed = 50,
			tech = "ralesia-mk04"
		},
	}
}
