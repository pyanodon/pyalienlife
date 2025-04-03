--Aoug breeding
py.autorecipes {
	name = "auog-pup-breeding",
	category = "rc",
	allowed_module_categories = {"auog"},
	subgroup = "py-alienlife-auog",
	order = "b",
	mats =
	{
		--base
		{
			ingredients =
			{
				--{name= 'auog', amount=2},
				{name = "native-flora", amount = 20},
				{name = "moss",         amount = 10},
				{name = "water-barrel", amount = 5, return_barrel = true},
			},
			results =
			{
				--{name= 'auog', amount=2},
				{name = "auog-pup", amount_min = 2, amount_max = 5},
			},
			crafting_speed = 15,
			tech = "auog",
			main_product = "auog-pup"
		},
		--red
		{
			ingredients =
			{
				{name = "auog-food-01", amount = 3},
			},
			results =
			{
				{name = "auog-pup", remove_item = true},
				{name = "auog-pup", amount_min = 4,    amount_max = 8},
			},
			crafting_speed = 15,
			tech = "auog",
			main_product = "auog-pup"
		},
		--green
		{
			ingredients =
			{
				{name = "auog",      remove_item = true},
				--{name='auog', amount=4},
				{name = "saps",      amount = 12},
				{name = "bedding",   amount = 3},
				{name = "raw-fiber", amount = 15},
			},
			results =
			{
				{name = "auog",     remove_item = true},
				--{name='auog', amount=4},
				{name = "auog-pup", remove_item = true},
				{name = "auog-pup", amount_min = 4,    amount_max = 20},
			},
			crafting_speed = 12,
			tech = "auog-mk02",
			main_product = "auog-pup"
		},
		--chem
		{
			ingredients =
			{
				{name = "auog",         remove_item = true},
				--{name='auog', amount=8},
				{name = "saps",         add_amount = 5},
				{name = "bedding",      add_amount = 5},
				{name = "raw-fiber",    add_amount = 5},
				{name = "auog-food-01", add_amount = 7},
				{name = "auog-food-02", amount = 5},

			},
			results =
			{
				{name = "auog",     remove_item = true},
				--{name='auog', amount=8},
				{name = "auog-pup", remove_item = true},
				{name = "auog-pup", amount_min = 8,    amount_max = 30},
			},
			crafting_speed = 12,
			tech = "auog-mk03",
			main_product = "auog-pup"
		},
		--py
		{
			ingredients =
			{
				{name = "auog",      remove_item = true},
				--{name='auog', amount=14},
				{name = "saps",      add_amount = 10},
				{name = "raw-fiber", add_amount = 10},
			},
			results =
			{
				{name = "auog",     remove_item = true},
				--{name='auog', amount=14},
				{name = "auog-pup", remove_item = true},
				{name = "auog-pup", amount_min = 14,   amount_max = 50},
			},
			crafting_speed = 10,
			tech = "auog-mk04",
			main_product = "auog-pup"
		},
	}
}

--Raising auog pups
py.autorecipes {
	name = "auog-maturing",
	category = "auog",
	subgroup = "py-alienlife-auog",
	order = "b",
	upgrades =
	{
		{
			tech = "bigger-colon",
			ingredient_changes =
			{
				{name = "fiber", amount = 2}
			},
			result_changes =
			{
				{name = "manure", add_amount = 3},
				{name = "auog",   subtract_percent_amount = 0.1, round_direction = "up"}
			},
		},
		{
			tech = "explosive-diarrhea",
			ingredient_changes =
			{
				{name = "ethylene-glycol", amount = 50}
			},
			result_changes =
			{
				{name = "manure", add_amount = 5},
				{name = "auog",   subtract_percent_amount = 0.2, round_direction = "up"}
			}
		},
	},
	mats =
	{
		--base
		{
			ingredients =
			{
				{name = "auog-pup",     amount = 4},
				{name = "native-flora", amount = 20},
				{name = "moss",         amount = 10},
				{name = "water-barrel", amount = 5, return_barrel = true},
			},
			results =
			{
				{name = "auog", amount_min = 2, amount_max = 4},
			},
			crafting_speed = 160,
			tech = "auog",
			main_product = "auog"
		},
		--red
		{
			ingredients =
			{
				{name = "auog-pup",     amount = 8},
				{name = "auog-food-01", amount = 3},
				{name = "saps",         amount = 12},
			},
			results =
			{
				{name = "auog", remove_item = true},
				{name = "auog", amount_min = 3,    amount_max = 8},
			},
			crafting_speed = 130,
			tech = "auog",
			main_product = "auog"
		},
		--green
		{
			ingredients =
			{
				{name = "auog-pup",  remove_item = true},
				{name = "auog-pup",  amount = 12},
				{name = "bedding",   amount = 3},
				{name = "raw-fiber", amount = 15},
			},
			results =
			{
				{name = "auog", remove_item = true},
				{name = "auog", amount_min = 4,    amount_max = 12},
			},
			crafting_speed = 100,
			tech = "auog-mk02",
			main_product = "auog"
		},
		--chem
		{
			ingredients =
			{
				{name = "auog-pup",     remove_item = true},
				{name = "auog-pup",     amount = 16},
				{name = "saps",         add_amount = 5},
				{name = "bedding",      add_amount = 5},
				{name = "raw-fiber",    add_amount = 5},
				{name = "auog-food-01", add_amount = 7},
				{name = "auog-food-02", amount = 5},

			},
			results =
			{
				{name = "auog", remove_item = true},
				{name = "auog", amount_min = 10,   amount_max = 16},
			},
			crafting_speed = 70,
			tech = "auog-mk03",
			main_product = "auog"
		},
		--py
		{
			ingredients =
			{
				{name = "auog-pup",  remove_item = true},
				{name = "auog-pup",  amount = 20},
				{name = "saps",      add_amount = 10},
				{name = "raw-fiber", add_amount = 10},
			},
			results =
			{
				{name = "auog", remove_item = true},
				{name = "auog", amount_min = 16,   amount_max = 20},

			},
			crafting_speed = 40,
			tech = "auog-mk04",
			main_product = "auog"
		},
	}
}
