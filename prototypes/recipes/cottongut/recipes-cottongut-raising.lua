------------------CUB MAKER------------------

py.autorecipes {
	name = "cottongut-cub",
	category = "rc",
	allowed_module_categories = {"cottongut"},
	subgroup = "py-alienlife-cottongut",
	order = "c",
	main_product = "cottongut-pup",
	crafting_speed = 20,
	number_icons = true,
	mats =
	{
		--red
		{
			ingredients =
			{
				{name = "cottongut",     amount = 4},
				{name = "moondrop",      amount = 2, fallback = "fawogae"},
				{name = "ralesia-seeds", amount = 15},
				{name = "water-barrel",  amount = 3, return_barrel = true},
			},
			results =
			{
				{name = "cottongut-pup", amount = 10},
			},
			tech = "cottongut-mk01"
		},
		--green
		{
			ingredients =
			{
				{name = "ralesia-seeds",     remove_item = true},
				{name = "yotoi-seeds",       amount = 10},
				{name = "bhoddos",           amount = 1},
				{name = "bedding",           amount = 1},
				{name = "cottongut-food-01", amount = 1},
				{name = "barrel-milk",       amount = 2},
			},
			results =
			{
				{name = "empty-barrel-milk", amount = 2},
				{name = "cottongut-pup",     add_amount = 6},
			},
			tech = "cottongut-mk02"
		},
		--py
		{
			ingredients =
			{
				{name = "cottongut-food-01", add_amount = 2},
				{name = "cottongut-food-02", amount = 1},
				{name = "bhoddos",           add_amount = 2},

			},
			results =
			{
				{name = "cottongut-pup", add_amount = 12},
			},
			tech = "cottongut-mk03"
		},
		--prod
		{
			ingredients =
			{
				{name = "grod-seeds", amount = 10},
			},
			results =
			{
				{name = "cottongut-pup", add_amount = 18},
			},
			tech = "cottongut-mk04"
		},
	}
}

--raising

py.autorecipes {
	name = "caged-cottongut",
	category = "cottongut",
	subgroup = "py-alienlife-cottongut",
	order = "b",
	main_product = "cottongut",
	number_icons = true,
	mats =
	{
		--red
		{
			ingredients =
			{
				{name = "cottongut-pup", amount = 7},
				{name = "moondrop",      amount = 4, fallback = "fawogae"},
				{name = "wood-seeds",    amount = 4},
				{name = "water-barrel",  amount = 2, return_barrel = true},
				{name = "ralesia-seeds", amount = 3},
			},
			results =
			{
				{name = "cottongut", amount = 6},
			},
			crafting_speed = 150,
			tech = "cottongut-mk01"
		},
		--green
		{
			ingredients =
			{
				{name = "cottongut-pup",     add_amount = 4},
				{name = "wood-seeds",        remove_item = true},
				{name = "ralesia-seeds",     remove_item = true},
				{name = "cottongut-food-01", amount = 1},
				{name = "bedding",           amount = 1},
				{name = "tuuphra-seeds",     amount = 5},
			},
			results =
			{
				{name = "cottongut", add_amount = 3},
			},
			crafting_speed = 130,
			tech = "cottongut-mk02"
		},
		--py
		{
			ingredients =
			{
				{name = "cottongut-pup",     add_amount = 5},
				{name = "cottongut-food-01", add_amount = 2},
				{name = "cottongut-food-02", amount = 1},
				{name = "bhoddos",           amount = 4},

			},
			results =
			{
				{name = "cottongut", add_amount = 4},
			},
			crafting_speed = 110,
			tech = "cottongut-mk03"
		},
		--prod
		{
			ingredients =
			{
				{name = "cottongut-pup", add_amount = 7},
				{name = "grod-seeds",    amount = 10},
			},
			results =
			{
				{name = "cottongut", add_amount = 7},
			},
			crafting_speed = 90,
			tech = "cottongut-mk04"
		},
	}
}

--[[
		-----------------------PHEROMONES-----------------------------
		{
			ingredients =
				{
					{name='raw-fiber',remove_item = true},
					{name='salt',remove_item = true},
					{name='cottongut-food-02',remove_item = true},
					{name='bhoddos', amount =3},
					{name='pheromones', amount =1},
                    {name='yotoi-seeds', amount =15},
					--{name='water-barrel', amount=6,return_barrel = true},
					--{name='bedding', amount = 1},
				},
			results =
				{
					{name='cottongut-pup',remove_item = true},
					{name='cottongut-pup', amount =2},
				},
			crafting_speed = 70,
			tech = 'pheromones'
		},
		--food 1
		{
			ingredients =
				{
                    {name='yotoi-seeds',remove_item = true},
                    {name='bhoddos',remove_item = true},
					{name='cottongut-food-01', amount =1},
				},
			results =
				{

				},
			crafting_speed = 60,
			tech = 'pheromones'
		},
		--salt
		{
			ingredients =
				{
					{name='salt', amount = 10},
				},
			results =
				{

				},
			crafting_speed = 55,
			tech = 'pheromones'
		},
		--fiber
		{
			ingredients =
				{
					{name='raw-fiber', amount = 5},
				},
			results =
				{

				},
			crafting_speed = 50,
			tech = 'pheromones'
		},
		--food 2
		{
			ingredients =
				{
					{name='cottongut-food-01',remove_item = true},
					{name='salt',remove_item = true},
					{name='raw-fiber',remove_item = true},
					{name='cottongut-food-02', amount =1},

				},
			results =
				{

				},
			crafting_speed = 50,
			tech = 'pheromones'
		},
		--food 2 salt
		{
			ingredients =
				{
					{name='salt', amount = 10},
				},
			results =
				{

				},
			crafting_speed = 45,
			tech = 'pheromones'
		},
		--food 2 salt fiber
		{
			ingredients =
				{
					{name='raw-fiber', amount = 5},
				},
			results =
				{

				},
			crafting_speed = 40,
			tech = 'pheromones'
		},
	}
}
]] --
