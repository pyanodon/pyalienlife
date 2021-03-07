local fun = require("prototypes/functions/functions")

fun.autorecipes {
    name = 'caged-xeno',
	category = 'xeno',
	module_limitations = 'xeno',
	subgroup = 'py-alienlife-xeno',
	order = 'b',
    mats =
	{
		{
			ingredients =
				{
					{name='caged-mukmoux',amount =1},
					{name='xeno-egg',amount =1},
					{name='water-barrel',amount=6,return_item={name='empty-barrel',amount=6}},
				},
			results =
				{
					{name='caged-xeno', probability = 0.8,amount_min =1,amount_max =1},
				},
			crafting_speed = 130,
			tech = 'xeno'
		},
		--bones
		{
			ingredients =
				{
					{name='bones',amount =10},
				},
			results =
				{

				},
			crafting_speed = 120,
			tech = 'xeno'
		},
		--fish
		{
			ingredients =
				{
					{name='fish',amount = 8},
				},
			results =
				{

				},
			crafting_speed = 110,
			tech = 'xeno'
		},
		--guts
		{
			ingredients =
				{
					{name='guts',amount = 5},
				},
			results =
				{

				},
			crafting_speed = 100,
			tech = 'xeno'
		},
		--ulric
		{
			ingredients =
				{
					--{name='meat',amount ='R'},
					{name='fish',amount ='R'},
					{name='guts',amount ='R'},
					{name='xeno-egg',amount ='+1'},
					{name='caged-ulric',amount =1},

				},
			results =
				{
					{name='caged-xeno',amount ='R'},
					{name='caged-xeno', probability = 1.8,amount_min =1,amount_max =1},
				},
			crafting_speed = 90,
			tech = 'xeno'
		},
		--ulric fish
		{
			ingredients =
				{
					{name='fish',amount =8},
				},
			results =
				{

				},
			crafting_speed = 85,
			tech = 'xeno'
		},
		--ulric salt fiber
		{
			ingredients =
				{
					{name='guts',amount = 5},
				},
			results =
				{

				},
			crafting_speed = 80,
			tech = 'xeno'
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
					{name='caged-xeno', amount ='R'},
					{name='caged-xeno', probability = 1.5,amount_min =1,amount_max =2},
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
			crafting_speed = 80,
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
					{name='caged-xeno', amount ='R'},
					{name='brain-xeno',1},
				},
			crafting_speed = 80,
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
					{name='brain-xeno', amount ='R'},
					{name='bone-xeno', 1},
				},
			crafting_speed = 80,
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
					{name='bone-xeno', amount ='R'},
					{name='meat-xeno', 1},
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
		--Recombinant Ery
		{
			ingredients =
				{
					{name='gh',amount ='R'},
					{name='anabolic-rna',amount ='R'},
					{name='recombinant-ery',amount =1},
				},
			results =
				{
					{name='meat-xeno', amount ='R'},
					{name='blood-xeno', 1},
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
					{name='blood-xeno', amount ='R'},
					{name='chitin-xeno', 1},
				},
			crafting_speed = 80,
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

------------------EGG MAKER------------------

fun.autorecipes {
    name = 'xeno-egg',
	category = 'xeno',
	module_limitations = 'xeno',
	subgroup = 'py-alienlife-xeno',
	order = 'c',
    mats =
	{
		{
			ingredients =
				{
                    {name='caged-mukmoux',amount =2},
                    {name='bones',amount ='R'},
                    {name='guts',amount = 'R'},
					{name='water-barrel',amount=15,return_item={name='empty-barrel',amount=15}},
					{name='fish',amount = 25},
				},
			results =
				{
					{name='xeno-egg', amount =3},
				},
			crafting_speed = 200,
			tech = 'assisted-embryology'
		},
		--bones
		{
			ingredients =
				{
					{name='bones',amount =20},
				},
			results =
				{
                    {name='xeno-egg', amount ="+2"},
				},
			crafting_speed = 180,
			tech = 'assisted-embryology'
		},
		--fiber
		{
			ingredients =
				{
					{name='guts',amount = 10},
				},
			results =
				{
                    {name='xeno-egg', amount ="+1"},
				},
			crafting_speed = 170,
			tech = 'assisted-embryology'
		},
		--ulric
		{
			ingredients =
				{
                    {name='meat',amount ='R'},
                    {name='guts',amount = 'R'},
					{name='caged-ulric',amount =2},

				},
			results =
				{
                    {name='xeno-egg', amount ="+4"},
				},
			crafting_speed = 140,
			tech = 'assisted-embryology'
		},
		--ulric salt fiber
		{
			ingredients =
				{
					{name='guts',amount = 10},
				},
			results =
				{
                    {name='xeno-egg', amount ="+1"},
				},
			crafting_speed = 130,
			tech = 'assisted-embryology'
		},
		-----------------------PHEROMONES-----------------------------
		{
			ingredients =
				{
					{name='guts',amount = 'R'},
					{name='caged-ulric',amount = 'R'},
					--{name='bones',amount =15},
					{name='pheromones',amount =1},
					--{name='water-barrel',amount=6,return_item={name='empty-barrel',amount=6}},
					--{name='fish',amount = 1},
				},
			results =
				{
					{name='xeno-egg',amount = 'R'},
					{name='xeno-egg', amount =15},
				},
			crafting_speed =140,
			tech = 'pheromones'
		},
		--meat
		{
			ingredients =
				{
					{name='meat',amount =10},
				},
			results =
				{
                    {name='xeno-egg', amount ="+1"},
				},
			crafting_speed = 115,
			tech = 'pheromones'
		},
		--guts
		{
			ingredients =
				{
					{name='guts',amount = 10},
				},
			results =
				{
                    {name='xeno-egg', amount ="+1"},
				},
			crafting_speed = 110,
			tech = 'pheromones'
		},
		--ulric
		{
			ingredients =
				{
					{name='meat',amount ='R'},
					{name='guts',amount ='R'},
					{name='caged-ulric',amount =2},

				},
			results =
				{
                    {name='xeno-egg', amount ="+3"},
				},
			crafting_speed = 90,
			tech = 'pheromones'
		},
		--ulric salt fiber
		{
			ingredients =
				{
					{name='guts',amount = 10},
				},
			results =
				{
                    {name='xeno-egg', amount ="+1"},
				},
			crafting_speed = 80,
			tech = 'pheromones'
		},

	}
}

------------------RENDERING------------------

fun.autorecipes {
    name = 'rendering',
	category = 'slaughterhouse-xeno',
	--module_limitations = 'xeno',
	subgroup = 'py-alienlife-xeno',
	order = 'b',
    mats =
	{
		{
			ingredients =
				{
					{name='caged-xeno',amount=1},
				},
			results =
				{
					{name='bones', probability = 0.45,amount_min =1,amount_max =3},
					{name='meat', probability = 0.4,amount_min =1,amount_max =3},
					{name='chitin', probability = 0.4,amount_min =1,amount_max =4},
					--{name='mukmoux-fat', probability = 0.2,amount_min =1,amount_max =1},
					--{name='guts', probability = 0.4,amount_min =1,amount_max =2},
					{name='sulfuric-acid', amount =60},
					{name='cage',amount=1},
					{name='brain', probability = 0.5,amount_min =1,amount_max =1},
				},
			crafting_speed = 30,
			tech = 'xeno',
			name = 'Full Render Xenos',
			icon = "__pyalienlifegraphics__/graphics/icons/rendering-xeno.png",
			icon_size = 64,
		},
		--meat
		{
			ingredients =
				{
					--{name='caged-xeno',amount=1},
				},
			results =
				{
					{name='bones', amount ='R'},
					{name='chitin', amount ='R'},
					{name='sulfuric-acid', amount ='R'},
					{name='brain', amount ='R'},
					{name='meat', amount ='R'},
					{name='meat', amount =4},
				},
			crafting_speed = 15,
			tech = 'xeno',
			name = 'Extract Xeno Meat',
			icon = "__pyalienlifegraphics__/graphics/icons/mip/meat-01.png",
			icon_size = 64,
		},
		--brain
		{
			ingredients =
				{
					--{name='caged-xeno',amount=1},
				},
			results =
				{
					{name='meat', amount ='R'},
					{name='brain', amount =1},
				},
			crafting_speed = 15,
			tech = 'xeno',
			name = 'Extract Xeno brains',
			icon = "__pyalienlifegraphics__/graphics/icons/mip/brain-04.png",
			icon_size = 64,
		},
		--skin
		{
			ingredients =
				{
					--{name='caged-xeno',amount=1},
				},
			results =
				{
					{name='brain', amount ='R'},
					{name='chitin', amount =4},
				},
			crafting_speed = 15,
			tech = 'xeno',
			name = 'Extract xeno chitin',
			icon = "__pyalienlifegraphics__/graphics/icons/chitin.png",
			icon_size = 64,
		},
		--bones
		{
			ingredients =
				{
					--{name='caged-xeno',amount=1},
				},
			results =
				{
					{name='chitin', amount ='R'},
					{name='bones', amount =3},
				},
			crafting_speed = 15,
			tech = 'xeno',
			name = 'Extract Xeno bones',
			icon = "__pyalienlifegraphics__/graphics/icons/mip/bones-01.png",
			icon_size = 64,
		},
		--Sulfuric acid
		{
			ingredients =
				{
					--{name='caged-xeno',amount=1},
				},
			results =
				{
					{name='bones', amount ='R'},
					{name='sulfuric-acid', amount =80},
				},
			crafting_speed = 15,
			tech = 'xeno',
			name = 'Extract Xeno blood',
			icon = "__base__/graphics/icons/fluid/sulfuric-acid.png",
			icon_size = 64,
		},
		--brain xeno rendering
		{
			ingredients =
				{
					{name='caged-xeno',amount='R'},
					{name='brain-xeno',amount=1},
				},
			results =
				{
					{name='sulfuric-acid', amount ='R'},
					{name='brain', amount =4},
				},
			crafting_speed = 15,
			tech = 'nanochondria',
			name = 'Extract brains from Improved Xenos',
			icon = "__pyalienlifegraphics__/graphics/icons/brain-xeno.png",
			icon_size = 64,
		},
		--bone xeno rendering
		{
			ingredients =
				{
					{name='brain-xeno',amount='R'},
					{name='bone-xeno',amount=1},
				},
			results =
				{
					{name='brain', amount ='R'},
					{name='bones', amount =11},
				},
			crafting_speed = 15,
			tech = 'bmp',
			name = 'Extract bones from Improved xenos',
			icon = "__pyalienlifegraphics__/graphics/icons/bone-xeno.png",
			icon_size = 64,
		},
		--bonemeal xeno rendering
		{
			ingredients =
				{

				},
			results =
				{
					{name='bones', amount ='R'},
					{name='bonemeal', amount =13},
				},
			crafting_speed = 15,
			tech = 'bmp',
			name = 'Extract bonemeal from Improved Xenos',
			icon = "__pyalienlifegraphics__/graphics/icons/bonemeal.png",
			icon_size = 64,
		},
		--sulfuric acid xeno rendering
		{
			ingredients =
				{
					{name='bone-xeno',amount='R'},
					{name='blood-xeno',amount=1},
				},
			results =
				{
					{name='bonemeal', amount ='R'},
					{name='sulfuric-acid', amount =200},
				},
			crafting_speed = 15,
			tech = 'recombinant-ery',
			name = 'Extract blood from Improved Xenos',
			icon = "__pyalienlifegraphics__/graphics/icons/sulfuric-xeno.png",
			icon_size = 64,
		},
		--skin xeno rendering
		{
			ingredients =
				{
					{name='blood-xeno',amount='R'},
					{name='chitin-xeno',amount=1},
				},
			results =
				{
					{name='sulfuric-acid', amount ='R'},
					{name='chitin', amount =23},
				},
			crafting_speed = 15,
			tech = 'reca',
			name = 'Extract Chitin from Improved xenos',
			icon = "__pyalienlifegraphics__/graphics/icons/chitin-xeno.png",
			icon_size = 64,
		},
		--meat xeno rendering
		{
			ingredients =
				{
					{name='chitin-xeno',amount='R'},
					{name='meat-xeno',amount=1},
				},
			results =
				{
					{name='chitin', amount ='R'},
					{name='meat', amount =10},
				},
			crafting_speed = 15,
			tech = 'anabolic-rna',
			name = 'Extract meat from Improved Xenos',
			icon = "__pyalienlifegraphics__/graphics/icons/meat-xeno.png",
			icon_size = 64,
		},
	}
}
