local fun = require("prototypes/functions/functions")

fun.autorecipes {
    name = 'caged-scrondrix',
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
					{name='waterbarrel',amount=5,return_item={name='empty-barrel',amount=5}},
					{name='cage',amount=1},
				},
			results =
				{
					{name='cagedscrondrix', probability = 0.8,amount_min =1,amount_max =1},
				},
			crafting_speed = 150,
			tech = 'scrondrix',
			name = 'caged-scrondrix-1',
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
			tech = 'scrondrix',
			name = 'caged-scrondrix-2',
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
			tech = 'scrondrix-mk02',
			name = 'caged-scrondrix-3',
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
			tech = 'scrondrix-mk03',
			name = 'caged-scrondrix-4',
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
			tech = 'scrondrix-mk04',
			name = 'caged-scrondrix-5',
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
			tech = 'growth-hormone',
			name = 'caged-scrondrix-6',
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
			tech = 'antiviral',
			name = 'caged-scrondrix-7',
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
			tech = 'antiviral',
			name = 'caged-scrondrix-8',
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
			tech = 'nanochondria',
			name = 'caged-scrondrix-9',
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
			tech = 'nanochondria',
			name = 'caged-scrondrix-10',
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
			tech = 'bmp',
			name = 'caged-scrondrix-11',
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
			tech = 'bmp',
			name = 'caged-scrondrix-12',
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
			tech = 'anabolic-rna',
			name = 'caged-scrondrix-13',
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
			tech = 'anabolic-rna',
			name = 'caged-scrondrix-14',
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
			tech = 'antitumor',
			name = 'caged-scrondrix-15',
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
			tech = 'antitumor',
			name = 'caged-scrondrix-16',
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
			tech = 'recombinant-ery',
			name = 'caged-scrondrix-17',
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
			tech = 'recombinant-ery',
			name = 'caged-scrondrix-18',
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
			tech = 'reca',
			name = 'caged-scrondrix-19',
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
			tech = 'reca',
			name = 'caged-scrondrix-20',
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
			tech = 'orexigenic',
			name = 'caged-scrondrix-21',
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
			tech = 'orexigenic',
			name = 'caged-scrondrix-22',
		},
	}
}

------------------CUB MAKER------------------

fun.autorecipes {
    name = 'scrondrix-cub',
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
					{name='waterbarrel',amount=20,return_item={name='empty-barrel',amount=20}},
					{name='bedding',amount = 1},
				},
			results =
				{
					{name='scrondrixcub',amount = 3},
				},
			crafting_speed = 140,
			tech = 'assisted-embryology',
			name = 'scrondrix-cub-1',
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
			tech = 'assisted-embryology',
			name = 'scrondrix-cub-2',
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
			tech = 'assisted-embryology',
			name = 'scrondrix-cub-3',
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
			tech = 'assisted-embryology',
			name = 'scrondrix-cub-4',
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
			tech = 'assisted-embryology',
			name = 'scrondrix-cub-5',
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
			tech = 'pheromones',
			name = 'scrondrix-cub-6',
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
			tech = 'pheromones',
			name = 'scrondrix-cub-7',
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
			tech = 'pheromones',
			name = 'scrondrix-cub-8',
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
			tech = 'pheromones',
			name = 'scrondrix-cub-9',
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
			tech = 'pheromones',
			name = 'scrondrix-cub-10',
		},
	}
}

------------------RENDERING------------------

fun.autorecipes {
    name = 'rendering',
	category = 'slaughterhouse-scrondrix',
	--module_limitations = 'scrondrix',
	subgroup = 'py-alienlife-scrondrix',
	order = 'b',
    mats =
	{
		{
			ingredients =
				{
					{name='cagedscrondrix',amount=1},
				},
			results =
				{
					{name='bones', probability = 0.5,amount_min =1,amount_max =2},
					{name='meat', probability = 0.5,amount_min =1,amount_max =3},
					{name='skin', probability = 0.4,amount_min =1,amount_max =1},
					{name='fat', probability = 0.4,amount_min =1,amount_max =2},
					{name='guts', probability = 0.5,amount_min =1,amount_max =2},
					{name='blood', amount =60},
					{name='pinealgland', probability = 0.4,amount_min =1,amount_max =1},
					{name='cage',amount=1},
					{name='brain', probability = 0.5,amount_min =1,amount_max =1},
				},
			crafting_speed = 30,
			tech = 'scrondrix',
			name = 'Full Render scrondrixs',
			icon = "__pyalienlifegraphics__/graphics/icons/rendering-scrondrix.png",
			icon_size = 64,
		},
		--meat
		{
			ingredients =
				{

				},
			results =
				{
					{name='meat', amount ='R'},
					{name='pinealgland', amount ='R'},
					{name='meat', amount =5},
					{name='bones', amount ='R'},
					--{name='meat', amount ='R'},
					{name='skin', amount ='R'},
					{name='fat', amount ='R'},
					{name='guts', amount ='R'},
					{name='blood', amount ='R'},
					{name='brain', amount ='R'},
				},
			crafting_speed = 15,
			tech = 'scrondrix-mk02',
			name = 'Extract scrondrix Meat',
			icon = "__pyalienlifegraphics__/graphics/icons/mip/meat-01.png",
			icon_size = 64,
		},
		--brain
		{
			ingredients =
				{
					--{name='cagedscrondrix',amount=1},
				},
			results =
				{
					{name='meat', amount ='R'},
					{name='brain', amount =1},
				},
			crafting_speed = 15,
			tech = 'scrondrix-mk02',
			name = 'Extract scrondrix brains',
			icon = "__pyalienlifegraphics__/graphics/icons/mip/brain-04.png",
			icon_size = 64,
		},
		--pineal
		{
			ingredients =
				{
					--{name='cagedscrondrix',amount=1},
				},
			results =
				{
					{name='brain', amount ='R'},
					{name='pinealgland', amount =1},
				},
			crafting_speed = 15,
			tech = 'scrondrix-mk02',
			name = 'Extract scrondrix Pineal Gland',
			icon = "__pyalienlifegraphics__/graphics/icons/pineal-gland.png",
			icon_size = 64,
		},
		--skin
		{
			ingredients =
				{
					--{name='cagedscrondrix',amount=1},
				},
			results =
				{
					{name='pinealgland', amount ='R'},
					{name='skin', amount =3},
				},
			crafting_speed = 15,
			tech = 'scrondrix-mk02',
			name = 'Extract scrondrix skin',
			icon = "__pyalienlifegraphics__/graphics/icons/skin.png",
			icon_size = 32,
		},
		--bones
		{
			ingredients =
				{
					--{name='cagedscrondrix',amount=1},
				},
			results =
				{
					{name='skin', amount ='R'},
					{name='bones', amount =4},
				},
			crafting_speed = 15,
			tech = 'scrondrix-mk02',
			name = 'Extract scrondrix bones',
			icon = "__pyalienlifegraphics__/graphics/icons/mip/bones-01.png",
			icon_size = 64,
		},
		--guts
		{
			ingredients =
				{
					--{name='cagedscrondrix',amount=1},
				},
			results =
				{
					{name='bones', amount ='R'},
					{name='guts', amount =4},
				},
			crafting_speed = 15,
			tech = 'scrondrix-mk02',
			name = 'Extract scrondrix guts',
			icon = "__pyalienlifegraphics__/graphics/icons/mip/guts-01.png",
			icon_size = 64,
		},
		--blood
		{
			ingredients =
				{
					--{name='cagedscrondrix',amount=1},
				},
			results =
				{
					{name='guts', amount ='R'},
					{name='blood', amount =70},
				},
			crafting_speed = 15,
			tech = 'scrondrix-mk02',
			name = 'Extract scrondrix blood',
			icon = "__pyalienlifegraphics__/graphics/icons/blood.png",
			icon_size = 64,
		},
		--fat
		{
			ingredients =
				{
					--{name='cagedscrondrix',amount=1},
				},
			results =
				{
					{name='blood', amount ='R'},
					{name='fat', amount =3},
				},
			crafting_speed = 15,
			tech = 'scrondrix-mk02',
			name = 'Extract scrondrix lard',
			icon = "__pyalienlifegraphics__/graphics/icons/mukmoux-fat.png",
			icon_size = 64,
		},
		--brain scrondrix rendering
		{
			ingredients =
				{
					{name='cagedscrondrix',amount='R'},
					{name='braincagedscrondrix',amount=1},
				},
			results =
				{
					{name='fat', amount ='R'},
					{name='brain', amount =5},
				},
			crafting_speed = 15,
			tech = 'nanochondria',
			name = 'Extract brains from Improved scrondrixs',
			icon = "__pyalienlifegraphics__/graphics/icons/brain-caged-scrondrix.png",
			icon_size = 64,
		},
		--bone scrondrix rendering
		{
			ingredients =
				{
					{name='braincagedscrondrix',amount='R'},
					{name='bonecagedscrondrix',amount=1},
				},
			results =
				{
					{name='brain', amount ='R'},
					{name='bones', amount =13},
				},
			crafting_speed = 15,
			tech = 'bmp',
			name = 'Extract bones from Improved scrondrixs',
			icon = "__pyalienlifegraphics__/graphics/icons/bone-caged-scrondrix.png",
			icon_size = 64,
		},
		--guts scrondrix rendering
		{
			ingredients =
				{
					{name='bonecagedscrondrix',amount='R'},
					{name='gutscagedscrondrix',amount=1},
				},
			results =
				{
					{name='bones', amount ='R'},
					{name='guts', amount =12},
				},
			crafting_speed = 15,
			tech = 'antitumor',
			name = 'Extract guts from Improved scrondrixs',
			icon = "__pyalienlifegraphics__/graphics/icons/guts-caged-scrondrix.png",
			icon_size = 64,
		},
		--blood scrondrix rendering
		{
			ingredients =
				{
					{name='gutscagedscrondrix',amount='R'},
					{name='bloodcagedscrondrix',amount=1},
				},
			results =
				{
					{name='guts', amount ='R'},
					{name='blood', amount =170},
				},
			crafting_speed = 15,
			tech = 'recombinant-ery',
			name = 'Extract blood from Improved scrondrixs',
			icon = "__pyalienlifegraphics__/graphics/icons/blood-caged-scrondrix.png",
			icon_size = 64,
		},
		--skin scrondrix rendering
		{
			ingredients =
				{
					{name='bloodcagedscrondrix',amount='R'},
					{name='skincagedscrondrix',amount=1},
				},
			results =
				{
					{name='blood', amount ='R'},
					{name='skin', amount =10},
				},
			crafting_speed = 15,
			tech = 'reca',
			name = 'Extract skin from Improved scrondrixs',
			icon = "__pyalienlifegraphics__/graphics/icons/skin-caged-scrondrix.png",
			icon_size = 64,
		},
		--fat scrondrix rendering
		{
			ingredients =
				{
					{name='skincagedscrondrix',amount='R'},
					{name='fatcagedscrondrix',amount=1},
				},
			results =
				{
					{name='skin', amount ='R'},
					{name='fat', amount =10},
				},
			crafting_speed = 15,
			tech = 'orexigenic',
			name = 'Extract fat from Improved scrondrixs',
			icon = "__pyalienlifegraphics__/graphics/icons/fat-caged-scrondrix.png",
			icon_size = 64,
		},
		--meat scrondrix rendering
		{
			ingredients =
				{
					{name='fatcagedscrondrix',amount='R'},
					{name='meatcagedscrondrix',amount=1},
				},
			results =
				{
					{name='fat', amount ='R'},
					{name='meat', amount =12},
				},
			crafting_speed = 15,
			tech = 'anabolic-rna',
			name = 'Extract meat from Improved scrondrixs',
			icon = "__pyalienlifegraphics__/graphics/icons/meat-caged-scrondrix.png",
			icon_size = 64,
		},
	}
}