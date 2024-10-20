------------------larva MAKER------------------

py.autorecipes {
	name = "xyhiphoe-cub",
	category = "rc",
	allowed_module_categories = {"xyhiphoe"},
	subgroup = "py-alienlife-xyhiphoe",
	order = "c",
	main_product = "xyhiphoe-cub",
	crafting_speed = 20,
	mats =
	{
		{
			ingredients =
			{
				--{name='xyhiphoe', amount =2},
				{name = "fish-food-01",     amount = 2},
				{name = "phytoplankton",    amount = 150,  fluidbox_index = 1},
				{name = "pressured-water",  amount = 1000, fluidbox_index = 2, return_item = {name = "waste-water", amount = 650}},
				{name = "saps",             amount = 6},
				{name = "filtration-media", amount = 2}
			},
			results =
			{
				{name = "xyhiphoe-cub", amount = 4},
			},
			tech = "water-invertebrates-mk01"
		},
		--blood-meal
		{
			ingredients =
			{
				{name = "blood-meal", amount = 4, fallback = {name = "blood-barrel", amount = 4}},
				{name = "albumin",    amount = 1}
			},
			results =
			{
				{name = "xyhiphoe-cub", add_amount = 3},
			},
			tech = "water-invertebrates-mk02"
		},
		--food 2
		{
			ingredients =
			{
				{name = "fish-egg", amount = 10},
			},
			results =
			{
				{name = "xyhiphoe-cub", add_amount = 3},
			},
			tech = "water-invertebrates-mk03"
		},
		--food 2 blood-meal
		{
			ingredients =
			{
				{name = "fish-food-01", remove_item = true},
				{name = "fish-food-02", amount = 2},
				{name = "fawogae",      amount = 5},
			},
			results =
			{
				{name = "xyhiphoe-cub", add_amount = 3},
			},
			tech = "water-invertebrates-mk04"
		},
	}
}

--[[
		-----------------------PHEROMONES-----------------------------
		{
			ingredients =
				{
                    {name='saps',remove_item = true},
                    {name='fawogae',remove_item = true},
                    {name='albumin',remove_item = true},
                    {name='fish-food-02',remove_item = true},
                    {name='blood-meal',remove_item = true},
                    {name='filtration-media',remove_item = true},
					{name='fish-egg',remove_item = true},
					--{name='fish-food-01', amount =15},
					{name='pheromones', amount =1},
                    --{name='phytoplankton', amount =15},
					--{name='water-barrel', amount=6,return_barrel = true},
					--{name='saps', amount = 1},
				},
			results =
				{
					{name='xyhiphoe-cub',remove_item = true},
					{name='xyhiphoe-cub', amount =25},
				},
			crafting_speed = 140,
			tech = 'pheromones'
		},
		--food 1
		{
			ingredients =
				{
                    --{name='phytoplankton',remove_item = true},
                    --{name='fish-food-01',remove_item = true},
					{name='filtration-media', amount =2},
				},
			results =
				{
					{name='xyhiphoe-cub', add_amount = 2},
				},
			crafting_speed = 120,
			tech = 'pheromones'
		},
		--blood-meal
		{
			ingredients =
				{
					{name='blood-meal', amount = 4, fallback = {name = 'blood', amount = 200}},
				},
			results =
				{
					{name='xyhiphoe-cub', add_amount = "3"},
				},
			crafting_speed = 110,
			tech = 'pheromones'
		},
		--fiber
		{
			ingredients =
				{
					{name='saps', amount = 5},
				},
			results =
				{
					{name='xyhiphoe-cub', add_amount = "3"},
				},
			crafting_speed = 100,
			tech = 'pheromones'
		},
		--food 2
		{
			ingredients =
				{
					--{name='filtration-media',remove_item = true},
					--{name='blood-meal',remove_item = true},
					--{name='saps',remove_item = true},
					{name='fish-egg', amount =10},

				},
			results =
				{
					{name='xyhiphoe-cub', add_amount = "15"},
				},
			crafting_speed = 90,
			tech = 'pheromones'
		},
		--food 2 blood-meal
		{
			ingredients =
				{
					{name='fish-food-01',remove_item = true},
					{name='fish-food-02', amount =2},
				},
			results =
				{
					{name='xyhiphoe-cub', add_amount = "4"},
				},
			crafting_speed = 80,
			tech = 'pheromones'
		},
		--food 2 blood-meal fiber
		{
			ingredients =
				{
					{name='fawogae', amount = 5},
				},
			results =
				{
					{name='xyhiphoe-cub', add_amount = "4"},
				},
			crafting_speed = 65,
			tech = 'pheromones'
		},

	}
}
]] --

--Raising

py.autorecipes {
	name = "xyhiphoe",
	category = "xyhiphoe",
	subgroup = "py-alienlife-xyhiphoe",
	order = "b",
	main_product = "xyhiphoe",
	mats =
	{
		{
			ingredients =
			{
				{name = "fish-food-01",     amount = 1},
				{name = "phytoplankton",    amount = 50,   fluidbox_index = 1},
				{name = "pressured-water",  amount = 3000, fluidbox_index = 2, return_item = {name = "waste-water", amount = 200}},
				{name = "filtration-media", amount = 1},
				{name = "xyhiphoe-cub",     amount = 2},
			},
			results =
			{
				{name = "xyhiphoe", probability = 0.7, amount_min = 1, amount_max = 2},
			},
			crafting_speed = 150,
			tech = "water-invertebrates-mk01"
		},
		--blood-meal
		{
			ingredients =
			{
				{name = "blood-meal", amount = 5, fallback = {name = "blood-barrel", amount = 4}},
				{name = "saps",       amount = 2},
			},
			results =
			{
				{name = "xyhiphoe", remove_item = true},
				{name = "xyhiphoe", probability = 0.8, amount_min = 1, amount_max = 2},
			},
			crafting_speed = 130,
			tech = "water-invertebrates-mk02"
		},
		--fish egg
		{
			ingredients =
			{
				{name = "blood-meal", remove_item = true},
				{name = "saps",       remove_item = true},
				{name = "fish-egg",   amount = 15},

			},
			results =
			{
				{name = "xyhiphoe", remove_item = true},
				{name = "xyhiphoe", probability = 0.9, amount_min = 1, amount_max = 2},
			},
			crafting_speed = 110,
			tech = "water-invertebrates-mk03"
		},
		--food 2 blood-meal
		{
			ingredients =
			{
				{name = "blood-meal", amount = 5, fallback = {name = "blood-barrel", amount = 4}},
				{name = "saps",       amount = 5},
			},
			results =
			{
				{name = "xyhiphoe", remove_item = true},
				{name = "xyhiphoe", amount = 2},
			},
			crafting_speed = 100,
			tech = "water-invertebrates-mk04"
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
					{name='xyhiphoe', remove_item = true},
					{name='xyhiphoe', probability = 1, amount_min =1, amount_max =2},
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
		--rna anabolic
		{
			ingredients =
				{
					{name='gh',remove_item = true},
					--{name='bmp',remove_item = true},
					{name='anabolic-rna', amount =1},
				},
			results =
				{
					{name='xyhiphoe', remove_item = true},
					{name='meat-xyhiphoe', amount = 1},
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
					{name='meat-xyhiphoe', remove_item = true},
					{name='guts-xyhiphoe', amount = 1},
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
					{name='guts-xyhiphoe', remove_item = true},
					{name='blood-xyhiphoe', amount = 1},
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
	}
}
]] --
