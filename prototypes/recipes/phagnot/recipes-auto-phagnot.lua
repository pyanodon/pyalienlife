local fun = require("prototypes/functions/functions")

fun.autorecipes {
    name = 'caged-phagnot',
	category = 'phagnot',
	module_limitations = 'phagnot',
	subgroup = 'py-alienlife-phagnot',
	order = 'b',
    mats =
	{
		{
			ingredients =
				{
					{name='bhoddos',amount =3},
					{name='water-barrel',amount=3,return_item={name='empty-barrel',amount=3}},
					{name='cage',amount=1},
				},
			results =
				{
					{name='caged-phagnot', probability = 0.7,amount_min =1,amount_max =1},
				},
			crafting_speed = 150,
			tech = 'phagnot'
		},
		--food 1
		{
			ingredients =
				{
					{name='bhoddos',amount ='R'},
					{name='phagnot-food-01',amount =1},
				},
			results =
				{
					{name='caged-phagnot',amount ='R'},
					{name='caged-phagnot', probability = 0.8,amount_min =1,amount_max =1},
				},
			crafting_speed = 140,
			tech = 'phagnot'
		},
		--salt
		{
			ingredients =
				{
					{name='salt',amount = 3},
					{name='bedding',amount = 1},
				},
			results =
				{

				},
			crafting_speed = 130,
			tech = 'phagnot-mk02'
		},
		--fiber
		{
			ingredients =
				{
					{name='raw-fiber',amount = 10},
				},
			results =
				{

				},
			crafting_speed = 120,
			tech = 'phagnot-mk02'
		},
		--food 2
		{
			ingredients =
				{
					{name='phagnot-food-01',amount ='R'},
					{name='salt',amount ='R'},
					{name='raw-fiber',amount ='R'},
					{name='phagnot-food-02',amount =1},

				},
			results =
				{
					{name='caged-phagnot',amount ='R'},
					{name='caged-phagnot', probability = 0.9,amount_min =1,amount_max =1},
				},
			crafting_speed = 110,
			tech = 'phagnot-mk03'
		},
		--food 2 salt
		{
			ingredients =
				{
					{name='salt',amount =3},
				},
			results =
				{

				},
			crafting_speed = 100,
			tech = 'phagnot-mk03'
		},
		--food 2 salt fiber
		{
			ingredients =
				{
					{name='raw-fiber',amount = 10},
				},
			results =
				{

				},
			crafting_speed = 90,
			tech = 'phagnot-mk04'
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
					{name='caged-phagnot', amount ='R'},
					{name='caged-phagnot', probability = 1,amount_min =1,amount_max =2},
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
					{name='caged-phagnot', amount ='R'},
					{name='brain-caged-phagnot',1},
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
					{name='brain-caged-phagnot', amount ='R'},
					{name='bone-caged-phagnot', 1},
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
					{name='bone-caged-phagnot', amount ='R'},
					{name='meat-caged-phagnot', 1},
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
					{name='meat-caged-phagnot', amount ='R'},
					{name='guts-caged-phagnot', 1},
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
					{name='guts-caged-phagnot', amount ='R'},
					{name='blood-caged-phagnot', 1},
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
				},
			results =
				{
					{name='blood-caged-phagnot', amount ='R'},
					{name='skin-caged-phagnot', 1},
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
    name = 'phagnot-cub',
	category = 'phagnot',
	module_limitations = 'phagnot',
	subgroup = 'py-alienlife-phagnot',
	order = 'c',
    mats =
	{
		{
			ingredients =
				{
                    {name='bhoddos',amount =3},
                    {name='yotoi-seeds',amount =30},
					{name='water-barrel',amount=10,return_item={name='empty-barrel',amount=10}},
					--{name='cage',amount=1},
					{name='bedding',amount = 1},
				},
			results =
				{
					{name='phagnot-cub', amount =4},
				},
			crafting_speed = 140,
			tech = 'assisted-embryology'
		},
		--food 1
		{
			ingredients =
				{
                    {name='yotoi-seeds',amount ='R'},
                    {name='bhoddos',amount ='R'},
					{name='phagnot-food-01',amount =2},
				},
			results =
				{

				},
			crafting_speed = 120,
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
			crafting_speed = 100,
			tech = 'assisted-embryology'
		},
		--fiber
		{
			ingredients =
				{
					{name='raw-fiber',amount = 15},
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
					{name='phagnot-food-01',amount ='R'},
					{name='salt',amount ='R'},
					{name='raw-fiber',amount ='R'},
					{name='phagnot-food-02',amount =2},

				},
			results =
				{

				},
			crafting_speed = 100,
			tech = 'assisted-embryology'
		},
		--food 2 salt
		{
			ingredients =
				{
					{name='salt',amount =10},
				},
			results =
				{

				},
			crafting_speed = 90,
			tech = 'assisted-embryology'
		},
		--food 2 salt fiber
		{
			ingredients =
				{
					{name='raw-fiber',amount = 15},
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
					{name='raw-fiber',amount = 'R'},
					{name='salt',amount = 'R'},
					{name='phagnot-food-02',amount = 'R'},
					{name='bhoddos',amount =6},
					{name='pheromones',amount =1},
                    {name='yotoi-seeds',amount =30},
					--{name='water-barrel',amount=6,return_item={name='empty-barrel',amount=6}},
					--{name='bedding',amount = 1},
				},
			results =
				{
					{name='phagnot-cub',amount = 'R'},
					{name='phagnot-cub', amount =6},
				},
			crafting_speed = 140,
			tech = 'pheromones'
		},
		--food 1
		{
			ingredients =
				{
                    {name='yotoi-seeds',amount ='R'},
                    {name='bhoddos',amount ='R'},
					{name='phagnot-food-01',amount =2},
				},
			results =
				{

				},
			crafting_speed = 120,
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
			crafting_speed = 110,
			tech = 'pheromones'
		},
		--fiber
		{
			ingredients =
				{
					{name='raw-fiber',amount = 10},
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
					{name='phagnot-food-01',amount ='R'},
					{name='salt',amount ='R'},
					{name='raw-fiber',amount ='R'},
					{name='phagnot-food-02',amount =2},

				},
			results =
				{

				},
			crafting_speed = 100,
			tech = 'pheromones'
		},
		--food 2 salt
		{
			ingredients =
				{
					{name='salt',amount ='*10'},
				},
			results =
				{

				},
			crafting_speed = 90,
			tech = 'pheromones'
		},
		--food 2 salt fiber
		{
			ingredients =
				{
					{name='raw-fiber',amount =10},
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
	category = 'slaughterhouse-phagnot',
	--module_limitations = 'phagnot',
	subgroup = 'py-alienlife-phagnot',
	order = 'b',
    mats =
	{
		{
			ingredients =
				{
					{name='caged-phagnot',amount=1},
				},
			results =
				{
					{name='bones', probability = 0.5,amount_min =1,amount_max =6},
					{name='meat', probability = 0.1,amount_min =1,amount_max =2},
					{name='skin', probability = 0.2,amount_min =1,amount_max =1},
                    {name='guts', probability = 0.3,amount_min =1,amount_max =1},
                    {name='gas-bladder', probability = 0.4,amount_min =1,amount_max =1},
					{name='blood', amount =20},
					{name='cage',amount=1},
					{name='brain', probability = 0.4,amount_min =1,amount_max =1},
				},
			crafting_speed = 30,
			tech = 'phagnot',
			name = 'Full Render phagnots',
			icon = "__pyalienlifegraphics__/graphics/icons/rendering-phagnot.png",
			icon_size = 64,
		},
		--meat
		{
			ingredients =
				{
					--{name='caged-phagnot',amount=1},
				},
			results =
				{
					{name='bones', amount ='R'},
					{name='meat', amount ='R'},
					{name='skin', amount ='R'},
					{name='gas-bladder', amount ='R'},
					{name='guts', amount ='R'},
					{name='blood', amount ='R'},
					{name='brain', amount ='R'},
					{name='meat', amount =2},
				},
			crafting_speed = 15,
			tech = 'phagnot',
			name = 'Extract phagnot Meat',
			icon = "__pyalienlifegraphics__/graphics/icons/mip/meat-01.png",
			icon_size = 64,
		},
		--brain
		{
			ingredients =
				{
					--{name='caged-phagnot',amount=1},
				},
			results =
				{
					{name='meat', amount ='R'},
					{name='brain', amount =1},
				},
			crafting_speed = 15,
			tech = 'phagnot',
			name = 'Extract phagnot brains',
			icon = "__pyalienlifegraphics__/graphics/icons/mip/brain-04.png",
			icon_size = 64,
		},
		--skin
		{
			ingredients =
				{
					--{name='caged-phagnot',amount=1},
				},
			results =
				{
					{name='brain', amount ='R'},
					{name='skin', amount =1},
				},
			crafting_speed = 15,
			tech = 'phagnot',
			name = 'Extract phagnot skin',
			icon = "__pyalienlifegraphics__/graphics/icons/skin.png",
			icon_size = 32,
		},
		--bones
		{
			ingredients =
				{
					--{name='caged-phagnot',amount=1},
				},
			results =
				{
					{name='skin', amount ='R'},
					{name='bones', amount =6},
				},
			crafting_speed = 15,
			tech = 'phagnot',
			name = 'Extract phagnot bones',
			icon = "__pyalienlifegraphics__/graphics/icons/mip/bones-01.png",
			icon_size = 64,
		},
		--guts
		{
			ingredients =
				{
					--{name='caged-phagnot',amount=1},
				},
			results =
				{
					{name='bones', amount ='R'},
					{name='guts', amount =1},
				},
			crafting_speed = 15,
			tech = 'phagnot',
			name = 'Extract phagnot guts',
			icon = "__pyalienlifegraphics__/graphics/icons/mip/guts-01.png",
			icon_size = 64,
		},
		--blood
		{
			ingredients =
				{
					--{name='caged-phagnot',amount=1},
				},
			results =
				{
					{name='guts', amount ='R'},
					{name='blood', amount =40},
				},
			crafting_speed = 15,
			tech = 'phagnot',
			name = 'Extract phagnot blood',
			icon = "__pyalienlifegraphics__/graphics/icons/blood.png",
			icon_size = 64,
		},
		--Gas Bladder
		{
			ingredients =
				{
					--{name='caged-phagnot',amount=1},
				},
			results =
				{
					{name='blood', amount ='R'},
					{name='gas-bladder', amount =1},
				},
			crafting_speed = 15,
			tech = 'phagnot',
			name = 'Extract phagnot Gas bladder',
			icon = "__pyalienlifegraphics__/graphics/icons/gas-bladder.png",
			icon_size = 64,
		},
		--brain phagnot rendering
		{
			ingredients =
				{
					{name='caged-phagnot',amount='R'},
					{name='brain-caged-phagnot',amount=1},
				},
			results =
				{
					{name='blood', amount ='R'},
					{name='gas-bladder', amount ='R'},
					{name='brain', amount =5},
				},
			crafting_speed = 15,
			tech = 'nanochondria',
			name = 'Extract brains from Improved phagnots',
			icon = "__pyalienlifegraphics__/graphics/icons/brain-caged-phagnot.png",
			icon_size = 64,
		},
		--bone phagnot rendering
		{
			ingredients =
				{
					{name='brain-caged-phagnot',amount='R'},
					{name='bone-caged-phagnot',amount=1},
				},
			results =
				{
					{name='brain', amount ='R'},
					{name='bones', amount =30},
				},
			crafting_speed = 15,
			tech = 'bmp',
			name = 'Extract bones from Improved phagnots',
			icon = "__pyalienlifegraphics__/graphics/icons/bone-caged-phagnot.png",
			icon_size = 64,
		},
		--guts phagnot rendering
		{
			ingredients =
				{
					{name='bone-caged-phagnot',amount='R'},
					{name='guts-caged-phagnot',amount=1},
				},
			results =
				{
					{name='bones', amount ='R'},
					{name='guts', amount =6},
				},
			crafting_speed = 15,
			tech = 'antitumor',
			name = 'Extract guts from Improved phagnots',
			icon = "__pyalienlifegraphics__/graphics/icons/guts-caged-phagnot.png",
			icon_size = 64,
		},
		--blood phagnot rendering
		{
			ingredients =
				{
					{name='guts-caged-phagnot',amount='R'},
					{name='blood-caged-phagnot',amount=1},
				},
			results =
				{
					{name='guts', amount ='R'},
					{name='blood', amount =100},
				},
			crafting_speed = 15,
			tech = 'recombinant-ery',
			name = 'Extract blood from Improved phagnots',
			icon = "__pyalienlifegraphics__/graphics/icons/blood-caged-phagnot.png",
			icon_size = 64,
		},
		--skin phagnot rendering
		{
			ingredients =
				{
					{name='blood-caged-phagnot',amount='R'},
					{name='skin-caged-phagnot',amount=1},
				},
			results =
				{
					{name='blood', amount ='R'},
					{name='skin', amount =7},
				},
			crafting_speed = 15,
			tech = 'reca',
			name = 'Extract skin from Improved phagnots',
			icon = "__pyalienlifegraphics__/graphics/icons/skin-caged-phagnot.png",
			icon_size = 64,
		},
		--meat phagnot rendering
		{
			ingredients =
				{
					{name='skin-caged-phagnot',amount='R'},
					{name='meat-caged-phagnot',amount=1},
				},
			results =
				{
					{name='skin', amount ='R'},
					{name='meat', amount =11},
				},
			crafting_speed = 15,
			tech = 'anabolic-rna',
			name = 'Extract meat from Improved phagnots',
			icon = "__pyalienlifegraphics__/graphics/icons/meat-caged-phagnot.png",
			icon_size = 64,
		},
	}
}
