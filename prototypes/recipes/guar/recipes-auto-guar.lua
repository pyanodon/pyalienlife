py.autorecipes {
	name = "guar",
	category = "guar",
	main_product = "guar",
	subgroup = "py-alienlife-guar",
	order = "a",
	number_icons = true,
	mats =
	{
		--logistic
		{
			ingredients =
			{
				{name = "guar-seeds", amount = 5},
				{name = "water",      amount = 200, fluidbox_index = 1},
				{name = "sand",       amount = 8},
				{name = "soil",       amount = 10},
			},
			results =
			{
				{name = "guar", amount = 10},
			},
			crafting_speed = 150,
			tech = "guar"
		},
		--py
		{
			ingredients =
			{
				{name = "guar-seeds", add_amount = 10},
				{name = "ash",        amount = 25},
				{name = "small-lamp", amount = 2},
				{name = "soil",       add_amount = 30},
			},
			results =
			{
				{name = "guar", add_amount = 15}
			},
			crafting_speed = 110,
			tech = "guar-mk02"
		},
		--chem
		{
			ingredients =
			{
				{name = "guar-seeds",     add_amount = 15},
				{name = "coarse",         amount = 6},
				{name = "pesticide-mk01", amount = 2},
				{name = "water",          add_amount = 300},
				{name = "carbon-dioxide", amount = 500,        fluidbox_index = 2},
				{name = "sand",           add_amount = 40},
				{name = "small-lamp",     add_amount = 2},
				{name = "soil",           subtract_amount = 20},
			},
			results =
			{
				{name = "guar", add_amount = 25}
			},
			crafting_speed = 70,
			tech = "guar-mk03"
		},
		--production
		{
			ingredients =
			{
				{name = "guar-seeds",     add_amount = 20},
				{name = "fertilizer",     add_amount = 8},
				{name = "pesticide-mk02", amount = 2},
				{name = "carbon-dioxide", add_amount = 500,  fluidbox_index = 2},
				{name = "soil",           remove_item = true},
				{name = "clay",           amount = 8,        fallback = "coarse"},
				{name = "small-lamp",     add_amount = 2},
			},
			results =
			{
				{name = "guar", add_amount = 40}
			},
			crafting_speed = 30,
			tech = "guar-mk04"
		},
	}
}
