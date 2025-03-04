------------------EGG MAKER------------------

py.autorecipes {
	name = "arqad-egg",
	category = "rc",
	allowed_module_categories = {"arqad"},
	subgroup = "py-alienlife-arqad",
	order = "c",
	main_product = "arqad-egg",
	crafting_speed = 20,
	mats =
	{
		--base
		{
			ingredients =
			{
				{name = "arqad-queen",        amount = 1},
				{name = "arqad",              amount = 5},
				{name = "arqad-honey-barrel", amount = 3,  return_barrel = true},
				{name = "natural-gas-barrel", amount = 10, return_barrel = true},
				{name = "redhot-coke",        amount = 2},
			},
			results =
			{
				{name = "arqad-egg",   amount = 10},
				{name = "arqad-queen", amount = 1, probability = 0.999, ignored_by_productivity = 1},
			},
			tech = "arqad"
		},
		--red tech
		{
			ingredients =
			{
				{name = "ralesia", amount = 15},
				{name = "arqad",   add_amount = 2},
			},
			results =
			{
				{name = "arqad-egg", add_amount = 5},
			},
			tech = "arqad"
		},
		--py
		{
			ingredients =
			{
				{name = "yaedols",            amount = 1},
				{name = "arqad-jelly-barrel", amount = 3,    return_barrel = true},
				{name = "arqad",              add_amount = 3},
			},
			results =
			{
				{name = "arqad-egg", add_amount = 10},
			},
			tech = "arqad-mk02"
		},
		--prod
		{
			ingredients =
			{
				{name = "natural-gas-barrel",         remove_item = true},
				{name = "refined-natural-gas-barrel", amount = 3,        return_barrel = true},
				{name = "arqad",                      add_amount = 3},
			},
			results =
			{
				{name = "arqad-egg", add_amount = 10},
			},
			tech = "arqad-mk03"
		},
		--utility
		{
			ingredients =
			{
				{name = "zipir-eggs", amount = 4},
				{name = "arqad",      add_amount = 3},
			},
			results =
			{
				{name = "arqad-egg", add_amount = 10},
			},
			tech = "arqad-mk04"
		}
	}
}

--eggs to maggots

py.autorecipes {
	name = "arqad-maggots",
	category = "vrauks",
	subgroup = "py-alienlife-arqad",
	order = "c",
	main_product = "arqad-maggot",
	mats =
	{
		--base
		{
			ingredients =
			{
				{name = "arqad-egg",    amount = 30},
				{name = "caged-vrauks", amount = 10},
				{name = "honeycomb",    amount = 5, return_item = {name = "used-comb"}},
			},
			results =
			{
				{name = "arqad-maggot", amount = 30},
				{name = "cage",         amount = 10},
			},
			crafting_speed = 70,
			tech = "arqad"
		},
	}
}

--maggots to cocoons

py.autorecipes {
	name = "arqad-egg-nests",
	category = "arqad",
	subgroup = "py-alienlife-arqad",
	order = "c",
	main_product = "arqad-egg-nest",
	mats =
	{
		--base
		{
			ingredients =
			{
				{name = "arqad-maggot",       amount = 5},
				{name = "arqad-honey-barrel", amount = 1, return_barrel = true},
				{name = "empty-comb",         amount = 1},
				{name = "vrauks",             amount = 1},
				{name = "vrauks-food-01",     amount = 1}
			},
			results =
			{
				{name = "arqad-egg-nest", amount = 1},
			},
			crafting_speed = 90,
			tech = "arqad"
		},
		--py
		{
			ingredients =
			{
				{name = "arqad-maggot",       add_amount = 5},
				{name = "arqad-jelly-barrel", amount = 5,    return_barrel = true},
				{name = "vrauks",             add_amount = 1},
				{name = "vrauks-food-01",     add_amount = 2}
			},
			results =
			{
				{name = "arqad-egg-nest", add_amount = 1},
			},
			crafting_speed = 70,
			tech = "arqad-mk02"
		},
		--prod
		{
			ingredients =
			{
				{name = "arqad-maggot",       add_amount = 5},
				{name = "arqad-jelly-barrel", add_amount = 3, return_barrel = true},
				{name = "vrauks",             add_amount = 1},
				{name = "vrauks-food-02",     add_amount = 1}
			},
			results =
			{
				{name = "arqad-egg-nest", add_amount = 1},
			},
			crafting_speed = 50,
			tech = "arqad-mk03",
		},
		--utility
		{
			ingredients =
			{
				{name = "arqad-maggot",       add_amount = 5},
				{name = "arqad-honey-barrel", add_amount = 4, return_barrel = true},
				{name = "vrauks",             add_amount = 1},
				{name = "vrauks-food-02",     add_amount = 1}
			},
			results =
			{
				{name = "arqad-egg-nest", add_amount = 2},
			},
			crafting_speed = 30,
			tech = "arqad-mk04"
		},
	}
}

--Raising maggots to arqads

py.autorecipes {
	name = "caged-arqad",
	category = "arqad",
	subgroup = "py-alienlife-arqad",
	order = "b",
	main_product = "arqad",
	mats =
	{
		--base
		{
			ingredients =
			{
				{name = "arqad-egg-nest",     amount = 1},
				{name = "biomass",            amount = 15},
				{name = "ralesia",            amount = 5},
				{name = "natural-gas-barrel", amount = 10, return_barrel = true},
			},
			results =
			{
				{name = "arqad",     amount_min = 2, amount_max = 4},
				{name = "used-comb", amount = 1},
			},
			crafting_speed = 140,
			tech = "arqad"
		},
		--red tech
		{
			ingredients =
			{
				{name = "arqad-egg-nest", add_amount = 1},
				{name = "saps",           amount = 5},
				{name = "redhot-coke",    amount = 1},
			},
			results =
			{
				{name = "arqad", amount_min = 5, amount_max = 10},
			},
			crafting_speed = 120,
			tech = "arqad"
		},
		--py
		{
			ingredients =
			{
				{name = "arqad-egg-nest", add_amount = 1},
				{name = "yaedols",        amount = 1},
			},
			results =
			{
				{name = "arqad", amount_min = 8, amount_max = 16},
			},
			crafting_speed = 100,
			tech = "arqad-mk02"
		},
		--prod
		{
			ingredients =
			{
				{name = "arqad-egg-nest", add_amount = 1},
				{name = "zipir-eggs",     amount = 1},
			},
			results =
			{
				{name = "arqad", amount_min = 13, amount_max = 20},
			},
			crafting_speed = 80,
			tech = "arqad-mk03"
		},
		--utility
		{
			ingredients =
			{
				{name = "arqad-egg-nest", add_amount = 1},
				{name = "arthurian-egg",  amount = 1},
			},
			results =
			{
				{name = "arqad", amount_min = 17, amount_max = 27},
			},
			crafting_speed = 60,
			tech = "arqad-mk04"
		},
	}
}

py.autorecipes {
	name = "arqad-queen",
	category = "arqad",
	subgroup = "py-alienlife-arqad",
	order = "b",
	main_product = "arqad-queen",
	mats =
	{
		--base
		{
			ingredients =
			{
				{name = "arqad-egg-nest",     amount = 1},
				{name = "arqad-honey-barrel", amount = 5, return_barrel = true},
				{name = "natural-gas-barrel", amount = 3, return_barrel = true},
			},
			results =
			{
				{name = "arqad-queen", amount = 1, probability = 0.01},
				{name = "used-comb",   amount = 1},
			},
			crafting_speed = 140,
			tech = "arqad"
		},
	}
}

--[[
py.autorecipes {
    name = 'special-arqad-guts',
	category = "creature-chamber",
	subgroup = 'py-alienlife-arqad',
	order = 'b',
    mats =
	{
		--base
		{
			ingredients =
				{
                    {name='arqad', amount = 5},
                    {name='gh', amount = 5,},
					{name='antitumor', amount = 3},
				},
			results =
				{
					{name='guts-arqad', amount = 4}
				},
			crafting_speed = 140,
			tech = 'antitumor'
		},
	}
}
]] --
