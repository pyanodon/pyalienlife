local fun = require("prototypes/functions/functions")

------------------EGG MAKER------------------

fun.autorecipes {
    name = 'zipir-eggs',
	category = 'zipir',
	module_limitations = 'zipir',
	subgroup = 'py-alienlife-zipir',
	order = 'c',
	main_product = 'zipir-eggs',
    mats =
	{
		{
			ingredients =
				{
                    {name='pressured-water', amount = 60,return_item={name='waste-water', amount=200}},
					{name='stone-wool', amount =2, fallback = "fiber"},
					{name='fish', amount =5},
                    {name='phytoplankton', amount = 100},
				},
			results =
				{
                    {name='zipir-eggs', probability = 1, amount_min =5, amount_max =7},  -- maybe 8 for the max if you feel generous
				},
			crafting_speed = 140,
			tech = 'zipir'
		},
		--fawogae
		{
			ingredients =
				{
                    --{name='wood-seeds',remove_item = true},
                    --{name='caged-mukmoux',remove_item = true},
					{name='fawogae-substrate', amount =15},
				},
			results =
				{

				},
			crafting_speed = 120,
			tech = 'zipir-mk02'
		},
		--water saline
		{
			ingredients =
				{
                    {name='pressured-water',remove_item = true},
					{name='water-saline', amount =  200},
				},
			results =
				{

				},
			crafting_speed = 110,
			tech = 'zipir-mk03'
		},
		--food1
		{
			ingredients =
				{
					{name='zipir-food-01', amount = 6},
				},
			results =
				{

				},
			crafting_speed = 100,
			tech = 'zipir-mk03'
		},
		--food 2
		{
			ingredients =
				{
                    {name='zipir-food-01',remove_item = true},
                    {name='zipir-food-02', amount = 3},

				},
			results =
				{

				},
			crafting_speed = 80,
			tech = 'zipir-mk04'
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
]]--

--Raising

fun.autorecipes {
    name = 'zipir-a',
	category = 'zipir',
	module_limitations = 'zipir1',
	subgroup = 'py-alienlife-zipir',
	order = 'b',
	main_product = 'zipir1',
    mats =
	{
		{
			ingredients =
				{
                    {name='pressured-water', amount = 300},
					{name='zipir-eggs', amount =1},
					{name='fish', amount =3},
					{name='stone-wool', amount =3, fallback = "fiber"},
                    {name='water', amount = 200,return_item={name='waste-water', amount=100}},
				},
			results =
				{
                    {name = 'zipir1', probability = 0.7, amount_min =1, amount_max =1},
				},
			crafting_speed = 150,
			tech = 'zipir'
        },
		--fawogae substrate
		{
			ingredients =
				{
					--{name='wood-seeds',remove_item = true},
					{name='fawogae-substrate', amount =10},
				},
			results =
				{

				},
			crafting_speed = 140,
			tech = 'zipir'
		},
		--water saline
		{
			ingredients =
				{
					{name='pressured-water',remove_item = true},
					{name='water-saline', amount =  100},
				},
			results =
				{

				},
			crafting_speed = 130,
			tech = 'zipir-mk02'
		},
		--food 1
		{
			ingredients =
				{
					{name='zipir-food-01', amount = 2},
				},
			results =
				{
					{name = 'zipir1',remove_item = true},
					{name = 'zipir1', probability = 0.8, amount_min =1, amount_max =1},
				},
			crafting_speed = 120,
			tech = 'zipir-mk03'
		},
		--phyto
		{
			ingredients =
				{
                    {name='water',remove_item = true},
					{name='phytoplankton', amount =50},

				},
			results =
				{

				},
			crafting_speed = 110,
			tech = 'zipir-mk03'
        },
        --food 2
		{
			ingredients =
				{
                    {name='zipir-food-01',remove_item = true},
					{name='zipir-food-02', amount =2},

				},
			results =
				{
					{name = 'zipir1',remove_item = true},
					{name = 'zipir1', probability = 0.9, amount_min =1, amount_max =1},
				},
			crafting_speed = 90,
			tech = 'zipir-mk04'
		},
	}
}
