local fun = require("prototypes/functions/functions")

fun.autorecipes {
    name = 'caged-ulric',
	category = 'ulric',
	module_limitations = 'ulric',
	subgroup = 'py-alienlife-ulric',
	order = 'b',
    mats =
	{
		{
			ingredients =
				{
					{name='ralesiaseeds',amount =15},
					{name='waterbarrel',amount=5,return_item={name='empty-barrel',amount=5}},
					{name='cage',amount=1},
				},
			results =
				{
					{name='cagedulric', probability = 0.7,amount_min =1,amount_max =1},
				},
			crafting_speed = 150,
			tech = 'ulric'
		},
		--food 1
		{
			ingredients =
				{
					{name='ralesiaseeds',amount ='R'},
					{name='ulricfood01',amount =1},
				},
			results =
				{
					{name='cagedulric',amount ='R'},
					{name='cagedulric', probability = 0.8,amount_min =1,amount_max =1},
				},
			crafting_speed = 140,
			tech = 'ulric'
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
			tech = 'ulric-mk02'
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
			tech = 'ulric-mk03'
		},
		--food 2
		{
			ingredients =
				{
					{name='ulricfood01',amount ='R'},
					{name='salt',amount ='R'},
					{name='rawfiber',amount ='R'},
					{name='ulricfood02',amount =1},

				},
			results =
				{
					{name='cagedulric',amount ='R'},
					{name='cagedulric', probability = 0.9,amount_min =1,amount_max =1},
				},
			crafting_speed = 110,
			tech = 'ulric-mk03'
		},
		--food 2 salt
		{
			ingredients =
				{
					{name='salt',amount =5},
				},
			results =
				{

				},
			crafting_speed = 100,
			tech = 'ulric-mk04'
		},
		--food 2 salt fiber
		{
			ingredients =
				{
					{name='rawfiber',amount = 5},
				},
			results =
				{

				},
			crafting_speed = 90,
			tech = 'ulric-mk04'
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
					{name='cagedulric', amount ='R'},
					{name='cagedulric', probability = 1,amount_min =1,amount_max =2},
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
					{name='cagedulric', amount ='R'},
					{name='braincagedulric',1},
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
					{name='braincagedulric', amount ='R'},
					{name='bonecagedulric', 1},
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
					{name='anabolicrna',amount =1},
				},
			results =
				{
					{name='bonecagedulric', amount ='R'},
					{name='meatcagedulric', 1},
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
					{name='anabolicrna',amount ='R'},
					{name='antitumor',amount =1},
				},
			results =
				{
					{name='meatcagedulric', amount ='R'},
					{name='gutscagedulric', 1},
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
					{name='recombinantery',amount =1},
				},
			results =
				{
					{name='gutscagedulric', amount ='R'},
					{name='bloodcagedulric', 1},
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
					{name='recombinantery',amount ='R'},
					{name='reca',amount =1},
				},
			results =
				{
					{name='bloodcagedulric', amount ='R'},
					{name='skincagedulric', 1},
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
					{name='skincagedulric', amount ='R'},
					{name='fatcagedulric', 1},
				},
			crafting_speed = 90,
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

------------------CUB MAKER------------------

fun.autorecipes {
    name = 'ulric-cub',
	category = 'ulric',
	module_limitations = 'ulric',
	subgroup = 'py-alienlife-ulric',
	order = 'c',
    mats =
	{
		{
			ingredients =
				{
                    {name='fawogae',amount =15},
                    {name='ralesiaseeds',amount =15},
					{name='waterbarrel',amount=6,return_item={name='empty-barrel',amount=6}},
					{name='bedding',amount = 1},
				},
			results =
				{
					{name='ulriccub', probability = 0.7,amount_min =1,amount_max =2},
				},
			crafting_speed = 70,
			tech = 'assisted-embryology'
		},
		--food 1
		{
			ingredients =
				{
                    {name='ralesiaseeds',amount ='R'},
                    {name='fawogae',amount ='R'},
					{name='ulricfood01',amount =1},
				},
			results =
				{

				},
			crafting_speed = 60,
			tech = 'assisted-embryology'
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
			tech = 'assisted-embryology'
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
			crafting_speed = 50,
			tech = 'assisted-embryology'
		},
		--food 2
		{
			ingredients =
				{
					{name='ulricfood01',amount ='R'},
					{name='salt',amount ='R'},
					{name='rawfiber',amount ='R'},
					{name='ulricfood02',amount =1},

				},
			results =
				{

				},
			crafting_speed = 50,
			tech = 'assisted-embryology'
		},
		--food 2 salt
		{
			ingredients =
				{
					{name='salt',amount ='R'},
				},
			results =
				{

				},
			crafting_speed = 45,
			tech = 'assisted-embryology'
		},
		--food 2 salt fiber
		{
			ingredients =
				{
					{name='rawfiber',amount = 5},
				},
			results =
				{

				},
			crafting_speed = 40,
			tech = 'assisted-embryology'
		},
		-----------------------PHEROMONES-----------------------------
		{
			ingredients =
				{
					{name='rawfiber',amount = 'R'},
					{name='salt',amount = 'R'},
					{name='ulricfood02',amount = 'R'},
					{name='fawogae',amount =15},
					{name='pheromones',amount =1},
                    {name='ralesiaseeds',amount =15},
					--{name='waterbarrel',amount=6,return_item={name='empty-barrel',amount=6}},
					--{name='bedding',amount = 1},
				},
			results =
				{
					{name='ulriccub',amount = 'R'},
					{name='ulriccub', amount =1},
				},
			crafting_speed = 70,
			tech = 'pheromones'
		},
		--food 1
		{
			ingredients =
				{
                    {name='ralesiaseeds',amount ='R'},
                    {name='fawogae',amount ='R'},
					{name='ulricfood01',amount =1},
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
					{name='rawfiber',amount = 5},
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
					{name='ulricfood01',amount ='R'},
					{name='salt',amount ='R'},
					{name='rawfiber',amount ='R'},
					{name='ulricfood02',amount =1},

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
					{name='salt',amount ='R'},
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
					{name='rawfiber',amount = 5},
				},
			results =
				{

				},
			crafting_speed = 40,
			tech = 'pheromones'
		},
	}
}

------------------RENDERING------------------

fun.autorecipes {
    name = 'rendering',
	category = 'slaughterhouse-ulric',
	--module_limitations = 'ulric',
	subgroup = 'py-alienlife-ulric',
	order = 'b',
    mats =
	{
		{
			ingredients =
				{
					{name='cagedulric',amount=1},
				},
			results =
				{
					{name='bones', probability = 0.4,amount_min =1,amount_max =3},
					{name='meat', probability = 0.4,amount_min =1,amount_max =3},
					{name='skin', probability = 0.2,amount_min =1,amount_max =1},
					{name='fat', probability = 0.3,amount_min =1,amount_max =1},
					{name='guts', probability = 0.4,amount_min =1,amount_max =1},
					{name='blood', amount =50},
					{name='cage',amount=1},
					{name='brain', probability = 0.4,amount_min =1,amount_max =1},
				},
			crafting_speed = 30,
			tech = 'rendering',
			name = 'Full Render Ulrics',
			icon = "__pyalienlifegraphics__/graphics/icons/rendering-ulric.png",
			icon_size = 64,
		},
		--bonemeal
		{
			ingredients =
				{
					--{name='cagedulric',amount=1},
				},
			results =
				{
					{name='bones', amount ='R'},
					{name='meat', amount ='R'},
					{name='skin', amount ='R'},
					{name='fat', amount ='R'},
					{name='guts', amount ='R'},
					{name='blood', amount ='R'},
					{name='brain', amount ='R'},
					{name='bonemeal', amount = 6},
				},
			crafting_speed = 15,
			tech = 'rendering',
			name = 'Ulrics to Bonemeal',
			icon = "__pyalienlifegraphics__/graphics/icons/bonemeal.png",
			icon_size = 64,
		},
		--meat
		{
			ingredients =
				{
					--{name='cagedulric',amount=1},
				},
			results =
				{
					{name='bonemeal', amount ='R'},
					{name='meat', amount =4},
				},
			crafting_speed = 15,
			tech = 'advanced-rendering',
			name = 'Extract Ulric Meat',
			icon = "__pyalienlifegraphics__/graphics/icons/mip/meat-01.png",
			icon_size = 64,
		},
		--brain
		{
			ingredients =
				{
					--{name='cagedulric',amount=1},
				},
			results =
				{
					{name='meat', amount ='R'},
					{name='brain', amount =1},
				},
			crafting_speed = 15,
			tech = 'advanced-rendering',
			name = 'Extract Ulric brains',
			icon = "__pyalienlifegraphics__/graphics/icons/mip/brain-04.png",
			icon_size = 64,
		},
		--skin
		{
			ingredients =
				{
					--{name='cagedulric',amount=1},
				},
			results =
				{
					{name='brain', amount ='R'},
					{name='skin', amount =2},
				},
			crafting_speed = 15,
			tech = 'advanced-rendering',
			name = 'Extract Ulric skin',
			icon = "__pyalienlifegraphics__/graphics/icons/skin.png",
			icon_size = 32,
		},
		--bones
		{
			ingredients =
				{
					--{name='cagedulric',amount=1},
				},
			results =
				{
					{name='skin', amount ='R'},
					{name='bones', amount =4},
				},
			crafting_speed = 15,
			tech = 'advanced-rendering',
			name = 'Extract Ulric bones',
			icon = "__pyalienlifegraphics__/graphics/icons/mip/bones-01.png",
			icon_size = 64,
		},
		--guts
		{
			ingredients =
				{
					--{name='cagedulric',amount=1},
				},
			results =
				{
					{name='bones', amount ='R'},
					{name='guts', amount =3},
				},
			crafting_speed = 15,
			tech = 'advanced-rendering',
			name = 'Extract Ulric guts',
			icon = "__pyalienlifegraphics__/graphics/icons/mip/guts-01.png",
			icon_size = 64,
		},
		--blood
		{
			ingredients =
				{
					--{name='cagedulric',amount=1},
				},
			results =
				{
					{name='guts', amount ='R'},
					{name='blood', amount =80},
				},
			crafting_speed = 15,
			tech = 'advanced-rendering',
			name = 'Extract Ulric blood',
			icon = "__pyalienlifegraphics__/graphics/icons/blood.png",
			icon_size = 64,
		},
		--fat
		{
			ingredients =
				{
					--{name='cagedulric',amount=1},
				},
			results =
				{
					{name='blood', amount ='R'},
					{name='fat', amount =2},
				},
			crafting_speed = 15,
			tech = 'advanced-rendering',
			name = 'Extract Ulric lard',
			icon = "__pyalienlifegraphics__/graphics/icons/mukmoux-fat.png",
			icon_size = 64,
		},
		--brain ulric rendering
		{
			ingredients =
				{
					{name='cagedulric',amount='R'},
					{name='braincagedulric',amount=1},
				},
			results =
				{
					{name='fat', amount ='R'},
					{name='brain', amount =3},
				},
			crafting_speed = 15,
			tech = 'nanochondria',
			name = 'Extract brains from Improved Ulrics',
			icon = "__pyalienlifegraphics__/graphics/icons/brain-caged-ulric.png",
			icon_size = 64,
		},
		--bone ulric rendering
		{
			ingredients =
				{
					{name='braincagedulric',amount='R'},
					{name='bonecagedulric',amount=1},
				},
			results =
				{
					{name='brain', amount ='R'},
					{name='bones', amount =8},
				},
			crafting_speed = 15,
			tech = 'bmp',
			name = 'Extract bones from Improved Ulrics',
			icon = "__pyalienlifegraphics__/graphics/icons/bone-caged-ulric.png",
			icon_size = 64,
		},
		--bonemeal ulric rendering
		{
			ingredients =
				{

				},
			results =
				{
					{name='bones', amount ='R'},
					{name='bonemeal', amount =12},
				},
			crafting_speed = 15,
			tech = 'bmp',
			name = 'Extract bonemeal from Improved Ulrics',
			icon = "__pyalienlifegraphics__/graphics/icons/bonemeal-caged-ulric.png",
			icon_size = 64,
		},
		--guts ulric rendering
		{
			ingredients =
				{
					{name='bonecagedulric',amount='R'},
					{name='gutscagedulric',amount=1},
				},
			results =
				{
					{name='bonemeal', amount ='R'},
					{name='guts', amount =7},
				},
			crafting_speed = 15,
			tech = 'antitumor',
			name = 'Extract guts from Improved Ulrics',
			icon = "__pyalienlifegraphics__/graphics/icons/guts-caged-ulric.png",
			icon_size = 64,
		},
		--blood ulric rendering
		{
			ingredients =
				{
					{name='gutscagedulric',amount='R'},
					{name='bloodcagedulric',amount=1},
				},
			results =
				{
					{name='guts', amount ='R'},
					{name='blood', amount =120},
				},
			crafting_speed = 15,
			tech = 'recombinant-ery',
			name = 'Extract blood from Improved Ulrics',
			icon = "__pyalienlifegraphics__/graphics/icons/blood-caged-ulric.png",
			icon_size = 64,
		},
		--skin ulric rendering
		{
			ingredients =
				{
					{name='bloodcagedulric',amount='R'},
					{name='skincagedulric',amount=1},
				},
			results =
				{
					{name='blood', amount ='R'},
					{name='skin', amount =6},
				},
			crafting_speed = 15,
			tech = 'reca',
			name = 'Extract skin from Improved Ulrics',
			icon = "__pyalienlifegraphics__/graphics/icons/skin-caged-ulric.png",
			icon_size = 64,
		},
		--fat ulric rendering
		{
			ingredients =
				{
					{name='skincagedulric',amount='R'},
					{name='fatcagedulric',amount=1},
				},
			results =
				{
					{name='skin', amount ='R'},
					{name='fat', amount =6},
				},
			crafting_speed = 15,
			tech = 'orexigenic',
			name = 'Extract fat from Improved Ulrics',
			icon = "__pyalienlifegraphics__/graphics/icons/fat-caged-ulric.png",
			icon_size = 64,
		},
		--meat ulric rendering
		{
			ingredients =
				{
					{name='fatcagedulric',amount='R'},
					{name='meatcagedulric',amount=1},
				},
			results =
				{
					{name='skin', amount ='R'},
					{name='meat', amount =7},
				},
			crafting_speed = 15,
			tech = 'anabolic-rna',
			name = 'Extract meat from Improved Ulrics',
			icon = "__pyalienlifegraphics__/graphics/icons/meat-caged-ulric.png",
			icon_size = 64,
		},
	}
}