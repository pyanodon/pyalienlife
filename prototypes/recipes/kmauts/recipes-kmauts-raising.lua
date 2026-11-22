------------------CUB MAKER------------------

py.autorecipes {
	name = "kmauts-cub",
	category = "rc",
	allowed_module_categories = {"kmauts"},
	subgroup = "py-alienlife-kmauts",
	order = "c",
	main_product = "kmauts-cub",
	number_icons = true,
	mats =
	{
		{
			ingredients =
			{
				--{name='kmauts', amount = 2},
				{name = "caged-ulric",  amount = 1},
				{name = "rennea",       amount = 10},
				{name = "water-barrel", amount = 4, return_barrel = true},
				{name = "bedding",      amount = 1},
			},
			results =
			{
				--{name='kmauts', amount = 2, probability = 0.999},
				{name = "kmauts-cub", amount = 2},
				{name = "cage",       amount = 1},
			},
			crafting_speed = 15,
			tech = "kmauts"
		},
		--food 1
		{
			ingredients =
			{
				{name = "kmauts-ration", amount = 2},
			},
			results =
			{
				{name = "kmauts-cub", add_amount = 3},
			},
			crafting_speed = 12,
			tech = "kmauts-mk02"
		},
		--rennea
		{
			ingredients =
			{
				{name = "rennea", add_amount = 10},
			},
			results =
			{
				{name = "kmauts-cub", add_amount = 4},
			},
			crafting_speed = 10,
			tech = "kmauts-mk03"
		},
		--tuuphra
		{
			ingredients =
			{
				{name = "tuuphra", amount = 10},
			},
			results =
			{
				{name = "kmauts-cub", add_amount = 5},
			},
			crafting_speed = 8,
			tech = "kmauts-mk04"
		},
	}
}
--[[
		-----------------------PHEROMONES-----------------------------
		{
			ingredients =
				{
					{name='tuuphra',remove_item = true},
					{name='rennea',remove_item = true},
					{name='kmauts-ration',remove_item = true},
					{name='caged-ulric', amount =4},
					{name='pheromones', amount =2},
                    {name='rennea', amount =15},
					--{name='water-barrel', amount=6,return_barrel = true},
					--{name='bedding', amount = 1},
				},
			results =
				{
					{name='kmauts-cub',remove_item = true},
					{name='kmauts-cub', amount =6},
				},
			crafting_speed = 60,
			tech = 'pheromones'
		},
		--food 1
		{
			ingredients =
				{
                    {name='rennea',remove_item = true},
                    {name='caged-ulric',remove_item = true},
					{name='kmauts-ration', amount =1},
				},
			results =
				{
					{name='kmauts-cub', add_amount = "6"},
				},
			crafting_speed = 50,
			tech = 'pheromones'
		},
		--rennea
		{
			ingredients =
				{
					{name='rennea', amount = 5},
				},
			results =
				{
					{name='kmauts-cub', add_amount = "1"},
				},
			crafting_speed = 40,
			tech = 'pheromones'
		},
		--tuuphra
		{
			ingredients =
				{
					{name='tuuphra', amount = 5},
				},
			results =
				{
					{name='kmauts-cub', add_amount = "2"},
				},
			crafting_speed = 35,
			tech = 'pheromones'
		},
	}
}
]] --

--raising

py.autorecipes {
	name = "kmauts",
	category = "kmauts",
	subgroup = "py-alienlife-kmauts",
	order = "b",
	main_product = "kmauts",
	number_icons = true,
	mats =
	{
		--logistic
		{
			ingredients =
			{
				{name = "kmauts-cub",   amount = 2},
				{name = "caged-ulric",  amount = 1},
				{name = "water-barrel", amount = 4, return_barrel = true},
			},
			results =
			{
				{name = "kmauts", amount = 1},
				{name = "cage",   amount = 1},
			},
			crafting_speed = 150,
			tech = "kmauts"
		},
		--py
		{
			ingredients =
			{
				{name = "kmauts-cub",    add_amount = 2},
				{name = "kmauts-ration", amount = 2},
			},
			results =
			{
				{name = "kmauts", add_amount = 2},
			},
			crafting_speed = 130,
			tech = "kmauts-mk02"
		},
		--chem
		{
			ingredients =
			{
				{name = "kmauts-cub", add_amount = 2},
				{name = "rennea",     amount = 3},
				{name = "bedding",    amount = 1},
			},
			results =
			{
				{name = "kmauts", add_amount = 2},
			},
			crafting_speed = 110,
			tech = "kmauts-mk03"
		},
		--prod
		{
			ingredients =
			{
				{name = "kmauts-cub", add_amount = 2},
				{name = "tuuphra",    amount = 10},
			},
			results =
			{
				{name = "kmauts", add_amount = 3},
			},
			crafting_speed = 90,
			tech = "kmauts-mk04"
		},
	}
}

--[[
		--gh
		{
			ingredients =
				{
					{name='gh', amount =2},

				},
			results =
				{
					{name='caged-kmauts', remove_item = true},
					{name='caged-kmauts', probability = 0.8, amount_min =3, amount_max =4},   --2.8
				},
			crafting_speed = 25,
			tech = 'growth-hormone'
		},
		--antiviral and gh
		{
			ingredients =
				{
					{name='antiviral', amount =2},
				},
			results =
				{
					{name='caged-kmauts', remove_item = true},
					{name='caged-kmauts', probability = 1, amount_min =3, amount_max =3},
				},
			crafting_speed = 25,
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
			crafting_speed = 80,
			tech = 'antiviral'
		},
		--nanochondria
		{
			ingredients =
				{
					{name='nanochondria', amount =2},
					--{name='antiviral',remove_item = true},
				},
			results =
				{
					{name='caged-kmauts', remove_item = true},
					{name='brain-caged-kmauts', amount = 3},
				},
			crafting_speed = 70,
			tech = 'nanochondria'
		},
		--nanochondria and gh
		{
			ingredients =
				{
					--{name='nanochondria', amount =1},
					{name='gh', amount =2},
				},
			results =
				{

				},
			crafting_speed = 25,
			tech = 'nanochondria'
		},
		--rna anabolic
		{
			ingredients =
				{
					{name='gh',remove_item = true},
					{name='nanochondria',remove_item = true},
					{name='anabolic-rna', amount =2},
				},
			results =
				{
					{name='brain-caged-kmauts', remove_item = true},
					{name='meat-caged-kmauts', amount = 3},
				},
			crafting_speed = 70,
			tech = 'anabolic-rna'
		},
		--rna anabolic and gh
		{
			ingredients =
				{
					--{name='nanochondria', amount =1},
					{name='gh', amount =2},
				},
			results =
				{

				},
			crafting_speed = 25,
			tech = 'anabolic-rna'
		},
		--antitumor
		{
			ingredients =
				{
					{name='gh',remove_item = true},
					{name='anabolic-rna',remove_item = true},
					{name='antitumor', amount =2},
				},
			results =
				{
					{name='meat-caged-kmauts', remove_item = true},
					{name='guts-caged-kmauts', amount = 3},
				},
			crafting_speed = 70,
			tech = 'antitumor'
		},
		--antitumor and gh
		{
			ingredients =
				{
					--{name='nanochondria', amount =1},
					{name='gh', amount =2},
				},
			results =
				{

				},
			crafting_speed = 25,
			tech = 'antitumor'
		},
		--Recombinant Ery
		{
			ingredients =
				{
					{name='gh',remove_item = true},
					{name='antitumor',remove_item = true},
					{name='recombinant-ery', amount =2},
				},
			results =
				{
					{name='guts-caged-kmauts', remove_item = true},
					{name='blood-caged-kmauts', amount = 3},
				},
			crafting_speed = 70,
			tech = 'recombinant-ery'
		},
		--Recombinant Ery and gh
		{
			ingredients =
				{
					{name='gh', amount =2},
				},
			results =
				{

				},
			crafting_speed = 25,
			tech = 'recombinant-ery'
        },
		--orexigenic
		{
			ingredients =
				{
					{name='gh',remove_item = true},
					{name='recombinant-ery',remove_item = true},
					{name='orexigenic', amount =2},
				},
			results =
				{
					{name='blood-caged-kmauts', remove_item = true},
					{name='fat-caged-kmauts', amount = 3},
				},
			crafting_speed = 70,
			tech = 'orexigenic'
		},
		--orexigenic and gh
		{
			ingredients =
				{
					{name='gh', amount =2},
				},
			results =
				{

				},
			crafting_speed = 25,
			tech = 'orexigenic'
		},
	}
}
]] --
