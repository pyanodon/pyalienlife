------------------EGG MAKER------------------

py.autorecipes {
	name = "arthurian-egg",
	category = "rc",
	allowed_module_categories = {"arthurian"},
	main_product = "arthurian-egg",
	crafting_speed = 20,
	subgroup = "py-alienlife-arthurian",
	order = "c",
	number_icons = true,
	mats =
	{
		--base
		{
			ingredients =
			{
				--{name = 'arthurian', amount = 2},
				{name = "cottongut",    amount = 2},
				{name = "cocoon",       amount = 1},
				{name = "water-barrel", amount = 5, return_barrel = true},
				{name = "bedding",      amount = 2},
			},
			results =
			{
				--{name = 'arthurian', amount = 2},
				{name = "arthurian-egg", amount = 3},
			},
			tech = "arthurian"
		},
		--py
		{
			ingredients =
			{
				{name = "arthurian-food-01", amount = 1},
			},
			results =
			{
				{name = "arthurian-egg", add_amount = 1},
			},
			tech = "arthurian-mk02"
		},
		--prod
		{
			ingredients =
			{
				{name = "raw-fiber", amount = 5},
			},
			results =
			{
				{name = "arthurian-egg", add_amount = 1},
			},
			tech = "arthurian-mk03"
		},
		--utility
		{
			ingredients =
			{
				{name = "arthurian-food-02", amount = 1},
			},
			results =
			{
				{name = "arthurian-egg", add_amount = 1},
			},
			tech = "arthurian-mk04"
		},
	}
}

--[[
		-----------------------PHEROMONES-----------------------------
		{
			ingredients =
				{
					{name='raw-fiber',remove_item = true},
					{name='arthurian-food-02',remove_item = true},
					{name='fawogae', amount =15},
					{name='pheromones', amount =1},
					--{name='water-barrel', amount=6,return_barrel = true},
					--{name='bedding', amount = 1},
				},
			results =
				{
					{name='arthurian-egg',remove_item = true},
					{name='arthurian-egg', amount =8},
				},
			crafting_speed = 70,
			name = 'arthurian-egg-06',
			tech = 'pheromones'
		},
		--food 1
		{
			ingredients =
				{
					{name='arthurian-food-01', amount =1},
				},
			results =
				{
                    {name='arthurian-egg', add_amount = "1"},
				},
			crafting_speed = 60,
			name = 'arthurian-egg-07',
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
                    {name='arthurian-egg', add_amount = "1"},
				},
			crafting_speed = 50,
			name = 'arthurian-egg-08',
			tech = 'pheromones'
		},
		--food 2
		{
			ingredients =
				{
					{name='arthurian-food-01',remove_item = true},
					{name='raw-fiber',remove_item = true},
					{name='arthurian-food-02', amount =1},

				},
			results =
				{
                    {name='arthurian-egg', add_amount = "1"},
				},
			crafting_speed = 50,
			name = 'arthurian-egg-09',
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
                    {name='arthurian-egg', add_amount = "1"},
				},
			crafting_speed = 40,
			name = 'arthurian-egg-10',
			tech = 'pheromones'
		},

	}
}
]] --

--incubatting

py.autorecipes {
	name = "arthurian-incubating",
	category = "research",
	subgroup = "py-alienlife-arthurian",
	order = "c",
	mats =
	{
		{
			ingredients =
			{
				{name = "arthurian-egg",           amount = 5},
				{name = "automation-science-pack", amount = 1},
				{name = "logistic-science-pack",   amount = 1},
				{name = "chemical-science-pack",   amount = 1},
			},
			results =
			{
				{name = "arthurian-pup", amount = 5},
			},
			crafting_speed = 100,
			name = "arthurian-egg-incubation-01",
			tech = "arthurian"
		},
	}
}

--maturing

py.autorecipes {
	name = "arthurian-maturing",
	category = "arthurian",
	main_product = "arthurian",
	subgroup = "py-alienlife-arthurian",
	order = "b",
	number_icons = true,
	mats =
	{
		--base
		{
			ingredients =
			{
				{name = "arthurian-pup", amount = 1},
				{name = "cottongut",     amount = 4},
				{name = "water-barrel",  amount = 4, return_barrel = true},
			},
			results =
			{
				{name = "arthurian", amount = 1},
			},
			crafting_speed = 130,
			tech = "arthurian"
		},
		--py
		{
			ingredients =
			{
				{name = "arthurian-pup",     add_amount = 1},
				{name = "arthurian-food-01", amount = 1},
				{name = "bedding",           amount = 2},
			},
			results =
			{
				{name = "arthurian", add_amount = 1},
			},
			crafting_speed = 100,
			tech = "arthurian-mk02"
		},
		--prod
		{
			ingredients =
			{
				{name = "arthurian-pup",     add_amount = 2},
				{name = "raw-fiber",         amount = 5},
				{name = "arthurian-food-02", amount = 1},
			},
			results =
			{
				{name = "arthurian", add_amount = 2},
			},
			crafting_speed = 70,
			tech = "arthurian-mk03"
		},
		--utility
		{
			ingredients =
			{
				{name = "arthurian-pup", add_amount = 4},
				{name = "bedding",       add_amount = 2},
				{name = "raw-fiber",     add_amount = 5},
			},
			results =
			{
				{name = "arthurian", add_amount = 4},
			},
			crafting_speed = 85,
			tech = "arthurian-mk04"
		},
	}
}
