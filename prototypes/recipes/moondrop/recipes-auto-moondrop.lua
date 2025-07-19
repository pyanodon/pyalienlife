py.autorecipes {
	name = "moondrop",
	category = "moon",
	subgroup = "py-alienlife-moon",
	order = "a",
	number_icons = true,
	mats =
	{
		--base
		{
			ingredients =
			{
				{name = "moondrop-seeds", amount = 4},
				{name = "water",          amount = 100, fluidbox_index = 1},
			},
			results =
			{
				{name = "moondrop", amount = 4},
			},
			crafting_speed = 140,
			tech = "moondrop"
		},
		--red
		{
			ingredients =
			{
				{name = "moondrop-seeds", add_amount = 3},
				{name = "hydrogen",       amount = 100,  fluidbox_index = 2},
				{name = "soil",           amount = 20},
			},
			results =
			{
				{name = "moondrop", add_amount = 4}
			},
			crafting_speed = 120,
			tech = "moondrop-mk02"
		},
		--py
		{
			ingredients =
			{
				{name = "moondrop-seeds", add_amount = 4},
				{name = "ash",            amount = 10},
				{name = "fertilizer",     amount = 10},
				{name = "biomass",        amount = 8},
			},
			results =
			{
				{name = "moondrop", add_amount = 8}
			},
			crafting_speed = 100,
			tech = "moondrop-mk03"
		},
		--chem
		{
			ingredients =
			{
				{name = "moondrop-seeds", add_amount = 6},
				{name = "water",          remove_item = true},
				{name = "syngas",         amount = 60,       fluidbox_index = 1},
				{name = "pesticide-mk01", amount = 2},
				{name = "hydrogen",       remove_item = true},
				{name = "gasoline",       amount = 40,       fluidbox_index = 2},
			},
			results =
			{
				{name = "moondrop", add_amount = 16}
			},
			crafting_speed = 80,
			tech = "moondrop-mk04"
		},
		--prod
		{
			ingredients =
			{
				{name = "moondrop-seeds", add_amount = 12},
				{name = "fertilizer",     add_amount = 5},
				{name = "syngas",         remove_item = true},
				{name = "refsyngas",      amount = 30,       fluidbox_index = 1},
				{name = "biomass",        add_amount = 4},
				{name = "urea",           amount = 12,       fallback = "manure"},
			},
			results =
			{
				{name = "moondrop", add_amount = 32}
			},
			crafting_speed = 60,
			tech = "moondrop-mk05"
		},
	}
}
