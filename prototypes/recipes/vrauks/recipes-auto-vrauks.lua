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
					{name='water-barrel',amount=3,return_item={name='empty-barrel',amount=3}},
					{name='cage',amount=1},
				},
			results =
				{
					{name='caged-vrauks', probability = 0.7,amount_min =1,amount_max =1},
				},
			crafting_speed = 160,
			tech = 'vrauks'
		},
		--food 1
		{
			ingredients =
				{
					{name='biomass',remove_item = true},
					{name='vrauks-food-01',amount =1},
				},
			results =
				{
					{name='caged-vrauks',remove_item = true},
					{name='caged-vrauks', probability = 0.8,amount_min =1,amount_max =1},
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
					{name='vrauks-food-01',remove_item = true},
					{name='saps',remove_item = true},
					{name='fawogae',remove_item = true},
					{name='vrauks-food-02',amount =1},

				},
			results =
				{
					{name='caged-vrauks',remove_item = true},
					{name='caged-vrauks', probability = 0.9,amount_min =1,amount_max =1},
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
					{name='caged-vrauks', remove_item = true},
					{name='caged-vrauks', probability = 1,amount_min =1,amount_max =2},
				},
			crafting_speed = 30,
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
			crafting_speed = 90,
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
					{name='caged-vrauks', remove_item = true},
					{name='brain-caged-vrauks',1},
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
					{name='gh',remove_item = true},
					{name='nanochondria',remove_item = true},
					{name='anabolic-rna',amount =1},
				},
			results =
				{
					{name='brain-caged-vrauks', remove_item = true},
					{name='meat-caged-vrauks', 1},
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
					{name='gh',remove_item = true},
					{name='anabolic-rna',remove_item = true},
					{name='antitumor',amount =1},
				},
			results =
				{
					{name='meat-caged-vrauks', remove_item = true},
					{name='guts-caged-vrauks', 1},
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
					{name='guts-caged-vrauks', remove_item = true},
					{name='skin-caged-vrauks', 1},
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
					{name='water-barrel',amount=4,return_item={name='empty-barrel',amount=4}},
					{name='saps',amount = 3},
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
                    {name='biomass',remove_item = true},
					{name='vrauks-food-01',amount =1},
				},
			results =
				{
					{name = 'cocoon', remove_item = true},
					{name = 'cocoon', amount = 3}
				},
			crafting_speed = 60,
			tech = 'vrauks'
		},
		--bedding
		{
			ingredients =
				{
					{name='bedding',amount = 3},
				},
			results =
				{
					{name = 'cocoon', amount = '+3'}
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
					{name = 'cocoon', amount = '+1'}
				},
			crafting_speed = 50,
			tech = 'assisted-embryology'
		},
		--food 2
		{
			ingredients =
				{
					{name='vrauks-food-01',remove_item = true},
					{name='saps',remove_item = true},
					{name='fawogae',remove_item = true},
					{name='vrauks-food-02',amount =1},

				},
			results =
				{
					{name = 'cocoon', amount = '+2'}
				},
			crafting_speed = 50,
			tech = 'assisted-embryology'
		},
		--food 2 saps
		{
			ingredients =
				{
					{name='saps',amount =5},
				},
			results =
				{
					{name = 'cocoon', amount = '+1'}
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
					{name = 'cocoon', amount = '+1'}
				},
			crafting_speed = 40,
			tech = 'assisted-embryology'
		},
		-----------------------PHEROMONES-----------------------------
		{
			ingredients =
				{
					{name='fawogae',remove_item = true},
					{name='saps',remove_item = true},
					{name='vrauks-food-02',remove_item = true},
					{name='biomass',amount =15},
					{name='pheromones',amount =1},
					--{name='water-barrel',amount=6,return_item={name='empty-barrel',amount=6}},
					--{name='bedding',amount = 1},
				},
			results =
				{
					--{name='cocoon', remove_item = true},
					{name='cocoon', amount = '+3'},
				},
			crafting_speed = 70,
			tech = 'pheromones'
		},
		--food 1
		{
			ingredients =
				{

                    {name='biomass', remove_item = true},
					{name='vrauks-food-01', amount = 1},
				},
			results =
				{
					{name = 'cocoon', amount = '+1'}
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
					{name = 'cocoon', amount = '+1'}
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
					{name = 'cocoon', amount = '+1'}
				},
			crafting_speed = 50,
			tech = 'pheromones'
		},
		--food 2
		{
			ingredients =
				{
					{name='vrauks-food-01',remove_item = true},
					{name='saps',remove_item = true},
					{name='fawogae',remove_item = true},
					{name='vrauks-food-02',amount =1},

				},
			results =
				{
					{name = 'cocoon', amount = '+1'}
				},
			crafting_speed = 50,
			tech = 'pheromones'
		},
		--food 2 saps
		{
			ingredients =
				{
					{name='saps',amount = 6},
				},
			results =
				{
					{name = 'cocoon', amount = '+1'}
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
					{name = 'cocoon', amount = '+1'}
				},
			crafting_speed = 40,
			tech = 'pheromones'
		},
	}
}

------------------RENDERING------------------

fun.autorecipes {
    name = 'rendering',
	category = 'slaughterhouse-vrauks',
	--module_limitations = 'vrauks',
	subgroup = 'py-alienlife-vrauks',
	order = 'b',
    mats =
	{
		{
			ingredients =
				{
					{name='caged-vrauks',amount=1},
				},
			results =
				{
					--{name='bones', probability = 0.3,amount_min =1,amount_max =4},
					{name='meat', probability = 0.4,amount_min =1,amount_max =2},
					{name='chitin', probability = 0.2,amount_min =1,amount_max =1},
					--{name='mukmoux-fat', probability = 0.3,amount_min =1,amount_max =1},
					{name='guts', probability = 0.4,amount_min =1,amount_max =2},
					{name='formic-acid', amount =200},
					{name='cage',amount=1},
					{name='brain', probability = 0.4,amount_min =1,amount_max =1},
				},
			crafting_speed = 30,
			tech = 'rendering',
			name = 'Full Render Vrauks',
			icon = "__pyalienlifegraphics__/graphics/icons/rendering-vrauks.png",
			icon_size = 64,
		},
		--meat
		{
			ingredients =
				{
					--{name='caged-vrauks',amount=1},
				},
			results =
				{
                    --{name='bones', remove_item = true},
					{name='meat', remove_item = true},
					{name='chitin', remove_item = true},
					--{name='mukmoux-fat', remove_item = true},
					{name='guts', remove_item = true},
					{name='formic-acid', remove_item = true},
					{name='brain', remove_item = true},
					{name='meat', amount =2},
				},
			crafting_speed = 15,
			tech = 'advanced-rendering',
			name = 'Extract Vrauks Meat',
			icon = "__pyalienlifegraphics__/graphics/icons/mip/meat-01.png",
			icon_size = 64,
		},
		--brain
		{
			ingredients =
				{
					--{name='caged-vrauks',amount=1},
				},
			results =
				{
					{name='meat', remove_item = true},
					{name='brain', amount =1},
				},
			crafting_speed = 15,
			tech = 'advanced-rendering',
			name = 'Extract Vrauks brains',
			icon = "__pyalienlifegraphics__/graphics/icons/mip/brain-04.png",
			icon_size = 64,
		},
		--skin
		{
			ingredients =
				{
					--{name='caged-vrauks',amount=1},
				},
			results =
				{
					{name='brain', remove_item = true},
					{name='chitin', amount =1},
				},
			crafting_speed = 15,
			tech = 'advanced-rendering',
			name = 'Extract Vrauks chithin',
			icon = "__pyalienlifegraphics__/graphics/icons/chitin.png",
			icon_size = 64,
		},
		--guts
		{
			ingredients =
				{
					--{name='caged-vrauks',amount=1},
				},
			results =
				{
					{name='chitin', remove_item = true},
					{name='guts', amount =2},
				},
			crafting_speed = 15,
			tech = 'advanced-rendering',
			name = 'Extract Vrauks guts',
			icon = "__pyalienlifegraphics__/graphics/icons/mip/guts-01.png",
			icon_size = 64,
		},
		--formic-acid
		{
			ingredients =
				{
					--{name='caged-vrauks',amount=1},
				},
			results =
				{
					{name='guts', remove_item = true},
					{name='formic-acid', amount =400},
				},
			crafting_speed = 15,
			tech = 'advanced-rendering',
			name = 'Extract Vrauks Formic Acid',
			icon = "__pyalienlifegraphics__/graphics/icons/formic-acid.png",
			icon_size = 64,
		},
		--brain vrauks rendering
		{
			ingredients =
				{
					{name='caged-vrauks',remove_item = true},
					{name='brain-caged-vrauks',amount=1},
				},
			results =
				{
					{name='formic-acid', remove_item = true},
					{name='brain', amount =4},
				},
			crafting_speed = 15,
			tech = 'nanochondria',
			name = 'Extract brains from Improved Vrauks',
			icon = "__pyalienlifegraphics__/graphics/icons/brain-caged-vrauks.png",
			icon_size = 64,
		},
		--meat vrauks rendering
		{
			ingredients =
				{
					{name='brain-caged-vrauks',remove_item = true},
					{name='meat-caged-vrauks',amount=1},
				},
			results =
				{
					{name='brain', remove_item = true},
					{name='meat', amount =10},
				},
			crafting_speed = 15,
			tech = 'anabolic-rna',
			name = 'Extract meat from Improved Vrauks',
			icon = "__pyalienlifegraphics__/graphics/icons/meat-caged-vrauks.png",
			icon_size = 64,
		},
		--guts vrauks rendering
		{
			ingredients =
				{
					{name='meat-caged-vrauks',remove_item = true},
					{name='guts-caged-vrauks',amount=1},
				},
			results =
				{
					{name='meat', remove_item = true},
					{name='guts', amount =11},
				},
			crafting_speed = 15,
			tech = 'antitumor',
			name = 'Extract guts from Improved Vrauks',
			icon = "__pyalienlifegraphics__/graphics/icons/guts-caged-vrauks.png",
			icon_size = 64,
		},
		--skin vrauks rendering
		{
			ingredients =
				{
					{name='guts-caged-vrauks',remove_item = true},
					{name='skin-caged-vrauks',amount=1},
				},
			results =
				{
					{name='guts', remove_item = true},
					{name='chitin', amount =15},
				},
			crafting_speed = 15,
			tech = 'reca',
			name = 'Extract skin from Improved Vrauks',
			icon = "__pyalienlifegraphics__/graphics/icons/chitin-caged-vrauks.png",
			icon_size = 64,
		},
	}
}
