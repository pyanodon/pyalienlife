local fun = require("prototypes/functions/functions")

fun.autorecipes {
    name = 'caged-arthurian',
	category = 'arthurian',
	module_limitations = 'arthurian',
	subgroup = 'py-alienlife-arthurian',
	order = 'b',
    mats =
	{
		{
			ingredients =
				{
					{name='cagedulric',amount =1},
					{name='arthurianegg',amount =1},
					{name='waterbarrel',amount=4,return_item={name='empty-barrel',amount=4}},
				},
			results =
				{
					{name='cagedarthurian', probability = 0.7,amount_min =1,amount_max =1},
				},
			crafting_speed = 130,
			tech = 'arthurian'
		},
		--food 1
		{
			ingredients =
				{
					{name='arthurianfood01',amount =1},
				},
			results =
				{
					{name='cagedarthurian',amount ='R'},
					{name='cagedarthurian', probability = 0.8,amount_min =1,amount_max =1},
				},
			crafting_speed = 120,
			tech = 'arthurian-mk02'
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
			tech = 'arthurian-mk02'
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
			crafting_speed = 100,
			tech = 'arthurian-mk03'
		},
		--food 2
		{
			ingredients =
				{
					{name='arthurianfood01',amount ='R'},
					{name='bedding',amount ='R'},
					{name='rawfiber',amount ='R'},
					{name='arthurianfood02',amount =1},

				},
			results =
				{
					{name='cagedarthurian',amount ='R'},
					{name='cagedarthurian', probability = 0.9,amount_min =1,amount_max =1},
				},
			crafting_speed = 90,
			tech = 'arthurian-mk03'
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
			tech = 'arthurian-mk04'
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
			crafting_speed = 80,
			tech = 'arthurian-mk04'
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
					{name='cagedarthurian', amount ='R'},
					{name='cagedarthurian', probability = 1,amount_min =1,amount_max =2},
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
			crafting_speed = 80,
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
					{name='cagedarthurian', amount ='R'},
					{name='braincagedarthurian',1},
				},
			crafting_speed = 80,
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
					{name='braincagedarthurian', amount ='R'},
					{name='bonecagedarthurian', 1},
				},
			crafting_speed = 80,
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
					{name='bonecagedarthurian', amount ='R'},
					{name='meatcagedarthurian', 1},
				},
			crafting_speed = 80,
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
					{name='meatcagedarthurian', amount ='R'},
					{name='gutscagedarthurian', 1},
				},
			crafting_speed = 80,
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
					{name='gutscagedarthurian', amount ='R'},
					{name='bloodcagedarthurian', 1},
				},
			crafting_speed = 80,
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
					{name='bloodcagedarthurian', amount ='R'},
					{name='skincagedarthurian', 1},
				},
			crafting_speed = 80,
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
					{name='skincagedarthurian', amount ='R'},
					{name='fatcagedarthurian', 1},
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
                    {name='cagedulric',amount =1},
                    {name='cocoon',amount =1},
                    {name='rawfiber',amount = 'R'},
					{name='waterbarrel',amount=5,return_item={name='empty-barrel',amount=5}},
					{name='bedding',amount = 2},
				},
			results =
				{
					{name='arthurianegg', amount =3},
				},
			crafting_speed = 100,
			tech = 'assisted-embryology'
		},
		--food 1
		{
			ingredients =
				{
					{name='arthurianfood01',amount =1},
				},
			results =
				{
                    {name='arthurianegg', amount ="+1"},
				},
			crafting_speed = 90,
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
                    {name='arthurianegg', amount ="+1"},
				},
			crafting_speed = 80,
			tech = 'assisted-embryology'
		},
		--food 2
		{
			ingredients =
				{
                    {name='arthurianfood01',amount ='R'},
                    {name='rawfiber',amount = 'R'},
					{name='arthurianfood02',amount =1},

				},
			results =
				{
                    {name='arthurianegg', amount ="+1"},
				},
			crafting_speed = 75,
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
                    {name='arthurianegg', amount ="+1"},
				},
			crafting_speed = 65,
			tech = 'assisted-embryology'
		},
		-----------------------PHEROMONES-----------------------------
		{
			ingredients =
				{
					{name='rawfiber',amount = 'R'},
					{name='arthurianfood02',amount = 'R'},
					{name='fawogae',amount =15},
					{name='pheromones',amount =1},
					--{name='waterbarrel',amount=6,return_item={name='empty-barrel',amount=6}},
					--{name='bedding',amount = 1},
				},
			results =
				{
					{name='arthurianegg',amount = 'R'},
					{name='arthurianegg', amount =6},
				},
			crafting_speed = 70,
			tech = 'pheromones'
		},
		--food 1
		{
			ingredients =
				{
					{name='arthurianfood01',amount =1},
				},
			results =
				{
                    {name='arthurianegg', amount ="+1"},
				},
			crafting_speed = 60,
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
                    {name='arthurianegg', amount ="+1"},
				},
			crafting_speed = 50,
			tech = 'pheromones'
		},
		--food 2
		{
			ingredients =
				{
					{name='arthurianfood01',amount ='R'},
					{name='rawfiber',amount ='R'},
					{name='arthurianfood02',amount =1},

				},
			results =
				{
                    {name='arthurianegg', amount ="+1"},
				},
			crafting_speed = 50,
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
                    {name='arthurianegg', amount ="+1"},
				},
			crafting_speed = 40,
			tech = 'pheromones'
		},

	}
}

------------------RENDERING------------------

fun.autorecipes {
    name = 'rendering',
	category = 'slaughterhouse-arthurian',
	--module_limitations = 'arthurian',
	subgroup = 'py-alienlife-arthurian',
	order = 'b',
    mats =
	{
		{
			ingredients =
				{
					{name='cagedarthurian',amount=1},
				},
			results =
				{
					{name='bones', probability = 0.3,amount_min =1,amount_max =2},
					{name='meat', probability = 0.4,amount_min =1,amount_max =3},
					{name='skin', probability = 0.4,amount_min =1,amount_max =4},
					{name='fat', probability = 0.2,amount_min =1,amount_max =1},
					{name='guts', probability = 0.4,amount_min =1,amount_max =2},
					{name='blood', amount =20},
					{name='cage',amount=1},
					{name='brain', probability = 0.6,amount_min =1,amount_max =2},
				},
			crafting_speed = 30,
			tech = 'arthurian',
			name = 'Full Render arthurians',
			icon = "__pyalienlifegraphics__/graphics/icons/rendering-arthurian.png",
			icon_size = 64,
		},
		--bonemeal
		{
			ingredients =
				{
					--{name='cagedarthurian',amount=1},
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
					{name='bonemeal', amount = 5},
				},
			crafting_speed = 15,
			tech = 'arthurian',
			name = 'arthurians to Bonemeal',
			icon = "__pyalienlifegraphics__/graphics/icons/bonemeal.png",
			icon_size = 64,
		},
		--meat
		{
			ingredients =
				{
					--{name='cagedarthurian',amount=1},
				},
			results =
				{
					{name='bonemeal', amount ='R'},
					{name='meat', amount =5},
				},
			crafting_speed = 15,
			tech = 'arthurian',
			name = 'Extract arthurian Meat',
			icon = "__pyalienlifegraphics__/graphics/icons/mip/meat-01.png",
			icon_size = 64,
		},
		--brain
		{
			ingredients =
				{
					--{name='cagedarthurian',amount=1},
				},
			results =
				{
					{name='meat', amount ='R'},
					{name='brain', amount =2},
				},
			crafting_speed = 15,
			tech = 'arthurian',
			name = 'Extract arthurian brains',
			icon = "__pyalienlifegraphics__/graphics/icons/mip/brain-04.png",
			icon_size = 64,
		},
		--skin
		{
			ingredients =
				{
					--{name='cagedarthurian',amount=1},
				},
			results =
				{
					{name='brain', amount ='R'},
					{name='skin', amount =2},
				},
			crafting_speed = 15,
			tech = 'arthurian',
			name = 'Extract arthurian skin',
			icon = "__pyalienlifegraphics__/graphics/icons/skin.png",
			icon_size = 32,
		},
		--bones
		{
			ingredients =
				{
					--{name='cagedarthurian',amount=1},
				},
			results =
				{
					{name='skin', amount ='R'},
					{name='bones', amount =4},
				},
			crafting_speed = 15,
			tech = 'arthurian',
			name = 'Extract arthurian bones',
			icon = "__pyalienlifegraphics__/graphics/icons/mip/bones-01.png",
			icon_size = 64,
		},
		--guts
		{
			ingredients =
				{
					--{name='cagedarthurian',amount=1},
				},
			results =
				{
					{name='bones', amount ='R'},
					{name='guts', amount =4},
				},
			crafting_speed = 15,
			tech = 'arthurian',
			name = 'Extract arthurian guts',
			icon = "__pyalienlifegraphics__/graphics/icons/mip/guts-01.png",
			icon_size = 64,
		},
		--blood
		{
			ingredients =
				{
					--{name='cagedarthurian',amount=1},
				},
			results =
				{
					{name='guts', amount ='R'},
					{name='blood', amount =50},
				},
			crafting_speed = 15,
			tech = 'arthurian',
			name = 'Extract arthurian blood',
			icon = "__pyalienlifegraphics__/graphics/icons/blood.png",
			icon_size = 64,
		},
		--fat
		{
			ingredients =
				{
					--{name='cagedarthurian',amount=1},
				},
			results =
				{
					{name='blood', amount ='R'},
					{name='fat', amount =1},
				},
			crafting_speed = 15,
			tech = 'arthurian',
			name = 'Extract arthurian lard',
			icon = "__pyalienlifegraphics__/graphics/icons/mukmoux-fat.png",
			icon_size = 64,
		},
		--brain arthurian rendering
		{
			ingredients =
				{
					{name='cagedarthurian',amount='R'},
					{name='braincagedarthurian',amount=1},
				},
			results =
				{
					{name='fat', amount ='R'},
					{name='brain', amount =4},
				},
			crafting_speed = 15,
			tech = 'nanochondria',
			name = 'Extract brains from Improved arthurians',
			icon = "__pyalienlifegraphics__/graphics/icons/brain-caged-arthurian.png",
			icon_size = 64,
		},
		--bone arthurian rendering
		{
			ingredients =
				{
					{name='braincagedarthurian',amount='R'},
					{name='bonecagedarthurian',amount=1},
				},
			results =
				{
					{name='brain', amount ='R'},
					{name='bones', amount =7},
				},
			crafting_speed = 15,
			tech = 'bmp',
			name = 'Extract bones from Improved arthurians',
			icon = "__pyalienlifegraphics__/graphics/icons/bone-caged-arthurian.png",
			icon_size = 64,
		},
		--bonemeal arthurian rendering
		{
			ingredients =
				{

				},
			results =
				{
					{name='bones', amount ='R'},
					{name='bonemeal', amount =6},
				},
			crafting_speed = 15,
			tech = 'bmp',
			name = 'Extract bonemeal from Improved arthurians',
			icon = "__pyalienlifegraphics__/graphics/icons/bonemeal-caged-arthurian.png",
			icon_size = 64,
		},
		--guts arthurian rendering
		{
			ingredients =
				{
					{name='bonecagedarthurian',amount='R'},
					{name='gutscagedarthurian',amount=1},
				},
			results =
				{
					{name='bonemeal', amount ='R'},
					{name='guts', amount =7},
				},
			crafting_speed = 15,
			tech = 'antitumor',
			name = 'Extract guts from Improved arthurians',
			icon = "__pyalienlifegraphics__/graphics/icons/guts-caged-arthurian.png",
			icon_size = 64,
		},
		--blood arthurian rendering
		{
			ingredients =
				{
					{name='gutscagedarthurian',amount='R'},
					{name='bloodcagedarthurian',amount=1},
				},
			results =
				{
					{name='guts', amount ='R'},
					{name='blood', amount =80},
				},
			crafting_speed = 15,
			tech = 'recombinant-ery',
			name = 'Extract blood from Improved arthurians',
			icon = "__pyalienlifegraphics__/graphics/icons/blood-caged-arthurian.png",
			icon_size = 64,
		},
		--skin arthurian rendering
		{
			ingredients =
				{
					{name='bloodcagedarthurian',amount='R'},
					{name='skincagedarthurian',amount=1},
				},
			results =
				{
					{name='blood', amount ='R'},
					{name='skin', amount =5},
				},
			crafting_speed = 15,
			tech = 'reca',
			name = 'Extract skin from Improved arthurians',
			icon = "__pyalienlifegraphics__/graphics/icons/skin-caged-arthurian.png",
			icon_size = 64,
		},
		--fat arthurian rendering
		{
			ingredients =
				{
					{name='skincagedarthurian',amount='R'},
					{name='fatcagedarthurian',amount=1},
				},
			results =
				{
					{name='skin', amount ='R'},
					{name='fat', amount =4},
				},
			crafting_speed = 15,
			tech = 'orexigenic',
			name = 'Extract fat from Improved arthurians',
			icon = "__pyalienlifegraphics__/graphics/icons/fat-caged-arthurian.png",
			icon_size = 64,
		},
		--meat arthurian rendering
		{
			ingredients =
				{
					{name='fatcagedarthurian',amount='R'},
					{name='meatcagedarthurian',amount=1},
				},
			results =
				{
					{name='fat', amount ='R'},
					{name='meat', amount =7},
				},
			crafting_speed = 15,
			tech = 'anabolic-rna',
			name = 'Extract meat from Improved arthurians',
			icon = "__pyalienlifegraphics__/graphics/icons/meat-caged-arthurian.png",
			icon_size = 64,
		},
	}
}