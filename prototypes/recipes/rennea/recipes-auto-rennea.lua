py.autorecipes {
	name = "rennea",
	category = "rennea",
	subgroup = "py-alienlife-rennea",
	order = "a",
	number_icons = true,
	mats =
	{
		--py
		{
			ingredients =
			{
				{name = "rennea-seeds",    amount = 4},
				{name = "water",           amount = 100, fluidbox_index = 1},
				{name = "manure-bacteria", amount = 50,  fluidbox_index = 2},
				{name = "soil",            amount = 10},
				{name = "coarse",          amount = 8},
				{name = "fertilizer",      amount = 3},
			},
			results =
			{
				{name = "rennea", amount = 4},
			},
			crafting_speed = 100,
			tech = "rennea"
		},
		--chem
		{
			ingredients =
			{
				{name = "rennea-seeds",   add_amount = 4},
				{name = "fertilizer",     add_amount = 3},
				{name = "yaedols",        amount = 1},
				{name = "lignin",         amount = 10},
				{name = "pesticide-mk01", amount = 2},
			},
			results =
			{
				{name = "rennea", add_amount = 6}
			},
			crafting_speed = 80,
			tech = "rennea-mk02"
		},
		--prod
		{
			ingredients =
			{
				{name = "rennea-seeds",   add_amount = 4},
				{name = "fertilizer",     add_amount = 3},
				{name = "blood-meal",     amount = 3,    fallback = {name = "blood-barrel", amount = 2}},
				{name = "carbon-dioxide", amount = 200,  fluidbox_index = 3},
				{name = "pesticide-mk02", add_amount = 1},
			},
			results =
			{
				{name = "rennea", add_amount = 8}
			},
			crafting_speed = 60,
			tech = "rennea-mk03"
		},
		--utility
		{
			ingredients =
			{
				{name = "rennea-seeds",   add_amount = 4},
				{name = "small-lamp",     amount = 2},
				{name = "gh",             amount = 1},
				{name = "lignin",         add_amount = 5},
				{name = "blood-meal",     add_amount = 2, fallback = {name = "blood-barrel", amount = 2}},
				{name = "urea",           amount = 8,     fallback = "manure"},
				{name = "pesticide-mk02", amount = 1},
			},
			results =
			{
				{name = "rennea", add_amount = 10}
			},
			crafting_speed = 40,
			tech = "rennea-mk04"
		},
	}
}
