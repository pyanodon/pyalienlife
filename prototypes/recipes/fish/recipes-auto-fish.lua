------------------EGG MAKER------------------

py.autorecipes {
	name = "breed-fish-egg",
	category = "fish-farm",
	subgroup = "py-alienlife-fish",
	order = "c",
	main_product = "fish-egg",
	mats =
	{
		--logistic
		{
			ingredients =
			{
				{name = "fish",          amount = 12},
				{name = "phytoplankton", amount = 50,  fluidbox_index = 1},
				{name = "water-saline",  amount = 100, fluidbox_index = 2, return_item = {name = "waste-water"}},
			},
			results =
			{
				{name = "fish-egg", amount = 25},
			},
			crafting_speed = 80,
			tech = "fish-mk01"
		},
		--py
		{
			ingredients =
			{
				{name = "fish-food-01",     amount = 1},
				{name = "filtration-media", amount = 2},
			},
			results =
			{
				{name = "fish-egg", add_amount = 5},
			},
			crafting_speed = 70,
			tech = "fish-mk02"
		},
		--prod
		{
			ingredients =
			{
				{name = "seaweed", amount = 10},
			},
			results =
			{
				{name = "fish-egg", add_amount = 5},
			},
			crafting_speed = 60,
			tech = "fish-mk03"
		},
		--utility
		{
			ingredients =
			{
				{name = "fish-food-02", amount = 1},
				{name = "seaweed",      add_amount = 10},

			},
			results =
			{
				{name = "fish-egg", add_amount = 10},
			},
			crafting_speed = 55,
			tech = "fish-mk04"
		},
	}
}

--[[
		-----------------------PHEROMONES-----------------------------
		{
			ingredients =
				{
					{name = 'seaweed',remove_item = true},
					{name='fish-food-02',remove_item = true},
					{name='fawogae', amount =15},
					{name='pheromones', amount =1},
				},
			results =
				{
					{name='fish-egg',remove_item = true},
					{name='fish-egg', amount =32},
				},
			crafting_speed = 50,
			tech = 'pheromones'
		},
		--food 1
		{
			ingredients =
				{
					{name='fish-food-01', amount =1},
				},
			results =
				{
                    {name='fish-egg', add_amount = "5"},
				},
			crafting_speed = 40,
			tech = 'pheromones'
		},
		--fiber
		{
			ingredients =
				{
					{name = 'seaweed', amount = 5},
				},
			results =
				{
                    {name='fish-egg', add_amount = "2"},
				},
			crafting_speed = 30,
			tech = 'pheromones'
		},
		--food 2
		{
			ingredients =
				{
					{name='fish-food-01',remove_item = true},
					{name = 'seaweed',remove_item = true},
					{name='fish-food-02', amount =1},

				},
			results =
				{
                    {name='fish-egg', add_amount = "5"},
				},
			crafting_speed = 20,
			tech = 'pheromones'
		},
		--food 2 salt fiber
		{
			ingredients =
				{
					{name = 'seaweed', amount = 5},
				},
			results =
				{
                    {name='fish-egg', add_amount = "2"},
				},
			crafting_speed = 15,
			tech = 'pheromones'
		},

	}
}
]] --

--Raising--

py.autorecipes {
	name = "breed-fish",
	category = "fish-farm",
	subgroup = "py-alienlife-fish",
	order = "b",
	main_product = "fish",
	mats =
	{
		--logistic
		{
			ingredients =
			{
				{name = "fish-egg",     amount = 10},
				{name = "oxygen",       amount = 60,  fluidbox_index = 1},
				{name = "small-lamp",   amount = 3},
				{name = "biomass",      amount = 10},
				{name = "water-saline", amount = 100, fluidbox_index = 2, return_item = {name = "waste-water", amount = 100}},
			},
			results =
			{
				{name = "fish", amount = 10},
			},
			crafting_speed = 150,
			tech = "fish-mk01"
		},
		--py
		{
			ingredients =
			{
				{name = "fish-food-01",     amount = 1},
				{name = "filtration-media", amount = 1},
			},
			results =
			{
				{name = "fish", add_amount = 10},
			},
			crafting_speed = 130,
			tech = "fish-mk02"
		},
		--prod
		{
			ingredients =
			{
				{name = "seaweed",      amount = 10},
				{name = "fish-food-02", amount = 1},
			},
			results =
			{
				{name = "fish", add_amount = 10},
			},
			crafting_speed = 100,
			tech = "fish-mk03"
		},
		--utility
		{
			ingredients =
			{
				{name = "filtration-media", add_amount = 1},
				{name = "seaweed",          add_amount = 10},
			},
			results =
			{
				{name = "fish", add_amount = 10},
			},
			crafting_speed = 85,
			tech = "fish-mk04"
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
			crafting_speed = 20,
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
                    {name='fish', amount =30},
				},
			crafting_speed = 20,
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
	}
}
]] --
