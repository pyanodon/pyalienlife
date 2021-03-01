local fun = require("prototypes/functions/functions")

fun.autorecipes {
    name = 'xyhiphoe',
	category = 'xyhiphoe',
	module_limitations = 'xyhiphoe',
	subgroup = 'py-alienlife-xyhiphoe',
	order = 'b',
    mats =
	{
		{
			ingredients =
				{
                    {name='fishfood1',amount =1},
                    {name='phytoplankton',amount =50},
					{name='pressured-water',amount ='*3000',return_item={name='waste-water',amount= 200}},
				},
			results =
				{
					{name='xyhiphoe', probability = 0.8,amount_min =1,amount_max =1},
				},
			crafting_speed = 150,
			tech = 'water-invertebrates-mk01'
		},
		--filtration
		{
			ingredients =
				{
                    --{name='phytoplankton',amount ='R'},
                    --{name='fishfood1',amount ='R'},
					{name='filtration-media',amount =1},
				},
			results =
				{

				},
			crafting_speed = 140,
			tech = 'water-invertebrates-mk01'
		},
		--blood-meal
		{
			ingredients =
				{
					{name='blood-meal',amount = 5},
				},
			results =
				{

				},
			crafting_speed = 130,
			tech = 'water-invertebrates-mk02'
		},
		--saps
		{
			ingredients =
				{
					{name='saps',amount = 2},
				},
			results =
				{

				},
			crafting_speed = 120,
			tech = 'water-invertebrates-mk02'
		},
		--fish egg
		{
			ingredients =
				{
					{name='blood-meal',amount ='R'},
					{name='saps',amount ='R'},
					{name='fish-egg',amount =15},

				},
			results =
				{
					{name='xyhiphoe',amount ='R'},
					{name='xyhiphoe', probability = 0.9,amount_min =1,amount_max =1},
				},
			crafting_speed = 110,
			tech = 'water-invertebrates-mk03'
		},
		--food 2 blood-meal
		{
			ingredients =
				{
					{name='blood-meal',amount =5},
				},
			results =
				{

				},
			crafting_speed = 100,
			tech = 'water-invertebrates-mk04'
		},
		--food 2 blood-meal fiber
		{
			ingredients =
				{
					{name='saps',amount = 5},
				},
			results =
				{

				},
			crafting_speed = 90,
			tech = 'water-invertebrates-mk04'
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
					{name='xyhiphoe', amount ='R'},
					{name='xyhiphoe', probability = 1,amount_min =1,amount_max =2},
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
					--{name='bmp',amount ='R'},
					{name='anabolic-rna',amount =1},
				},
			results =
				{
					{name='xyhiphoe', amount ='R'},
					{name='meat-xyhiphoe', 1},
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
					{name='meat-xyhiphoe', amount ='R'},
					{name='guts-xyhiphoe', 1},
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
					{name='guts-xyhiphoe', amount ='R'},
					{name='blood-xyhiphoe', 1},
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
	}
}

------------------larva MAKER------------------

fun.autorecipes {
    name = 'xyhiphoe-cub',
	category = 'xyhiphoe',
	module_limitations = 'xyhiphoe',
	subgroup = 'py-alienlife-xyhiphoe',
	order = 'c',
    mats =
	{
		{
			ingredients =
				{
                    {name='fishfood1',amount =2},
                    {name='phytoplankton',amount =150},
					{name='pressured-water',amount ='*1000',return_item={name='waste-water',amount= 650}},
					--{name='cage',amount=1},
					{name='saps',amount = 6},
				},
			results =
				{
					{name='xyhiphoe-cub', amount =3},
				},
			crafting_speed = 160,
			tech = 'assisted-embryology'
		},
		--food 1
		{
			ingredients =
				{
                    --{name='phytoplankton',amount ='R'},
                    --{name='fishfood1',amount ='R'},
					{name='filtration-media',amount =2},
				},
			results =
				{
					{name='xyhiphoe-cub', amount ="+2"},
				},
			crafting_speed = 140,
			tech = 'assisted-embryology'
		},
		--blood-meal
		{
			ingredients =
				{
					{name='blood-meal',amount = 4},
				},
			results =
				{
					{name='xyhiphoe-cub', amount ="+3"},
				},
			crafting_speed = 130,
			tech = 'assisted-embryology'
		},
		--albumin
		{
			ingredients =
				{
					{name='albumin',amount = 1},
				},
			results =
				{
					{name='xyhiphoe-cub', amount ="+3"},
				},
			crafting_speed = 100,
			tech = 'assisted-embryology'
		},
		--food 2
		{
			ingredients =
				{
					--{name='filtration-media',amount ='R'},
					--{name='blood-meal',amount ='R'},
					--{name='albumin',amount ='R'},
					{name='fish-egg',amount =10},

				},
			results =
				{
					{name='xyhiphoe-cub', amount ="+12"},
				},
			crafting_speed = 130,
			tech = 'assisted-embryology'
		},
		--food 2 blood-meal
		{
			ingredients =
				{
					{name='fishfood1',amount ='R'},
					{name='fishfood2',amount ='*2'},
				},
			results =
				{
					{name='xyhiphoe-cub', amount ="+4"},
				},
			crafting_speed = 120,
			tech = 'assisted-embryology'
		},
		--food 2 blood-meal fiber
		{
			ingredients =
				{
					{name='fawogae',amount = 5},
				},
			results =
				{
					{name='xyhiphoe-cub', amount ="+3"},
				},
			crafting_speed = 110,
			tech = 'assisted-embryology'
		},
		-----------------------PHEROMONES-----------------------------
		{
			ingredients =
				{
                    {name='saps',amount = 'R'},
                    {name='fawogae',amount = 'R'},
                    {name='albumin',amount = 'R'},
                    {name='fishfood2',amount = 'R'},
                    {name='blood-meal',amount = 'R'},
                    {name='filtration-media',amount = 'R'},
					{name='fish-egg',amount = 'R'},
					--{name='fishfood1',amount =15},
					{name='pheromones',amount =1},
                    --{name='phytoplankton',amount =15},
					--{name='water-barrel',amount=6,return_item={name='empty-barrel',amount=6}},
					--{name='saps',amount = 1},
				},
			results =
				{
					{name='xyhiphoe-cub',amount = 'R'},
					{name='xyhiphoe-cub', amount =25},
				},
			crafting_speed = 140,
			tech = 'pheromones'
		},
		--food 1
		{
			ingredients =
				{
                    --{name='phytoplankton',amount ='R'},
                    --{name='fishfood1',amount ='R'},
					{name='filtration-media',amount =2},
				},
			results =
				{
					{name='xyhiphoe-cub', amount ='+2'},
				},
			crafting_speed = 120,
			tech = 'pheromones'
		},
		--blood-meal
		{
			ingredients =
				{
					{name='blood-meal',amount = 4},
				},
			results =
				{
					{name='xyhiphoe-cub', amount ="+3"},
				},
			crafting_speed = 110,
			tech = 'pheromones'
		},
		--fiber
		{
			ingredients =
				{
					{name='saps',amount = 5},
				},
			results =
				{
					{name='xyhiphoe-cub', amount ="+3"},
				},
			crafting_speed = 100,
			tech = 'pheromones'
		},
		--food 2
		{
			ingredients =
				{
					--{name='filtration-media',amount ='R'},
					--{name='blood-meal',amount ='R'},
					--{name='saps',amount ='R'},
					{name='fish-egg',amount =10},

				},
			results =
				{
					{name='xyhiphoe-cub', amount ="+15"},
				},
			crafting_speed = 90,
			tech = 'pheromones'
		},
		--food 2 blood-meal
		{
			ingredients =
				{
					{name='fishfood1',amount ='R'},
					{name='fishfood2',amount =2},
				},
			results =
				{
					{name='xyhiphoe-cub', amount ="+4"},
				},
			crafting_speed = 80,
			tech = 'pheromones'
		},
		--food 2 blood-meal fiber
		{
			ingredients =
				{
					{name='fawogae',amount = 5},
				},
			results =
				{
					{name='xyhiphoe-cub', amount ="+4"},
				},
			crafting_speed = 65,
			tech = 'pheromones'
		},

	}
}

------------------RENDERING------------------

fun.autorecipes {
    name = 'rendering',
	category = 'slaughterhouse-xyhiphoe',
	--module_limitations = 'xyhiphoe',
	subgroup = 'py-alienlife-xyhiphoe',
	order = 'b',
    mats =
	{
		{
			ingredients =
				{
					{name='xyhiphoe',amount=1},
				},
			results =
				{
					{name='meat', probability = 0.4,amount_min =1,amount_max =1},
					{name='shell', probability = 0.4,amount_min =1,amount_max =3},
					{name='guts', probability = 0.4,amount_min =1,amount_max =4},
					{name='arthropod-blood', amount =70},
				},
			crafting_speed = 30,
			tech = 'rendering',
			name = 'Full Render xyhiphoe',
			icon = "__pyalienlifegraphics__/graphics/icons/rendering-xyhiphoe.png",
			icon_size = 64,
		},
		--meat
		{
			ingredients =
				{
					--{name='xyhiphoe',amount=1},
				},
			results =
				{
					{name='meat', amount ='R'},
					{name='shell', amount ='R'},
					{name='guts', amount ='R'},
					{name='arthropod-blood', amount ='R'},
					{name='meat', amount =2},
				},
			crafting_speed = 15,
			tech = 'advanced-rendering',
			name = 'Extract xyhiphoe Meat',
			icon = "__pyalienlifegraphics__/graphics/icons/mip/meat-01.png",
			icon_size = 64,
		},
		--shell
		{
			ingredients =
				{
					--{name='xyhiphoe',amount=1},
				},
			results =
				{
					{name='meat', amount ='R'},
					{name='shell', amount =4},
				},
			crafting_speed = 15,
			tech = 'advanced-rendering',
			name = 'Extract xyhiphoe shell',
			icon = "__pyalienlifegraphics__/graphics/icons/shell.png",
			icon_size = 64,
		},
		--guts
		{
			ingredients =
				{
					--{name='xyhiphoe',amount=1},
				},
			results =
				{
					{name='shell', amount ='R'},
					{name='guts', amount =4},
				},
			crafting_speed = 15,
			tech = 'advanced-rendering',
			name = 'Extract xyhiphoe guts',
			icon = "__pyalienlifegraphics__/graphics/icons/mip/guts-01.png",
			icon_size = 64,
		},
		--arthropod-blood
		{
			ingredients =
				{
					--{name='xyhiphoe',amount=1},
				},
			results =
				{
					{name='guts', amount ='R'},
					{name='arthropod-blood', amount =80},
				},
			crafting_speed = 15,
			tech = 'advanced-rendering',
			name = 'Extract xyhiphoe blood',
			icon = "__pyalienlifegraphics__/graphics/icons/arthropod-blood.png",
			icon_size = 32,
		},
		--meat xyhiphoe rendering
		{
			ingredients =
				{
					{name='xyhiphoe',amount='R'},
					{name='meat-xyhiphoe',amount=1},
				},
			results =
				{
					{name='arthropod-blood', amount ='R'},
					{name='meat', amount =8},
				},
			crafting_speed = 15,
			tech = 'anabolic-rna',
			name = 'Extract meat from Improved xyhiphoe',
			icon = "__pyalienlifegraphics__/graphics/icons/meat-xyhiphoe.png",
			icon_size = 64,
		},
		--guts xyhiphoe rendering
		{
			ingredients =
				{
					{name='meat-xyhiphoe',amount='R'},
					{name='guts-xyhiphoe',amount=1},
				},
			results =
				{
					{name='meat', amount ='R'},
					{name='guts', amount =11},
				},
			crafting_speed = 15,
			tech = 'antitumor',
			name = 'Extract guts from Improved xyhiphoe',
			icon = "__pyalienlifegraphics__/graphics/icons/guts-xyhiphoe.png",
			icon_size = 64,
		},
		--blood xyhiphoe rendering
		{
			ingredients =
				{
					{name='guts-xyhiphoe',amount='R'},
					{name='blood-xyhiphoe',amount=1},
				},
			results =
				{
					{name='guts', amount ='R'},
					{name='arthropod-blood', amount =300},
				},
			crafting_speed = 15,
			tech = 'recombinant-ery',
			name = 'Extract blood from Improved xyhiphoe',
			icon = "__pyalienlifegraphics__/graphics/icons/blood-xyhiphoe.png",
			icon_size = 64,
		},
	}
}
