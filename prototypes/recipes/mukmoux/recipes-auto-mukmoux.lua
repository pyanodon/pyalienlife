local fun = require("prototypes/functions/functions")

fun.autorecipes {
    name = 'caged-mukmoux',
	category = 'mukmoux',
	module_limitations = 'mukmoux',
	subgroup = 'py-alienlife-mukmoux',
	order = 'b',
    mats =
	{
		{
			ingredients =
				{
                    {name='fawogae',amount =15},
                    {name='ralesia-seeds',amount =15},
					{name='water-barrel',amount=6,return_item={name='empty-barrel',amount=6}},
					{name='cage',amount=1},
				},
			results =
				{
					{name='caged-mukmoux', probability = 0.7,amount_min =1,amount_max =1},
				},
			crafting_speed = 70,
			tech = 'mukmoux'
		},
		--food 1
		{
			ingredients =
				{
                    {name='ralesia-seeds',remove_item = true},
                    {name='fawogae',remove_item = true},
					{name='mukmoux-food-01',amount =1},
				},
			results =
				{
					{name='caged-mukmoux',remove_item = true},
					{name='caged-mukmoux', probability = 0.8,amount_min =1,amount_max =1},
				},
			crafting_speed = 55,
			tech = 'mukmoux'
		},
		--salt
		{
			ingredients =
				{
					{name='salt',amount = 10},
					{name='bedding',amount = 2},
				},
			results =
				{

				},
			crafting_speed = 50,
			tech = 'mukmoux-mk02'
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
			crafting_speed = 45,
			tech = 'mukmoux-mk02'
		},
		--food 2
		{
			ingredients =
				{
					{name='mukmoux-food-01',remove_item = true},
					{name='salt',remove_item = true},
					{name='raw-fiber',remove_item = true},
					{name='mukmoux-food-02',amount =1},

				},
			results =
				{
					{name='caged-mukmoux',remove_item = true},
					{name='caged-mukmoux', probability = 0.9,amount_min =1,amount_max =1},
				},
			crafting_speed = 40,
			tech = 'mukmoux-mk03'
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
			crafting_speed = 35,
			tech = 'mukmoux-mk03'
		},
		--food 2 salt fiber
		{
			ingredients =
				{
					{name='raw-fiber',amount = 5},
				},
			results =
				{

				},
			crafting_speed = 30,
			tech = 'mukmoux-mk04'
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
			crafting_speed = 12,
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

					{name='caged-mukmoux', remove_item = true},
					{name='caged-mukmoux', probability = 1,amount_min =1,amount_max =2},
				},
			crafting_speed = 12,
			tech = 'antiviral'
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
			crafting_speed = 30,
			tech = 'antiviral'
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
					{name='caged-mukmoux', remove_item = true},
					{name='brain-caged-mukmoux',1},
				},
			crafting_speed = 30,
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
			crafting_speed = 12,
			tech = 'nanochondria'
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
					{name='brain-caged-mukmoux', remove_item = true},
					{name='bonecaged-mukmoux', 1},
				},
			crafting_speed = 30,
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
			crafting_speed = 12,
			tech = 'bmp'
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
					{name='bonecaged-mukmoux', remove_item = true},
					{name='meat-caged-mukmoux', 1},
				},
			crafting_speed = 30,
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
			crafting_speed = 12,
			tech = 'anabolic-rna'
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
					{name='meat-caged-mukmoux', remove_item = true},
					{name='guts-caged-mukmoux', 1},
				},
			crafting_speed = 30,
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
			crafting_speed = 12,
			tech = 'antitumor'
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
					{name='guts-caged-mukmoux', remove_item = true},
					{name='blood-caged-mukmoux', 1},
				},
			crafting_speed = 30,
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
			crafting_speed = 12,
			tech = 'recombinant-ery'
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
					{name='blood-caged-mukmoux', remove_item = true},
					{name='skin-caged-mukmoux', 1},
				},
			crafting_speed = 30,
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
			crafting_speed = 12,
			tech = 'reca'
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
					{name='skin-caged-mukmoux', remove_item = true},
					{name='fat-caged-mukmoux', 1},
				},
			crafting_speed = 30,
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
			crafting_speed = 12,
			tech = 'orexigenic'
		},
	}
}

------------------CALF MAKER------------------

fun.autorecipes {
    name = 'mukmoux-calf',
	category = 'mukmoux',
	module_limitations = 'mukmoux',
	subgroup = 'py-alienlife-mukmoux',
	order = 'c',
    mats =
	{
		{
			ingredients =
				{
                    {name='fawogae',amount =30},
                    {name='ralesia-seeds',amount =30},
					{name='water-barrel',amount=15,return_item={name='empty-barrel',amount=15}},
					--{name='cage',amount=1},
					{name='bedding',amount = 2},
				},
			results =
				{
					{name='mukmoux-calf', amount =3},
				},
			crafting_speed = 75,
			tech = 'assisted-embryology'
		},
		--food 1
		{
			ingredients =
				{
                    {name='ralesia-seeds',remove_item = true},
                    {name='fawogae',remove_item = true},
					{name='mukmoux-food-01',amount =2},
				},
			results =
				{

				},
			crafting_speed = 65,
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
			crafting_speed = 60,
			tech = 'assisted-embryology'
		},
		--fiber
		{
			ingredients =
				{
					{name='raw-fiber',amount = 4},     -- reduced fiber since in the end : you sed more buildings to make the extra fiber then you could save farm space
				},                                    -- not to mention the resources
			results =
				{

				},
			crafting_speed = 55,
			tech = 'assisted-embryology'
		},
		--food 2
		{
			ingredients =
				{
					{name='mukmoux-food-01',remove_item = true},
					{name='salt',remove_item = true},
					{name='raw-fiber',remove_item = true},
					{name='mukmoux-food-02',amount =2},

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
					{name='salt',amount = 4},
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
					{name='raw-fiber',amount = 5},
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
					{name='raw-fiber',remove_item = true},
					{name='salt',remove_item = true},
					{name='mukmoux-food-02',remove_item = true},
					{name='fawogae',amount =20},
					{name='pheromones',amount =1},
                    {name='ralesia-seeds',amount =20},
					--{name='water-barrel',amount=6,return_item={name='empty-barrel',amount=6}},
					--{name='bedding',amount = 1},
				},
			results =
				{
					{name='mukmoux-calf',remove_item = true},
					{name='mukmoux-calf', amount =5},
				},
			crafting_speed = 65,
			tech = 'pheromones'
		},
		--food 1
		{
			ingredients =
				{
                    {name='ralesia-seeds',remove_item = true},
                    {name='fawogae',remove_item = true},
					{name='mukmoux-food-01',amount =2},
				},
			results =
				{

				},
			crafting_speed = 50,
			tech = 'pheromones'
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
			crafting_speed = 45,
			tech = 'pheromones'
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
			crafting_speed = 40,
			tech = 'pheromones'
		},
		--food 2
		{
			ingredients =
				{
					{name='mukmoux-food-01',remove_item = true},
					{name='salt',remove_item = true},
					{name='raw-fiber',remove_item = true},
					{name='mukmoux-food-02',amount =2},

				},
			results =
				{

				},
			crafting_speed = 40,
			tech = 'pheromones'
		},
		--food 2 salt
		{
			ingredients =
				{
					{name='salt',remove_item = true},
				},
			results =
				{

				},
			crafting_speed = 35,
			tech = 'pheromones'
		},
		--food 2 salt fiber
		{
			ingredients =
				{
					{name='raw-fiber',amount = 5},
				},
			results =
				{

				},
			crafting_speed = 30,
			tech = 'pheromones'
		},

	}
}

------------------RENDERING------------------

fun.autorecipes {
    name = 'rendering',
	category = 'slaughterhouse-mukmoux',
	--module_limitations = 'mukmoux',
	subgroup = 'py-alienlife-mukmoux',
	order = 'b',
    mats =
	{
		{
			ingredients =
				{
					{name='caged-mukmoux',amount=1},
				},
			results =
				{
					{name='bones', probability = 0.4,amount_min =1,amount_max =2},
					{name='meat', probability = 0.4,amount_min =1,amount_max =4},
					{name='skin', probability = 0.4,amount_min =1,amount_max =4},
					{name='mukmoux-fat', probability = 0.4,amount_min =1,amount_max =3},
					{name='guts', probability = 0.4,amount_min =1,amount_max =4},
					{name='blood', amount =50},
					{name='cage',amount=1},
					{name='brain', probability = 0.4,amount_min =1,amount_max =1},
				},
			crafting_speed = 30,
			tech = 'mukmoux',
			name = 'Full Render Mukmouxs',
			icon = "__pyalienlifegraphics__/graphics/icons/rendering-mukmoux.png",
			icon_size = 64,
		},
		--bonemeal
		{
			ingredients =
				{
					--{name='caged-mukmoux',amount=1},
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
			tech = 'mukmoux',
			name = 'Mukmouxs to Bonemeal',
			icon = "__pyalienlifegraphics__/graphics/icons/bonemeal.png",
			icon_size = 64,
		},
		--meat
		{
			ingredients =
				{
					--{name='caged-mukmoux',amount=1},
				},
			results =
				{
					{name='bonemeal', remove_item = true},
					{name='meat', amount =5},
				},
			crafting_speed = 15,
			tech = 'mukmoux',
			name = 'Extract Mukmoux Meat',
			icon = "__pyalienlifegraphics__/graphics/icons/mip/meat-01.png",
			icon_size = 64,
		},
		--brain
		{
			ingredients =
				{
					--{name='caged-mukmoux',amount=1},
				},
			results =
				{
					{name='meat', remove_item = true},
					{name='brain', amount =1},
				},
			crafting_speed = 15,
			tech = 'mukmoux',
			name = 'Extract Mukmoux brains',
			icon = "__pyalienlifegraphics__/graphics/icons/mip/brain-04.png",
			icon_size = 64,
		},
		--skin
		{
			ingredients =
				{
					--{name='caged-mukmoux',amount=1},
				},
			results =
				{
					{name='brain', remove_item = true},
					{name='skin', amount =4},
				},
			crafting_speed = 15,
			tech = 'mukmoux',
			name = 'Extract Mukmoux skin',
			icon = "__pyalienlifegraphics__/graphics/icons/skin.png",
			icon_size = 32,
		},
		--bones
		{
			ingredients =
				{
					--{name='caged-mukmoux',amount=1},
				},
			results =
				{
					{name='skin', remove_item = true},
					{name='bones', amount =3},
				},
			crafting_speed = 15,
			tech = 'mukmoux',
			name = 'Extract Mukmoux bones',
			icon = "__pyalienlifegraphics__/graphics/icons/mip/bones-01.png",
			icon_size = 64,
		},
		--guts
		{
			ingredients =
				{
					--{name='caged-mukmoux',amount=1},
				},
			results =
				{
					{name='bones', remove_item = true},
					{name='guts', amount =8},
				},
			crafting_speed = 15,
			tech = 'mukmoux',
			name = 'Extract Mukmoux guts',
			icon = "__pyalienlifegraphics__/graphics/icons/mip/guts-01.png",
			icon_size = 64,
		},
		--blood
		{
			ingredients =
				{
					--{name='caged-mukmoux',amount=1},
				},
			results =
				{
					{name='guts', remove_item = true},
					{name='blood', amount =130},
				},
			crafting_speed = 15,
			tech = 'mukmoux',
			name = 'Extract Mukmoux blood',
			icon = "__pyalienlifegraphics__/graphics/icons/blood.png",
			icon_size = 64,
		},
		--fat
		{
			ingredients =
				{
					--{name='caged-mukmoux',amount=1},
				},
			results =
				{
					{name='blood', remove_item = true},
					{name='mukmoux-fat', amount =5},
				},
			crafting_speed = 15,
			tech = 'mukmoux',
			name = 'Extract Mukmoux lard',
			icon = "__pyalienlifegraphics__/graphics/icons/mukmoux-fat.png",
			icon_size = 64,
		},
		--brain mukmoux rendering
		{
			ingredients =
				{
					{name='caged-mukmoux',remove_item = true},
					{name='brain-caged-mukmoux',amount=1},
				},
			results =
				{
					{name='mukmoux-fat', remove_item = true},
					{name='brain', amount =4},
				},
			crafting_speed = 15,
			tech = 'nanochondria',
			name = 'Extract brains from Improved Mukmouxs',
			icon = "__pyalienlifegraphics__/graphics/icons/brain-caged-mukmoux.png",
			icon_size = 64,
		},
		--bone mukmoux rendering
		{
			ingredients =
				{
					{name='brain-caged-mukmoux',remove_item = true},
					{name='bonecaged-mukmoux',amount=1},
				},
			results =
				{
					{name='brain', remove_item = true},
					{name='bones', amount =13},
				},
			crafting_speed = 15,
			tech = 'bmp',
			name = 'Extract bones from Improved Mukmouxs',
			icon = "__pyalienlifegraphics__/graphics/icons/bone-caged-mukmoux.png",
			icon_size = 64,
		},
		--bonemeal mukmouc rendering
		{
			ingredients =
				{

				},
			results =
				{
					{name='bones', remove_item = true},
					{name='bonemeal', amount =16},
				},
			crafting_speed = 15,
			tech = 'bmp',
			name = 'Extract bonemeal from Improved Mukmoux',
			icon = "__pyalienlifegraphics__/graphics/icons/bonemeal-caged-mukmoux.png",
			icon_size = 64,
		},
		--meat mukmoux rendering
		{
			ingredients =
				{
					{name='bonecaged-mukmoux',remove_item = true},
					{name='meat-caged-mukmoux',amount=1},
				},
			results =
				{
					{name='bonemeal', remove_item = true},
					{name='meat', amount =24},
				},
			crafting_speed = 15,
			tech = 'anabolic-rna',
			name = 'Extract meat from Improved Mukmouxs',
			icon = "__pyalienlifegraphics__/graphics/icons/meat-caged-mukmoux.png",
			icon_size = 64,
		},
		--guts mukmoux rendering
		{
			ingredients =
				{
					{name='meat-caged-mukmoux',remove_item = true},
					{name='guts-caged-mukmoux',amount=1},
				},
			results =
				{
					{name='meat', remove_item = true},
					{name='guts', amount =20},
				},
			crafting_speed = 15,
			tech = 'antitumor',
			name = 'Extract guts from Improved Mukmouxs',
			icon = "__pyalienlifegraphics__/graphics/icons/guts-caged-mukmoux.png",
			icon_size = 64,
		},
		--blood mukmoux rendering
		{
			ingredients =
				{
					{name='guts-caged-mukmoux',remove_item = true},
					{name='blood-caged-mukmoux',amount=1},
				},
			results =
				{
					{name='guts', remove_item = true},
					{name='blood', amount =250},
				},
			crafting_speed = 15,
			tech = 'recombinant-ery',
			name = 'Extract blood from Improved Mukmouxs',
			icon = "__pyalienlifegraphics__/graphics/icons/blood-caged-mukmoux.png",
			icon_size = 64,
		},
		--skin mukmoux rendering
		{
			ingredients =
				{
					{name='blood-caged-mukmoux',remove_item = true},
					{name='skin-caged-mukmoux',amount=1},
				},
			results =
				{
					{name='blood', remove_item = true},
					{name='skin', amount =10},
				},
			crafting_speed = 15,
			tech = 'reca',
			name = 'Extract skin from Improved Mukmouxs',
			icon = "__pyalienlifegraphics__/graphics/icons/skin-caged-mukmoux.png",
			icon_size = 64,
		},
		--fat mukmoux rendering
		{
			ingredients =
				{
					{name='skin-caged-mukmoux',remove_item = true},
					{name='fat-caged-mukmoux',amount=1},
				},
			results =
				{
					{name='skin', remove_item = true},
					{name='mukmoux-fat', amount =20},
				},
			crafting_speed = 15,
			tech = 'orexigenic',
			name = 'Extract fat from Improved Mukmouxs',
			icon = "__pyalienlifegraphics__/graphics/icons/fat-caged-mukmoux.png",
			icon_size = 64,
		},
	}
}
