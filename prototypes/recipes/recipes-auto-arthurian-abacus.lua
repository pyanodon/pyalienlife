local fun = require("prototypes/functions/functions")

fun.autorecipes {
    name = 'caged-arthurian-2',
	category = 'arthurian',
	module_limitations = 'arthurian',
	subgroup = 'py-alienlife-arthurian',
	order = 'b',
    mats =
	{
		{
			ingredients =
				{
					{name='cottongut',amount =4},
                    {name='cage',amount = 1},
                    {name='abacus',amount = 1},
					{name='arthurianegg',amount =1},
					{name='water-barrel',amount=4,return_item={name='empty-barrel',amount=4}},
				},
			results =
				{
					{name='caged-arthurian', probability = 0.7,amount_min =1,amount_max =1},
				},
            crafting_speed = 130,
            name = 'arthurian-01a',
			tech = 'abacus'
		},
		--food 1
		{
			ingredients =
				{
					{name='arthurian-food-01',amount =1},
				},
			results =
				{
					{name='caged-arthurian',amount ='R'},
					{name='caged-arthurian', probability = 0.8,amount_min =1,amount_max =1},
				},
            crafting_speed = 120,
            name = 'arthurian-02a',
			tech = 'abacus'
		},
		--bedding
		{
			ingredients =
				{
					{name='bedding',amount = 2},
				},
			results =
				{

				},
            crafting_speed = 110,
            name = 'arthurian-03a',
			tech = 'abacus'
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
            crafting_speed = 100,
            name = 'arthurian-04a',
			tech = 'abacus'
		},
		--food 2
		{
			ingredients =
				{
					{name='arthurian-food-01',amount ='R'},
					{name='bedding',amount ='R'},
					{name='raw-fiber',amount ='R'},
					{name='arthurian-food-02',amount =1},

				},
			results =
				{
					{name='caged-arthurian',amount ='R'},
					{name='caged-arthurian', probability = 0.9,amount_min =1,amount_max =1},
				},
            crafting_speed = 90,
            name = 'arthurian-05a',
			tech = 'abacus'
		},
		--food 2 bedding
		{
			ingredients =
				{
					{name='bedding',amount =2},
				},
			results =
				{

				},
            crafting_speed = 85,
            name = 'arthurian-06a',
			tech = 'abacus'
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
            crafting_speed = 80,
            name = 'arthurian-07a',
			tech = 'abacus'
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
            name = 'arthurian-08a',
			tech = 'abacus'
		},
		--antiviral and gh
		{
			ingredients =
				{
					{name='antiviral',amount =1},
				},
			results =
				{
					{name='caged-arthurian', amount ='R'},
					{name='caged-arthurian', probability = 1,amount_min =1,amount_max =2},
				},
            crafting_speed = 30,
            name = 'arthurian-09a',
			tech = 'abacus'
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
            crafting_speed = 80,
            name = 'arthurian-10a',
			tech = 'abacus'
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
					{name='caged-arthurian', amount ='R'},
					{name='brain-caged-arthurian',1},
				},
            crafting_speed = 80,
            name = 'arthurian-11a',
			tech = 'abacus'
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
            name = 'arthurian-12a',
			tech = 'abacus'
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
					{name='brain-caged-arthurian', amount ='R'},
					{name='bone-caged-arthurian', 1},
				},
            crafting_speed = 80,
            name = 'arthurian-13a',
			tech = 'abacus'
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
            name = 'arthurian-14a',
			tech = 'abacus'
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
					{name='bone-caged-arthurian', amount ='R'},
					{name='meat-caged-arthurian', 1},
				},
            crafting_speed = 80,
            name = 'arthurian-15a',
			tech = 'abacus'
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
            name = 'arthurian-16a',
			tech = 'abacus'
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
					{name='meat-caged-arthurian', amount ='R'},
					{name='guts-caged-arthurian', 1},
				},
            crafting_speed = 80,
            name = 'arthurian-17a',
			tech = 'abacus'
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
            name = 'arthurian-18a',
			tech = 'abacus'
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
					{name='guts-caged-arthurian', amount ='R'},
					{name='blood-caged-arthurian', 1},
				},
            crafting_speed = 80,
            name = 'arthurian-19a',
			tech = 'abacus'
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
            name = 'arthurian-20a',
			tech = 'abacus'
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
					{name='blood-caged-arthurian', amount ='R'},
					{name='skin-caged-arthurian', 1},
				},
            crafting_speed = 80,
            name = 'arthurian-21a',
			tech = 'abacus'
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
            name = 'arthurian-22a',
			tech = 'abacus'
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
					{name='skin-caged-arthurian', amount ='R'},
					{name='fat-caged-arthurian', 1},
				},
            crafting_speed = 80,
            name = 'arthurian-23a',
			tech = 'abacus'
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
            name = 'arthurian-24a',
			tech = 'abacus'
		},
	}
}

------------------EGG MAKER------------------

fun.autorecipes {
    name = 'arthurian-egg',
	category = 'arthurian',
	module_limitations = 'arthurian',
	subgroup = 'py-alienlife-arthurian',
	order = 'c',
    mats =
	{
		{
			ingredients =
				{
                    {name='cottongut',amount =2},
                    {name='cocoon',amount =1},
                    {name='abacus',amount = 1},
                    {name='raw-fiber',amount = 'R'},
					{name='water-barrel',amount=5,return_item={name='empty-barrel',amount=5}},
					{name='bedding',amount = 2},
				},
			results =
				{
					{name='arthurianegg', amount =3},
				},
            crafting_speed = 100,
            name = 'arthurian-egg-01a',
			tech = 'abacus'
		},
		--food 1
		{
			ingredients =
				{
					{name='arthurian-food-01',amount =1},
				},
			results =
				{
                    {name='arthurianegg', amount ="+1"},
				},
            crafting_speed = 90,
            name = 'arthurian-egg-02a',
			tech = 'abacus'
		},
		--fiber
		{
			ingredients =
				{
					{name='raw-fiber',amount = 5},
				},
			results =
				{
                    {name='arthurianegg', amount ="+1"},
				},
            crafting_speed = 80,
            name = 'arthurian-egg-03a',
			tech = 'abacus'
		},
		--food 2
		{
			ingredients =
				{
                    {name='arthurian-food-01',amount ='R'},
                    {name='raw-fiber',amount = 'R'},
					{name='arthurian-food-02',amount =1},

				},
			results =
				{
                    {name='arthurianegg', amount ="+1"},
				},
            crafting_speed = 75,
            name = 'arthurian-egg-04a',
			tech = 'abacus'
		},
		--food 2 salt fiber
		{
			ingredients =
				{
					{name='raw-fiber',amount = 5},
				},
			results =
				{
                    {name='arthurianegg', amount ="+1"},
				},
            crafting_speed = 65,
            name = 'arthurian-egg-05a',
			tech = 'abacus'
		},
		-----------------------PHEROMONES-----------------------------
		{
			ingredients =
				{
					{name='raw-fiber',amount = 'R'},
					{name='arthurian-food-02',amount = 'R'},
					{name='fawogae',amount =15},
					{name='pheromones',amount =1},
					--{name='water-barrel',amount=6,return_item={name='empty-barrel',amount=6}},
					--{name='bedding',amount = 1},
				},
			results =
				{
					{name='arthurianegg',amount = 'R'},
					{name='arthurianegg', amount =8},
				},
            crafting_speed = 70,
            name = 'arthurian-egg-06a',
			tech = 'abacus'
		},
		--food 1
		{
			ingredients =
				{
					{name='arthurian-food-01',amount =1},
				},
			results =
				{
                    {name='arthurianegg', amount ="+1"},
				},
            crafting_speed = 60,
            name = 'arthurian-egg-07a',
			tech = 'abacus'
		},
		--fiber
		{
			ingredients =
				{
					{name='raw-fiber',amount = 5},
				},
			results =
				{
                    {name='arthurianegg', amount ="+1"},
				},
            crafting_speed = 50,
            name = 'arthurian-egg-08a',
			tech = 'abacus'
		},
		--food 2
		{
			ingredients =
				{
					{name='arthurian-food-01',amount ='R'},
					{name='raw-fiber',amount ='R'},
					{name='arthurian-food-02',amount =1},

				},
			results =
				{
                    {name='arthurianegg', amount ="+1"},
				},
            crafting_speed = 50,
            name = 'arthurian-egg-09a',
			tech = 'abacus'
		},
		--food 2 salt fiber
		{
			ingredients =
				{
					{name='raw-fiber',amount = 5},
				},
			results =
				{
                    {name='arthurianegg', amount ="+1"},
				},
            crafting_speed = 40,
            name = 'arthurian-egg-10a',
			tech = 'abacus'
		},

	}
}
