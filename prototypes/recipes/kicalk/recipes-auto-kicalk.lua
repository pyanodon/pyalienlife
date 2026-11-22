py.autorecipes {
	name = "kicalk",
	category = "kicalk",
	subgroup = "py-alienlife-kicalk",
	order = "a",
	number_icons = true,
	mats =
	{
		--base
		{
			ingredients =
			{
				{name = "kicalk-seeds", amount = 15},
				{name = "clay",         amount = 4},
			},
			results =
			{
				{name = "kicalk", amount = 10},
			},
			crafting_speed = 150,
			tech = "kicalk"
		},
		--base
		{
			ingredients =
			{
				{name = "water",      amount = 500, fluidbox_index = 1},
				{name = "sand",       amount = 10},
				{name = "small-lamp", amount = 1},
			},
			results =
			{
				{name = "kicalk", amount = 12}
			},
			crafting_speed = 120,
			tech = "kicalk"
		},
		--py2
		{
			ingredients =
			{
				{name = "fertilizer",     amount = 5},
				{name = "ash",            amount = 10},
				{name = "biomass",        amount = 10},
				{name = "carbon-dioxide", amount = 150, fluidbox_index = 2},
			},
			results =
			{
				{name = "kicalk", amount = 20}
			},
			crafting_speed = 90,
			tech = "kicalk-mk02"
		},
		--py3
		{
			ingredients =
			{
				{name = "pesticide-mk01", add_amount = 1},
				{name = "carbon-dioxide", remove_item = true},
				{name = "flue-gas",       amount = 100,      fluidbox_index = 2},
			},
			results =
			{
				{name = "kicalk", amount = 32}
			},
			crafting_speed = 60,
			tech = "kicalk-mk03"
		},
		--py4
		{
			ingredients =
			{
				{name = "fertilizer",              add_amount = 6},
				{name = "phosphorous-acid-barrel", amount = 1,     fallback = "nitrogen-barrel"},
				{name = "biomass",                 add_amount = 10},
				{name = "clay",                    add_amount = 11},
			},
			results =
			{
				{name = "kicalk", amount = 50},
				{name = "barrel", amount = 1}
			},
			crafting_speed = 30,
			tech = "kicalk-mk04",
			main_product = "kicalk"
		},
	}
}
