local fun = require("prototypes/functions/functions")

fun.autorecipes {
    name = 'caged-dingrits',
	category = 'dingrits',
	module_limitations = 'dingrits',
	subgroup = 'py-alienlife-dingrits',
	order = 'b',
    mats =
	{
		{
			ingredients =
				{
					{name='caged-scrondrix',amount =1},
					{name='water-barrel',amount=5,return_item={name='empty-barrel',amount=5}},
				},
			results =
				{
					{name='caged-dingrits', probability = 0.7,amount_min =1,amount_max =1},
				},
			crafting_speed = 150,
			tech = 'dingrits'
		},
		--food 1
		{
			ingredients =
				{
					{name='caged-scrondrix',amount ='R'},
					{name='dingrits-food-01',amount =1},
					{name='cage',amount = 1}
				},
			results =
				{

					{name='caged-dingrits',amount ='R'},
					{name='caged-dingrits', probability = 0.8,amount_min =1,amount_max =1},
				},
			crafting_speed = 140,
			tech = 'dingrits'
		},
		--yaedols
		{
			ingredients =
				{
					{name='yaedols',amount = 3},
					{name='bedding',amount = 1},
				},
			results =
				{

				},
			crafting_speed = 130,
			tech = 'dingrits-mk02'
		},
		--yotoi-leaves
		{
			ingredients =
				{
					{name='yotoi-leaves',amount = 10},
				},
			results =
				{

				},
			crafting_speed = 120,
			tech = 'dingrits-mk02'
		},
		--food 2
		{
			ingredients =
				{
					{name='dingrits-food-01',amount ='R'},
					{name='yaedols',amount ='R'},
					{name='yotoi-leaves',amount ='R'},
					{name='dingrits-food-02',amount =1},

				},
			results =
				{
					{name='caged-dingrits',amount ='R'},
					{name='caged-dingrits', probability = 0.9,amount_min =1,amount_max =1},
				},
			crafting_speed = 110,
			tech = 'dingrits-mk03'
		},
		--food 2 yaedols
		{
			ingredients =
				{
					{name='yaedols',amount =3},
				},
			results =
				{

				},
			crafting_speed = 100,
			tech = 'dingrits-mk03'
		},
		--food 2 yaedols yotoi-leaves
		{
			ingredients =
				{
					{name='yotoi-leaves',amount = 10},
				},
			results =
				{

				},
			crafting_speed = 80,
			tech = 'dingrits-mk04'
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
					--{name='cage',amount='R'},
				},
			results =
				{
					{name='caged-dingrits', amount ='R'},
					{name='caged-dingrits', probability = 1,amount_min =1,amount_max =2},
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
					{name='caged-dingrits', amount ='R'},
					{name='brain-caged-dingrits',1},
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
					{name='brain-caged-dingrits', amount ='R'},
					{name='bone-caged-dingrits', 1},
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
					{name='anabolic-rna',amount =1},
				},
			results =
				{
					{name='bone-caged-dingrits', amount ='R'},
					{name='meat-caged-dingrits', 1},
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
					{name='meat-caged-dingrits', amount ='R'},
					{name='guts-caged-dingrits', 1},
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
					{name='guts-caged-dingrits', amount ='R'},
					{name='blood-caged-dingrits', 1},
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
					{name='recombinant-ery',amount ='R'},
					{name='reca',amount =1},
					{name='cage',amount ='+1'},
				},
			results =
				{
					{name='blood-caged-dingrits', amount ='R'},
					{name='skin-caged-dingrits', amount = 2},
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
	}
}

------------------CUB MAKER------------------

fun.autorecipes {
    name = 'dingrits-cub',
	category = 'dingrits',
	module_limitations = 'dingrits',
	subgroup = 'py-alienlife-dingrits',
	order = 'c',
    mats =
	{
		{
			ingredients =
				{
                    {name='caged-scrondrix',amount =3},
                    {name='yotoi-seeds',amount =30},
					{name='water-barrel',amount=15,return_item={name='empty-barrel',amount=15}},
					--{name='cage',amount=1},
					{name='bedding',amount = 1},
				},
			results =
				{
					{name='dingrits-cub', amount =3},
				},
			crafting_speed = 150,
			tech = 'assisted-embryology'
		},
		--food 1
		{
			ingredients =
				{
                    {name='yotoi-seeds',amount ='R'},
                    {name='caged-scrondrix',amount ='R'},
					{name='dingrits-food-01',amount =2},
				},
			results =
				{

				},
			crafting_speed = 120,
			tech = 'assisted-embryology'
		},
		--yaedols
		{
			ingredients =
				{
					{name='yaedols',amount = 10},
				},
			results =
				{

				},
			crafting_speed = 100,
			tech = 'assisted-embryology'
		},
		--yotoi-leaves
		{
			ingredients =
				{
					{name='yotoi-leaves',amount = 15},
				},
			results =
				{

				},
			crafting_speed = 90,
			tech = 'assisted-embryology'
		},
		--food 2
		{
			ingredients =
				{
					{name='dingrits-food-01',amount ='R'},
					{name='yaedols',amount ='R'},
					{name='yotoi-leaves',amount ='R'},
					{name='dingrits-food-02',amount =2},

				},
			results =
				{

				},
			crafting_speed = 90,
			tech = 'assisted-embryology'
		},
		--food 2 yaedols
		{
			ingredients =
				{
					{name='yaedols',amount =10},
				},
			results =
				{

				},
			crafting_speed = 85,
			tech = 'assisted-embryology'
		},
		--food 2 yaedols yotoi-leaves
		{
			ingredients =
				{
					{name='yotoi-leaves',amount = 15},
				},
			results =
				{

				},
			crafting_speed = 75,
			tech = 'assisted-embryology'
		},
		-----------------------PHEROMONES-----------------------------
		{
			ingredients =
				{
					{name='yotoi-leaves',amount = 'R'},
					{name='yaedols',amount = 'R'},
					{name='dingrits-food-02',amount = 'R'},
					{name='caged-scrondrix',amount =2},
					{name='pheromones',amount =1},
                    {name='yotoi-seeds',amount =30},
					--{name='water-barrel',amount=6,return_item={name='empty-barrel',amount=6}},
					--{name='bedding',amount = 1},
				},
			results =
				{
					{name='dingrits-cub',amount = 'R'},
					{name='dingrits-cub', amount =5},
				},
			crafting_speed = 140,
			tech = 'pheromones'
		},
		--food 1
		{
			ingredients =
				{
                    {name='yotoi-seeds',amount ='R'},
                    {name='caged-scrondrix',amount ='R'},
					{name='dingrits-food-01',amount =2},
				},
			results =
				{

				},
			crafting_speed = 120,
			tech = 'pheromones'
		},
		--yaedols
		{
			ingredients =
				{
					{name='yaedols',amount = 15},
				},
			results =
				{

				},
			crafting_speed = 110,
			tech = 'pheromones'
		},
		--yotoi-leaves
		{
			ingredients =
				{
					{name='yotoi-leaves',amount = 10},
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
					{name='dingrits-food-01',amount ='R'},
					{name='yaedols',amount ='R'},
					{name='yotoi-leaves',amount ='R'},
					{name='dingrits-food-02',amount =2},

				},
			results =
				{

				},
			crafting_speed = 100,
			tech = 'pheromones'
		},
		--food 2 yaedols
		{
			ingredients =
				{
					{name='yaedols',amount ='*3'},
				},
			results =
				{

				},
			crafting_speed = 90,
			tech = 'pheromones'
		},
		--food 2 yaedols yotoi-leaves
		{
			ingredients =
				{
					{name='yotoi-leaves',amount = 10},
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
	category = 'slaughterhouse-dingrits',
	--module_limitations = 'dingrits',
	subgroup = 'py-alienlife-dingrits',
	order = 'b',
    mats =
	{
		{
			ingredients =
				{
					{name='caged-dingrits',amount=1},
				},
			results =
				{
					{name='bones', probability = 0.3,amount_min =1,amount_max =2},
					{name='meat', probability = 0.3,amount_min =1,amount_max =3},
                    {name='guts', probability = 0.3,amount_min =1,amount_max =3},
					{name='pelt', probability = 0.1,amount_min =1,amount_max =1},
					{name='dingrit-spike', probability = 0.1,amount_min =1,amount_max =1},
					{name='blood', amount =20},
					{name='cage',amount=1},
					{name='brain', probability = 0.3,amount_min =1,amount_max =1},
				},
			crafting_speed = 30,
			tech = 'dingrits',
			name = 'Full Render dingrits',
			icon = "__pyalienlifegraphics__/graphics/icons/rendering-dingrits.png",
			icon_size = 64,
		},
		--meat
		{
			ingredients =
				{
					--{name='caged-dingrits',amount=1},
				},
			results =
				{
					{name='bones', amount ='R'},
					{name='meat', amount ='R'},
					{name='guts', amount ='R'},
					{name='pelt', amount ='R'},
					{name='dingrit-spike', amount ='R'},
					{name='blood', amount ='R'},
					{name='brain', amount ='R'},
					{name='meat', amount =4},
				},
			crafting_speed = 15,
			tech = 'dingrits',
			name = 'Extract dingrits Meat',
			icon = "__pyalienlifegraphics__/graphics/icons/mip/meat-01.png",
			icon_size = 64,
		},
		--brain
		{
			ingredients =
				{
					--{name='caged-dingrits',amount=1},
				},
			results =
				{
					{name='meat', amount ='R'},
					{name='brain', amount =1},
				},
			crafting_speed = 15,
			tech = 'dingrits',
			name = 'Extract dingrits brains',
			icon = "__pyalienlifegraphics__/graphics/icons/mip/brain-04.png",
			icon_size = 64,
		},
		--bones
		{
			ingredients =
				{
					--{name='caged-dingrits',amount=1},
				},
			results =
				{
					{name='brain', amount ='R'},
					{name='bones', amount =2},
				},
			crafting_speed = 15,
			tech = 'dingrits',
			name = 'Extract dingrits bones',
			icon = "__pyalienlifegraphics__/graphics/icons/mip/bones-01.png",
			icon_size = 64,
		},
		--guts
		{
			ingredients =
				{
					--{name='caged-dingrits',amount=1},
				},
			results =
				{
					{name='bones', amount ='R'},
					{name='guts', amount =4},
				},
			crafting_speed = 15,
			tech = 'dingrits',
			name = 'Extract dingrits guts',
			icon = "__pyalienlifegraphics__/graphics/icons/mip/guts-01.png",
			icon_size = 64,
		},
		--blood
		{
			ingredients =
				{
					--{name='caged-dingrits',amount=1},
				},
			results =
				{
					{name='guts', amount ='R'},
					{name='blood', amount =30},
				},
			crafting_speed = 15,
			tech = 'dingrits',
			name = 'Extract dingrits blood',
			icon = "__pyalienlifegraphics__/graphics/icons/blood.png",
			icon_size = 64,
		},
		--Pelt
		{
			ingredients =
				{
					--{name='caged-dingrits',amount=1},
				},
			results =
				{
					{name='blood', amount ='R'},
					{name='pelt', amount =2},
				},
			crafting_speed = 15,
			tech = 'dingrits',
			name = 'Extract dingrits Pelt',
			icon = "__pyalienlifegraphics__/graphics/icons/pelt.png",
			icon_size = 64,
		},
		--Dingrit Spike
		{
			ingredients =
				{
					--{name='caged-dingrits',amount=1},
				},
			results =
				{
					{name='pelt', amount ='R'},
					{name='dingrit-spike', amount ='*1'},
				},
			crafting_speed = 15,
			tech = 'dingrits',
			name = 'Extract dingrits Spikes',
			icon = "__pyalienlifegraphics__/graphics/icons/dingrit-spike.png",
			icon_size = 64,
		},
		--brain dingrits rendering
		{
			ingredients =
				{
					{name='caged-dingrits',amount='R'},
					{name='brain-caged-dingrits',amount=1},
				},
			results =
				{
					{name='dingrit-spike', amount ='R'},
					{name='brain', amount =5},
				},
			crafting_speed = 15,
			tech = 'nanochondria',
			name = 'Extract brains from Improved dingrits',
			icon = "__pyalienlifegraphics__/graphics/icons/brain-caged-dingrits.png",
			icon_size = 64,
		},
		--bone dingrits rendering
		{
			ingredients =
				{
					{name='brain-caged-dingrits',amount='R'},
					{name='bone-caged-dingrits',amount=1},
				},
			results =
				{
					{name='brain', amount ='R'},
					{name='bones', amount =8},
				},
			crafting_speed = 15,
			tech = 'bmp',
			name = 'Extract bones from Improved dingrits',
			icon = "__pyalienlifegraphics__/graphics/icons/bone-caged-dingrits.png",
			icon_size = 64,
		},
		--guts dingrits rendering
		{
			ingredients =
				{
					{name='bone-caged-dingrits',amount='R'},
					{name='guts-caged-dingrits',amount=1},
				},
			results =
				{
					{name='bones', amount ='R'},
					{name='guts', amount =10},
				},
			crafting_speed = 15,
			tech = 'antitumor',
			name = 'Extract guts from Improved dingrits',
			icon = "__pyalienlifegraphics__/graphics/icons/guts-caged-dingrits.png",
			icon_size = 64,
		},
		--blood dingrits rendering
		{
			ingredients =
				{
					{name='guts-caged-dingrits',amount='R'},
					{name='blood-caged-dingrits',amount=1},
				},
			results =
				{
					{name='guts', amount ='R'},
					{name='blood', amount =100},
				},
			crafting_speed = 15,
			tech = 'recombinant-ery',
			name = 'Extract blood from Improved dingrits',
			icon = "__pyalienlifegraphics__/graphics/icons/blood-caged-dingrits.png",
			icon_size = 64,
		},
		--meat dingrits rendering
		{
			ingredients =
				{
					{name='blood-caged-dingrits',amount='R'},
					{name='meat-caged-dingrits',amount=1},
				},
			results =
				{
					{name='blood', amount ='R'},
					{name='meat', amount =7},
				},
			crafting_speed = 15,
			tech = 'anabolic-rna',
			name = 'Extract meat from Improved dingrits',
			icon = "__pyalienlifegraphics__/graphics/icons/meat-caged-dingrits.png",
			icon_size = 64,
		},
		--skin dingrits rendering
		{
			ingredients =
				{
					{name='meat-caged-dingrits',amount='R'},
					{name='skin-caged-dingrits',amount=1},
				},
			results =
				{
					{name='meat', amount ='R'},
					{name='pelt', amount =3},
					{name='cage', amount=1},
				},
			crafting_speed = 15,
			tech = 'reca',
			name = 'Extract pelt from Improved dingrits',
			icon = "__pyalienlifegraphics__/graphics/icons/skin-caged-dingrits.png",
			icon_size = 64,
		},
	}
}
