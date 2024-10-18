------------------EGG MAKER------------------

py.autorecipes {
	name = "vonix-cub",
	category = "rc",
	allowed_module_categories = {"vonix"},
	subgroup = "py-alienlife-vonix",
	order = "c",
	main_product = "vonix-eggs",
	mats =
	{
		--py
		{
			ingredients =
			{
				{name = "vonix",              amount = 1},
				{name = "caged-mukmoux",      amount = 1},
				{name = "caged-auog",         amount = 1},
				{name = "meat",               amount = 5},
				{name = "guts",               amount = 10},
				{name = "arqad-honey-barrel", amount = 2, return_barrel = true},
			},
			results =
			{
				{name = "vonix-eggs", amount = 6},
			},
			crafting_speed = 45,
			tech = "vonix"
		},
		--prod
		{
			ingredients =
			{
				{name = "vonix",              add_amount = 2},
				{name = "bedding",            amount = 3},
				{name = "arqad-honey-barrel", add_amount = 2, return_barrel = true},
			},
			results =
			{
				{name = "vonix-eggs", add_amount = 12},
			},
			crafting_speed = 40,
			tech = "vonix-mk02"
		},
		--utility
		{
			ingredients =
			{
				{name = "vonix",              add_amount = 3},
				{name = "arthurian-egg",      amount = 5},
				{name = "navens",             amount = 10},
				{name = "arqad-honey-barrel", add_amount = 2, return_barrel = true},
			},
			results =
			{
				{name = "vonix-eggs", add_amount = 18},
			},
			crafting_speed = 30,
			tech = "vonix-mk03"
		},
	}
}

--[[
		-----------------------PHEROMONES-----------------------------
		{
			ingredients =
				{
					{name = 'arthurian-egg',remove_item = true},
					{name = 'bedding',remove_item = true},
					{name = 'navens',remove_item = true},
					{name = 'meat',remove_item = true},
					{name = 'pheromones', amount =1},
                    --{name = 'caged-auog', amount =4},
					--{name = 'caged-auog', amount = 1},
				},
			results =
				{
					{name = 'vonix-eggs',remove_item = true},
					{name = 'vonix-eggs', amount =10},
				},
			crafting_speed = 140,
			tech = 'pheromones'
		},
		--yotoi leaves
		{
			ingredients =
				{
                    --{name = 'wood-seeds',remove_item = true},
                    --{name = 'caged-mukmoux', amount =15},
					{name = 'meat', amount =10},
				},
			results =
				{

				},
			crafting_speed = 120,
			tech = 'pheromones'
		},
		--bedding
		{
			ingredients =
				{
					{name = 'bedding', amount = 3},
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
					{name = 'arthurian-egg', amount = 5},
				},
			results =
				{

				},
			crafting_speed = 100,
			tech = 'pheromones'
		},
		--navens
		{
			ingredients =
				{
					{name = 'navens', amount =5},

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

--hatching

RECIPE {
	type = "recipe",
	name = "vonix-grow-01",
	category = "incubator",
	enabled = false,
	energy_required = 24,
	ingredients = {
		{type = "item",  name = "vonix-eggs", amount = 12},
		{type = "item",  name = "meat",       amount = 8},
		{type = "fluid", name = "water",      amount = 200},
	},
	results = {
		{type = "item", name = "vonix-cub", amount_min = 5, amount_max = 10},
	},
	main_product = "vonix-cub",
	subgroup = "py-alienlife-vonix",
	order = "a",
}:add_unlock("vonix")

--Raising

py.autorecipes {
	name = "vonix-raising",
	category = "vonix",
	subgroup = "py-alienlife-vonix",
	order = "b",
	main_product = "vonix",
	mats =
	{
		--py
		{
			ingredients =
			{
				{name = "vonix-cub",          amount = 4},
				{name = "caged-mukmoux",      amount = 1},
				{name = "meat",               amount = 10},
				{name = "guts",               amount = 10},
				{name = "arqad-honey-barrel", amount = 1, return_barrel = true},
			},
			results =
			{
				{name = "vonix", amount_min = 1, amount_max = 4},
			},
			crafting_speed = 250,
			tech = "vonix"
		},
		--prod
		{
			ingredients =
			{
				{name = "vonix-cub",  add_amount = 4},
				{name = "bedding",    amount = 3},
				{name = "caged-auog", amount = 1},
			},
			results =
			{
				{name = "vonix", amount_min = 3, amount_max = 8},
			},
			crafting_speed = 200,
			tech = "vonix-mk02"
		},
		--utility
		{
			ingredients =
			{
				{name = "vonix-cub",     add_amount = 4},
				{name = "arthurian-egg", amount = 5},
				{name = "navens",        amount = 5},
			},
			results =
			{
				{name = "vonix", amount_min = 6, amount_max = 12},
			},
			crafting_speed = 150,
			tech = "vonix-mk03"
		},
	}
}

--[[
		--gh
		{
			ingredients =
				{
					{name = 'gh', amount =1},

				},
			results =
				{

				},
			crafting_speed = 60,
			tech = 'growth-hormone'
		},
		--antiviral and gh
		{
			ingredients =
				{
					{name = 'antiviral', amount =1},
				},
			results =
				{
					{name = 'vonix', remove_item = true},
					{name = 'vonix', probability = 1, amount_min =2, amount_max =3},
				},
			crafting_speed = 60,
			tech = 'antiviral'
		},
		--antiviral
		{
			ingredients =
				{
					--{name = 'antiviral', amount =1},
					{name = 'gh',remove_item = true},
				},
			results =
				{

				},
			crafting_speed = 180,
			tech = 'antiviral'
		},
		--nanochondria
		{
			ingredients =
				{
					{name = 'nanochondria', amount =1},
					--{name = 'antiviral',remove_item = true},
				},
			results =
				{
					{name = 'vonix', remove_item = true},
					{name = 'brain-vonix', amount = 2},
				},
			crafting_speed = 180,
			tech = 'nanochondria'
		},
		--nanochondria and gh
		{
			ingredients =
				{
					--{name = 'nanochondria', amount =1},
					{name = 'gh', amount =1},
				},
			results =
				{

				},
			crafting_speed = 60,
			tech = 'nanochondria'
		},
		--rna anabolic
		{
			ingredients =
				{
					{name = 'gh',remove_item = true},
					{name = 'nanochondria',remove_item = true},
					{name = 'anabolic-rna', amount =1},
				},
			results =
				{
					{name = 'brain-vonix', remove_item = true},
					{name = 'meat-vonix', amount = 2},
				},
			crafting_speed = 180,
			tech = 'anabolic-rna'
		},
		--rna anabolic and gh
		{
			ingredients =
				{
					--{name = 'nanochondria', amount =1},
					{name = 'gh', amount =1},
				},
			results =
				{

				},
			crafting_speed = 60,
			tech = 'anabolic-rna'
		},
		--antitumor
		{
			ingredients =
				{
					{name = 'gh',remove_item = true},
					{name = 'anabolic-rna',remove_item = true},
					{name = 'antitumor', amount =2},
				},
			results =
				{
					{name = 'meat-vonix', remove_item = true},
					{name = 'guts-vonix', amount = 1},
				},
			crafting_speed = 180,
			tech = 'antitumor'
		},
		--antitumor and gh
		{
			ingredients =
				{
					--{name = 'nanochondria', amount =1},
					{name = 'gh', amount =1},
				},
			results =
				{

				},
			crafting_speed = 60,
			tech = 'antitumor'
		},
		--Recombinant Ery
		{
			ingredients =
				{
					{name = 'gh',remove_item = true},
					{name = 'antitumor',remove_item = true},
					{name = 'recombinant-ery', amount =1},
				},
			results =
				{
					{name = 'guts-vonix', remove_item = true},
					{name = 'blood-vonix', amount = 2},
				},
			crafting_speed = 180,
			tech = 'recombinant-ery'
		},
		--Recombinant Ery and gh
		{
			ingredients =
				{
					{name = 'gh', amount =1},
				},
			results =
				{

				},
			crafting_speed = 60,
			tech = 'recombinant-ery'
		},
		--reca
		{
			ingredients =
				{
					{name = 'gh',remove_item = true},
					{name = 'recombinant-ery',remove_item = true},
					{name = 'reca', amount =1},
				},
			results =
				{
					{name = 'blood-vonix', remove_item = true},
					{name = 'skin-vonix', amount = 2},
				},
			crafting_speed = 180,
			tech = 'reca'
		},
		--reca and gh
		{
			ingredients =
				{
					{name = 'gh', amount =1},
				},
			results =
				{

				},
			crafting_speed = 60,
			tech = 'reca'
		},
		--orexigenic
		{
			ingredients =
				{
					{name = 'gh',remove_item = true},
					{name = 'reca',remove_item = true},
					{name = 'orexigenic', amount =1},
				},
			results =
				{
					{name = 'skin-vonix', remove_item = true},
					{name = 'fat-vonix', amount = 2},
				},
			crafting_speed = 180,
			tech = 'orexigenic'
		},
		--orexigenic and gh
		{
			ingredients =
				{
					{name = 'gh', amount =1},
				},
			results =
				{

				},
			crafting_speed = 60,
			tech = 'orexigenic'
		},
	}
}
]] --
