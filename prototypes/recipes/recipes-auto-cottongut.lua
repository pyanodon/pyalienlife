local fun = require("prototypes/functions/functions")

fun.autorecipes {
    name = 'caged-cottongut',
	category = 'cottongut',
	module_limitations = 'cottongut-mk01',
	subgroup = 'py-alienlife-cottongut',
	order = 'b',
    mats =
	{
		{
			ingredients =
				{
					{name='moondrop',amount = 4},
					{name='woodseeds', amount = 4},
					{name='waterbarrel',amount=2,return_item={name='empty-barrel',amount=2}},
				},
			results =
				{
					{name='cottongut', amount = 6},
				},
			crafting_speed = 150,
			tech = 'cottongut'
		},
		--Salt
		{
			ingredients =
				{
					{name='ralesiaseeds',amount = 3},
				},
			results =
				{
					{name='cottongut',amount = '+3'},
				},
			crafting_speed = 140,
			tech = 'cottongut'
		},
		--Food 1
		{
			ingredients =
				{
					{name = 'woodseeds',amount = 'R'},
					{name = 'ralesiaseeds',amount ='R'},
					{name='cottongutfood01',amount =1},
					{name='bedding',amount = 1},
				},
			results =
				{
					{name='cottongut',amount = '+2'},
				},
			crafting_speed = 130,
			tech = 'cottongut-mk02'
		},
		--fiber
		{
			ingredients =
				{
					{name='thuupraseeds', amount = 5},
				},
			results =
				{
					{name='cottongut',amount = '+3'},
				},
			crafting_speed = 120,
			tech = 'cottongut-mk02'
		},
		--food 2
		{
			ingredients =
				{
					{name='cottongutfood01',amount ='R'},
					{name='cottongutfood02',amount =1},

				},
			results =
				{
					{name='cottongut',amount ='+4'},
				},
			crafting_speed = 110,
			tech = 'cottongut-mk03'
		},
		--food 2 salt
		{
			ingredients =
				{
					{name = 'thuupraseeds',amount = 'R'},
					{name='bhoddos',amount = 4},
				},
			results =
				{
					{name='cottongut',amount = '+3'},
				},
			crafting_speed = 100,
			tech = 'cottongut-mk03'
		},
		--food 2 salt fiber
		{
			ingredients =
				{
					{name='grodseeds',amount = '*3'},
				},
			results =
				{
					{name='cottongut',amount = '+3'},
				},
			crafting_speed = 90,
			tech = 'cottongut-mk04'
		},
		--gh
		{
			ingredients =
				{
					{name='gh',amount =1},

				},
			results =
				{
					{name='cottongut',amount = '+3'},
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
					{name='cottongut',amount = '+3'},
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
					{name='cottongut',amount = '+3'},
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
					{name='cottongut', amount ='R'},
					{name='braincottongut',amount = 4},
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
					{name='braincottongut', amount ='R'},
					{name='bonecottongut', amount = 4},
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
					{name='bonecottongut', amount ='R'},
					{name='meatcottongut', amount = 4},
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
					{name='meatcottongut', amount ='R'},
					{name='gutscottongut', amount = 4},
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
					{name='gutscottongut', amount ='R'},
					{name='bloodcottongut', amount = 4},
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
					{name='bloodcottongut', amount ='R'},
					{name='skincottongut', amount = 4},
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
--[[
fun.autorecipes {
    name = 'cottongut-cub',
	category = 'cottongut',
	module_limitations = 'cottongut-mk01',
	subgroup = 'py-alienlife-cottongut',
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
					{name='cottongutcub', amount =1},
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
					{name='cottongutfood01',amount =1},
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
					{name='cottongutfood01',amount ='R'},
					{name='salt',amount ='R'},
					{name='rawfiber',amount ='R'},
					{name='cottongutfood02',amount =1},

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
					{name='cottongutfood02',amount = 'R'},
					{name='bhoddos',amount =3},
					{name='pheromones',amount =1},
                    {name='yotoiseeds',amount =15},
					--{name='waterbarrel',amount=6,return_item={name='empty-barrel',amount=6}},
					--{name='bedding',amount = 1},
				},
			results =
				{
					{name='cottongutcub',amount = 'R'},
					{name='cottongutcub', amount =2},
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
					{name='cottongutfood01',amount =1},
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
					{name='cottongutfood01',amount ='R'},
					{name='salt',amount ='R'},
					{name='rawfiber',amount ='R'},
					{name='cottongutfood02',amount =1},

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
]]--
------------------RENDERING------------------

fun.autorecipes {
    name = 'rendering',
	category = 'slaughterhouse-cottongut',
	--module_limitations = 'cottongut',
	subgroup = 'py-alienlife-cottongut',
	order = 'b',
    mats =
	{
		{
			ingredients =
				{
					{name='cottongut',amount=5},
				},
			results =
				{
					{name='bones', probability = 0.4,amount_min =1,amount_max =5},
					{name='meat', probability = 0.3,amount_min =1,amount_max =4},
					{name='skin', probability = 0.4,amount_min =1,amount_max =4},
					{name='guts', probability = 0.5,amount_min =1,amount_max =5},
					{name='fat', probability = 0.3,amount_min =1,amount_max =4},
					{name='blood', amount =40},
					{name='brain', probability = 0.3,amount_min =1,amount_max =2},
				},
			crafting_speed = 30,
			tech = 'cottongut',
			name = 'Full Render cottongut',
			icon = "__pyalienlifegraphics__/graphics/icons/rendering-cottongut.png",
			icon_size = 64,
		},
		--meat
		{
			ingredients =
				{
					--{name='cottongut',amount=1},
				},
			results =
				{
					{name='bones', amount ='R'},
					{name='meat', amount ='R'},
					{name='skin', amount ='R'},
					{name='guts', amount ='R'},
					{name='blood', amount ='R'},
					{name='brain', amount ='R'},
					{name='meat', amount =4},
				},
			crafting_speed = 15,
			tech = 'cottongut',
			name = 'Extract cottongut Meat',
			icon = "__pyalienlifegraphics__/graphics/icons/mip/meat-01.png",
			icon_size = 64,
		},
		--brain
		{
			ingredients =
				{
					--{name='cottongut',amount=1},
				},
			results =
				{
					{name='meat', amount ='R'},
					{name='brain', amount =2},
				},
			crafting_speed = 15,
			tech = 'cottongut',
			name = 'Extract cottongut brains',
			icon = "__pyalienlifegraphics__/graphics/icons/mip/brain-04.png",
			icon_size = 64,
		},
		--skin
		{
			ingredients =
				{
					--{name='cottongut',amount=1},
				},
			results =
				{
					{name='brain', amount ='R'},
					{name='skin', amount =4},
				},
			crafting_speed = 15,
			tech = 'cottongut',
			name = 'Extract cottongut skin',
			icon = "__pyalienlifegraphics__/graphics/icons/skin.png",
			icon_size = 32,
		},
		--bones
		{
			ingredients =
				{
					--{name='cottongut',amount=1},
				},
			results =
				{
					{name='skin', amount ='R'},
					{name='bones', amount =5},
				},
			crafting_speed = 15,
			tech = 'cottongut',
			name = 'Extract cottongut bones',
			icon = "__pyalienlifegraphics__/graphics/icons/mip/bones-01.png",
			icon_size = 64,
		},
		--guts
		{
			ingredients =
				{
					--{name='cottongut',amount=1},
				},
			results =
				{
					{name='bones', amount ='R'},
					{name='guts', amount =5},
				},
			crafting_speed = 15,
			tech = 'cottongut',
			name = 'Extract cottongut guts',
			icon = "__pyalienlifegraphics__/graphics/icons/mip/guts-01.png",
			icon_size = 64,
		},
		--blood
		{
			ingredients =
				{
					--{name='cottongut',amount=1},
				},
			results =
				{
					{name='guts', amount ='R'},
					{name='blood', amount =60},
				},
			crafting_speed = 15,
			tech = 'cottongut',
			name = 'Extract cottongut blood',
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
					{name='fat', amount =5},
				},
			crafting_speed = 15,
			tech = 'arthurian',
			name = 'Extract cottongut lard',
			icon = "__pyalienlifegraphics__/graphics/icons/mukmoux-fat.png",
			icon_size = 64,
		},
		--brain cottongut rendering
		{
			ingredients =
				{
					{name='cottongut',amount='R'},
					{name='braincottongut',amount=5},
				},
			results =
				{
					{name='fat', amount ='R'},
					{name='brain', amount =3},
				},
			crafting_speed = 15,
			tech = 'nanochondria',
			name = 'Extract brains from Improved cottonguts',
			icon = "__pyalienlifegraphics__/graphics/icons/brain-cottongut.png",
			icon_size = 64,
		},
		--bone cottongut rendering
		{
			ingredients =
				{
					{name='braincottongut',amount='R'},
					{name='bonecottongut',amount=5},
				},
			results =
				{
					{name='brain', amount ='R'},
					{name='bones', amount =12},
				},
			crafting_speed = 15,
			tech = 'bmp',
			name = 'Extract bones from Improved cottonguts',
			icon = "__pyalienlifegraphics__/graphics/icons/bone-cottongut.png",
			icon_size = 64,
		},
		--guts cottongut rendering
		{
			ingredients =
				{
					{name='bonecottongut',amount='R'},
					{name='gutscottongut',amount=5},
				},
			results =
				{
					{name='bones', amount ='R'},
					{name='guts', amount =4},
				},
			crafting_speed = 15,
			tech = 'antitumor',
			name = 'Extract guts from Improved cottonguts',
			icon = "__pyalienlifegraphics__/graphics/icons/guts-cottongut.png",
			icon_size = 64,
		},
		--blood cottongut rendering
		{
			ingredients =
				{
					{name='gutscottongut',amount='R'},
					{name='bloodcottongut',amount=5},
				},
			results =
				{
					{name='guts', amount ='R'},
					{name='blood', amount =70},
				},
			crafting_speed = 15,
			tech = 'recombinant-ery',
			name = 'Extract blood from Improved cottonguts',
			icon = "__pyalienlifegraphics__/graphics/icons/blood-cottongut.png",
			icon_size = 64,
		},
		--skin cottongut rendering
		{
			ingredients =
				{
					{name='bloodcottongut',amount='R'},
					{name='skincottongut',amount=5},
				},
			results =
				{
					{name='blood', amount ='R'},
					{name='skin', amount =4},
				},
			crafting_speed = 15,
			tech = 'reca',
			name = 'Extract skin from Improved cottonguts',
			icon = "__pyalienlifegraphics__/graphics/icons/skin-cottongut.png",
			icon_size = 64,
		},
		--fat cottongut rendering
		{
			ingredients =
				{
					{name='skincottongut',amount='R'},
					{name='fatcottongut',amount=1},
				},
			results =
				{
					{name='skin', amount ='R'},
					{name='fat', amount =6},
				},
			crafting_speed = 15,
			tech = 'orexigenic',
			name = 'Extract lard from Improved cottonguts',
			icon = "__pyalienlifegraphics__/graphics/icons/fat-cottongut.png",
			icon_size = 64,
		},
		--meat cottongut rendering
		{
			ingredients =
				{
					{name='fatcottongut',amount='R'},
					{name='meatcottongut',amount=5},
				},
			results =
				{
					{name='skin', amount ='R'},
					{name='meat', amount =7},
				},
			crafting_speed = 15,
			tech = 'anabolic-rna',
			name = 'Extract meat from Improved cottonguts',
			icon = "__pyalienlifegraphics__/graphics/icons/meat-cottongut.png",
			icon_size = 64,
		},
	}
}