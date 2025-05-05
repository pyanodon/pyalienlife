------------------pup MAKER------------------

py.autorecipes {
	name = "phadai-pup",
	category = "rc",
	allowed_module_categories = {"phadai"},
	subgroup = "py-alienlife-phadai",
	order = "c",
	main_product = "phadai-pup",
	number_icons = true,
	mats =
	{
		{
			ingredients =
			{
				{name = "cottongut",            amount = 6},
				{name = "fawogae",              amount = 20},
				{name = "water-barrel",         amount = 15, return_barrel = true},
				{name = "bedding",              amount = 1},
				{name = "programmable-speaker", amount = 1},
				{name = "small-lamp",           amount = 2},
				--{name = 'phadai', amount = 3},
			},
			results =
			{
				{name = "phadai-pup", amount = 3},
				--{name = 'phadai', amount = 2},
			},
			crafting_speed = 70,
			tech = "phadai"
		},
		--food 1
		{
			ingredients =
			{
				{name = "fawogae",        remove_item = true},
				{name = "meat",           remove_item = true},
				{name = "meat",           amount = 20},
				{name = "phadai-food-01", amount = 2},
			},
			results =
			{
				{name = "phadai-pup", add_amount = 1},
			},
			crafting_speed = 60,
			tech = "phadai"
		},
		--fawogae
		{
			ingredients =
			{
				{name = "fawogae", amount = 20},
			},
			results =
			{
				{name = "phadai-pup", add_amount = 1},
			},
			crafting_speed = 50,
			tech = "phadai-mk02"
		},
		--energy-drink
		{
			ingredients =
			{
				{name = "energy-drink", amount = 6},
			},
			results =
			{
				{name = "phadai-pup", add_amount = 1},
			},
			crafting_speed = 40,
			tech = "phadai-mk02"
		},
		--food 2
		{
			ingredients =
			{
				{name = "phadai-food-01", remove_item = true},
				{name = "fawogae",        remove_item = true},
				{name = "energy-drink",   remove_item = true},
				{name = "phadai-food-02", amount = 2},

			},
			results =
			{
				{name = "phadai-pup", add_amount = 1},
			},
			crafting_speed = 30,
			tech = "phadai-mk03"
		},
		--food 2 fawogae
		{
			ingredients =
			{
				{name = "fawogae", amount = 10},
			},
			results =
			{
				{name = "phadai-pup", add_amount = 1},
			},
			crafting_speed = 20,
			tech = "phadai-mk03"
		},
		--food 2 fawogae energy-drink
		{
			ingredients =
			{
				{name = "energy-drink", add_amount = 6},
			},
			results =
			{
				{name = "phadai-pup", add_amount = 1},
			},
			crafting_speed = 10,
			tech = "phadai-mk04"
		},
	}
}

--[[
		-----------------------PHEROMONES-----------------------------
		{
			ingredients =
				{
					{name='energy-drink',remove_item = true},
					{name='fawogae',remove_item = true},
					{name='phadai-food-02',remove_item = true},
					--{name='meat', amount =15},
					{name='pheromones', amount =1},
                    {name='fawogae', amount =30},
					--{name='water-barrel', amount=6,return_barrel = true},
					--{name='bedding', amount = 1},
				},
			results =
				{
					{name='phadai-pup',remove_item = true},
					{name='phadai-pup', amount =5},
				},
			crafting_speed = 140,
			tech = 'pheromones'
		},
		--food 1
		{
			ingredients =
				{
                    {name='fawogae',remove_item = true},
					{name='phadai-food-01', amount =2},
				},
			results =
				{

				},
			crafting_speed = 120,
			tech = 'pheromones'
		},
		--fawogae
		{
			ingredients =
				{
					{name='fawogae', amount = 20},
				},
			results =
				{

				},
			crafting_speed = 110,
			tech = 'pheromones'
		},
		--energy-drink
		{
			ingredients =
				{
					{name='energy-drink', amount = 10},
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
					{name='phadai-food-01',remove_item = true},
					{name='fawogae',remove_item = true},
					{name='energy-drink',remove_item = true},
					{name='phadai-food-02', amount =2},

				},
			results =
				{

				},
			crafting_speed = 100,
			tech = 'pheromones'
		},
		--food 2 fawogae
		{
			ingredients =
				{
					{name='fawogae', amount = 5},
				},
			results =
				{

				},
			crafting_speed = 90,
			tech = 'pheromones'
		},
		--food 2 fawogae energy-drink
		{
			ingredients =
				{
					{name='energy-drink', amount = 7},
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
	name = "phadai",
	category = "phadai",
	subgroup = "py-alienlife-phadai",
	order = "b",
	main_product = "phadai",
	number_icons = true,
	mats =
	{
		--chem
		{
			ingredients =
			{
				{name = "phadai-pup",           amount = 10},
				{name = "cottongut",            amount = 2},
				{name = "meat",                 amount = 10},
				{name = "phadai-food-01",       amount = 1},
				{name = "water-barrel",         amount = 4, return_barrel = true},
				{name = "programmable-speaker", amount = 1},
				{name = "small-lamp",           amount = 2},
			},
			results =
			{
				{name = "phadai", amount = 5},
			},
			crafting_speed = 150,
			tech = "phadai"
		},
		--py
		{
			ingredients =
			{
				{name = "fawogae",      amount = 5},
				{name = "bedding",      amount = 4},
				{name = "energy-drink", amount = 4},
			},
			results =
			{
				{name = "phadai", add_amount = 1},
			},
			crafting_speed = 130,
			tech = "phadai-mk02"
		},
		--production
		{
			ingredients =
			{
				{name = "phadai-food-01", remove_item = true}, {name = "phadai-food-02", amount = 1}, {name = "fawogae", add_amount = 5},

			},
			results =
			{
				{name = "phadai", add_amount = 1},
			},
			crafting_speed = 110,
			tech = "phadai-mk03"
		},
		--utility
		{
			ingredients =
			{
				{name = "phadai-food-01", amount = 1},
			},
			results =
			{
				{name = "phadai", add_amount = 1},
			},
			crafting_speed = 90,
			tech = "phadai-mk04"
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
					{name='caged-phadai', remove_item = true},
					{name='caged-phadai', probability = 1, amount_min =1, amount_max =2},
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
					{name='caged-phadai', remove_item = true},
					{name='brain-caged-phadai', amount = 1},
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
					{name='brain-caged-phadai', remove_item = true},
					{name='bone-caged-phadai', amount = 1},
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
					{name='bone-caged-phadai', remove_item = true},
					{name='meat-caged-phadai', amount = 1},
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
					{name='meat-caged-phadai', remove_item = true},
					{name='guts-caged-phadai', amount = 1},
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
					{name='guts-caged-phadai', remove_item = true},
					{name='blood-caged-phadai', amount = 1},
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
					{name='blood-caged-phadai', remove_item = true},
					{name='skin-caged-phadai', amount = 1},
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
					{name='skin-caged-phadai', remove_item = true},
					{name='fat-caged-phadai', amount = 1},
				},
			crafting_speed = 80,
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
