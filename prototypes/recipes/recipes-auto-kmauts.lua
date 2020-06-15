local fun = require("prototypes/functions/functions")

fun.autorecipes {
    name = 'caged-kmauts',
	category = 'kmauts',
	module_limitations = 'kmauts',
	subgroup = 'py-alienlife-kmauts',
	order = 'b',
    mats =
	{
		{
			ingredients =
				{
					{name='cagedulric',amount =1},
					{name='waterbarrel',amount=4,return_item={name='empty-barrel',amount=4}},
					{name='cage',amount=1},
				},
			results =
				{
					{name='cagedkmauts', probability = 0.8,amount_min =1,amount_max =1},
				},
			crafting_speed = 150,
			tech = 'kmauts'
		},
		--food 1
		{
			ingredients =
				{
					{name='cagedulric',amount ='R'},
					{name='kmautsration',amount =1},
				},
			results =
				{
					{name='cagedkmauts',amount ='R'},
					{name='cagedkmauts', probability = 0.9,amount_min =1,amount_max =1},
				},
			crafting_speed = 140,
			tech = 'kmauts-mk02'
		},
		--rennea
		{
			ingredients =
				{
					{name='rennea',amount = 3},
					{name='bedding',amount = 1},
				},
			results =
				{

				},
			crafting_speed = 130,
			tech = 'kmauts-mk03'
		},
		--tuuphra
		{
			ingredients =
				{
					{name='tuuphra',amount = 10},
				},
			results =
				{

				},
			crafting_speed = 120,
			tech = 'kmauts-mk04'
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
					{name='cagedkmauts', amount ='R'},
					{name='cagedkmauts', probability = 1,amount_min =1,amount_max =2},
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
			crafting_speed = 70,
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
					{name='cagedkmauts', amount ='R'},
					{name='braincagedkmauts',1},
				},
			crafting_speed = 70,
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
		--rna anabolic
		{
			ingredients =
				{
					{name='gh',amount ='R'},
					{name='nanochondria',amount ='R'},
					{name='anabolicrna',amount =1},
				},
			results =
				{
					{name='braincagedkmauts', amount ='R'},
					{name='meatcagedkmauts', 1},
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
					{name='meatcagedkmauts', amount ='R'},
					{name='gutscagedkmauts', 1},
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
					{name='gutscagedkmauts', amount ='R'},
					{name='bloodcagedkmauts', 1},
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
		--orexigenic
		{
			ingredients =
				{
					{name='gh',amount ='R'},
					{name='recombinantery',amount ='R'},
					{name='orexigenic',amount =1},
				},
			results =
				{
					{name='bloodcagedkmauts', amount ='R'},
					{name='fatcagedkmauts', 1},
				},
			crafting_speed = 70,
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
    name = 'kmauts-cub',
	category = 'kmauts',
	module_limitations = 'kmauts',
	subgroup = 'py-alienlife-kmauts',
	order = 'c',
    mats =
	{
		{
			ingredients =
				{
                    {name='cagedulric',amount =1},
                    {name='rennea',amount =15},
					{name='waterbarrel',amount=4,return_item={name='empty-barrel',amount=4}},
					--{name='cage',amount=1},
					{name='bedding',amount = 1},
				},
			results =
				{
					{name='kmautscub', amount =1},
				},
			crafting_speed = 70,
			tech = 'assisted-embryology'
		},
		--food 1
		{
			ingredients =
				{
                    {name='rennea',amount ='R'},
                    {name='cagedulric',amount ='R'},
					{name='kmautsration',amount =1},
				},
			results =
				{

				},
			crafting_speed = 60,
			tech = 'assisted-embryology'
		},
		--rennea
		{
			ingredients =
				{
					{name='rennea',amount = 15},
				},
			results =
				{

				},
			crafting_speed = 55,
			tech = 'assisted-embryology'
		},
		--tuuphra
		{
			ingredients =
				{
					{name='tuuphra',amount = 10},
				},
			results =
				{

				},
			crafting_speed = 50,
			tech = 'assisted-embryology'
		},
		-----------------------PHEROMONES-----------------------------
		{
			ingredients =
				{
					{name='tuuphra',amount = 'R'},
					{name='rennea',amount = 'R'},
					{name='kmautsration',amount = 'R'},
					{name='cagedulric',amount =1},
					{name='pheromones',amount =1},
                    {name='rennea',amount =15},
					--{name='waterbarrel',amount=6,return_item={name='empty-barrel',amount=6}},
					--{name='bedding',amount = 1},
				},
			results =
				{
					{name='kmautscub',amount = 'R'},
					{name='kmautscub', amount =2},
				},
			crafting_speed = 60,
			tech = 'pheromones'
		},
		--food 1
		{
			ingredients =
				{
                    {name='rennea',amount ='R'},
                    {name='cagedulric',amount ='R'},
					{name='kmautsration',amount =1},
				},
			results =
				{

				},
			crafting_speed = 50,
			tech = 'pheromones'
		},
		--rennea
		{
			ingredients =
				{
					{name='rennea',amount = 10},
				},
			results =
				{

				},
			crafting_speed = 40,
			tech = 'pheromones'
		},
		--tuuphra
		{
			ingredients =
				{
					{name='tuuphra',amount = 5},
				},
			results =
				{

				},
			crafting_speed = 35,
			tech = 'pheromones'
		},
	}
}
------------------RENDERING------------------

fun.autorecipes {
    name = 'rendering',
	category = "slaughterhouse-kmauts",
	--module_limitations = 'kmauts',
	subgroup = 'py-alienlife-kmauts',
	order = 'b',
    mats =
	{
		{
			ingredients =
				{
					{name='cagedkmauts',amount=1},
				},
			results =
				{
					{name='meat', probability = 0.3,amount_min =1,amount_max =2},
                    {name='guts', probability = 0.3,amount_min =1,amount_max =2},
                    {name='fat', probability = 0.2,amount_min =1,amount_max =2},
					{name='tendon', probability = 0.3,amount_min =1,amount_max =1},
					{name='arthropodblood', amount =10},
					{name='cage',amount=1},
					{name='brain', probability = 0.3,amount_min =1,amount_max =1},
				},
			crafting_speed = 30,
			tech = 'kmauts',
			name = 'Full Render kmauts',
			icon = "__pyalienlifegraphics__/graphics/icons/rendering-kmauts.png",
			icon_size = 64,
		},
		--meat
		{
			ingredients =
				{
					--{name='cagedkmauts',amount=1},
				},
			results =
				{
					{name='meat', amount ='R'},
                    {name='guts', amount ='R'},
                    {name='fat', amount ='R'},
					{name='tendon', amount ='R'},
					{name='arthropodblood', amount ='R'},
					{name='brain', amount ='R'},
					{name='meat', amount =2},
				},
			crafting_speed = 15,
			tech = 'kmauts',
			name = 'Extract kmauts Meat',
			icon = "__pyalienlifegraphics__/graphics/icons/mip/meat-01.png",
			icon_size = 64,
		},
		--brain
		{
			ingredients =
				{
					--{name='cagedkmauts',amount=1},
				},
			results =
				{
					{name='meat', amount ='R'},
					{name='brain', amount =1},
				},
			crafting_speed = 15,
			tech = 'kmauts',
			name = 'Extract kmauts brains',
			icon = "__pyalienlifegraphics__/graphics/icons/mip/brain-04.png",
			icon_size = 64,
		},
		--tendon
		{
			ingredients =
				{
					--{name='cagedkmauts',amount=1},
				},
			results =
				{
					{name='brain', amount ='R'},
					{name='tendon', amount =2},
				},
			crafting_speed = 15,
			tech = 'kmauts',
			name = 'Extract kmauts tendons',
			icon = "__pyalienlifegraphics__/graphics/icons/tendon.png",
			icon_size = 64,
		},
		--guts
		{
			ingredients =
				{
					--{name='cagedkmauts',amount=1},
				},
			results =
				{
					{name='tendon', amount ='R'},
					{name='guts', amount =2},
				},
			crafting_speed = 15,
			tech = 'kmauts',
			name = 'Extract kmauts guts',
			icon = "__pyalienlifegraphics__/graphics/icons/mip/guts-01.png",
			icon_size = 64,
		},
		--blood
		{
			ingredients =
				{
					--{name='cagedkmauts',amount=1},
				},
			results =
				{
					{name='guts', amount ='R'},
					{name='arthropodblood', amount =20},
				},
			crafting_speed = 15,
			tech = 'kmauts',
			name = 'Extract kmauts blood',
			icon = "__pyalienlifegraphics__/graphics/icons/arthropod-blood.png",
			icon_size = 32,
		},

		--fat
		{
			ingredients =
				{
					--{name='cagedkmauts',amount=1},
				},
			results =
				{
					{name='arthropodblood', amount ='R'},
					{name='fat', amount =2},
				},
			crafting_speed = 15,
			tech = 'kmauts',
			name = 'Extract kmauts lard',
			icon = "__pyalienlifegraphics__/graphics/icons/mukmoux-fat.png",
			icon_size = 64,
		},

		--brain kmauts rendering
		{
			ingredients =
				{
					{name='cagedkmauts',amount='R'},
					{name='braincagedkmauts',amount=1},
				},
			results =
				{
					{name='fat', amount ='R'},
					{name='brain', amount =5},
				},
			crafting_speed = 15,
			tech = 'nanochondria',
			name = 'Extract brains from Improved kmauts',
			icon = "__pyalienlifegraphics__/graphics/icons/brain-caged-kmauts.png",
			icon_size = 64,
		},
		--guts kmauts rendering
		{
			ingredients =
				{
					{name='braincagedkmauts',amount='R'},
					{name='gutscagedkmauts',amount=1},
				},
			results =
				{
					{name='brain', amount ='R'},
					{name='guts', amount =7},
				},
			crafting_speed = 15,
			tech = 'antitumor',
			name = 'Extract guts from Improved kmauts',
			icon = "__pyalienlifegraphics__/graphics/icons/guts-caged-kmauts.png",
			icon_size = 64,
		},
		--blood kmauts rendering
		{
			ingredients =
				{
					{name='gutscagedkmauts',amount='R'},
					{name='bloodcagedkmauts',amount=1},
				},
			results =
				{
					{name='guts', amount ='R'},
					{name='arthropodblood', amount =80},
				},
			crafting_speed = 15,
			tech = 'recombinant-ery',
			name = 'Extract blood from Improved kmauts',
			icon = "__pyalienlifegraphics__/graphics/icons/blood-caged-kmauts.png",
			icon_size = 64,
		},
		--meat kmauts rendering
		{
			ingredients =
				{
					{name='bloodcagedkmauts',amount='R'},
					{name='meatcagedkmauts',amount=1},
				},
			results =
				{
					{name='arthropodblood', amount ='R'},
					{name='meat', amount =8},
				},
			crafting_speed = 15,
			tech = 'anabolic-rna',
			name = 'Extract meat from Improved kmauts',
			icon = "__pyalienlifegraphics__/graphics/icons/meat-caged-kmauts.png",
			icon_size = 64,
        },
		--fat kmauts rendering
		{
			ingredients =
				{
					{name='meatcagedkmauts',amount='R'},
					{name='fatcagedkmauts',amount=1},
				},
			results =
				{
					{name='meat', amount ='R'},
					{name='fat', amount =7},
				},
			crafting_speed = 15,
			tech = 'orexigenic',
			name = 'Extract fat from Improved kmauts',
			icon = "__pyalienlifegraphics__/graphics/icons/fat-caged-kmauts.png",
			icon_size = 64,
		},
	}
}
