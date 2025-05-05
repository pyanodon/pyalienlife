py.autorecipes {
	name = "korlex-milk",
	category = "korlex",
	subgroup = "py-alienlife-korlex",
	order = "z",
	main_product = "barrel-milk",
	number_icons = true,
	upgrades =
	{
		{
			tech = "biopolymer-clusters",
			ingredient_changes =
			{
				{name = "empty-milk-barrel", add_amount = 3},
				{name = "biopolymer",        amount = 1}
			},
			result_changes =
			{
				{name = "barrel-milk", add_amount = 3}
			},
		},
	},
	mats =
	{
		--logistic
		{
			ingredients =
			{
				{name = "fish",              amount = 5},
				{name = "tuuphra",           amount = 5},
				{name = "korlex-food-01",    amount = 1},
				{name = "empty-barrel-milk", amount = 3},
				{name = "water-barrel",      amount = 10, return_barrel = true},
			},
			results =
			{
				{name = "barrel-milk", amount = 3},
			},
			crafting_speed = 100,
			tech = "korlex",
		},
		--py
		{
			ingredients =
			{
				{name = "bhoddos",           amount = 2},
				{name = "ash",               amount = 10},
				{name = "empty-barrel-milk", add_amount = 3},
			},
			results =
			{
				{name = "barrel-milk", add_amount = 3}
			},
			crafting_speed = 80,
			tech = "korlex-mk02",
		},
		--chem
		{
			ingredients =
			{
				{name = "ash",               add_amount = 5},
				{name = "korlex-food-02",    amount = 2},
				{name = "empty-barrel-milk", add_amount = 3},
			},
			results =
			{
				{name = "barrel-milk", add_amount = 3}
			},
			crafting_speed = 60,
			tech = "korlex-mk03",
		},
		--prod
		{
			ingredients =
			{
				{name = "fish",              add_amount = 5},
				{name = "empty-barrel-milk", add_amount = 3},
			},
			results =
			{
				{name = "barrel-milk", add_amount = 3}
			},
			crafting_speed = 60,
			tech = "korlex-mk04",
		},
	}
}
