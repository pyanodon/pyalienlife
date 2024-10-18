py.autorecipes {
	name = "filled-comb",
	category = "arqad",
	subgroup = "py-alienlife-arqad",
	main_product = "filled-comb",
	upgrades =
	{
		{
			tech = "pheromone-transition",
			ingredient_changes =
			{
				{name = "empty-comb", add_amount = 3}
			},
			result_changes =
			{
				{name = "comb", add_amount = 3}
			},
		},
		{
			tech = "diversified-mycoaccretion",
			ingredient_changes =
			{
				{name = "empty-comb", add_amount = 3}
			},
			result_changes =
			{
				{name = "comb", add_amount = 3}
			},
		},
	},
	mats =
	{
		--red
		{
			ingredients =
			{
				{name = "empty-comb",       amount = 5},
				{name = "native-flora",     amount = 10},
				{name = "saps",             amount = 4},
				{name = "crude-oil-barrel", amount = 2, return_barrel = true},
			},
			results =
			{
				{name = "filled-comb", amount = 5},
			},
			crafting_speed = 80,
			tech = "arqad",
			name = "arqad-filled-comb-1"
		},
		--py
		{
			ingredients =
			{
				{name = "empty-comb",  add_amount = 4},
				{name = "yaedols",     amount = 1},
				{name = "redhot-coke", amount = 2},
			},
			results =
			{
				{name = "filled-comb", add_amount = 4}
			},
			crafting_speed = 50,
			tech = "arqad-mk02",
			name = "arqad-filled-comb-2",
		},
		--prod
		{
			ingredients =
			{
				{name = "empty-comb", add_amount = 5},
				{name = "coal",       amount = 3},
				{name = "zipir-eggs", amount = 1},
			},
			results =
			{
				{name = "filled-comb", add_amount = 5}
			},
			crafting_speed = 45,
			tech = "arqad-mk03",
			name = "arqad-filled-comb-3",
		},
		--utility
		{
			ingredients =
			{
				{name = "empty-comb",  add_amount = 5},
				{name = "saps",        add_amount = 4},
				{name = "redhot-coke", amount = 2},
				{name = "coal",        add_amount = 3},
			},
			results =
			{
				{name = "filled-comb", add_amount = 5}
			},
			crafting_speed = 25,
			tech = "arqad-mk04",
			name = "arqad-filled-comb-4",
		},
	}
}
