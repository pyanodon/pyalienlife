------------------EGG MAKER------------------

py.autorecipes {
	name = "zipir-eggs",
	category = "rc",
	allowed_module_categories = {"zipir"},
	subgroup = "py-alienlife-zipir",
	order = "c",
	main_product = "zipir-eggs",
	number_icons = true,
	mats =
	{
		{
			ingredients =
			{
				--{name = 'zipir1', amount = 3,},
				{name = "pressured-water", amount = 60,  fluidbox_index = 2,    return_item = {name = "waste-water", amount = 200}},
				{name = "stone-wool",      amount = 2,   fallback = "raw-fiber"},
				{name = "fish",            amount = 5},
				{name = "phytoplankton",   amount = 100, fluidbox_index = 1},
			},
			results =
			{
				{name = "zipir-eggs", probability = 1, amount_min = 3, amount_max = 5}, -- maybe 8 for the max if you feel generous
				--{name = 'zipir1', amount = 3, probability = 1, amount_min =2, amount_max =3},
			},
			crafting_speed = 60,
			tech = "zipir"
		},
		--fawogae
		{
			ingredients =
			{
				--{name='wood-seeds',remove_item = true},
				--{name='caged-mukmoux',remove_item = true},
				{name = "fawogae-substrate", amount = 15},
			},
			results =
			{
				{name = "zipir-eggs", remove_item = true},
				{name = "zipir-eggs", probability = 1,   amount_min = 5, amount_max = 7},
			},
			crafting_speed = 45,
			tech = "zipir-mk02"
		},
		--water saline
		{
			ingredients =
			{
				{name = "pressured-water", remove_item = true},
				{name = "water-saline",    amount = 200,      fluidbox_index = 2},
			},
			results =
			{
				{name = "zipir-eggs", remove_item = true},
				{name = "zipir-eggs", probability = 1,   amount_min = 7, amount_max = 12},
			},
			crafting_speed = 30,
			tech = "zipir-mk03"
		},
		--food1
		{
			ingredients =
			{
				{name = "zipir-food-01", amount = 6},
			},
			results =
			{
				{name = "zipir-eggs", remove_item = true},
				{name = "zipir-eggs", probability = 1,   amount_min = 12, amount_max = 16},
			},
			crafting_speed = 20,
			tech = "zipir-mk03"
		},
		--food 2
		{
			ingredients =
			{
				{name = "zipir-food-01", remove_item = true},
				{name = "zipir-food-02", amount = 5},

			},
			results =
			{
				{name = "zipir-eggs", remove_item = true},
				{name = "zipir-eggs", probability = 1,   amount_min = 14, amount_max = 20},
			},
			crafting_speed = 20,
			tech = "zipir-mk04"
		},
	}
}

--[[
		-----------------------PHEROMONES-----------------------------
		{
			ingredients =
				{
                    {name='zipir-food-02',remove_item = true},
					{name='water',remove_item = true},
					{name='fish',remove_item = true},
                    {name='phytoplankton',remove_item = true},
                    {name='stone-wool',remove_item = true},
                    {name='fawogae-substrate',remove_item = true},
                    {name='water-saline',remove_item = true},

                    {name='pressured-water', amount = 90,return_item={name='waste-water', amount=300}},
					{name='stone-wool', amount =2},
                    {name='phytoplankton', amount = 200},
					{name='pheromones', amount =1},
				},
			results =
				{
					{name='zipir-eggs',remove_item = true},
					{name='zipir-eggs', amount =10},
				},
			crafting_speed = 200,
			tech = 'pheromones'
		},
		--fawogae
		{
			ingredients =
				{
                    --{name='wood-seeds',remove_item = true},
                    --{name='caged-mukmoux',remove_item = true},
					{name='fawogae-substrate', amount =30},
					{name='fish', amount =10},
				},
			results =
				{

				},
			crafting_speed = 180,
			tech = 'pheromones'
		},
		--water saline
		{
			ingredients =
				{
                    {name='pressured-water',remove_item = true},
					{name='water-saline', amount =  300},
				},
			results =
				{

				},
			crafting_speed = 160,
			tech = 'pheromones'
		},
		--food1
		{
			ingredients =
				{
					{name='zipir-food-01', amount = 10},
				},
			results =
				{

				},
			crafting_speed = 140,
			tech = 'pheromones'
		},
		--food 2
		{
			ingredients =
				{
                    {name='zipir-food-01',remove_item = true},
                    {name='zipir-food-02', amount = 8},

				},
			results =
				{

				},
			crafting_speed = 120,
			tech = 'pheromones'
		},
	}
}
]] --

--Raising

py.autorecipes {
	name = "zipir-a",
	category = "zipir",
	subgroup = "py-alienlife-zipir",
	order = "b",
	main_product = "zipir1",
	number_icons = true,
	mats =
	{
		{
			ingredients =
			{
				{name = "pressured-water", amount = 300, fluidbox_index = 2},
				{name = "zipir-eggs",      amount = 3},
				{name = "fish",            amount = 3},
				{name = "stone-wool",      amount = 3,   fallback = "raw-fiber"},
				{name = "water",           amount = 200, fluidbox_index = 1,    return_item = {name = "waste-water", amount = 100}},
			},
			results =
			{
				{name = "zipir1", probability = 0.7, amount_min = 1, amount_max = 1},
			},
			crafting_speed = 150,
			tech = "zipir"
		},
		--fawogae substrate
		{
			ingredients =
			{
				--{name='wood-seeds',remove_item = true},
				{name = "fawogae-substrate", amount = 10},
			},
			results =
			{
				{name = "zipir1", remove_item = true},
				{name = "zipir1", probability = 0.8, amount_min = 1, amount_max = 1},
			},
			crafting_speed = 140,
			tech = "zipir"
		},
		--water saline
		{
			ingredients =
			{
				{name = "pressured-water", remove_item = true},
				{name = "water-saline",    amount = 100,      fluidbox_index = 2},
			},
			results =
			{
				{name = "zipir1", remove_item = true},
				{name = "zipir1", probability = 0.9, amount_min = 1, amount_max = 1},
			},
			crafting_speed = 130,
			tech = "zipir-mk02"
		},
		--food 1
		{
			ingredients =
			{
				{name = "zipir-food-01", amount = 2},
			},
			results =
			{
				{name = "zipir1", remove_item = true},
				{name = "zipir1", amount = 1},
			},
			crafting_speed = 120,
			tech = "zipir-mk03"
		},
		--phyto
		{
			ingredients =
			{
				{name = "water",         remove_item = true},
				{name = "phytoplankton", amount = 50,       fluidbox_index = 1},

			},
			results =
			{
				{name = "zipir1", remove_item = true},
				{name = "zipir1", amount = 2},
			},
			crafting_speed = 110,
			tech = "zipir-mk03"
		},
		--food 2
		{
			ingredients =
			{
				{name = "zipir-food-01", remove_item = true},
				{name = "zipir-food-02", amount = 2},

			},
			results =
			{
				{name = "zipir1", remove_item = true},
				{name = "zipir1", amount = 3},
			},
			crafting_speed = 90,
			tech = "zipir-mk04"
		},
	}
}
