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
					{name='woodseeds',amount =15},
                    {name='meat',amount =5},
                    {name='boron',amount =1},
					{name='waterbarrel',amount=5,return_item={name='empty-barrel',amount=5}},
					{name='cage',amount=1},
				},
			results =
				{
					{name='cagedscrondrix', probability = 0.8,amount_min =1,amount_max =1},
				},
			crafting_speed = 150,
			tech = 'boronb',
			name = 'caged-scrondrix-1a',
		},
		--yotoi leaves
		{
			ingredients =
				{
					--{name='woodseeds',amount ='R'},
					{name='yotoileaves',amount =10},
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
					{name='rawfiber',amount = 5},
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
					{name='cagedscrondrix',amount ='R'},
					{name='cagedscrondrix', probability = 0.9,amount_min =1,amount_max =1},
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
					{name='cagedscrondrix', amount ='R'},
					{name='cagedscrondrix', probability = 1,amount_min =1,amount_max =2},
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
					{name='cagedscrondrix', amount ='R'},
					{name='braincagedscrondrix',1},
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
					{name='braincagedscrondrix', amount ='R'},
					{name='bonecagedscrondrix', 1},
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
					{name='anabolicrna',amount =1},
				},
			results =
				{
					{name='bonecagedscrondrix', amount ='R'},
					{name='meatcagedscrondrix', 1},
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
					{name='anabolicrna',amount ='R'},
					{name='antitumor',amount =1},
				},
			results =
				{
					{name='meatcagedscrondrix', amount ='R'},
					{name='gutscagedscrondrix', 1},
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
					{name='recombinantery',amount =1},
				},
			results =
				{
					{name='gutscagedscrondrix', amount ='R'},
					{name='bloodcagedscrondrix', 1},
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
					{name='recombinantery',amount ='R'},
					{name='reca',amount =1},
				},
			results =
				{
					{name='bloodcagedscrondrix', amount ='R'},
					{name='skincagedscrondrix', 1},
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
					{name='skincagedscrondrix', amount ='R'},
					{name='fatcagedscrondrix', 1},
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
					{name='woodseeds',amount =20},
                    {name='meat',amount =10},
                    {name='boron',amount =1},
					{name='waterbarrel',amount=20,return_item={name='empty-barrel',amount=20}},
					{name='bedding',amount = 1},
				},
			results =
				{
					{name='scrondrixcub',amount = 3},
				},
			crafting_speed = 140,
			tech = 'boronb',
			name = 'scrondrix-cub-1a',
		},
		--yotoi leaves
		{
			ingredients =
				{

					{name='yotoileaves',amount =10},
				},
			results =
				{
					{name='scrondrixcub',amount = '+1'},
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
					{name='rawfiber',amount = 5},
				},
			results =
				{
					{name='scrondrixcub',amount = '+2'},
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
					{name='scrondrixcub',amount = '+4'},
				},
			crafting_speed = 100,
			tech = 'boronb',
			name = 'scrondrix-cub-5a',
		},

		-----------------------PHEROMONES-----------------------------
		{
			ingredients =
				{
					{name='rawfiber',amount = 'R'},
					{name='salt',amount = 'R'},
					{name='navens',amount = 'R'},
					{name='yotoileaves',amount ='R'},
					{name='pheromones',amount =1},
                    --{name='bedding',amount =4},
					--{name='waterbarrel',amount=6,return_item={name='empty-barrel',amount=6}},
					--{name='bedding',amount = 1},
				},
			results =
				{
					{name='scrondrixcub',amount = 'R'},
					{name='scrondrixcub', amount =8},
				},
			crafting_speed = 140,
			tech = 'boronb',
			name = 'scrondrix-cub-6a',
		},
		--yotoi leaves
		{
			ingredients =
				{
                    --{name='woodseeds',amount ='R'},
                    --{name='fawogae',amount =15},
					{name='yotoileaves',amount =10},
				},
			results =
				{
					{name='scrondrixcub', amount ='+1'},
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
					{name='rawfiber',amount = 10},
				},
			results =
				{
					{name='scrondrixcub', amount ='+2'},
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
					{name='scrondrixcub', amount ='+2'},
				},
			crafting_speed = 100,
			tech = 'boronb',
			name = 'scrondrix-cub-10a',
		},
	}
}