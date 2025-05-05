py.autorecipes {
	name = "moondrops-a",
	category = "moon",
	subgroup = "py-alienlife-moon",
	order = "a",
	number_icons = true,
	mats =
	{
		{
			ingredients =
			{
				{name = "moondrop-seeds", amount = 1},
				{name = "copper-ore",     amount = 5},
				{name = "water",          amount = 100},
			},
			results =
			{
				{name = "moondrop", amount = 4},
			},
			crafting_speed = 130,
			tech = "cu",
			name = "moondrop-1a",
		},
		{
			ingredients =
			{
				{name = "moondrop-seeds", add_amount = 1},
				{name = "hydrogen",       amount = 100},
			},
			results =
			{
				{name = "moondrop", add_amount = 1}
			},
			crafting_speed = 120,
			name = "moondrop-2a",
			tech = "cu"
		},
		{
			ingredients =
			{
				{name = "moondrop-seeds", add_amount = 1},
				{name = "soil",           add_amount = 15},
			},
			results =
			{
				{name = "moondrop", add_amount = 2}
			},
			crafting_speed = 120,
			name = "moondrop-3a",
			tech = "cu"
		},
		{
			ingredients =
			{
				{name = "moondrop-seeds", add_amount = 2},
				{name = "manure",         amount = 5},
			},
			results =
			{
				{name = "moondrop", add_amount = 3}
			},
			crafting_speed = 100,
			name = "moondrop-4a",
			tech = "cu"
		},
		{
			ingredients =
			{
				{name = "moondrop-seeds", add_amount = 2},
				{name = "ash",            amount = 10},
			},
			results =
			{
				{name = "moondrop", add_amount = 3}
			},
			crafting_speed = 100,
			name = "moondrop-5a",
			tech = "cu"
		},
		{
			ingredients =
			{
				{name = "moondrop-seeds", add_amount = 2},
				{name = "ash",            remove_item = true},
				{name = "biomass",        amount = 5},
			},
			results =
			{
				{name = "moondrop", add_amount = 3}
			},
			crafting_speed = 100,
			name = "moondrop-6a",
			tech = "cu"
		},
		{
			ingredients =
			{
				{name = "moondrop-seeds", add_amount = 2},
				{name = "hydrogen",       remove_item = true},
				{name = "syngas",         amount = 30},
			},
			results =
			{
				{name = "moondrop", add_amount = 2}
			},
			crafting_speed = 100,
			name = "moondrop-7a",
			tech = "cu"
		},









		{
			ingredients =
			{
				{name = "moondrop-seeds", add_amount = 2},
				{name = "pesticide-mk01", add_amount = 1},
			},
			results =
			{
				{name = "moondrop", add_amount = 5}
			},
			crafting_speed = 100,
			name = "moondrop-8a",
			tech = "cu"
		},






		{
			ingredients =
			{
				{name = "moondrop-seeds", add_amount = 1},
				{name = "syngas",         remove_item = true},
				{name = "flue-gas",       amount = 30},
			},
			results =
			{
				{name = "moondrop", add_amount = 3},
			},
			crafting_speed = 100,
			name = "moondrop-9a",
			tech = "cu"
		},




		{
			ingredients =
			{
				{name = "pesticide-mk01", remove_item = true},
				{name = "moondrop-seeds", add_amount = 2},
				{name = "pesticide-mk02", add_amount = 1},

			},
			results =
			{
				{name = "moondrop", add_amount = 10},
			},
			crafting_speed = 100,
			name = "moondrop-10a",
			tech = "cu"
		},




		{
			ingredients =
			{
				{name = "moondrop-seeds", add_amount = 2},
				{name = "manure",         remove_item = true},
				{name = "fertilizer",     add_amount = 4},
			},
			results =
			{
				{name = "moondrop", add_amount = 12},
			},
			crafting_speed = 85,
			name = "moondrop-11a",
			tech = "cu"
		},
		{
			ingredients =
			{
				{name = "moondrop-seeds", add_amount = 1},
				{name = "flue-gas",       remove_item = true},
				{name = "syngas",         amount = 100},
			},
			results =
			{
				{name = "moondrop", add_amount = 2},
			},
			crafting_speed = 75,
			name = "moondrop-12a",
			tech = "cu"
		},
		--GH
		{
			ingredients =
			{
				{name = "biomass",    remove_item = true},
				{name = "syngas",     remove_item = true},
				{name = "manure",     remove_item = true},
				{name = "fertilizer", remove_item = true},
				{name = "gh",         amount = 1},
			},
			results =
			{
				{name = "moondrop", add_amount = 3},
			},
			crafting_speed = 35,
			name = "moondrop-13a",
			tech = "cu"
		},
		{
			ingredients =
			{
				{name = "biomass", amount = 10},
				--{'nitrogen',remove_item = true},
				--{'manure',remove_item = true},
				--{'biomass',remove_item = true},

			},
			results =
			{
				{name = "moondrop", add_amount = 2},
			},
			crafting_speed = 35,
			name = "moondrop-14a",
			tech = "cu"
		},
		{
			ingredients =
			{
				{name = "syngas", amount = 100},
				{name = "manure", amount = 5},
				--{'biomass',remove_item = true},

			},
			results =
			{
				{name = "moondrop", add_amount = 3},
			},
			crafting_speed = 30,
			name = "moondrop-15a",
			tech = "cu"
		},
		{
			ingredients =
			{
				{name = "manure",     remove_item = true},
				{name = "fertilizer", amount = 1},
				{name = "urea",       amount = 5,        fallback = "manure"},

			},
			results =
			{
				{name = "moondrop", add_amount = 8},
			},
			crafting_speed = 20,
			name = "moondrop-16a",
			tech = "cu"
		},
	}
}
