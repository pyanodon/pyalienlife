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
					{name='wood-seeds',amount =15},
					{name='meat',amount =5},
					{name='water-barrel',amount=5,return_item={name='empty-barrel',amount=5}},
					{name='cage',amount=1},
				},
			results =
				{
					{name='caged-scrondrix', probability = 0.8,amount_min =1,amount_max =1},
				},
			crafting_speed = 150,
			tech = 'scrondrix',
			name = 'caged-scrondrix-1',
		},
		--yotoi leaves
		{
			ingredients =
				{
					--{name='wood-seeds',remove_item = true},
					{name='yotoi-leaves',amount =10},
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
					{name='raw-fiber',amount = 5},
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
					{name='caged-scrondrix',remove_item = true},
					{name='caged-scrondrix', probability = 0.9,amount_min =1,amount_max =1},
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
					{name='caged-scrondrix', remove_item = true},
					{name='caged-scrondrix', probability = 1,amount_min =1,amount_max =2},
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
					{name='gh',remove_item = true},
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
					--{name='antiviral',remove_item = true},
				},
			results =
				{
					{name='caged-scrondrix', remove_item = true},
					{name='brain-caged-scrondrix',1},
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
					{name='gh',remove_item = true},
					{name='nanochondria',remove_item = true},
					{name='bmp',amount =1},
				},
			results =
				{
					{name='brain-caged-scrondrix', remove_item = true},
					{name='bone-caged-scrondrix', 1},
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
					{name='gh',remove_item = true},
					{name='bmp',remove_item = true},
					{name='anabolic-rna',amount =1},
				},
			results =
				{
					{name='bone-caged-scrondrix', remove_item = true},
					{name='meat-caged-scrondrix', 1},
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
					{name='gh',remove_item = true},
					{name='anabolic-rna',remove_item = true},
					{name='antitumor',amount =1},
				},
			results =
				{
					{name='meat-caged-scrondrix', remove_item = true},
					{name='guts-caged-scrondrix', 1},
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
					{name='gh',remove_item = true},
					{name='antitumor',remove_item = true},
					{name='recombinant-ery',amount =1},
				},
			results =
				{
					{name='guts-caged-scrondrix', remove_item = true},
					{name='blood-caged-scrondrix', 1},
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
					{name='gh',remove_item = true},
					{name='recombinant-ery',remove_item = true},
					{name='reca',amount =1},
				},
			results =
				{
					{name='blood-caged-scrondrix', remove_item = true},
					{name='skin-caged-scrondrix', 1},
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
					{name='gh',remove_item = true},
					{name='reca',remove_item = true},
					{name='orexigenic',amount =1},
				},
			results =
				{
					{name='skin-caged-scrondrix', remove_item = true},
					{name='fat-caged-scrondrix', 1},
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
					{name='wood-seeds',amount =20},
					{name='meat',amount =10},
					{name='water-barrel',amount=20,return_item={name='empty-barrel',amount=20}},
					{name='bedding',amount = 1},
				},
			results =
				{
					{name='scrondrix-pup',amount = 3},
				},
			crafting_speed = 140,
			tech = 'assisted-embryology',
			name = 'scrondrix-cub-1',
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
					{name='raw-fiber',amount = 5},
				},
			results =
				{
					{name='scrondrix-pup',amount = '+2'},
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
					{name='scrondrix-pup',amount = '+4'},
				},
			crafting_speed = 100,
			tech = 'assisted-embryology',
			name = 'scrondrix-cub-5',
		},

		-----------------------PHEROMONES-----------------------------
		{
			ingredients =
				{
					{name='raw-fiber',remove_item = true},
					{name='salt',remove_item = true},
					{name='navens',remove_item = true},
					{name='yotoi-leaves',remove_item = true},
					{name='pheromones',amount =1},
                    --{name='bedding',amount =4},
					--{name='water-barrel',amount=6,return_item={name='empty-barrel',amount=6}},
					--{name='bedding',amount = 1},
				},
			results =
				{
					{name='scrondrix-pup',remove_item = true},
					{name='scrondrix-pup', amount =8},
				},
			crafting_speed = 140,
			tech = 'pheromones',
			name = 'scrondrix-cub-6',
		},
		--yotoi leaves
		{
			ingredients =
				{
                    --{name='wood-seeds',remove_item = true},
                    --{name='fawogae',amount =15},
					{name='yotoi-leaves',amount =10},
				},
			results =
				{
					{name='scrondrix-pup', amount ='+1'},
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
					{name='raw-fiber',amount = 10},
				},
			results =
				{
					{name='scrondrix-pup', amount ='+2'},
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
					{name='scrondrix-pup', amount ='+2'},
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
					{name='caged-scrondrix',amount=1},
				},
			results =
				{
					{name='bones', probability = 0.5,amount_min =1,amount_max =2},
					{name='meat', probability = 0.5,amount_min =1,amount_max =3},
					{name='skin', probability = 0.4,amount_min =1,amount_max =1},
					{name='mukmoux-fat', probability = 0.4,amount_min =1,amount_max =2},
					{name='guts', probability = 0.5,amount_min =1,amount_max =2},
					{name='blood', amount =60},
					{name='pineal-gland', probability = 0.4,amount_min =1,amount_max =1},
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
					{name='meat', remove_item = true},
					{name='pineal-gland', remove_item = true},
					{name='meat', amount =5},
					{name='bones', remove_item = true},
					--{name='meat', remove_item = true},
					{name='skin', remove_item = true},
					{name='mukmoux-fat', remove_item = true},
					{name='guts', remove_item = true},
					{name='blood', remove_item = true},
					{name='brain', remove_item = true},
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
					--{name='caged-scrondrix',amount=1},
				},
			results =
				{
					{name='meat', remove_item = true},
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
					--{name='caged-scrondrix',amount=1},
				},
			results =
				{
					{name='brain', remove_item = true},
					{name='pineal-gland', amount =1},
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
					--{name='caged-scrondrix',amount=1},
				},
			results =
				{
					{name='pineal-gland', remove_item = true},
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
					--{name='caged-scrondrix',amount=1},
				},
			results =
				{
					{name='skin', remove_item = true},
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
					--{name='caged-scrondrix',amount=1},
				},
			results =
				{
					{name='bones', remove_item = true},
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
					--{name='caged-scrondrix',amount=1},
				},
			results =
				{
					{name='guts', remove_item = true},
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
					--{name='caged-scrondrix',amount=1},
				},
			results =
				{
					{name='blood', remove_item = true},
					{name='mukmoux-fat', amount =3},
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
					{name='caged-scrondrix',remove_item = true},
					{name='brain-caged-scrondrix',amount=1},
				},
			results =
				{
					{name='mukmoux-fat', remove_item = true},
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
					{name='brain-caged-scrondrix',remove_item = true},
					{name='bone-caged-scrondrix',amount=1},
				},
			results =
				{
					{name='brain', remove_item = true},
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
					{name='bone-caged-scrondrix',remove_item = true},
					{name='guts-caged-scrondrix',amount=1},
				},
			results =
				{
					{name='bones', remove_item = true},
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
					{name='guts-caged-scrondrix',remove_item = true},
					{name='blood-caged-scrondrix',amount=1},
				},
			results =
				{
					{name='guts', remove_item = true},
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
					{name='blood-caged-scrondrix',remove_item = true},
					{name='skin-caged-scrondrix',amount=1},
				},
			results =
				{
					{name='blood', remove_item = true},
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
					{name='skin-caged-scrondrix',remove_item = true},
					{name='fat-caged-scrondrix',amount=1},
				},
			results =
				{
					{name='skin', remove_item = true},
					{name='mukmoux-fat', amount =10},
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
					{name='fat-caged-scrondrix',remove_item = true},
					{name='meat-caged-scrondrix',amount=1},
				},
			results =
				{
					{name='mukmoux-fat', remove_item = true},
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
