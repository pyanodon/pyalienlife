local fun = require("prototypes/functions/functions")

fun.autorecipes {
    name = 'vrauks',
	category = 'vrauks',
	module_limitations = 'vrauks',
	subgroup = 'py-alienlife-vrauks',
	order = 'b',
    mats =
	{
		{
			ingredients =
				{
                    {name='biomass',amount =15},
                    {name='moss',amount =5},
					{name='waterbarrel',amount=3,return_item={name='empty-barrel',amount=3}},
					{name='cage',amount=1},
				},
			results =
				{
					{name='cagedvrauks', probability = 0.8,amount_min =1,amount_max =1},
				},
			crafting_speed = 160,
			tech = 'vrauks'
		},
		--food 1
		{
			ingredients =
				{
					{name='biomass',amount ='R'},
					{name='vrauksfood01',amount =1},
				},
			results =
				{
				
				},
			crafting_speed = 150,
			tech = 'food-mk01'
		},
		--saps
		{
			ingredients =
				{
					{name='saps',amount = 5},
					{name='bedding',amount = 1},
				},
			results =
				{
				
				},
			crafting_speed = 140,
			tech = 'vrauks'
		},
		--fiber
		{
			ingredients =
				{
					{name='fawogae',amount = 5},
				},
			results =
				{
				
				},
			crafting_speed = 130,
			tech = 'vrauks'
		},		
		--food 2
		{
			ingredients =
				{
					{name='vrauksfood01',amount ='R'},
					{name='saps',amount ='R'},
					{name='fawogae',amount ='R'},
					{name='vrauksfood02',amount =1},

				},
			results =
				{
				
				},
			crafting_speed = 120,
			tech = 'food-mk02'
		},
		--food 2 saps
		{
			ingredients =
				{
					{name='saps',amount =5},
				},
			results =
				{
				
				},
			crafting_speed = 110,
			tech = 'organic-breeding'
		},
		--food 2 saps fiber
		{
			ingredients =
				{
					{name='fawogae',amount = 5},
				},
			results =
				{
				
				},
			crafting_speed = 100,
			tech = 'organic-breeding'
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
					{name='cagedvrauks', amount ='R'},
					{name='cagedvrauks', amount =1},
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
					{name='cagedvrauks', amount ='R'},
					{name='braincagedvrauks',1},
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
		--rna anabolic
		{
			ingredients =
				{
					{name='gh',amount ='R'},
					{name='nanochondria',amount ='R'},
					{name='anabolicrna',amount =1},
				},
			results =
				{
					{name='braincagedvrauks', amount ='R'},
					{name='meatcagedvrauks', 1},
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
					{name='meatcagedvrauks', amount ='R'},
					{name='gutscagedvrauks', 1},
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
					{name='gutscagedvrauks', amount ='R'},
					{name='bloodcagedvrauks', 1},
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
					{name='bloodcagedvrauks', amount ='R'},
					{name='skincagedvrauks', 1},
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
    name = 'vrauks-coccon',
	category = 'vrauks',
	module_limitations = 'vrauks',
	subgroup = 'py-alienlife-vrauks',
	order = 'c',
    mats =
	{
		{
			ingredients =
				{
                    {name='biomass',amount =15},
                    {name='moss',amount =10},
					{name='waterbarrel',amount=4,return_item={name='empty-barrel',amount=4}},
					{name='bedding',amount = 3},
				},
			results =
				{
					{name='cocoon', probability = 1,amount_min =1,amount_max =2},
				},
			crafting_speed = 70,
			tech = 'vrauks'
		},
		--food 1
		{
			ingredients =
				{
                    {name='biomass',amount ='R'},
					{name='vrauksfood01',amount =1},
				},
			results =
				{
				
				},
			crafting_speed = 60,
			tech = 'vrauks'
		},
		--saps
		{
			ingredients =
				{
					{name='saps',amount = 10},
				},
			results =
				{
				
				},
			crafting_speed = 55,
			tech = 'vrauks'
		},
		--fiber
		{
			ingredients =
				{
					{name='fawogae',amount = 5},
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
					{name='vrauksfood01',amount ='R'},
					{name='saps',amount ='R'},
					{name='fawogae',amount ='R'},
					{name='vrauksfood02',amount =1},

				},
			results =
				{
				
				},
			crafting_speed = 50,
			tech = 'assisted-embryology'
		},
		--food 2 saps
		{
			ingredients =
				{
					{name='saps',amount ='R'},
				},
			results =
				{
				
				},
			crafting_speed = 45,
			tech = 'assisted-embryology'
		},
		--food 2 saps fiber
		{
			ingredients =
				{
					{name='fawogae',amount = 5},
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
					{name='fawogae',amount = 'R'},
					{name='saps',amount = 'R'},
					{name='vrauksfood02',amount = 'R'},
					{name='biomass',amount =15},
					{name='pheromones',amount =1},
					--{name='waterbarrel',amount=6,return_item={name='empty-barrel',amount=6}},
					--{name='bedding',amount = 1},
				},
			results =
				{
					{name='cocoon',amount = 'R'},
					{name='cocoon', amount =1},
				},
			crafting_speed = 70,
			tech = 'pheromones'
		},
		--food 1
		{
			ingredients =
				{

                    {name='biomass',amount ='R'},
					{name='vrauksfood01',amount =1},
				},
			results =
				{
				
				},
			crafting_speed = 60,
			tech = 'pheromones'
		},
		--saps
		{
			ingredients =
				{
					{name='saps',amount = 10},
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
					{name='fawogae',amount = 5},
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
					{name='vrauksfood01',amount ='R'},
					{name='saps',amount ='R'},
					{name='fawogae',amount ='R'},
					{name='vrauksfood02',amount =1},

				},
			results =
				{
				
				},
			crafting_speed = 50,
			tech = 'pheromones'
		},
		--food 2 saps
		{
			ingredients =
				{
					{name='saps',amount ='R'},
				},
			results =
				{
				
				},
			crafting_speed = 45,
			tech = 'pheromones'
		},
		--food 2 saps fiber
		{
			ingredients =
				{
					{name='fawogae',amount = 5},
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
	category = 'slaughterhouse',
	--module_limitations = 'vrauks',
	subgroup = 'py-alienlife-vrauks',
	order = 'b',
    mats =
	{
		{
			ingredients =
				{
					{name='cagedvrauks',amount=1},
				},
			results =
				{
					--{name='bones', probability = 0.3,amount_min =1,amount_max =4},
					{name='meat', probability = 0.4,amount_min =1,amount_max =2},
					{name='chitin', probability = 0.3,amount_min =1,amount_max =1},
					--{name='fat', probability = 0.3,amount_min =1,amount_max =1},
					{name='guts', probability = 0.4,amount_min =1,amount_max =2},
					{name='arthropodblood', amount =20},
					{name='cage',amount=1},
					{name='brain', probability = 0.4,amount_min =1,amount_max =1},
				},
			crafting_speed = 30,
			tech = 'rendering',
			name = 'Full Render Vrauks',
			icon = "__pyalienlife__/graphics/icons/rendering-vrauks.png",
			icon_size = 64,
		},
		--meat
		{
			ingredients =
				{
					--{name='cagedvrauks',amount=1},
				},
			results =
				{
                    --{name='bones', amount ='R'},
					{name='meat', amount ='R'},
					{name='chitin', amount ='R'},
					--{name='fat', amount ='R'},
					{name='guts', amount ='R'},
					{name='arthropodblood', amount ='R'},
					{name='brain', amount ='R'},
					{name='meat', amount =2},
				},
			crafting_speed = 15,
			tech = 'advanced-rendering',
			name = 'Extract Vrauks Meat',
			icon = "__pyalienlife__/graphics/icons/mip/meat-01.png",
			icon_size = 64,
		},
		--brain
		{
			ingredients =
				{
					--{name='cagedvrauks',amount=1},
				},
			results =
				{
					{name='meat', amount ='R'},
					{name='brain', amount =1},
				},
			crafting_speed = 15,
			tech = 'advanced-rendering',
			name = 'Extract Vrauks brains',
			icon = "__pyalienlife__/graphics/icons/mip/brain-04.png",
			icon_size = 64,
		},	
		--skin
		{
			ingredients =
				{
					--{name='cagedvrauks',amount=1},
				},
			results =
				{
					{name='brain', amount ='R'},
					{name='chitin', amount =1},
				},
			crafting_speed = 15,
			tech = 'advanced-rendering',
			name = 'Extract Vrauks chithin',
			icon = "__pyalienlife__/graphics/icons/chitin.png",
			icon_size = 64,
		},
		--guts
		{
			ingredients =
				{
					--{name='cagedvrauks',amount=1},
				},
			results =
				{
					{name='chitin', amount ='R'},
					{name='guts', amount =2},
				},
			crafting_speed = 15,
			tech = 'advanced-rendering',
			name = 'Extract Vrauks guts',
			icon = "__pyalienlife__/graphics/icons/mip/guts-01.png",
			icon_size = 64,
		},
		--blood
		{
			ingredients =
				{
					--{name='cagedvrauks',amount=1},
				},
			results =
				{
					{name='guts', amount ='R'},
					{name='arthropodblood', amount =35},
				},
			crafting_speed = 15,
			tech = 'advanced-rendering',
			name = 'Extract Vrauks blood',
			icon = "__pyalienlife__/graphics/icons/arthropod-blood.png",
			icon_size = 32,
		},
		--brain vrauks rendering
		{
			ingredients =
				{
					{name='cagedvrauks',amount='R'},
					{name='braincagedvrauks',amount=1},
				},
			results =
				{
					{name='arthropodblood', amount ='R'},
					{name='brain', amount =3},
				},
			crafting_speed = 15,
			tech = 'nanochondria',
			name = 'Extract brains from Improved Vrauks',
			icon = "__pyalienlife__/graphics/icons/brain-caged-vrauks.png",
			icon_size = 64,
		},
		--meat vrauks rendering
		{
			ingredients =
				{
					{name='braincagedvrauks',amount='R'},
					{name='meatcagedvrauks',amount=1},
				},
			results =
				{
					{name='bonemeal', amount ='R'},
					{name='meat', amount =6},
				},
			crafting_speed = 15,
			tech = 'anabolic-rna',
			name = 'Extract meat from Improved Vrauks',
			icon = "__pyalienlife__/graphics/icons/meat-caged-vrauks.png",
			icon_size = 64,
		},
		--guts vrauks rendering
		{
			ingredients =
				{
					{name='meatcagedvrauks',amount='R'},
					{name='gutscagedvrauks',amount=1},
				},
			results =
				{
					{name='bonemeal', amount ='R'},
					{name='guts', amount =7},
				},
			crafting_speed = 15,
			tech = 'antitumor',
			name = 'Extract guts from Improved Vrauks',
			icon = "__pyalienlife__/graphics/icons/guts-caged-vrauks.png",
			icon_size = 64,
		},
		--blood vrauks rendering
		{
			ingredients =
				{
					{name='gutscagedvrauks',amount='R'},
					{name='bloodcagedvrauks',amount=1},
				},
			results =
				{
					{name='guts', amount ='R'},
					{name='arthropodblood', amount =100},
				},
			crafting_speed = 15,
			tech = 'recombinant-ery',
			name = 'Extract blood from Improved Vrauks',
			icon = "__pyalienlife__/graphics/icons/blood-caged-vrauks.png",
			icon_size = 64,
		},
		--skin vrauks rendering
		{
			ingredients =
				{
					{name='bloodcagedvrauks',amount='R'},
					{name='skincagedvrauks',amount=1},
				},
			results =
				{
					{name='arthropodblood', amount ='R'},
					{name='chitin', amount =6},
				},
			crafting_speed = 15,
			tech = 'reca',
			name = 'Extract skin from Improved Vrauks',
			icon = "__pyalienlife__/graphics/icons/chitin-caged-vrauks.png",
			icon_size = 64,
		},
	}
}