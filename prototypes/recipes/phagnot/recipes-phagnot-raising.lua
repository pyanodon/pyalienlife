------------------CUB MAKER------------------

py.autorecipes {
	name = "phagnot-cub",
	category = "rc",
	allowed_module_categories = {"phagnot"},
	main_product = "phagnot-cub",
	subgroup = "py-alienlife-phagnot",
	order = "c",
	mats =
	{
		--logistic
		{
			ingredients =
			{
				--{name = 'phagnot', amount = 2},
				{name = "bhoddos",         amount = 3},
				{name = "yotoi-seeds",     amount = 30},
				{name = "phagnot-food-01", amount = 2},
				{name = "bedding",         amount = 1},
				{name = "water-barrel",    amount = 10, return_barrel = true},
			},
			results =
			{
				{name = "phagnot-cub", amount = 6},
				--{name = 'manure', amount = 2},
			},
			crafting_speed = 20,
			tech = "phagnot"
		},
		--py
		{
			ingredients =
			{
				{name = "salt",      amount = 10},
				{name = "raw-fiber", amount = 15},
			},
			results =
			{
				{name = "phagnot-cub", add_amount = 2},
				{name = "manure",      add_amount = 2},
			},
			crafting_speed = 18,
			tech = "phagnot-mk02"
		},
		--chem
		{
			ingredients =
			{
				{name = "phagnot-food-01", remove_item = true},
				{name = "phagnot-food-02", amount = 2},
				{name = "salt",            add_amount = 10},

			},
			results =
			{
				{name = "phagnot-cub", add_amount = 2},
				{name = "manure",      add_amount = 2},
			},
			crafting_speed = 16,
			tech = "phagnot-mk03"
		},
		--prod
		{
			ingredients =
			{
				{name = "raw-fiber", add_amount = 15},
			},
			results =
			{
				{name = "phagnot-cub", add_amount = 2},
				{name = "manure",      add_amount = 2},
			},
			crafting_speed = 14,
			tech = "phagnot-mk04"
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
					{name='phagnot-food-02',remove_item = true},
					{name='bhoddos', amount =6},
					{name='pheromones', amount =1},
                    {name='yotoi-seeds', amount =30},
					--{name='water-barrel', amount=6,return_barrel = true},
					--{name='bedding', amount = 1},
				},
			results =
				{
					{name='phagnot-cub',remove_item = true},
					{name='phagnot-cub', amount =6},
				},
			crafting_speed = 140,
			tech = 'pheromones'
		},
		--food 1
		{
			ingredients =
				{
                    {name='yotoi-seeds',remove_item = true},
                    {name='bhoddos',remove_item = true},
					{name='phagnot-food-01', amount =2},
				},
			results =
				{

				},
			crafting_speed = 120,
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
			crafting_speed = 110,
			tech = 'pheromones'
		},
		--fiber
		{
			ingredients =
				{
					{name='raw-fiber', amount = 10},
				},
			results =
				{

				},
			crafting_speed = 100,
			tech = 'pheromones'
		},
		--food 2
		{
			ingredients =
				{
					{name='phagnot-food-01',remove_item = true},
					{name='salt',remove_item = true},
					{name='raw-fiber',remove_item = true},
					{name='phagnot-food-02', amount =2},

				},
			results =
				{

				},
			crafting_speed = 100,
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
			crafting_speed = 90,
			tech = 'pheromones'
		},
		--food 2 salt fiber
		{
			ingredients =
				{
					{name='raw-fiber', amount =10},
				},
			results =
				{

				},
			crafting_speed = 80,
			tech = 'pheromones'
		},
	}
}
]] --

--raising

py.autorecipes {
	name = "phagnot",
	category = "phagnot",
	main_product = "phagnot",
	subgroup = "py-alienlife-phagnot",
	order = "b",
	upgrades =
	{
		{
			tech = "bigger-colon",
			ingredient_changes =
			{
				{name = "fiber", amount = 4}
			},
			result_changes =
			{
				{name = "manure",  add_amount = 4},
				{name = "phagnot", subtract_percent_amount = 0.1, round_direction = "up"}
			},
		},
		{
			tech = "explosive-diarrhea",
			ingredient_changes =
			{
				{name = "ethylene-glycol", amount = 100}
			},
			result_changes =
			{
				{name = "manure",  add_amount = 6},
				{name = "phagnot", subtract_percent_amount = 0.2, round_direction = "up"}
			}
		},
	},
	mats =
	{
		--logistic
		{
			ingredients =
			{
				{name = "phagnot-cub",     amount = 6},
				{name = "bhoddos",         amount = 3},
				{name = "phagnot-food-01", amount = 1},
				{name = "water-barrel",    amount = 3, return_barrel = true},
			},
			results =
			{
				{name = "phagnot", amount = 3},
				--{name = 'manure', amount = 4},
			},
			crafting_speed = 150,
			tech = "phagnot"
		},
		--py
		{
			ingredients =
			{
				{name = "phagnot-cub", add_amount = 4},
				{name = "salt",        amount = 3},
				{name = "raw-fiber",   amount = 10},
				{name = "bedding",     amount = 1},
			},
			results =
			{
				{name = "phagnot", add_amount = 3},
				{name = "manure",  add_amount = 4},
			},
			crafting_speed = 130,
			tech = "phagnot-mk02"
		},
		--chem
		{
			ingredients =
			{
				{name = "phagnot-cub",     add_amount = 4},
				{name = "phagnot-food-01", remove_item = true},
				{name = "phagnot-food-02", amount = 1},
				{name = "salt",            amount = 3},

			},
			results =
			{
				{name = "phagnot", add_amount = 3},
				{name = "manure",  add_amount = 4},
			},
			crafting_speed = 110,
			tech = "phagnot-mk03"
		},
		--prod
		{
			ingredients =
			{
				{name = "phagnot-cub", add_amount = 4},
				{name = "raw-fiber",   amount = 10},
			},
			results =
			{
				{name = "phagnot", add_amount = 3},
				{name = "manure",  add_amount = 4},
			},
			crafting_speed = 90,
			tech = "phagnot-mk04"
		},
	}
}

--[[
		--gh
		{
			ingredients =
				{
					{name='gh', amount =1},

				},
			results =
				{

				},
			crafting_speed = 30,
			tech = 'growth-hormone'
		},
		--antiviral and gh
		{
			ingredients =
				{
					{name='antiviral', amount =1},
				},
			results =
				{
					{name='caged-phagnot', remove_item = true},
					{name='caged-phagnot', probability = 1, amount_min =1, amount_max =2},
				},
			crafting_speed = 30,
			tech = 'antiviral'
		},
		--antiviral
		{
			ingredients =
				{
					--{name='antiviral', amount =1},
					{name='gh',remove_item = true},
				},
			results =
				{

				},
			crafting_speed = 90,
			tech = 'antiviral'
		},
		--nanochondria
		{
			ingredients =
				{
					{name='nanochondria', amount =1},
					--{name='antiviral',remove_item = true},
				},
			results =
				{
					{name='caged-phagnot', remove_item = true},
					{name='brain-caged-phagnot', amount = 1},
				},
			crafting_speed = 90,
			tech = 'nanochondria'
		},
		--nanochondria and gh
		{
			ingredients =
				{
					--{name='nanochondria', amount =1},
					{name='gh', amount =1},
				},
			results =
				{

				},
			crafting_speed = 30,
			tech = 'nanochondria'
		},
		--bmp
		{
			ingredients =
				{
					{name='gh',remove_item = true},
					{name='nanochondria',remove_item = true},
					{name='bmp', amount =1},
				},
			results =
				{
					{name='brain-caged-phagnot', remove_item = true},
					{name='bone-caged-phagnot', amount = 1},
				},
			crafting_speed = 90,
			tech = 'bmp'
		},

		--bmp and gh
		{
			ingredients =
				{
					--{name='nanochondria', amount =1},
					{name='gh', amount =1},
				},
			results =
				{

				},
			crafting_speed = 30,
			tech = 'bmp'
		},
		--rna anabolic
		{
			ingredients =
				{
					{name='gh',remove_item = true},
					{name='bmp',remove_item = true},
					{name='anabolic-rna', amount =1},
				},
			results =
				{
					{name='bone-caged-phagnot', remove_item = true},
					{name='meat-caged-phagnot', amount = 1},
				},
			crafting_speed = 90,
			tech = 'anabolic-rna'
		},
		--rna anabolic and gh
		{
			ingredients =
				{
					--{name='nanochondria', amount =1},
					{name='gh', amount =1},
				},
			results =
				{

				},
			crafting_speed = 30,
			tech = 'anabolic-rna'
		},
		--antitumor
		{
			ingredients =
				{
					{name='gh',remove_item = true},
					{name='anabolic-rna',remove_item = true},
					{name='antitumor', amount =1},
				},
			results =
				{
					{name='meat-caged-phagnot', remove_item = true},
					{name='guts-caged-phagnot', amount = 1},
				},
			crafting_speed = 90,
			tech = 'antitumor'
		},
		--antitumor and gh
		{
			ingredients =
				{
					--{name='nanochondria', amount =1},
					{name='gh', amount =1},
				},
			results =
				{

				},
			crafting_speed = 30,
			tech = 'antitumor'
		},
		--Recombinant Ery
		{
			ingredients =
				{
					{name='gh',remove_item = true},
					{name='antitumor',remove_item = true},
					{name='recombinant-ery', amount =1},
				},
			results =
				{
					{name='guts-caged-phagnot', remove_item = true},
					{name='blood-caged-phagnot', amount = 1},
				},
			crafting_speed = 90,
			tech = 'recombinant-ery'
		},
		--Recombinant Ery and gh
		{
			ingredients =
				{
					{name='gh', amount =1},
				},
			results =
				{

				},
			crafting_speed = 30,
			tech = 'recombinant-ery'
		},
		--reca
		{
			ingredients =
				{
					{name='gh',remove_item = true},
					{name='recombinant-ery',remove_item = true},
					{name='reca', amount =1},
				},
			results =
				{
					{name='blood-caged-phagnot', remove_item = true},
					{name='skin-caged-phagnot', amount = 1},
				},
			crafting_speed = 90,
			tech = 'reca'
		},
		--reca and gh
		{
			ingredients =
				{
					{name='gh', amount =1},
				},
			results =
				{

				},
			crafting_speed = 30,
			tech = 'reca'
		},
	}
}
]] --
