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
					{name='waterbarrel',amount=3,return_item={name='empty-barrel',amount=3}},
					{name='cage',amount=1},
				},
			results =
				{
					{name='cagedphagnot', probability = 0.7,amount_min =1,amount_max =1},
				},
			crafting_speed = 150,
			tech = 'phagnot'
		},
		--food 1
		{
			ingredients =
				{
					{name='bhoddos',amount ='R'},
					{name='phagnotfood01',amount =1},
				},
			results =
				{
					{name='cagedphagnot',amount ='R'},
					{name='cagedphagnot', probability = 0.8,amount_min =1,amount_max =1},
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
					{name='rawfiber',amount = 10},
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
					{name='phagnotfood01',amount ='R'},
					{name='salt',amount ='R'},
					{name='rawfiber',amount ='R'},
					{name='phagnotfood02',amount =1},

				},
			results =
				{
					{name='cagedphagnot',amount ='R'},
					{name='cagedphagnot', probability = 0.9,amount_min =1,amount_max =1},
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
					{name='rawfiber',amount = 10},
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
					{name='cagedphagnot', amount ='R'},
					{name='cagedphagnot', probability = 1,amount_min =1,amount_max =2},
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
					{name='cagedphagnot', amount ='R'},
					{name='braincagedphagnot',1},
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
					{name='braincagedphagnot', amount ='R'},
					{name='bonecagedphagnot', 1},
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
					{name='bonecagedphagnot', amount ='R'},
					{name='meatcagedphagnot', 1},
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
					{name='meatcagedphagnot', amount ='R'},
					{name='gutscagedphagnot', 1},
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
					{name='gutscagedphagnot', amount ='R'},
					{name='bloodcagedphagnot', 1},
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
					{name='bloodcagedphagnot', amount ='R'},
					{name='skincagedphagnot', 1},
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
                    {name='bhoddos',amount =2},
                    {name='yotoiseeds',amount =15},
					{name='waterbarrel',amount=3,return_item={name='empty-barrel',amount=3}},
					--{name='cage',amount=1},
					{name='bedding',amount = 1},
				},
			results =
				{
					{name='phagnotcub', amount =1},
				},
			crafting_speed = 70,
			tech = 'assisted-embryology'
		},
		--food 1
		{
			ingredients =
				{
                    {name='yotoiseeds',amount ='R'},
                    {name='bhoddos',amount ='R'},
					{name='phagnotfood01',amount =1},
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
					{name='salt',amount = 5},
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
					{name='rawfiber',amount = 10},
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
					{name='phagnotfood01',amount ='R'},
					{name='salt',amount ='R'},
					{name='rawfiber',amount ='R'},
					{name='phagnotfood02',amount =1},

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
					{name='salt',amount =5},
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
					{name='rawfiber',amount = 10},
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
					{name='phagnotfood02',amount = 'R'},
					{name='bhoddos',amount =3},
					{name='pheromones',amount =1},
                    {name='yotoiseeds',amount =15},
					--{name='waterbarrel',amount=6,return_item={name='empty-barrel',amount=6}},
					--{name='bedding',amount = 1},
				},
			results =
				{
					{name='phagnotcub',amount = 'R'},
					{name='phagnotcub', amount =2},
				},
			crafting_speed = 70,
			tech = 'pheromones'
		},
		--food 1
		{
			ingredients =
				{
                    {name='yotoiseeds',amount ='R'},
                    {name='bhoddos',amount ='R'},
					{name='phagnotfood01',amount =1},
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
					{name='phagnotfood01',amount ='R'},
					{name='salt',amount ='R'},
					{name='rawfiber',amount ='R'},
					{name='phagnotfood02',amount =1},

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
					{name='salt',amount ='*10'},
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
	category = 'slaughterhouse-phagnot',
	--module_limitations = 'phagnot',
	subgroup = 'py-alienlife-phagnot',
	order = 'b',
    mats =
	{
		{
			ingredients =
				{
					{name='cagedphagnot',amount=1},
				},
			results =
				{
					{name='bones', probability = 0.5,amount_min =1,amount_max =6},
					{name='meat', probability = 0.1,amount_min =1,amount_max =2},
					{name='skin', probability = 0.2,amount_min =1,amount_max =1},
                    {name='guts', probability = 0.3,amount_min =1,amount_max =1},
                    {name='gasbladder', probability = 0.4,amount_min =1,amount_max =1},
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
					--{name='cagedphagnot',amount=1},
				},
			results =
				{
					{name='bones', amount ='R'},
					{name='meat', amount ='R'},
					{name='skin', amount ='R'},
					{name='gasbladder', amount ='R'},
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
					--{name='cagedphagnot',amount=1},
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
					--{name='cagedphagnot',amount=1},
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
					--{name='cagedphagnot',amount=1},
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
					--{name='cagedphagnot',amount=1},
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
					--{name='cagedphagnot',amount=1},
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
					--{name='cagedphagnot',amount=1},
				},
			results =
				{
					{name='blood', amount ='R'},
					{name='gasbladder', amount =1},
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
					{name='cagedphagnot',amount='R'},
					{name='braincagedphagnot',amount=1},
				},
			results =
				{
					{name='blood', amount ='R'},
					{name='gasbladder', amount ='R'},
					{name='brain', amount =3},
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
					{name='braincagedphagnot',amount='R'},
					{name='bonecagedphagnot',amount=1},
				},
			results =
				{
					{name='brain', amount ='R'},
					{name='bones', amount =12},
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
					{name='bonecagedphagnot',amount='R'},
					{name='gutscagedphagnot',amount=1},
				},
			results =
				{
					{name='bones', amount ='R'},
					{name='guts', amount =4},
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
					{name='gutscagedphagnot',amount='R'},
					{name='bloodcagedphagnot',amount=1},
				},
			results =
				{
					{name='guts', amount ='R'},
					{name='blood', amount =70},
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
					{name='bloodcagedphagnot',amount='R'},
					{name='skincagedphagnot',amount=1},
				},
			results =
				{
					{name='blood', amount ='R'},
					{name='skin', amount =4},
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
					{name='skincagedphagnot',amount='R'},
					{name='meatcagedphagnot',amount=1},
				},
			results =
				{
					{name='skin', amount ='R'},
					{name='meat', amount =7},
				},
			crafting_speed = 15,
			tech = 'anabolic-rna',
			name = 'Extract meat from Improved phagnots',
			icon = "__pyalienlifegraphics__/graphics/icons/meat-caged-phagnot.png",
			icon_size = 64,
		},
	}
}