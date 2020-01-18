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
					{name='cagedscondrix',amount =1},
					{name='waterbarrel',amount=5,return_item={name='empty-barrel',amount=5}},
					{name='cage',amount=1},
				},
			results =
				{
					{name='cageddingrits', probability = 0.8,amount_min =1,amount_max =1},
				},
			crafting_speed = 150,
			tech = 'dingrits'
		},
		--food 1
		{
			ingredients =
				{
					{name='cagedscondrix',amount ='R'},
					{name='dingritsfood01',amount =1},
				},
			results =
				{
				
				},
			crafting_speed = 140,
			tech = 'food-mk02'
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
			tech = 'dingrits'
		},
		--yotoileaves
		{
			ingredients =
				{
					{name='yotoileaves',amount = 10},
				},
			results =
				{
				
				},
			crafting_speed = 120,
			tech = 'dingrits'
		},		
		--food 2
		{
			ingredients =
				{
					{name='dingritsfood01',amount ='R'},
					{name='yaedols',amount ='R'},
					{name='yotoileaves',amount ='R'},
					{name='dingritsfood02',amount =1},

				},
			results =
				{
				
				},
			crafting_speed = 110,
			tech = 'dingrits'
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
			tech = 'dingrits'
		},
		--food 2 yaedols yotoileaves
		{
			ingredients =
				{
					{name='yotoileaves',amount = 10},
				},
			results =
				{
				
				},
			crafting_speed = 90,
			tech = 'dingrits'
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
					{name='cageddingrits', amount ='R'},
					{name='cageddingrits', amount =1},
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
					{name='cageddingrits', amount ='R'},
					{name='braincageddingrits',1},
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
					{name='braincageddingrits', amount ='R'},
					{name='bonecageddingrits', 1},
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
					{name='bonecageddingrits', amount ='R'},
					{name='meatcageddingrits', 1},
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
					{name='meatcageddingrits', amount ='R'},
					{name='gutscageddingrits', 1},
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
					{name='gutscageddingrits', amount ='R'},
					{name='bloodcageddingrits', 1},
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
                    {name='cagedscondrix',amount =1},
                    {name='yotoiseeds',amount =15},
					{name='waterbarrel',amount=5,return_item={name='empty-barrel',amount=5}},
					--{name='cage',amount=1},
					{name='bedding',amount = 1},
				},
			results =
				{
					{name='dingritscub', amount =1},
				},
			crafting_speed = 70,
			tech = 'assisted-embryology'
		},
		--food 1
		{
			ingredients =
				{
                    {name='yotoiseeds',amount ='R'},
                    {name='cagedscondrix',amount ='R'},
					{name='dingritsfood01',amount =1},
				},
			results =
				{
				
				},
			crafting_speed = 60,
			tech = 'assisted-embryology'
		},
		--yaedols
		{
			ingredients =
				{
					{name='yaedols',amount = 5},
				},
			results =
				{
				
				},
			crafting_speed = 55,
			tech = 'assisted-embryology'
		},
		--yotoileaves
		{
			ingredients =
				{
					{name='yotoileaves',amount = 10},
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
					{name='dingritsfood01',amount ='R'},
					{name='yaedols',amount ='R'},
					{name='yotoileaves',amount ='R'},
					{name='dingritsfood02',amount =1},

				},
			results =
				{
				
				},
			crafting_speed = 50,
			tech = 'assisted-embryology'
		},
		--food 2 yaedols
		{
			ingredients =
				{
					{name='yaedols',amount =5},
				},
			results =
				{
				
				},
			crafting_speed = 45,
			tech = 'assisted-embryology'
		},
		--food 2 yaedols yotoileaves
		{
			ingredients =
				{
					{name='yotoileaves',amount = 10},
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
					{name='yotoileaves',amount = 'R'},
					{name='yaedols',amount = 'R'},
					{name='dingritsfood02',amount = 'R'},
					{name='cagedscondrix',amount =1},
					{name='pheromones',amount =1},
                    {name='yotoiseeds',amount =15},
					--{name='waterbarrel',amount=6,return_item={name='empty-barrel',amount=6}},
					--{name='bedding',amount = 1},
				},
			results =
				{
					{name='dingritscub',amount = 'R'},
					{name='dingritscub', amount =2},
				},
			crafting_speed = 70,
			tech = 'pheromones'
		},
		--food 1
		{
			ingredients =
				{
                    {name='yotoiseeds',amount ='R'},
                    {name='cagedscondrix',amount ='R'},
					{name='dingritsfood01',amount =1},
				},
			results =
				{
				
				},
			crafting_speed = 60,
			tech = 'pheromones'
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
			crafting_speed = 55,
			tech = 'pheromones'
		},
		--yotoileaves
		{
			ingredients =
				{
					{name='yotoileaves',amount = 5},
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
					{name='dingritsfood01',amount ='R'},
					{name='yaedols',amount ='R'},
					{name='yotoileaves',amount ='R'},
					{name='dingritsfood02',amount =1},

				},
			results =
				{
				
				},
			crafting_speed = 50,
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
			crafting_speed = 45,
			tech = 'pheromones'
		},
		--food 2 yaedols yotoileaves
		{
			ingredients =
				{
					{name='yotoileaves',amount = 5},
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
	--module_limitations = 'dingrits',
	subgroup = 'py-alienlife-dingrits',
	order = 'b',
    mats =
	{
		{
			ingredients =
				{
					{name='cageddingrits',amount=1},
				},
			results =
				{
					{name='bones', probability = 0.3,amount_min =1,amount_max =2},
					{name='meat', probability = 0.3,amount_min =1,amount_max =3},
                    {name='guts', probability = 0.3,amount_min =1,amount_max =3},
					{name='pelt', probability = 0.1,amount_min =1,amount_max =1},
					{name='dingritspike', probability = 0.1,amount_min =1,amount_max =1},
					{name='blood', amount =20},
					{name='cage',amount=1},
					{name='brain', probability = 0.3,amount_min =1,amount_max =1},
				},
			crafting_speed = 30,
			tech = 'dingrits',
			name = 'Full Render dingrits',
			icon = "__pyalienlife__/graphics/icons/rendering-dingrits.png",
			icon_size = 64,
		},
		--meat
		{
			ingredients =
				{
					--{name='cageddingrits',amount=1},
				},
			results =
				{
					{name='bones', amount ='R'},
					{name='meat', amount ='R'},
					{name='guts', amount ='R'},
					{name='pelt', amount ='R'},
					{name='dingritspike', amount ='R'},
					{name='blood', amount ='R'},
					{name='brain', amount ='R'},
					{name='meat', amount =4},
				},
			crafting_speed = 15,
			tech = 'dingrits',
			name = 'Extract dingrits Meat',
			icon = "__pyalienlife__/graphics/icons/mip/meat-01.png",
			icon_size = 64,
		},
		--brain
		{
			ingredients =
				{
					--{name='cageddingrits',amount=1},
				},
			results =
				{
					{name='meat', amount ='R'},
					{name='brain', amount =1},
				},
			crafting_speed = 15,
			tech = 'dingrits',
			name = 'Extract dingrits brains',
			icon = "__pyalienlife__/graphics/icons/mip/brain-04.png",
			icon_size = 64,
		},	
		--bones
		{
			ingredients =
				{
					--{name='cageddingrits',amount=1},
				},
			results =
				{
					{name='brain', amount ='R'},
					{name='bones', amount =2},
				},
			crafting_speed = 15,
			tech = 'dingrits',
			name = 'Extract dingrits bones',
			icon = "__pyalienlife__/graphics/icons/mip/bones-01.png",
			icon_size = 64,
		},
		--guts
		{
			ingredients =
				{
					--{name='cageddingrits',amount=1},
				},
			results =
				{
					{name='bones', amount ='R'},
					{name='guts', amount =4},
				},
			crafting_speed = 15,
			tech = 'dingrits',
			name = 'Extract dingrits guts',
			icon = "__pyalienlife__/graphics/icons/mip/guts-01.png",
			icon_size = 64,
		},
		--blood
		{
			ingredients =
				{
					--{name='cageddingrits',amount=1},
				},
			results =
				{
					{name='guts', amount ='R'},
					{name='blood', amount =30},
				},
			crafting_speed = 15,
			tech = 'dingrits',
			name = 'Extract dingrits blood',
			icon = "__pyalienlife__/graphics/icons/blood.png",
			icon_size = 64,
		},
		--Pelt
		{
			ingredients =
				{
					--{name='cageddingrits',amount=1},
				},
			results =
				{
					{name='blood', amount ='R'},
					{name='pelt', amount =1},
				},
			crafting_speed = 15,
			tech = 'dingrits',
			name = 'Extract dingrits Pelt',
			icon = "__pyalienlife__/graphics/icons/pelt.png",
			icon_size = 64,
		},
		--Dingrit Spike
		{
			ingredients =
				{
					--{name='cageddingrits',amount=1},
				},
			results =
				{
					{name='pelt', amount ='R'},
					{name='dingritspike', amount ='*1'},
				},
			crafting_speed = 15,
			tech = 'dingrits',
			name = 'Extract dingrits Spikes',
			icon = "__pyalienlife__/graphics/icons/dingrit-spike.png",
			icon_size = 64,
		},
		--brain dingrits rendering
		{
			ingredients =
				{
					{name='cageddingrits',amount='R'},
					{name='braincageddingrits',amount=1},
				},
			results =
				{
					{name='dingritspike', amount ='R'},
					{name='brain', amount =3},
				},
			crafting_speed = 15,
			tech = 'nanochondria',
			name = 'Extract brains from Improved dingrits',
			icon = "__pyalienlife__/graphics/icons/brain-caged-dingrits.png",
			icon_size = 64,
		},
		--bone dingrits rendering
		{
			ingredients =
				{
					{name='braincageddingrits',amount='R'},
					{name='bonecageddingrits',amount=1},
				},
			results =
				{
					{name='brain', amount ='R'},
					{name='bones', amount =5},
				},
			crafting_speed = 15,
			tech = 'bmp',
			name = 'Extract bones from Improved dingrits',
			icon = "__pyalienlife__/graphics/icons/bone-caged-dingrits.png",
			icon_size = 64,
		},
		--guts dingrits rendering
		{
			ingredients =
				{
					{name='bonecageddingrits',amount='R'},
					{name='gutscageddingrits',amount=1},
				},
			results =
				{
					{name='bones', amount ='R'},
					{name='guts', amount =7},
				},
			crafting_speed = 15,
			tech = 'antitumor',
			name = 'Extract guts from Improved dingrits',
			icon = "__pyalienlife__/graphics/icons/guts-caged-dingrits.png",
			icon_size = 64,
		},
		--blood dingrits rendering
		{
			ingredients =
				{
					{name='gutscageddingrits',amount='R'},
					{name='bloodcageddingrits',amount=1},
				},
			results =
				{
					{name='guts', amount ='R'},
					{name='blood', amount =60},
				},
			crafting_speed = 15,
			tech = 'recombinant-ery',
			name = 'Extract blood from Improved dingrits',
			icon = "__pyalienlife__/graphics/icons/blood-caged-dingrits.png",
			icon_size = 64,
		},
		--meat dingrits rendering
		{
			ingredients =
				{
					{name='bloodcageddingrits',amount='R'},
					{name='meatcageddingrits',amount=1},
				},
			results =
				{
					{name='blood', amount ='R'},
					{name='meat', amount =5},
				},
			crafting_speed = 15,
			tech = 'anabolic-rna',
			name = 'Extract meat from Improved dingrits',
			icon = "__pyalienlife__/graphics/icons/meat-caged-dingrits.png",
			icon_size = 64,
		},
	}
}