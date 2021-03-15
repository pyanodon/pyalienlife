local fun = require("prototypes/functions/functions")

------------------CUB MAKER------------------

fun.autorecipes {
    name = 'cottongut-cub',
	category = 'cottongut',
	module_limitations = 'cottongut-mk01',
	subgroup = 'py-alienlife-cottongut',
	order = 'c',
    mats =
	{
		--red
		{
			ingredients =
				{
					{name = 'cottongut', amount = 4},
                    {name='moondrop',amount =2},
                    {name='ralesia-seeds',amount =15},
					{name='water-barrel',amount=3,return_barrel = true},
				},
			results =
				{
					{name='cottongut-pup', amount = 10},
				},
			crafting_speed = 70,
			tech = 'cottongut-mk01'
		},
		--green
		{
			ingredients =
				{
					{name='ralesia-seeds',amount = 'R'},
                    {name='yotoi-seeds',amount = 10},
                    {name='bhoddos',amount = 1},
					{name='bedding',amount = 1},
					{name='cottongut-food-01',amount =1},
					{name = 'barrel-milk', amount = 2},
				},
			results =
				{
					{name = 'empty-barrel-milk', amount = 2},
					{name='cottongut-pup', add_amount = 6},
				},
			crafting_speed = 60,
			tech = 'assisted-embryology'
		},
		--py
		{
			ingredients =
				{
					{name='cottongut-food-01', add_amount = 2},
					{name='cottongut-food-02',amount =1},
					{name='bhoddos', add_amount = 2},

				},
			results =
				{
					{name='cottongut-pup', add_amount = 12},
				},
			crafting_speed = 110,
			tech = 'cottongut-mk03'
		},
		--prod
		{
			ingredients =
				{
					{name='grod-seeds',amount = 10},
				},
			results =
				{
					{name='cottongut-pup', add_amount = 18},
				},
			crafting_speed = 90,
			tech = 'cottongut-mk04'
		},
	}
}

--raising

fun.autorecipes {
    name = 'caged-cottongut',
	category = 'cottongut',
	module_limitations = 'cottongut-mk01',
	subgroup = 'py-alienlife-cottongut',
	order = 'b',
    mats =
	{
		--red
		{
			ingredients =
				{
					{name = 'cottongut-pup', amount = 7},
					{name='moondrop',amount = 4},
					{name='wood-seeds', amount = 4},
					{name='water-barrel',amount=2, return_barrel = true},
					{name='ralesia-seeds',amount = 3},
				},
			results =
				{
					{name='cottongut', amount = 6},
				},
			crafting_speed = 150,
			tech = 'cottongut-mk01'
		},
		--green
		{
			ingredients =
				{
					{name = 'cottongut-pup', add_amount = 4},
					{name = 'wood-seeds',amount = 'R'},
					{name = 'ralesia-seeds',amount ='R'},
					{name='cottongut-food-01',amount =1},
					{name='bedding',amount = 1},
					{name='tuuphra-seeds', amount = 5},
				},
			results =
				{
					{name='cottongut', add_amount = 3},
				},
			crafting_speed = 130,
			tech = 'cottongut-mk02'
		},
		--py
		{
			ingredients =
				{
					{name = 'cottongut-pup', add_amount = 5},
					{name='cottongut-food-01', add_amount = 2},
					{name='cottongut-food-02',amount =1},
					{name='bhoddos',amount = 4},

				},
			results =
				{
					{name='cottongut', add_amount = 4},
				},
			crafting_speed = 110,
			tech = 'cottongut-mk03'
		},
		--prod
		{
			ingredients =
				{
					{name = 'cottongut-pup', add_amount = 7},
					{name='grod-seeds',amount = 10},
				},
			results =
				{
					{name='cottongut', add_amount = 7},
				},
			crafting_speed = 90,
			tech = 'cottongut-mk04'
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
					{name='cottongut',amount = '+3'},
				},
			crafting_speed = 30,
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
					{name='cottongut',amount = '+3'},
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
					{name='cottongut',amount = '+3'},
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
					{name='cottongut', amount ='R'},
					{name='brain-cottongut',amount = 4},
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
					{name='brain-cottongut', amount ='R'},
					{name='bone-cottongut', amount = 4},
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
					{name='bone-cottongut', amount ='R'},
					{name='meat-cottongut', amount = 4},
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
					{name='meat-cottongut', amount ='R'},
					{name='guts-cottongut', amount = 4},
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
					{name='guts-cottongut', amount ='R'},
					{name='blood-cottongut', amount = 4},
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
				},
			results =
				{
					{name='blood-cottongut', amount ='R'},
					{name='skin-cottongut', amount = 4},
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
		--orexigenic
		{
			ingredients =
				{
					{name='gh',amount ='R'},
					{name='reca',amount ='R'},
					{name='orexigenic',amount =1},
				},
			results =
				{
					{name='skin-cottongut', amount ='R'},
					{name='fat-cottongut', 1},
				},
			crafting_speed = 80,
			tech = 'orexigenic'
		},
		--orexigenic and gh
		{
			ingredients =
				{
					{name='gh',amount =1},
				},
			results =
				{

				},
			crafting_speed = 30,
			tech = 'orexigenic'
		},
	}
}
]]--


		--[[
		-----------------------PHEROMONES-----------------------------
		{
			ingredients =
				{
					{name='raw-fiber',amount = 'R'},
					{name='salt',amount = 'R'},
					{name='cottongut-food-02',amount = 'R'},
					{name='bhoddos',amount =3},
					{name='pheromones',amount =1},
                    {name='yotoi-seeds',amount =15},
					--{name='water-barrel',amount=6,return_barrel = true},
					--{name='bedding',amount = 1},
				},
			results =
				{
					{name='cottongut-pup',amount = 'R'},
					{name='cottongut-pup', amount =2},
				},
			crafting_speed = 70,
			tech = 'pheromones'
		},
		--food 1
		{
			ingredients =
				{
                    {name='yotoi-seeds',amount ='R'},
                    {name='bhoddos',amount ='R'},
					{name='cottongut-food-01',amount =1},
				},
			results =
				{

				},
			crafting_speed = 60,
			tech = 'pheromones'
		},
		--salt
		{
			ingredients =
				{
					{name='salt',amount = 10},
				},
			results =
				{

				},
			crafting_speed = 55,
			tech = 'pheromones'
		},
		--fiber
		{
			ingredients =
				{
					{name='raw-fiber',amount = 5},
				},
			results =
				{

				},
			crafting_speed = 50,
			tech = 'pheromones'
		},
		--food 2
		{
			ingredients =
				{
					{name='cottongut-food-01',amount ='R'},
					{name='salt',amount ='R'},
					{name='raw-fiber',amount ='R'},
					{name='cottongut-food-02',amount =1},

				},
			results =
				{

				},
			crafting_speed = 50,
			tech = 'pheromones'
		},
		--food 2 salt
		{
			ingredients =
				{
					{name='salt',amount ='*10'},
				},
			results =
				{

				},
			crafting_speed = 45,
			tech = 'pheromones'
		},
		--food 2 salt fiber
		{
			ingredients =
				{
					{name='raw-fiber',amount = 5},
				},
			results =
				{

				},
			crafting_speed = 40,
			tech = 'pheromones'
		},
	}
}
]]--
