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
                    {name='biomass', amount =15},
                    {name='moss', amount =5},
					{name='water-barrel', amount=3,return_item={name='empty-barrel', amount=3}},
					{name='cage', amount=1},
				},
			results =
				{
					{name='caged-auog', probability = 0.7, amount_min =1, amount_max =1},
				},
			crafting_speed = 160,
			tech = 'auog'
		},
		--food 1
		{
			ingredients =
				{
					{name='biomass',remove_item = true},
					{name='auog-food-01', amount =1},
				},
			results =
				{
					{name='caged-auog',remove_item = true},
					{name='caged-auog', probability = 0.8, amount_min =1, amount_max =1},
				},
			crafting_speed = 150,
			tech = 'auog'
		},
		--saps
		{
			ingredients =
				{
					{name='saps', amount = 5},
					{name='bedding', amount = 1},
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
					{name='raw-fiber', amount = 5},
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
					{name='auog-food-01',remove_item = true},
					{name='saps',remove_item = true},
					{name='raw-fiber',remove_item = true},
					{name='auog-food-02', amount =1},

				},
			results =
				{
					{name='caged-auog',remove_item = true},
					{name='caged-auog', probability = 0.9, amount_min =1, amount_max =1},
				},
			crafting_speed = 120,
			tech = 'auog-mk03'
		},
		--food 2 saps
		{
			ingredients =
				{
					{name='saps', amount =5},
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
					{name='raw-fiber', amount = 5},
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
					{name='gh', amount =1},

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
					{name='antiviral', amount =1},
				},
			results =
				{
					{name='caged-auog', remove_item = true},
					{name='caged-auog', probability = 1, amount_min =1, amount_max =2},
				},
			crafting_speed = 30,
			tech = 'antiviral'
		},
		--antiviral
		{
			ingredients =
				{
					--{name='antiviral', amount =1},
					{name='gh',remove_item = true},
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
					{name='nanochondria', amount =1},
					--{name='antiviral',remove_item = true},
				},
			results =
				{
					{name='caged-auog', remove_item = true},
					{name='brain-caged-auog',1},
				},
			crafting_speed = 90,
			tech = 'nanochondria'
		},
		--nanochondria and gh
		{
			ingredients =
				{
					--{name='nanochondria', amount =1},
					{name='gh', amount =1},
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
					{name='gh',remove_item = true},
					{name='nanochondria',remove_item = true},
					{name='bmp', amount =1},
				},
			results =
				{
					{name='brain-caged-auog', remove_item = true},
					{name='bone-caged-auog', 1},
				},
			crafting_speed = 90,
			tech = 'bmp'
		},

		--bmp and gh
		{
			ingredients =
				{
					--{name='nanochondria', amount =1},
					{name='gh', amount =1},
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
					{name='gh',remove_item = true},
					{name='bmp',remove_item = true},
					{name='anabolic-rna', amount =1},
				},
			results =
				{
					{name='bone-caged-auog', remove_item = true},
					{name='meat-caged-auog', 1},
				},
			crafting_speed = 90,
			tech = 'anabolic-rna'
		},
		--rna anabolic and gh
		{
			ingredients =
				{
					--{name='nanochondria', amount =1},
					{name='gh', amount =1},
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
					{name='gh',remove_item = true},
					{name='anabolic-rna',remove_item = true},
					{name='antitumor', amount =1},
				},
			results =
				{
					{name='meat-caged-auog', remove_item = true},
					{name='guts-caged-auog', 1},
				},
			crafting_speed = 90,
			tech = 'antitumor'
		},
		--antitumor and gh
		{
			ingredients =
				{
					--{name='nanochondria', amount =1},
					{name='gh', amount =1},
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
					{name='gh',remove_item = true},
					{name='antitumor',remove_item = true},
					{name='recombinant-ery', amount =1},
				},
			results =
				{
					{name='guts-caged-auog', remove_item = true},
					{name='blood-caged-auog', 1},
				},
			crafting_speed = 90,
			tech = 'recombinant-ery'
		},
		--Recombinant Ery and gh
		{
			ingredients =
				{
					{name='gh', amount =1},
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
					{name='gh',remove_item = true},
					{name='recombinant-ery',remove_item = true},
					{name='reca', amount =1},
				},
			results =
				{
					{name='blood-caged-auog', remove_item = true},
					{name='skin-caged-auog', 1},
				},
			crafting_speed = 90,
			tech = 'reca'
		},
		--reca and gh
		{
			ingredients =
				{
					{name='gh', amount =1},
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
					{name='gh',remove_item = true},
					{name='reca',remove_item = true},
					{name='orexigenic', amount =1},
				},
			results =
				{
					{name='skin-caged-auog', remove_item = true},
					{name='fat-caged-auog', 1},
				},
			crafting_speed = 90,
			tech = 'orexigenic'
		},
		--orexigenic and gh
		{
			ingredients =
				{
					{name='gh', amount =1},
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
                    {name='biomass', amount =30},
                    {name='moss', amount =20},
					{name='water-barrel', amount=10,return_item={name='empty-barrel', amount=10}},
					{name='bedding', amount = 1},
				},
			results =
				{
					{name='auog-pup', probability = 0.8, amount_min =3, amount_max =3},
				},
			crafting_speed = 140,
			tech = 'assisted-embryology'
		},
		--food 1
		{
			ingredients =
				{
                    {name='biomass',remove_item = true},
					{name='auog-food-01', amount =2},
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
					{name='saps', amount = 15},
				},
			results =
				{

				},
			crafting_speed = 110,
			tech = 'assisted-embryology'
		},
		--fiber
		{
			ingredients =
				{
					{name='raw-fiber', amount = 10},
				},
			results =
				{

				},
			crafting_speed = 100,
			tech = 'assisted-embryology'
		},
		--food 2
		{
			ingredients =
				{
					{name='auog-food-01',remove_item = true},
					{name='saps',remove_item = true},
					{name='raw-fiber',remove_item = true},
					{name='auog-food-02', amount =2},

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
					{name='saps',remove_item = true},
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
					{name='raw-fiber', amount = 10},
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
					{name='raw-fiber',remove_item = true},
					{name='saps',remove_item = true},
					{name='auog-food-02',remove_item = true},
					{name='biomass', amount =30},
					{name='pheromones', amount =1},
					--{name='water-barrel', amount=6,return_item={name='empty-barrel', amount=6}},
					--{name='bedding', amount = 1},
				},
			results =
				{
					{name='auog-pup',remove_item = true},
					{name='auog-pup', amount =5},
				},
			crafting_speed = 140,
			tech = 'pheromones'
		},
		--food 1
		{
			ingredients =
				{

                    {name='biomass',remove_item = true},
					{name='auog-food-01', amount =2},
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
					{name='saps', amount = 15},
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
					{name='raw-fiber', amount = 10},
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
					{name='auog-food-01',remove_item = true},
					{name='saps',remove_item = true},
					{name='raw-fiber',remove_item = true},
					{name='auog-food-02', amount =2},

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
					{name='saps',remove_item = true},
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
					{name='raw-fiber', amount = 10},
				},
			results =
				{

				},
			crafting_speed = 80,
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
					{name='caged-auog', amount=1},
				},
			results =
				{
					{name='bones', probability = 0.3, amount_min =1, amount_max =4},
					{name='meat', probability = 0.4, amount_min =2, amount_max =5},
					{name='skin', probability = 0.3, amount_min =1, amount_max =2},
					{name='mukmoux-fat', probability = 0.3, amount_min =1, amount_max =1},
					{name='guts', probability = 0.4, amount_min =1, amount_max =1},
					{name='blood', amount =50},
					{name='cage', amount=1},
					{name='brain', probability = 0.4, amount_min =1, amount_max =1},
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
					--{name='caged-auog', amount=1},
				},
			results =
				{
					{name='bones', remove_item = true},
					{name='meat', remove_item = true},
					{name='skin', remove_item = true},
					{name='mukmoux-fat', remove_item = true},
					{name='guts', remove_item = true},
					{name='blood', remove_item = true},
					{name='brain', remove_item = true},
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
					--{name='caged-auog', amount=1},
				},
			results =
				{
					{name='bonemeal', remove_item = true},
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
					--{name='caged-auog', amount=1},
				},
			results =
				{
					{name='meat', remove_item = true},
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
					--{name='caged-auog', amount=1},
				},
			results =
				{
					{name='brain', remove_item = true},
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
					--{name='caged-auog', amount=1},
				},
			results =
				{
					{name='skin', remove_item = true},
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
					--{name='caged-auog', amount=1},
				},
			results =
				{
					{name='bones', remove_item = true},
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
					--{name='caged-auog', amount=1},
				},
			results =
				{
					{name='guts', remove_item = true},
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
					--{name='caged-auog', amount=1},
				},
			results =
				{
					{name='blood', remove_item = true},
					{name='mukmoux-fat', amount =2},
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
					{name='caged-auog',remove_item = true},
					{name='brain-caged-auog', amount=2},
				},
			results =
				{
					{name='mukmoux-fat', remove_item = true},
					{name='brain', amount =8},
					{name='cage', amount = 1}
				},
			crafting_speed = 30,
			tech = 'nanochondria',
			name = 'Extract brains from Improved auogs',
			icon = "__pyalienlifegraphics__/graphics/icons/brain-caged-auog.png",
			icon_size = 64,
		},
		--bone auog rendering
		{
			ingredients =
				{
					{name='brain-caged-auog',remove_item = true},
					{name='bone-caged-auog', amount=1},
				},
			results =
				{
					{name='brain', remove_item = true},
					{name='bones', amount =11},
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
					{name='bones', remove_item = true},
					{name='bonemeal', amount =7},
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
					{name='bone-caged-auog',remove_item = true},
					{name='meat-caged-auog', amount=1},
				},
			results =
				{
					{name='bonemeal', remove_item = true},
					{name='meat', amount =28},
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
					{name='meat-caged-auog',remove_item = true},
					{name='guts-caged-auog', amount=1},
				},
			results =
				{
					{name='meat', remove_item = true},
					{name='guts', amount =11},
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
					{name='guts-caged-auog',remove_item = true},
					{name='blood-caged-auog', amount=1},
				},
			results =
				{
					{name='guts', remove_item = true},
					{name='blood', amount =200},
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
					{name='blood-caged-auog',remove_item = true},
					{name='skin-caged-auog', amount=1},
				},
			results =
				{
					{name='blood', remove_item = true},
					{name='skin', amount =10},
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
					{name='skin-caged-auog',remove_item = true},
					{name='fat-caged-auog', amount=1},
				},
			results =
				{
					{name='skin', remove_item = true},
					{name='mukmoux-fat', amount =10},
				},
			crafting_speed = 15,
			tech = 'orexigenic',
			name = 'Extract fat from Improved auogs',
			icon = "__pyalienlifegraphics__/graphics/icons/fat-caged-auog.png",
			icon_size = 64,
		},
	}
}
