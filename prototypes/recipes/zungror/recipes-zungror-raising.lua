------------------EGG MAKER------------------

py.autorecipes {
	name = "zungror-cocoon",
	category = "rc",
	allowed_module_categories = {"zungror"},
	subgroup = "py-alienlife-zungror",
	order = "c",
	main_product = "zungror-cocoon",
	mats =
	{
		--py
		{
			ingredients =
			{
				{name = "zungror",     amount = 2},
				{name = "trits",       amount = 1},
				{name = "cdna",        amount = 1},
				{name = "barrel-milk", amount = 2},
			},
			results =
			{
				{name = "zungror-cocoon",    amount = 4},
				{name = "empty-barrel-milk", amount = 2},
			},
			crafting_speed = 50,
			tech = "zungror"
		},
		--prod
		{
			ingredients =
			{
				{name = "zungror",      add_amount = 2},
				{name = "bedding",      amount = 3},
				{name = "water-barrel", amount = 5,    return_barrel = true},
			},
			results =
			{
				{name = "zungror-cocoon", add_amount = 6},
			},
			crafting_speed = 40,
			tech = "zungror-mk02"
		},
		--utility
		{
			ingredients =
			{
				{name = "zungror", add_amount = 3},
				{name = "dhilmos", amount = 5},
				{name = "vrauks",  amount = 2},
			},
			results =
			{
				{name = "zungror-cocoon", add_amount = 9},
			},
			crafting_speed = 30,
			tech = "zungror-mk03"
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
					{name = 'zungror-cocoon',remove_item = true},
					{name = 'zungror-cocoon', amount =10},
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

--Raising

py.autorecipes {
	name = "zungror-raising",
	category = "zungror",
	subgroup = "py-alienlife-zungror",
	order = "b",
	main_product = "zungror",
	mats =
	{
		--py
		{
			ingredients =
			{
				{name = "zungror-cocoon",     amount = 4},
				{name = "caged-mukmoux",      amount = 1},
				{name = "meat",               amount = 10},
				{name = "guts",               amount = 10},
				{name = "arqad-honey-barrel", amount = 1, return_barrel = true},
			},
			results =
			{
				{name = "zungror", amount_min = 1, amount_max = 4},
				{name = "cage",    amount = 1},
			},
			crafting_speed = 250,
			tech = "zungror"
		},
		--prod
		{
			ingredients =
			{
				{name = "zungror-cocoon", add_amount = 4},
				{name = "bedding",        amount = 3},
				{name = "caged-auog",     amount = 1},
			},
			results =
			{
				{name = "zungror", amount_min = 3, amount_max = 8},
				{name = "cage",    add_amount = 1},
			},
			crafting_speed = 200,
			tech = "zungror-mk02"
		},
		--utility
		{
			ingredients =
			{
				{name = "zungror-cocoon", add_amount = 4},
				{name = "arthurian-egg",  amount = 5},
				{name = "navens",         amount = 5},
			},
			results =
			{
				{name = "zungror", amount_min = 6, amount_max = 12},
			},
			crafting_speed = 150,
			tech = "zungror-mk03"
		},
	}
}
