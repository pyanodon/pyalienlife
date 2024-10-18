--Aoug breeding
py.autorecipes {
	name = "auog-pooping",
	category = "auog",
	subgroup = "py-alienlife-auog",
	order = "b",
	mats =
	{
		--base
		{
			ingredients =
			{
				{name = "native-flora", amount = 20},
				{name = "moss",         amount = 10},
				{name = "water-barrel", amount = 5, return_barrel = true},
			},
			results =
			{
				{name = "manure", amount_min = 3, amount_max = 8}
			},
			crafting_speed = 100,
			tech = "auog",
			main_product = "manure"
		},
		--red
		{
			ingredients =
			{
				{name = "auog-food-01", amount = 3},
			},
			results =
			{
				{name = "manure", remove_item = true},
				{name = "manure", amount_min = 5,    amount_max = 12}
			},
			crafting_speed = 80,
			tech = "auog",
			main_product = "manure"
		},
		--green
		{
			ingredients =
			{
				{name = "saps",      amount = 12},
				{name = "bedding",   amount = 3},
				{name = "raw-fiber", amount = 15},
			},
			results =
			{
				{name = "manure", remove_item = true},
				{name = "manure", amount_min = 7,    amount_max = 14}
			},
			crafting_speed = 60,
			tech = "auog-mk02",
			main_product = "manure"
		},
		--chem
		{
			ingredients =
			{
				{name = "saps",         add_amount = 5},
				{name = "bedding",      add_amount = 5},
				{name = "raw-fiber",    add_amount = 5},
				{name = "auog-food-01", remove_item = true},
				{name = "auog-food-02", amount = 5},

			},
			results =
			{
				{name = "manure", remove_item = true},
				{name = "manure", amount_min = 10,   amount_max = 20}
			},
			crafting_speed = 30,
			tech = "auog-mk03",
			main_product = "manure"
		},
		--py
		{
			ingredients =
			{
				{name = "saps",      add_amount = 10},
				{name = "raw-fiber", add_amount = 10},
			},
			results =
			{
				{name = "manure", remove_item = true},
				{name = "manure", amount_min = 20,   amount_max = 30}
			},
			crafting_speed = 20,
			tech = "auog-mk04",
			main_product = "manure"
		},
	}
}
