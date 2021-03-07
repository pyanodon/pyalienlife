local fun = require("prototypes/functions/functions")

fun.autorecipes {
    name = 'caged-scrondrix-a',
	category = 'scrondrix',
	module_limitations = 'scrondrix',
	subgroup = 'py-alienlife-scrondrix',
	order = 'b',
    mats =
	{
		{
			ingredients =
				{
					{name='wood-seeds',amount =15},
                    {name='meat',amount =5},
                    {name='boron',amount =1},
					{name='water-barrel',amount=5,return_item={name='empty-barrel',amount=5}},
					{name='cage',amount=1},
				},
			results =
				{
					{name='caged-scrondrix', probability = 0.8,amount_min =1,amount_max =1},
				},
			crafting_speed = 150,
			tech = 'boronb',
			name = 'caged-scrondrix-1a',
		},
		--yotoi leaves
		{
			ingredients =
				{
					--{name='wood-seeds',amount ='R'},
					{name='yotoi-leaves',amount =10},
				},
			results =
				{

				},
			crafting_speed = 140,
			tech = 'boronb',
			name = 'caged-scrondrix-2a',
		},
		--salt
		{
			ingredients =
				{
					{name='salt',amount = 5},
					{name='bedding',amount = 1},
				},
			results =
				{

				},
			crafting_speed = 130,
			tech = 'boronb',
			name = 'caged-scrondrix-3a',
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
			crafting_speed = 120,
			tech = 'boronb',
			name = 'caged-scrondrix-4a',
		},
		--navens
		{
			ingredients =
				{
					{name='navens',amount =5},

				},
			results =
				{
					{name='caged-scrondrix',amount ='R'},
					{name='caged-scrondrix', probability = 0.9,amount_min =1,amount_max =1},
				},
			crafting_speed = 110,
			tech = 'boronb',
			name = 'caged-scrondrix-5a',
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
			tech = 'boronb',
			name = 'caged-scrondrix-6a',
		},
		--antiviral and gh
		{
			ingredients =
				{
					{name='antiviral',amount =1},
				},
			results =
				{
					{name='caged-scrondrix', amount ='R'},
					{name='caged-scrondrix', probability = 1,amount_min =1,amount_max =2},
				},
			crafting_speed = 30,
			tech = 'boronb',
			name = 'caged-scrondrix-7a',
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
			tech = 'boronb',
			name = 'caged-scrondrix-8a',
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
					{name='caged-scrondrix', amount ='R'},
					{name='brain-caged-scrondrix',1},
				},
			crafting_speed = 90,
			tech = 'boronb',
			name = 'caged-scrondrix-9a',
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
			tech = 'boronb',
			name = 'caged-scrondrix-10a',
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
					{name='brain-caged-scrondrix', amount ='R'},
					{name='bone-caged-scrondrix', 1},
				},
			crafting_speed = 90,
			tech = 'boronb',
			name = 'caged-scrondrix-11a',
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
			tech = 'boronb',
			name = 'caged-scrondrix-12a',
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
					{name='bone-caged-scrondrix', amount ='R'},
					{name='meat-caged-scrondrix', 1},
				},
			crafting_speed = 90,
			tech = 'boronb',
			name = 'caged-scrondrix-13a',
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
			tech = 'boronb',
			name = 'caged-scrondrix-14a',
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
					{name='meat-caged-scrondrix', amount ='R'},
					{name='guts-caged-scrondrix', 1},
				},
			crafting_speed = 90,
			tech = 'boronb',
			name = 'caged-scrondrix-15a',
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
			tech = 'boronb',
			name = 'caged-scrondrix-16a',
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
					{name='guts-caged-scrondrix', amount ='R'},
					{name='blood-caged-scrondrix', 1},
				},
			crafting_speed = 90,
			tech = 'boronb',
			name = 'caged-scrondrix-17a',
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
			tech = 'boronb',
			name = 'caged-scrondrix-18a',
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
					{name='blood-caged-scrondrix', amount ='R'},
					{name='skin-caged-scrondrix', 1},
				},
			crafting_speed = 90,
			tech = 'boronb',
			name = 'caged-scrondrix-19a',
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
			tech = 'boronb',
			name = 'caged-scrondrix-20a',
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
					{name='skin-caged-scrondrix', amount ='R'},
					{name='fat-caged-scrondrix', 1},
				},
			crafting_speed = 90,
			tech = 'boronb',
			name = 'caged-scrondrix-21a',
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
			tech = 'boronb',
			name = 'caged-scrondrix-22a',
		},
	}
}

------------------CUB MAKER------------------

fun.autorecipes {
    name = 'scrondrix-cub-a',
	category = 'scrondrix',
	module_limitations = 'scrondrix',
	subgroup = 'py-alienlife-scrondrix',
	order = 'c',
    mats =
	{
		{
			ingredients =
				{
                    {name='fawogae',amount =20},
					{name='wood-seeds',amount =20},
                    {name='meat',amount =10},
                    {name='boron',amount =1},
					{name='water-barrel',amount=20,return_item={name='empty-barrel',amount=20}},
					{name='bedding',amount = 1},
				},
			results =
				{
					{name='scrondrix-pup',amount = 3},
				},
			crafting_speed = 140,
			tech = 'boronb',
			name = 'scrondrix-cub-1a',
		},
		--yotoi leaves
		{
			ingredients =
				{

					{name='yotoi-leaves',amount =10},
				},
			results =
				{
					{name='scrondrix-pup',amount = '+1'},
				},
			crafting_speed = 120,
			tech = 'boronb',
			name = 'scrondrix-cub-2a',
		},
		--salt
		{
			ingredients =
				{
					{name='salt',amount = 5},
				},
			results =
				{

				},
			crafting_speed = 110,
			tech = 'boronb',
			name = 'scrondrix-cub-3a',
		},
		--fiber
		{
			ingredients =
				{
					{name='raw-fiber',amount = 5},
				},
			results =
				{
					{name='scrondrix-pup',amount = '+2'},
				},
			crafting_speed = 100,
			tech = 'boronb',
			name = 'scrondrix-cub-4a',
		},
		--navens
		{
			ingredients =
				{
					{name='navens',amount =8},

				},
			results =
				{
					{name='scrondrix-pup',amount = '+4'},
				},
			crafting_speed = 100,
			tech = 'boronb',
			name = 'scrondrix-cub-5a',
		},

		-----------------------PHEROMONES-----------------------------
		{
			ingredients =
				{
					{name='raw-fiber',amount = 'R'},
					{name='salt',amount = 'R'},
					{name='navens',amount = 'R'},
					{name='yotoi-leaves',amount ='R'},
					{name='pheromones',amount =1},
                    --{name='bedding',amount =4},
					--{name='water-barrel',amount=6,return_item={name='empty-barrel',amount=6}},
					--{name='bedding',amount = 1},
				},
			results =
				{
					{name='scrondrix-pup',amount = 'R'},
					{name='scrondrix-pup', amount =8},
				},
			crafting_speed = 140,
			tech = 'boronb',
			name = 'scrondrix-cub-6a',
		},
		--yotoi leaves
		{
			ingredients =
				{
                    --{name='wood-seeds',amount ='R'},
                    --{name='fawogae',amount =15},
					{name='yotoi-leaves',amount =10},
				},
			results =
				{
					{name='scrondrix-pup', amount ='+1'},
				},
			crafting_speed = 120,
			tech = 'boronb',
			name = 'scrondrix-cub-7a',
		},
		--salt
		{
			ingredients =
				{
					{name='salt',amount = 5},
				},
			results =
				{

				},
			crafting_speed = 110,
			tech = 'boronb',
			name = 'scrondrix-cub-8a',
		},
		--fiber
		{
			ingredients =
				{
					{name='raw-fiber',amount = 10},
				},
			results =
				{
					{name='scrondrix-pup', amount ='+2'},
				},
			crafting_speed =100,
			tech = 'boronb',
			name = 'scrondrix-cub-9a',
		},
		--navens
		{
			ingredients =
				{
					{name='navens',amount =5},

				},
			results =
				{
					{name='scrondrix-pup', amount ='+2'},
				},
			crafting_speed = 100,
			tech = 'boronb',
			name = 'scrondrix-cub-10a',
		},
	}
}
