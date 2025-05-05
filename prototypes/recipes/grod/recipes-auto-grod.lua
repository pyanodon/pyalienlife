py.autorecipes {
	name = "grod",
	category = "grod",
	main_product = "grod",
	subgroup = "py-alienlife-grod",
	order = "a",
	number_icons = true,
	mats =
	{
		--logistic
		{
			ingredients =
			{
				{name = "grod-seeds", amount = 5},
				{name = "urea",       amount = 10,  fallback = "manure"},
				{name = "water",      amount = 500, fluidbox_index = 1},
				{name = "limestone",  amount = 5},
				{name = "soil",       amount = 10},
			},
			results =
			{
				{name = "grod", amount = 10},
			},
			crafting_speed = 150,
			tech = "grod"
		},
		--py
		{
			ingredients =
			{
				{name = "fertilizer", amount = 5},
				{name = "ash",        amount = 10},
				{name = "biomass",    amount = 5},
			},
			results =
			{
				{name = "grod", add_amount = 7}
			},
			crafting_speed = 110,
			tech = "grod-mk02"
		},
		--chem
		{
			ingredients =
			{
				{name = "coarse",         amount = 6},
				{name = "pesticide-mk01", amount = 2},
				{name = "slacked-lime",   amount = 20, fluidbox_index = 2},
			},
			results =
			{
				{name = "grod", add_amount = 10}
			},
			crafting_speed = 70,
			tech = "grod-mk03"
		},
		--production
		{
			ingredients =
			{

				{name = "fertilizer",     add_amount = 8},
				{name = "pesticide-mk02", amount = 2},
				{name = "flue-gas",       amount = 40,     fluidbox_index = 3},
				{name = "gh",             amount = 1},
				{name = "biomass",        amount = 10},
				{name = "slacked-lime",   add_amount = 50},
				{name = "urea",           add_amount = 20, fallback = "manure"},
			},
			results =
			{
				{name = "grod", add_amount = 15}
			},
			crafting_speed = 30,
			tech = "grod-mk04"
		},
	}
}
