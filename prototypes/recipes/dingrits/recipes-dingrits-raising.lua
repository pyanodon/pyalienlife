local fun = require("prototypes/functions/functions")

------------------CUB MAKER------------------

fun.autorecipes {
    name = 'dingrits-cub',
	category = 'dingrits',
	module_limitations = 'dingrits',
	subgroup = 'py-alienlife-dingrits',
	order = 'c',
    mats =
	{
		--chem
		{
			ingredients =
				{
					{name = 'dingrits', amount = 2},
                    {name='caged-scrondrix',amount =3},
                    {name='yotoi-seeds',amount =30},
					{name='water-barrel',amount=15,return_barrel = true},
					{name='bedding',amount = 1},				{name='dingrits-food-01',amount =2},
				},
			results =
				{
					{name='dingrits-cub', amount_min = 1, amount_max = 7},
				},
			crafting_speed = 150,
			tech = 'dingrits'
		},
		--py
		{
			ingredients =
				{
					{name='yaedols',amount = 5},
					{name='yotoi-leaves',amount = 10},
				},
			results =
				{
					{name='dingrits-cub', amount_min = 2, amount_max = 7},
				},
			crafting_speed = 100,
			tech = 'dingrits-mk02'
		},
		--prod
		{
			ingredients =
				{
					{name='dingrits-food-02',amount =2},
					{name='yaedols', add_amount =5},
				},
			results =
				{
					{name='dingrits-cub', amount_min = 4, amount_max = 7},
				},
			crafting_speed = 90,
			tech = 'dingrits-mk03'
		},
		--utility
		{
			ingredients =
				{
					{name='yotoi-leaves', add_amount = 10},
				},
			results =
				{
					{name='dingrits-cub', amount = 7},
				},
			crafting_speed = 75,
			tech = 'dingrits-mk04'
		},
	}
}

--[[
		-----------------------PHEROMONES-----------------------------
		{
			ingredients =
				{
					{name='yotoi-leaves',amount = 'R'},
					{name='yaedols',amount = 'R'},
					{name='dingrits-food-02',amount = 'R'},
					{name='caged-scrondrix',amount =2},
					{name='pheromones',amount =1},
                    {name='yotoi-seeds',amount =30},
					--{name='water-barrel',amount=6,return_item={name='empty-barrel',amount=6}},
					--{name='bedding',amount = 1},
				},
			results =
				{
					{name='dingrits-cub',amount = 'R'},
					{name='dingrits-cub', amount =5},
				},
			crafting_speed = 140,
			tech = 'pheromones'
		},
		--food 1
		{
			ingredients =
				{
                    {name='yotoi-seeds',amount ='R'},
                    {name='caged-scrondrix',amount ='R'},
					{name='dingrits-food-01',amount =2},
				},
			results =
				{

				},
			crafting_speed = 120,
			tech = 'pheromones'
		},
		--yaedols
		{
			ingredients =
				{
					{name='yaedols',amount = 15},
				},
			results =
				{

				},
			crafting_speed = 110,
			tech = 'pheromones'
		},
		--yotoi-leaves
		{
			ingredients =
				{
					{name='yotoi-leaves',amount = 10},
				},
			results =
				{

				},
			crafting_speed = 100,
			tech = 'pheromones'
		},
		--food 2
		{
			ingredients =
				{
					{name='dingrits-food-01',amount ='R'},
					{name='yaedols',amount ='R'},
					{name='yotoi-leaves',amount ='R'},
					{name='dingrits-food-02',amount =2},

				},
			results =
				{

				},
			crafting_speed = 100,
			tech = 'pheromones'
		},
		--food 2 yaedols
		{
			ingredients =
				{
					{name='yaedols',amount ='*3'},
				},
			results =
				{

				},
			crafting_speed = 90,
			tech = 'pheromones'
		},
		--food 2 yaedols yotoi-leaves
		{
			ingredients =
				{
					{name='yotoi-leaves',amount = 10},
				},
			results =
				{

				},
			crafting_speed = 80,
			tech = 'pheromones'
		},
	}
}
]]--

fun.autorecipes {
    name = 'dingrits',
	category = 'dingrits',
	module_limitations = 'dingrits',
	subgroup = 'py-alienlife-dingrits',
	order = 'b',
    mats =
	{
		--chem
		{
			ingredients =
				{
					{name = 'dingrits-cub', amount = 3},
					{name='caged-scrondrix',amount =1},
					{name='water-barrel',amount=5,return_barrel = true},
					{name='bedding',amount = 1},
					{name='dingrits-food-01',amount =1},
				},
			results =
				{
					{name='dingrits', amount_min = 1,amount_max =3},
				},
			crafting_speed = 150,
			tech = 'dingrits'
		},
		--py
		{
			ingredients =
				{
					{name = 'dingrits-cub', amount = 5},
					{name='yaedols',amount = 10},
					{name='yotoi-leaves',amount = 15},
				},
			results =
				{
					{name='dingrits', amount_min = 3,amount_max = 5},
				},
			crafting_speed = 130,
			tech = 'dingrits-mk02'
		},
		--prod
		{
			ingredients =
				{
					{name = 'dingrits-cub', amount = 10},
					{name='dingrits-food-02',amount =1},
					{name='yaedols', add_amount = 10},

				},
			results =
				{
					{name='dingrits', amount_min = 7,amount_max = 10},
				},
			crafting_speed = 110,
			tech = 'dingrits-mk03'
		},
		--utility
		{
			ingredients =
				{
					{name = 'dingrits-cub', amount = 15},
					{name='yotoi-leaves', add_amount = 20},
				},
			results =
				{
					{name='dingrits', amount = 15},
				},
			crafting_speed = 80,
			tech = 'dingrits-mk04'
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
			crafting_speed = 30,
			tech = 'growth-hormone'
		},
		--antiviral and gh
		{
			ingredients =
				{
					{name='antiviral',amount =1},
					--{name='cage',amount='R'},
				},
			results =
				{
					{name='dingrits', amount ='R'},
					{name='dingrits', probability = 1,amount_min =1,amount_max =2},
				},
			crafting_speed = 30,
			tech = 'antiviral'
		},
		--antiviral
		{
			ingredients =
				{
					--{name='antiviral',amount =1},
					{name='gh',amount ='R'},
				},
			results =
				{

				},
			crafting_speed = 90,
			tech = 'antiviral'
		},
		--nanochondria
		{
			ingredients =
				{
					{name='nanochondria',amount =1},
					--{name='antiviral',amount ='R'},
				},
			results =
				{
					{name='dingrits', amount ='R'},
					{name='brain-caged-dingrits',1},
				},
			crafting_speed = 90,
			tech = 'nanochondria'
		},
		--nanochondria and gh
		{
			ingredients =
				{
					--{name='nanochondria',amount =1},
					{name='gh',amount =1},
				},
			results =
				{

				},
			crafting_speed = 30,
			tech = 'nanochondria'
		},
		--bmp
		{
			ingredients =
				{
					{name='gh',amount ='R'},
					{name='nanochondria',amount ='R'},
					{name='bmp',amount =1},
				},
			results =
				{
					{name='brain-caged-dingrits', amount ='R'},
					{name='bone-caged-dingrits', 1},
				},
			crafting_speed = 90,
			tech = 'bmp'
		},

		--bmp and gh
		{
			ingredients =
				{
					--{name='nanochondria',amount =1},
					{name='gh',amount =1},
				},
			results =
				{

				},
			crafting_speed = 30,
			tech = 'bmp'
		},
		--rna anabolic
		{
			ingredients =
				{
					{name='gh',amount ='R'},
					{name='bmp',amount ='R'},
					{name='anabolic-rna',amount =1},
				},
			results =
				{
					{name='bone-caged-dingrits', amount ='R'},
					{name='meat-caged-dingrits', 1},
				},
			crafting_speed = 90,
			tech = 'anabolic-rna'
		},
		--rna anabolic and gh
		{
			ingredients =
				{
					--{name='nanochondria',amount =1},
					{name='gh',amount =1},
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
					{name='gh',amount ='R'},
					{name='anabolic-rna',amount ='R'},
					{name='antitumor',amount =1},
				},
			results =
				{
					{name='meat-caged-dingrits', amount ='R'},
					{name='guts-caged-dingrits', 1},
				},
			crafting_speed = 90,
			tech = 'antitumor'
		},
		--antitumor and gh
		{
			ingredients =
				{
					--{name='nanochondria',amount =1},
					{name='gh',amount =1},
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
					{name='gh',amount ='R'},
					{name='antitumor',amount ='R'},
					{name='recombinant-ery',amount =1},
				},
			results =
				{
					{name='guts-caged-dingrits', amount ='R'},
					{name='blood-caged-dingrits', 1},
				},
			crafting_speed = 90,
			tech = 'recombinant-ery'
		},
		--Recombinant Ery and gh
		{
			ingredients =
				{
					{name='gh',amount =1},
				},
			results =
				{

				},
			crafting_speed = 30,
			tech = 'recombinant-ery'
		},
		--reca
		{
			ingredients =
				{
					{name='gh',amount ='R'},
					{name='recombinant-ery',amount ='R'},
					{name='reca',amount =1},
					{name='cage',amount ='+1'},
				},
			results =
				{
					{name='blood-caged-dingrits', amount ='R'},
					{name='skin-caged-dingrits', amount = 2},
				},
			crafting_speed = 90,
			tech = 'reca'
		},
		--reca and gh
		{
			ingredients =
				{
					{name='gh',amount =1},
				},
			results =
				{

				},
			crafting_speed = 30,
			tech = 'reca'
		},
	}
}
]]--
