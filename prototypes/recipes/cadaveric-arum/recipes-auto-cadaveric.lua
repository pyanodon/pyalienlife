py.autorecipes {
	name = "cadaveric-arum",
	category = "arum",
	subgroup = "py-alienlife-cadaveric",
	order = "a",
	number_icons = true,
	mats =
	{
		--green
		{
			ingredients =
			{
				{name = "cadaveric-arum-seeds", amount = 5},
				{name = "coal-gas",             amount = 100, fluidbox_index = 1},
				{name = "water",                amount = 500, fluidbox_index = 2},
				{name = "sand",                 amount = 5},
				{name = "stone-wool",           amount = 1},
			},
			results =
			{
				{name = "cadaveric-arum", amount = 4},
			},
			crafting_speed = 125,
			tech = "cadaveric-arum"
		},
		--py
		{
			ingredients =
			{
				{name = "cadaveric-arum-seeds", add_amount = 7},
				{name = "fertilizer",           amount = 5},
				{name = "ash",                  amount = 7},
				{name = "blood-meal",           amount = 4},
			},
			results =
			{
				{name = "cadaveric-arum", add_amount = 6}
			},
			crafting_speed = 75,
			tech = "cadaveric-arum-mk02"
		},
		--chem
		{
			ingredients =
			{
				{name = "cadaveric-arum-seeds", add_amount = 10},
				{name = "pesticide-mk01",       amount = 2},
				{name = "acidgas",              amount = 50,    fluidbox_index = 3},
			},
			results =
			{
				{name = "cadaveric-arum", add_amount = 8}
			},
			crafting_speed = 50,
			tech = "cadaveric-arum-mk03"
		},
		--prod
		{
			ingredients =
			{
				{name = "cadaveric-arum-seeds", add_amount = 15},
				{name = "pesticide-mk02",       amount = 3},
				{name = "fertilizer",           add_amount = 4},
				{name = "gh",                   amount = 1},
				{name = "blood-meal",           amount = 10},
				{name = "coal-gas",             amount = 15},
			},
			results =
			{
				{name = "cadaveric-arum", add_amount = 10}
			},
			crafting_speed = 20,
			tech = "cadaveric-arum-mk04"
		},
	}
}
