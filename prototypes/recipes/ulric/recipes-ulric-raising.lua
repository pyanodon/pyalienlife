------------------CUB MAKER------------------

py.autorecipes {
	name = "ulric-cub",
	category = "rc",
	allowed_module_categories = {"ulric"},
	subgroup = "py-alienlife-ulric",
	order = "c",
	main_product = "ulric-cub",
	number_icons = true,
	mats =
	{
		--logistic
		{
			ingredients =
			{
				--{name = 'ulric', amount = 2},
				{name = "fawogae",       amount = 3},
				{name = "ulric-food-01", amount = 2},
				{name = "water-barrel",  amount = 15, return_barrel = true},
			},
			results =
			{
				--{name = 'ulric', amount = 2,},
				{name = "ulric-cub", amount = 3},
				--{name = 'manure', amount = 1}
			},
			crafting_speed = 15,
			tech = "ulric"
		},
		--py
		{
			ingredients =
			{
				{name = "ulric",         add_amount = 1},
				{name = "ralesia-seeds", amount = 15},
				{name = "salt",          amount = 10},
				{name = "bedding",       amount = 1},
			},
			results =
			{
				{name = "ulric-cub", add_amount = 3},
				{name = "ulric",     add_amount = 1},
			},
			crafting_speed = 12,
			tech = "ulric-mk02"
		},
		--chem
		{
			ingredients =
			{
				{name = "ulric",         add_amount = 1},
				{name = "raw-fiber",     amount = 10},
				{name = "ulric-food-01", remove_item = true},
				{name = "ulric-food-02", amount = 2},
			},
			results =
			{
				{name = "ulric-cub", add_amount = 3},
				{name = "ulric",     add_amount = 1},
			},
			crafting_speed = 10,
			tech = "ulric-mk03"
		},
		--prod
		{
			ingredients =
			{
				{name = "ulric",     add_amount = 1},
				{name = "raw-fiber", add_amount = 10},
			},
			results =
			{
				{name = "ulric-cub", add_amount = 3},
				{name = "ulric",     add_amount = 1},
				--{name = 'manure', add_amount = 1}
			},
			crafting_speed = 8,
			tech = "ulric-mk04"
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
					{name='ulric-food-02',remove_item = true},
					{name='fawogae', amount =30},
					{name='pheromones', amount =1},
                    {name='ralesia-seeds', amount =30},
					--{name='water-barrel', amount=6,return_barrel = true},
					--{name='bedding', amount = 1},
				},
			results =
				{
					{name='ulric-cub',remove_item = true},
					{name='ulric-cub', amount =5},
				},
			crafting_speed = 140,
			tech = 'pheromones'
		},
		--food 1
		{
			ingredients =
				{
                    {name='ralesia-seeds',remove_item = true},
                    {name='fawogae',remove_item = true},
					{name='ulric-food-01', amount =2},
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
					{name='ulric-food-01',remove_item = true},
					{name='salt',remove_item = true},
					{name='raw-fiber',remove_item = true},
					{name='ulric-food-02', amount =2},

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
					{name='salt',remove_item = true},
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
					{name='raw-fiber', amount = 10},
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
	name = "ulric",
	category = "ulric",
	subgroup = "py-alienlife-ulric",
	order = "b",
	main_product = "ulric",
	number_icons = true,
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
				{name = "ulric",  subtract_percent_amount = 0.1, round_direction = "up"}
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
				{name = "ulric",  subtract_percent_amount = 0.2, round_direction = "up"}
			}
		},
	},
	mats =
	{
		--logistic
		{
			ingredients =
			{
				{name = "ulric-cub",     amount = 3},
				{name = "ralesia-seeds", amount = 15},
				{name = "ulric-food-01", amount = 1},
				{name = "water-barrel",  amount = 5, return_barrel = true},
			},
			results =
			{
				{name = "ulric", amount = 3},
				--{name = 'manure', amount = 3}
			},
			crafting_speed = 150,
			tech = "ulric"
		},
		--py
		{
			ingredients =
			{
				{name = "ulric-cub", add_amount = 3},
				{name = "salt",      amount = 5},
				{name = "bedding",   amount = 1},
			},
			results =
			{
				{name = "ulric", add_amount = 3},
				--{name = 'manure', add_amount = 3}
			},
			crafting_speed = 130,
			tech = "ulric-mk02"
		},
		--chem
		{
			ingredients =
			{
				{name = "ulric-cub",     add_amount = 3},
				{name = "raw-fiber",     amount = 5},
				{name = "ulric-food-01", remove_item = true},
				{name = "ulric-food-02", amount = 1},
			},
			results =
			{
				{name = "ulric", add_amount = 3},
				--{name = 'manure', add_amount = 3}
			},
			crafting_speed = 120,
			tech = "ulric-mk03"
		},
		--prod
		{
			ingredients =
			{
				{name = "ulric-cub", add_amount = 3},
				{name = "salt",      amount = 5},
				{name = "raw-fiber", amount = 5},
			},
			results =
			{
				{name = "ulric", add_amount = 3},
				--{name = 'manure', add_amount = 3}
			},
			crafting_speed = 100,
			tech = "ulric-mk04"
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
					{name='caged-ulric', remove_item = true},
					{name='caged-ulric', probability = 1, amount_min =1, amount_max =2},
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
					{name='caged-ulric', remove_item = true},
					{name='brain-caged-ulric', amount = 1},
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
					{name='brain-caged-ulric', remove_item = true},
					{name='bone-caged-ulric', amount = 1},
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
					{name='bone-caged-ulric', remove_item = true},
					{name='meat-caged-ulric', amount = 1},
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
					{name='meat-caged-ulric', remove_item = true},
					{name='guts-caged-ulric', amount = 1},
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
					{name='guts-caged-ulric', remove_item = true},
					{name='blood-caged-ulric', amount = 1},
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
					{name='blood-caged-ulric', remove_item = true},
					{name='skin-caged-ulric', amount = 1},
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
		--orexigenic
		{
			ingredients =
				{
					{name='gh',remove_item = true},
					{name='reca',remove_item = true},
					{name='orexigenic', amount =1},
				},
			results =
				{
					{name='skin-caged-ulric', remove_item = true},
					{name='fat-caged-ulric', amount = 1},
				},
			crafting_speed = 90,
			tech = 'orexigenic'
		},
		--orexigenic and gh
		{
			ingredients =
				{
					{name='gh', amount =1},
				},
			results =
				{

				},
			crafting_speed = 30,
			tech = 'orexigenic'
		},
	}
}
]] --
