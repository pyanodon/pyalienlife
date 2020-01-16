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
					{name='cagedmukmoux',amount =1},
					{name='xenoegg',amount =1},
					{name='waterbarrel',amount=6,return_item={name='empty-barrel',amount=6}},
				},
			results =
				{
					{name='cagedxeno', probability = 0.5,amount_min =1,amount_max =1},
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
					{name='cagedulric',amount =1},

				},
			results =
				{
				
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
					{name='cagedxeno', amount ='R'},
					{name='cagedxeno', probability = 0.7,amount_min =1,amount_max =1},
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
					{name='cagedxeno', amount ='R'},
					{name='brainxeno',1},
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
					{name='brainxeno', amount ='R'},
					{name='bonexeno', 1},
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
					{name='anabolicrna',amount =1},
				},
			results =
				{
					{name='bonexeno', amount ='R'},
					{name='meatxeno', 1},
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
					{name='anabolicrna',amount ='R'},
					{name='recombinantery',amount =1},
				},
			results =
				{
					{name='meatxeno', amount ='R'},
					{name='bloodxeno', 1},
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
					{name='recombinantery',amount ='R'},
					{name='reca',amount =1},
				},
			results =
				{
					{name='bloodxeno', amount ='R'},
					{name='chitinxeno', 1},
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
                    {name='cagedmukmoux',amount =1},
                    {name='bones',amount ='R'},
                    {name='guts',amount = 'R'},
					{name='waterbarrel',amount=5,return_item={name='empty-barrel',amount=5}},
					{name='fish',amount = 10},
				},
			results =
				{
					{name='xenoegg', amount =2},
				},
			crafting_speed = 100,
			tech = 'assisted-embryology'
		},
		--bones
		{
			ingredients =
				{
					{name='bones',amount =15},
				},
			results =
				{
                    {name='xenoegg', amount ="+1"},
				},
			crafting_speed = 90,
			tech = 'assisted-embryology'
		},
		--fiber
		{
			ingredients =
				{
					{name='guts',amount = 5},
				},
			results =
				{
                    {name='xenoegg', amount ="+1"},
				},
			crafting_speed = 80,
			tech = 'assisted-embryology'
		},		
		--ulric
		{
			ingredients =
				{
                    {name='meat',amount ='R'},
                    {name='guts',amount = 'R'},
					{name='cagedulric',amount =1},

				},
			results =
				{
                    {name='xenoegg', amount ="+1"},
				},
			crafting_speed = 75,
			tech = 'assisted-embryology'
		},
		--ulric salt fiber
		{
			ingredients =
				{
					{name='guts',amount = 5},
				},
			results =
				{
                    {name='xenoegg', amount ="+1"},
				},
			crafting_speed = 65,
			tech = 'assisted-embryology'
		},	
		-----------------------PHEROMONES-----------------------------
		{
			ingredients =
				{
					{name='guts',amount = 'R'},
					{name='cagedulric',amount = 'R'},
					--{name='bones',amount =15},
					{name='pheromones',amount =1},
					--{name='waterbarrel',amount=6,return_item={name='empty-barrel',amount=6}},
					--{name='fish',amount = 1},
				},
			results =
				{
					{name='xenoegg',amount = 'R'},
					{name='xenoegg', amount =6},
				},
			crafting_speed = 70,
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
                    {name='xenoegg', amount ="+1"},
				},
			crafting_speed = 60,
			tech = 'pheromones'
		},
		--guts
		{
			ingredients =
				{
					{name='guts',amount = 5},
				},
			results =
				{
                    {name='xenoegg', amount ="+1"},
				},
			crafting_speed = 50,
			tech = 'pheromones'
		},		
		--ulric
		{
			ingredients =
				{
					{name='meat',amount ='R'},
					{name='guts',amount ='R'},
					{name='cagedulric',amount =1},

				},
			results =
				{
                    {name='xenoegg', amount ="+1"},
				},
			crafting_speed = 50,
			tech = 'pheromones'
		},
		--ulric salt fiber
		{
			ingredients =
				{
					{name='guts',amount = 5},
				},
			results =
				{
                    {name='xenoegg', amount ="+1"},
				},
			crafting_speed = 40,
			tech = 'pheromones'
		},	

	}
}

------------------RENDERING------------------

fun.autorecipes {
    name = 'rendering',
	category = 'slaughterhouse',
	--module_limitations = 'xeno',
	subgroup = 'py-alienlife-xeno',
	order = 'b',
    mats =
	{
		{
			ingredients =
				{
					{name='cagedxeno',amount=1},
				},
			results =
				{
					{name='bones', probability = 0.45,amount_min =1,amount_max =3},
					{name='meat', probability = 0.4,amount_min =1,amount_max =3},
					{name='chitin', probability = 0.4,amount_min =1,amount_max =4},
					--{name='fat', probability = 0.2,amount_min =1,amount_max =1},
					--{name='guts', probability = 0.4,amount_min =1,amount_max =2},
					{name='sulfuricacid', amount =60},
					{name='cage',amount=1},
					{name='brain', probability = 0.5,amount_min =1,amount_max =1},
				},
			crafting_speed = 30,
			tech = 'xeno',
			name = 'Full Render Xenos',
			icon = "__pyalienlife__/graphics/icons/rendering-xeno.png",
			icon_size = 64,
		},
		--meat
		{
			ingredients =
				{
					--{name='cagedxeno',amount=1},
				},
			results =
				{
					{name='bones', amount ='R'},
					{name='chitin', amount ='R'},
					{name='sulfuricacid', amount ='R'},
					{name='brain', amount ='R'},
					{name='meat', amount ='R'},
					{name='meat', amount =4},
				},
			crafting_speed = 15,
			tech = 'xeno',
			name = 'Extract Xeno Meat',
			icon = "__pyalienlife__/graphics/icons/mip/meat-01.png",
			icon_size = 64,
		},
		--brain
		{
			ingredients =
				{
					--{name='cagedxeno',amount=1},
				},
			results =
				{
					{name='meat', amount ='R'},
					{name='brain', amount =1},
				},
			crafting_speed = 15,
			tech = 'xeno',
			name = 'Extract Xeno brains',
			icon = "__pyalienlife__/graphics/icons/mip/brain-04.png",
			icon_size = 64,
		},	
		--skin
		{
			ingredients =
				{
					--{name='cagedxeno',amount=1},
				},
			results =
				{
					{name='brain', amount ='R'},
					{name='chitin', amount =4},
				},
			crafting_speed = 15,
			tech = 'xeno',
			name = 'Extract xeno chitin',
			icon = "__pyalienlife__/graphics/icons/chitin.png",
			icon_size = 64,
		},
		--bones
		{
			ingredients =
				{
					--{name='cagedxeno',amount=1},
				},
			results =
				{
					{name='chitin', amount ='R'},
					{name='bones', amount =3},
				},
			crafting_speed = 15,
			tech = 'xeno',
			name = 'Extract Xeno bones',
			icon = "__pyalienlife__/graphics/icons/mip/bones-01.png",
			icon_size = 64,
		},
		--Sulfuric acid
		{
			ingredients =
				{
					--{name='cagedxeno',amount=1},
				},
			results =
				{
					{name='bones', amount ='R'},
					{name='sulfuricacid', amount =80},
				},
			crafting_speed = 15,
			tech = 'xeno',
			name = 'Extract Xeno blood',
			icon = "__base__/graphics/icons/fluid/sulfuric-acid.png",
			icon_size = 32,
		},
		--brain xeno rendering
		{
			ingredients =
				{
					{name='cagedxeno',amount='R'},
					{name='brainxeno',amount=1},
				},
			results =
				{
					{name='sulfuricacid', amount ='R'},
					{name='brain', amount =3},
				},
			crafting_speed = 15,
			tech = 'nanochondria',
			name = 'Extract brains from Improved Xenos',
			icon = "__pyalienlife__/graphics/icons/brain-xeno.png",
			icon_size = 64,
		},
		--bone xeno rendering
		{
			ingredients =
				{
					{name='brainxeno',amount='R'},
					{name='bonexeno',amount=1},
				},
			results =
				{
					{name='brain', amount ='R'},
					{name='bones', amount =7},
				},
			crafting_speed = 15,
			tech = 'bmp',
			name = 'Extract bones from Improved xenos',
			icon = "__pyalienlife__/graphics/icons/bone-xeno.png",
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
					{name='bonemeal', amount =6},
				},
			crafting_speed = 15,
			tech = 'bmp',
			name = 'Extract bonemeal from Improved Xenos',
			icon = "__pyalienlife__/graphics/icons/bonemeal.png",
			icon_size = 64,
		},
		--sulfuric acid xeno rendering
		{
			ingredients =
				{
					{name='bonexeno',amount='R'},
					{name='bloodxeno',amount=1},
				},
			results =
				{
					{name='bonemeal', amount ='R'},
					{name='sulfuricacid', amount =120},
				},
			crafting_speed = 15,
			tech = 'recombinant-ery',
			name = 'Extract blood from Improved Xenos',
			icon = "__pyalienlife__/graphics/icons/sulfuric-xeno.png",
			icon_size = 64,
		},
		--skin xeno rendering
		{
			ingredients =
				{
					{name='bloodxeno',amount='R'},
					{name='chitinxeno',amount=1},
				},
			results =
				{
					{name='sulfuricacid', amount ='R'},
					{name='chitin', amount =7},
				},
			crafting_speed = 15,
			tech = 'reca',
			name = 'Extract Chitin from Improved xenos',
			icon = "__pyalienlife__/graphics/icons/chitin-xeno.png",
			icon_size = 64,
		},
		--meat xeno rendering
		{
			ingredients =
				{
					{name='chitinxeno',amount='R'},
					{name='meatxeno',amount=1},
				},
			results =
				{
					{name='chitin', amount ='R'},
					{name='meat', amount =8},
				},
			crafting_speed = 15,
			tech = 'anabolic-rna',
			name = 'Extract meat from Improved Xenos',
			icon = "__pyalienlife__/graphics/icons/meat-xeno.png",
			icon_size = 64,
		},
	}
}