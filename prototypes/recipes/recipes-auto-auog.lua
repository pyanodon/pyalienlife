local fun = require("prototypes/functions/functions")

fun.autorecipes {
    name = 'caged-auog',
	category = 'auog',
	module_limitations = 'auog',
	subgroup = 'py-alienlife-auog',
	order = 'b',
    mats =
	{
		{
			ingredients =
				{
                    {name='biomass',amount =15},
                    {name='moss',amount =5},
					{name='waterbarrel',amount=3,return_item={name='empty-barrel',amount=3}},
					{name='cage',amount=1},
				},
			results =
				{
					{name='cagedauog', probability = 0.7,amount_min =1,amount_max =1},
				},
			crafting_speed = 160,
			tech = 'auog'
		},
		--food 1
		{
			ingredients =
				{
					{name='biomass',amount ='R'},
					{name='auogfood01',amount =1},
				},
			results =
				{
					{name='cagedauog',amount ='R'},
					{name='cagedauog', probability = 0.8,amount_min =1,amount_max =1},
				},
			crafting_speed = 150,
			tech = 'auog'
		},
		--saps
		{
			ingredients =
				{
					{name='saps',amount = 5},
					{name='bedding',amount = 1},
				},
			results =
				{

				},
			crafting_speed = 140,
			tech = 'auog-mk02'
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
			crafting_speed = 130,
			tech = 'auog-mk02'
		},
		--food 2
		{
			ingredients =
				{
					{name='auogfood01',amount ='R'},
					{name='saps',amount ='R'},
					{name='rawfiber',amount ='R'},
					{name='auogfood02',amount =1},

				},
			results =
				{
					{name='cagedauog',amount ='R'},
					{name='cagedauog', probability = 0.9,amount_min =1,amount_max =1},
				},
			crafting_speed = 120,
			tech = 'auog-mk03'
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
			tech = 'auog-mk04'
		},
		--food 2 saps fiber
		{
			ingredients =
				{
					{name='rawfiber',amount = 5},
				},
			results =
				{

				},
			crafting_speed = 100,
			tech = 'auog-mk04'
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
					{name='cagedauog', amount ='R'},
					{name='cagedauog', probability = 1,amount_min =1,amount_max =2},
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
					{name='cagedauog', amount ='R'},
					{name='braincagedauog',1},
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
					{name='braincagedauog', amount ='R'},
					{name='bonecagedauog', 1},
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
					{name='bonecagedauog', amount ='R'},
					{name='meatcagedauog', 1},
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
					{name='meatcagedauog', amount ='R'},
					{name='gutscagedauog', 1},
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
					{name='gutscagedauog', amount ='R'},
					{name='bloodcagedauog', 1},
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
					{name='bloodcagedauog', amount ='R'},
					{name='skincagedauog', 1},
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
					{name='skincagedauog', amount ='R'},
					{name='fatcagedauog', 1},
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
    name = 'auog-cub',
	category = 'auog',
	module_limitations = 'auog',
	subgroup = 'py-alienlife-auog',
	order = 'c',
    mats =
	{
		{
			ingredients =
				{
                    {name='biomass',amount =15},
                    {name='moss',amount =10},
					{name='waterbarrel',amount=4,return_item={name='empty-barrel',amount=4}},
					{name='bedding',amount = 3},
				},
			results =
				{
					{name='auogpup', probability = 0.7,amount_min =1,amount_max =1},
				},
			crafting_speed = 70,
			tech = 'assisted-embryology'
		},
		--food 1
		{
			ingredients =
				{
                    {name='biomass',amount ='R'},
					{name='auogfood01',amount =1},
				},
			results =
				{

				},
			crafting_speed = 60,
			tech = 'assisted-embryology'
		},
		--saps
		{
			ingredients =
				{
					{name='saps',amount = 10},
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
					{name='auogfood01',amount ='R'},
					{name='saps',amount ='R'},
					{name='rawfiber',amount ='R'},
					{name='auogfood02',amount =1},

				},
			results =
				{

				},
			crafting_speed = 50,
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
			crafting_speed = 45,
			tech = 'assisted-embryology'
		},
		--food 2 saps fiber
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
					{name='saps',amount = 'R'},
					{name='auogfood02',amount = 'R'},
					{name='biomass',amount =15},
					{name='pheromones',amount =1},
					--{name='waterbarrel',amount=6,return_item={name='empty-barrel',amount=6}},
					--{name='bedding',amount = 1},
				},
			results =
				{
					{name='auogpup',amount = 'R'},
					{name='auogpup', amount =2},
				},
			crafting_speed = 70,
			tech = 'pheromones'
		},
		--food 1
		{
			ingredients =
				{

                    {name='biomass',amount ='R'},
					{name='auogfood01',amount =1},
				},
			results =
				{

				},
			crafting_speed = 60,
			tech = 'pheromones'
		},
		--saps
		{
			ingredients =
				{
					{name='saps',amount = 10},
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
					{name='auogfood01',amount ='R'},
					{name='saps',amount ='R'},
					{name='rawfiber',amount ='R'},
					{name='auogfood02',amount =1},

				},
			results =
				{

				},
			crafting_speed = 50,
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
			crafting_speed = 45,
			tech = 'pheromones'
		},
		--food 2 saps fiber
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
	category = 'slaughterhouse-auog',
	--module_limitations = 'auog',
	subgroup = 'py-alienlife-auog',
	order = 'b',
    mats =
	{
		{
			ingredients =
				{
					{name='cagedauog',amount=1},
				},
			results =
				{
					{name='bones', probability = 0.3,amount_min =1,amount_max =4},
					{name='meat', probability = 0.4,amount_min =2,amount_max =5},
					{name='skin', probability = 0.3,amount_min =1,amount_max =2},
					{name='fat', probability = 0.3,amount_min =1,amount_max =1},
					{name='guts', probability = 0.4,amount_min =1,amount_max =1},
					{name='blood', amount =50},
					{name='cage',amount=1},
					{name='brain', probability = 0.4,amount_min =1,amount_max =1},
				},
			crafting_speed = 30,
			tech = 'rendering',
			name = 'Full Render auogs',
			icon = "__pyalienlifegraphics__/graphics/icons/rendering-auog.png",
			icon_size = 64,
		},
		--bonemeal
		{
			ingredients =
				{
					--{name='cagedauog',amount=1},
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
					{name='bonemeal', amount = 4},
				},
			crafting_speed = 15,
			tech = 'rendering',
			name = 'auogs to Bonemeal',
			icon = "__pyalienlifegraphics__/graphics/icons/bonemeal.png",
			icon_size = 64,
		},
		--meat
		{
			ingredients =
				{
					--{name='cagedauog',amount=1},
				},
			results =
				{
					{name='bonemeal', amount ='R'},
					{name='meat', amount =8},
				},
			crafting_speed = 15,
			tech = 'advanced-rendering',
			name = 'Extract auog Meat',
			icon = "__pyalienlifegraphics__/graphics/icons/mip/meat-01.png",
			icon_size = 64,
		},
		--brain
		{
			ingredients =
				{
					--{name='cagedauog',amount=1},
				},
			results =
				{
					{name='meat', amount ='R'},
					{name='brain', amount =1},
				},
			crafting_speed = 15,
			tech = 'advanced-rendering',
			name = 'Extract auog brains',
			icon = "__pyalienlifegraphics__/graphics/icons/mip/brain-04.png",
			icon_size = 64,
		},
		--skin
		{
			ingredients =
				{
					--{name='cagedauog',amount=1},
				},
			results =
				{
					{name='brain', amount ='R'},
					{name='skin', amount =2},
				},
			crafting_speed = 15,
			tech = 'advanced-rendering',
			name = 'Extract auog skin',
			icon = "__pyalienlifegraphics__/graphics/icons/skin.png",
			icon_size = 32,
		},
		--bones
		{
			ingredients =
				{
					--{name='cagedauog',amount=1},
				},
			results =
				{
					{name='skin', amount ='R'},
					{name='bones', amount =3},
				},
			crafting_speed = 15,
			tech = 'advanced-rendering',
			name = 'Extract auog bones',
			icon = "__pyalienlifegraphics__/graphics/icons/mip/bones-01.png",
			icon_size = 64,
		},
		--guts
		{
			ingredients =
				{
					--{name='cagedauog',amount=1},
				},
			results =
				{
					{name='bones', amount ='R'},
					{name='guts', amount =3},
				},
			crafting_speed = 15,
			tech = 'advanced-rendering',
			name = 'Extract auog guts',
			icon = "__pyalienlifegraphics__/graphics/icons/mip/guts-01.png",
			icon_size = 64,
		},
		--blood
		{
			ingredients =
				{
					--{name='cagedauog',amount=1},
				},
			results =
				{
					{name='guts', amount ='R'},
					{name='blood', amount =100},
				},
			crafting_speed = 15,
			tech = 'advanced-rendering',
			name = 'Extract auog blood',
			icon = "__pyalienlifegraphics__/graphics/icons/blood.png",
			icon_size = 64,
		},
		--fat
		{
			ingredients =
				{
					--{name='cagedauog',amount=1},
				},
			results =
				{
					{name='blood', amount ='R'},
					{name='fat', amount =2},
				},
			crafting_speed = 15,
			tech = 'advanced-rendering',
			name = 'Extract auog lard',
			icon = "__pyalienlifegraphics__/graphics/icons/mukmoux-fat.png",
			icon_size = 64,
		},
		--brain auog rendering
		{
			ingredients =
				{
					{name='cagedauog',amount='R'},
					{name='braincagedauog',amount=1},
				},
			results =
				{
					{name='fat', amount ='R'},
					{name='brain', amount =3},
				},
			crafting_speed = 15,
			tech = 'nanochondria',
			name = 'Extract brains from Improved auogs',
			icon = "__pyalienlifegraphics__/graphics/icons/brain-caged-auog.png",
			icon_size = 64,
		},
		--bone auog rendering
		{
			ingredients =
				{
					{name='braincagedauog',amount='R'},
					{name='bonecagedauog',amount=1},
				},
			results =
				{
					{name='brain', amount ='R'},
					{name='bones', amount =7},
				},
			crafting_speed = 15,
			tech = 'bmp',
			name = 'Extract bones from Improved auogs',
			icon = "__pyalienlifegraphics__/graphics/icons/bone-caged-auog.png",
			icon_size = 64,
		},
		--bonemeal auog rendering
		{
			ingredients =
				{

				},
			results =
				{
					{name='bones', amount ='R'},
					{name='bonemeal', amount =5},
				},
			crafting_speed = 15,
			tech = 'bmp',
			name = 'Extract bonemeal from Improved auogs',
			icon = "__pyalienlifegraphics__/graphics/icons/bonemeal-caged-auog.png",
			icon_size = 64,
        },
		--meat auog rendering
		{
			ingredients =
				{
					{name='bonecagedauog',amount='R'},
					{name='meatcagedauog',amount=1},
				},
			results =
				{
					{name='bonemeal', amount ='R'},
					{name='meat', amount =14},
				},
			crafting_speed = 15,
			tech = 'anabolic-rna',
			name = 'Extract meat from Improved auogs',
			icon = "__pyalienlifegraphics__/graphics/icons/meat-caged-auog.png",
			icon_size = 64,
		},
		--guts auog rendering
		{
			ingredients =
				{
					{name='meatcagedauog',amount='R'},
					{name='gutscagedauog',amount=1},
				},
			results =
				{
					{name='meat', amount ='R'},
					{name='guts', amount =7},
				},
			crafting_speed = 15,
			tech = 'antitumor',
			name = 'Extract guts from Improved auogs',
			icon = "__pyalienlifegraphics__/graphics/icons/guts-caged-auog.png",
			icon_size = 64,
		},
		--blood auog rendering
		{
			ingredients =
				{
					{name='gutscagedauog',amount='R'},
					{name='bloodcagedauog',amount=1},
				},
			results =
				{
					{name='guts', amount ='R'},
					{name='blood', amount =140},
				},
			crafting_speed = 15,
			tech = 'recombinant-ery',
			name = 'Extract blood from Improved auogs',
			icon = "__pyalienlifegraphics__/graphics/icons/blood-caged-auog.png",
			icon_size = 64,
		},
		--skin auog rendering
		{
			ingredients =
				{
					{name='bloodcagedauog',amount='R'},
					{name='skincagedauog',amount=1},
				},
			results =
				{
					{name='blood', amount ='R'},
					{name='skin', amount =6},
				},
			crafting_speed = 15,
			tech = 'reca',
			name = 'Extract skin from Improved auogs',
			icon = "__pyalienlifegraphics__/graphics/icons/skin-caged-auog.png",
			icon_size = 64,
		},
		--fat auog rendering
		{
			ingredients =
				{
					{name='skincagedauog',amount='R'},
					{name='fatcagedauog',amount=1},
				},
			results =
				{
					{name='skin', amount ='R'},
					{name='fat', amount =6},
				},
			crafting_speed = 15,
			tech = 'orexigenic',
			name = 'Extract fat from Improved auogs',
			icon = "__pyalienlifegraphics__/graphics/icons/fat-caged-auog.png",
			icon_size = 64,
		},
	}
}