local fun = require("prototypes/functions/functions")


------------------EGG MAKER------------------

fun.autorecipes {
    name = 'breed-fish-egg',
	category = 'fish-farm',
	module_limitations = 'fish',
	subgroup = 'py-alienlife-fish',
	order = 'c',
    mats =
	{
		--logistic
		{
			ingredients =
				{
					{name = 'fish', amount = 12},
                    {name='phytoplankton',amount =50},
					{name='water-saline',amount=100, return_item = {name = 'waste-water'}},
					{name='filtration-media',amount = 2},
				},
			results =
				{
					{name='fish-egg', amount = 25},
				},
			crafting_speed = 80,
			tech = 'fish-mk01'
		},
		--py
		{
			ingredients =
				{
					{name='fishfood1',amount =1},
				},
			results =
				{
                    {name='fish-egg', add_amount = 5},
				},
			crafting_speed = 70,
			tech = 'fish-mk02'
		},
		--prod
		{
			ingredients =
				{
					{name='seaweed',amount = 10},
				},
			results =
				{
                    {name='fish-egg', add_amount = 5},
				},
			crafting_speed = 60,
			tech = 'fish-mk03'
		},
		--utility
		{
			ingredients =
				{
					{name='fishfood2',amount =1},
					{name='seaweed', add_amount = 10},

				},
			results =
				{
                    {name='fish-egg', add_amount = 10},
				},
			crafting_speed = 55,
			tech = 'fish-mk04'
		},
	}
}

--[[
		-----------------------PHEROMONES-----------------------------
		{
			ingredients =
				{
					{name='seaweed',remove_item = true},
					{name='fishfood2',remove_item = true},
					{name='fawogae',amount =15},
					{name='pheromones',amount =1},
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
					{name='fishfood1',amount =1},
				},
			results =
				{
                    {name='fish-egg', amount ="+5"},
				},
			crafting_speed = 40,
			tech = 'pheromones'
		},
		--fiber
		{
			ingredients =
				{
					{name='seaweed',amount = 5},
				},
			results =
				{
                    {name='fish-egg', amount ="+2"},
				},
			crafting_speed = 30,
			tech = 'pheromones'
		},
		--food 2
		{
			ingredients =
				{
					{name='fishfood1',remove_item = true},
					{name='seaweed',remove_item = true},
					{name='fishfood2',amount =1},

				},
			results =
				{
                    {name='fish-egg', amount ="+5"},
				},
			crafting_speed = 20,
			tech = 'pheromones'
		},
		--food 2 salt fiber
		{
			ingredients =
				{
					{name='seaweed',amount = 5},
				},
			results =
				{
                    {name='fish-egg', amount ="+2"},
				},
			crafting_speed = 15,
			tech = 'pheromones'
		},

	}
}
]]--

--Raising--

fun.autorecipes {
    name = 'breed-fish',
	category = 'fish-farm',
	module_limitations = 'fish',
	subgroup = 'py-alienlife-fish',
	order = 'b',
    mats =
	{
		--logistic
		{
			ingredients =
				{
					{name = 'fish-egg', amount = 10},
                    {name='oxygen',amount =60},
                    {name='small-lamp',amount =3},
					{name='biomass',amount =10},
					{name='water-saline',amount=100,return_item={name='waste-water',amount=100}},
				},
			results =
				{
					{name='fish',amount = 10},
				},
			crafting_speed = 150,
			tech = 'fish-mk01'
		},
		--py
		{
			ingredients =
				{
					{name='fishfood1',amount =1},
					{name='filtration-media',amount = 1},
				},
			results =
				{
					{name='fish', add_amount = 10},
				},
			crafting_speed = 130,
			tech = 'fish-mk02'
		},
		--prod
		{
			ingredients =
				{
					{name='seaweed',amount = 10},
					{name='fishfood2',amount =1},
				},
			results =
				{
					{name='fish', add_amount = 10},
				},
			crafting_speed = 100,
			tech = 'fish-mk03'
		},
		--utility
		{
			ingredients =
				{
					{name='filtration-media', add_amount = 1},
					{name='seaweed', add_amount = 10},
				},
			results =
				{
					{name='fish', add_amount = 10},
				},
			crafting_speed = 85,
			tech = 'fish-mk04'
		},
	}
}

--[[
		--gh
		{
			ingredients =
				{
					{name='gh',amount =1},

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
					{name='antiviral',amount =1},
				},
			results =
				{
                    {name='fish',amount =30},
				},
			crafting_speed = 20,
			tech = 'antiviral'
		},
		--antiviral
		{
			ingredients =
				{
					--{name='antiviral',amount =1},
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
]]--
