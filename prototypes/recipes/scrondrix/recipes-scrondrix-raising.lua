------------------CUB MAKER------------------

py.autorecipes {
	name = "scrondrix-cub",
	category = "rc",
	allowed_module_categories = {"scrondrix"},
	subgroup = "py-alienlife-scrondrix",
	order = "s",
	main_product = "scrondrix-pup",
	mats =
	{
		--chem
		{
			ingredients =
			{
				--{name = 'scrondrix', amount = 2},
				{name = "fawogae",      amount = 20},
				{name = "wood-seeds",   amount = 20},
				{name = "meat",         amount = 10},
				{name = "water-barrel", amount = 20, return_barrel = true},
			},
			results =
			{
				{name = "scrondrix-pup", amount = 5},
				--{name = 'scrondrix', amount = 2},
			},
			tech = "scrondrix",
			crafting_speed = 12,
			name = "Scrondrix-cub-1",
		},
		--py
		{
			ingredients =
			{
				{name = "yotoi-leaves", amount = 10},
				{name = "salt",         amount = 5},
				{name = "bedding",      amount = 1},
			},
			results =
			{
				{name = "scrondrix-pup", add_amount = 1},
			},
			crafting_speed = 10,
			tech = "scrondrix-mk02",
			name = "Scrondrix-cub-2",
		},
		--prod
		{
			ingredients =
			{
				{name = "raw-fiber", amount = 5},
				{name = "wood",      amount = 5}
			},
			results =
			{
				{name = "scrondrix-pup", add_amount = 2},
			},
			crafting_speed = 9,
			tech = "scrondrix-mk03",
			name = "Scrondrix-cub-3",
		},
		--prod
		{
			ingredients =
			{
				{name = "navens", amount = 8},
			},
			results =
			{
				{name = "scrondrix-pup", add_amount = 2},
			},
			crafting_speed = 8,
			tech = "scrondrix-mk04",
			name = "Scrondrix-cub-4",
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
					{name='navens',remove_item = true},
					{name='yotoi-leaves',remove_item = true},
					{name='pheromones', amount =1},
                    --{name='bedding', amount =4},
					--{name='water-barrel', amount=6,return_barrel = true},
					--{name='bedding', amount = 1},
				},
			results =
				{
					{name='scrondrix-pup',remove_item = true},
					{name='scrondrix-pup', amount =8},
				},
			crafting_speed = 140,
			tech = 'pheromones',
			name = 'Scrondrix-cub-6',
		},
		--yotoi leaves
		{
			ingredients =
				{
                    --{name='wood-seeds',remove_item = true},
                    --{name='fawogae', amount =15},
					{name='yotoi-leaves', amount =10},
				},
			results =
				{
					{name='scrondrix-pup', add_amount = 1},
				},
			crafting_speed = 120,
			tech = 'pheromones',
			name = 'Scrondrix-cub-7',
		},
		--salt
		{
			ingredients =
				{
					{name='salt', amount = 5},
				},
			results =
				{

				},
			crafting_speed = 110,
			tech = 'pheromones',
			name = 'Scrondrix-cub-8',
		},
		--fiber
		{
			ingredients =
				{
					{name='raw-fiber', amount = 10},
				},
			results =
				{
					{name='scrondrix-pup', add_amount = 2},
				},
			crafting_speed =100,
			tech = 'pheromones',
			name = 'Scrondrix-cub-9',
		},
		--navens
		{
			ingredients =
				{
					{name='navens', amount =5},

				},
			results =
				{
					{name='scrondrix-pup', add_amount = 2},
				},
			crafting_speed = 100,
			tech = 'pheromones',
			name = 'Scrondrix-cub-10',
		},
	}
}
]] --

--raising

py.autorecipes {
	name = "scrondrix",
	category = "scrondrix",
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
				{name = "manure",    add_amount = 4},
				{name = "scrondrix", subtract_percent_amount = 0.2, round_direction = "up"}
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
				{name = "manure",    add_amount = 6},
				{name = "scrondrix", subtract_percent_amount = 0.4, round_direction = "up"}
			}
		},
	},
	subgroup = "py-alienlife-scrondrix",
	order = "b",
	main_product = "scrondrix",
	mats =
	{
		--chem
		{
			ingredients =
			{
				{name = "scrondrix-pup", amount = 10},
				{name = "wood-seeds",    amount = 15},
				{name = "meat",          amount = 5},
				{name = "yotoi-leaves",  amount = 10},
				{name = "water-barrel",  amount = 5, return_barrel = true},
			},
			results =
			{
				{name = "scrondrix", amount = 5},
			},
			crafting_speed = 150,
			tech = "scrondrix",
			name = "Scrondrix-1",
		},
		--py
		--salt
		{
			ingredients =
			{
				{name = "salt",    amount = 5},
				{name = "bedding", amount = 1},
			},
			results =
			{
				{name = "scrondrix", add_amount = 1},
			},
			crafting_speed = 130,
			tech = "scrondrix-mk02",
			name = "Scrondrix-2",
		},
		--prod
		--fiber
		{
			ingredients =
			{
				{name = "raw-fiber", amount = 5},
				{name = "gh",        amount = 1},
			},
			results =
			{
				{name = "scrondrix", add_amount = 2},
			},
			crafting_speed = 90,
			tech = "scrondrix-mk03",
			name = "Scrondrix-3",
		},
		--prod
		--navens
		{
			ingredients =
			{
				{name = "navens",    amount = 5},
				{name = "antiviral", amount = 1},
			},
			results =
			{
				{name = "scrondrix", add_amount = 3},
			},
			crafting_speed = 90,
			tech = "scrondrix-mk04",
			name = "Scrondrix-4",
		},
	}
}
