local fun = require("prototypes/functions/functions")

------------------EGG MAKER------------------

fun.autorecipes {
    name = 'arqad-egg',
	category = 'arqad',
	module_limitations = 'arqad',
	subgroup = 'py-alienlife-arqad',
	order = 'c',
    mats =
	{
		{
			ingredients =
				{
                    {name='biomass',amount =30},
                    {name='ralesias',amount =10},
					{name='natural-gas-barrel',amount=10,return_item={name='empty-barrel',amount=10}},
					{name='redhot-coke',amount = 1},
				},
			results =
				{
					{name='arqad-egg', probability = 0.85,amount_min =3,amount_max =4},
				},
			crafting_speed = 140,
			tech = 'assisted-embryology'
		},
		--food 1
		{
			ingredients =
				{
                    {name='biomass',amount ='R'},
					{name='yaedols',amount =1},
				},
			results =
				{

				},
			crafting_speed = 120,
			tech = 'assisted-embryology'
		},
		--saps
		{
			ingredients =
				{
					{name='saps',amount = 15},
				},
			results =
				{

				},
			crafting_speed = 110,
			tech = 'assisted-embryology'
		},
		--coal
		{
			ingredients =
				{
					{name='coal',amount = 10},
				},
			results =
				{

				},
			crafting_speed = 100,
			tech = 'assisted-embryology'
		},
		--zipir-egg 2
		{
			ingredients =
				{
					{name='yaedols',amount ='R'},
					{name='saps',amount ='R'},
					{name='coal',amount ='R'},
					{name='zipir-egg',amount =2},

				},
			results =
				{

				},
			crafting_speed = 100,
			tech = 'assisted-embryology'
		},
		--food 2 saps
		{
			ingredients =
				{
					{name='saps',amount ='R'},
				},
			results =
				{

				},
			crafting_speed = 90,
			tech = 'assisted-embryology'
		},
		--food 2 saps fiber
		{
			ingredients =
				{
					{name='coal',amount = 10},
				},
			results =
				{

				},
			crafting_speed = 80,
			tech = 'assisted-embryology'
		},
		-----------------------PHEROMONES-----------------------------
		{
			ingredients =
				{
					{name='coal',amount = 'R'},
					{name='saps',amount = 'R'},
					{name='zipir-egg',amount = 'R'},
					{name='biomass',amount =30},
					{name='pheromones',amount =1},
					--{name='natural-gas-barrel',amount=6,return_item={name='empty-barrel',amount=6}},
					--{name='redhot-coke',amount = 1},
				},
			results =
				{
					{name='arqad-egg',amount = 'R'},
					{name='arqad-egg', amount =8},
				},
			crafting_speed = 140,
			tech = 'pheromones'
		},
		--food 1
		{
			ingredients =
				{

                    {name='biomass',amount ='R'},
					{name='yaedols',amount =1},
				},
			results =
				{

				},
			crafting_speed = 120,
			tech = 'pheromones'
		},
		--saps
		{
			ingredients =
				{
					{name='saps',amount = 15},
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
					{name='coal',amount = 10},
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
					{name='yaedols',amount ='R'},
					{name='saps',amount ='R'},
					{name='coal',amount ='R'},
					{name='zipir-egg',amount =2},

				},
			results =
				{

				},
			crafting_speed = 100,
			tech = 'pheromones'
		},
		--food 2 saps
		{
			ingredients =
				{
					{name='saps',amount ='R'},
				},
			results =
				{

				},
			crafting_speed = 90,
			tech = 'pheromones'
		},
		--food 2 saps fiber
		{
			ingredients =
				{
					{name='coal',amount = 10},
				},
			results =
				{

				},
			crafting_speed = 80,
			tech = 'pheromones'
		},
	}
}

--Raising

fun.autorecipes {
    name = 'caged-arqad',
	category = 'arqad',
	module_limitations = 'arqad',
	subgroup = 'py-alienlife-arqad',
	order = 'b',
    mats =
	{
		--base
		{
			ingredients =
				{
                    {name='biomass',amount =15},
                    {name='ralesias',amount =5},
					{name='natural-gas-barrel',amount=3,return_item={name='empty-barrel',amount=3}},
				},
			results =
				{
					{name='arqad', probability = 0.7,amount_min =1,amount_max =1},
				},
			crafting_speed = 160,
			tech = 'arqad'
		},
		--red tech
		{
			ingredients =
				{
					{name='biomass',amount ='R'},
					{name='yaedols',amount =1},
				},
			results =
				{
					{name='arqad',amount ='R'},
					{name='arqad', probability = 0.8,amount_min =1,amount_max =1},
				},
			crafting_speed = 150,
			tech = 'arqad'
		},
		--saps
		{
			ingredients =
				{
					{name='saps',amount = 5},
					{name='redhot-coke',amount = 1},
				},
			results =
				{

				},
			crafting_speed = 140,
			tech = 'arqad-mk02'
		},
		--fiber
		{
			ingredients =
				{
					{name='coal',amount = 5},
				},
			results =
				{

				},
			crafting_speed = 130,
			tech = 'arqad-mk02'
		},
		--zipir egg 2
		{
			ingredients =
				{
					{name='yaedols',amount ='R'},
					{name='saps',amount ='R'},
					{name='coal',amount ='R'},
					{name='zipir-egg',amount =1},

				},
			results =
				{
					{name='arqad',amount ='R'},
					{name='arqad', probability = 0.9,amount_min =1,amount_max =1},
				},
			crafting_speed = 120,
			tech = 'arqad-mk03'
		},
		--food 2 saps
		{
			ingredients =
				{
					{name='saps',amount =5},
				},
			results =
				{

				},
			crafting_speed = 110,
			tech = 'arqad-mk04'
		},
		--food 2 saps fiber
		{
			ingredients =
				{
					{name='coal',amount = 5},
				},
			results =
				{

				},
			crafting_speed = 100,
			tech = 'arqad-mk04'
		},
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
				},
			results =
				{
					{name='arqad', amount ='R'},
					{name='arqad', probability = 1,amount_min =1,amount_max =2},
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
		--rna anabolic
		{
			ingredients =
				{
					{name='gh',amount ='R'},
					{name='anabolic-rna',amount =1},
				},
			results =
				{
					{name='arqad', amount ='R'},
					{name='meat-arqad', 1},
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
					{name='meat-arqad', amount ='R'},
					{name='guts-arqad', 1},
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
					{name='guts-arqad', amount ='R'},
					{name='blood-arqad', 1},
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
					{name='blood-arqad', amount ='R'},
					{name='chitin-arqad', 1},
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
