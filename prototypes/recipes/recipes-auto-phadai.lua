local fun = require("prototypes/functions/functions")

fun.autorecipes {
    name = 'caged-phadai',
	category = 'phadai',
	module_limitations = 'phadai',
	subgroup = 'py-alienlife-phadai',
	order = 'b',
    mats =
	{
		{
			ingredients =
				{
					{name='meat',amount =15},
					{name='waterbarrel',amount=4,return_item={name='empty-barrel',amount=4}},
                    {name='cage',amount=1},
                    {name='speaker',amount=1},
                    {name='smalllamp',amount=2},
				},
			results =
				{
					{name='cagedphadai', probability = 0.6,amount_min =1,amount_max =1},
				},
			crafting_speed = 150,
			tech = 'phadai'
		},
		--food 1
		{
			ingredients =
				{
                    {name='meat',amount ='R'},
                    {name='meat',amount =10},
					{name='phadaifood01',amount =1},
				},
			results =
				{
				
				},
			crafting_speed = 140,
			tech = 'phadai'
		},
		--fawogae
		{
			ingredients =
				{
					{name='fawogae',amount = 5},
					{name='bedding',amount = 1},
				},
			results =
				{
				
				},
			crafting_speed = 130,
			tech = 'phadai-mk02'
		},
		--energy drink
		{
			ingredients =
				{
					{name='energydrink',amount = 4},
				},
			results =
				{
				
				},
			crafting_speed = 120,
			tech = 'phadai-mk02'
		},		
		--food 2
		{
			ingredients =
				{
					{name='phadaifood01',amount ='R'},
					{name='fawogae',amount ='R'},
					{name='energydrink',amount ='R'},
					{name='phadaifood02',amount =1},

				},
			results =
				{
				
				},
			crafting_speed = 110,
			tech = 'phadai-mk03'
		},
		--food 2 fawogae
		{
			ingredients =
				{
					{name='fawogae',amount =5},
				},
			results =
				{
				
				},
			crafting_speed = 100,
			tech = 'phadai-mk03'
		},
		--food 2 fawogae energydrink
		{
			ingredients =
				{
					{name='energydrink',amount = 4},
				},
			results =
				{
				
				},
			crafting_speed = 90,
			tech = 'phadai-mk04'
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
					{name='cagedphadai', amount ='R'},
					{name='cagedphadai', probability = 0.7,amount_min =1,amount_max =1},
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
					{name='cagedphadai', amount ='R'},
					{name='braincagedphadai',1},
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
					{name='braincagedphadai', amount ='R'},
					{name='bonecagedphadai', 1},
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
					{name='bonecagedphadai', amount ='R'},
					{name='meatcagedphadai', 1},
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
					{name='meatcagedphadai', amount ='R'},
					{name='gutscagedphadai', 1},
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
					{name='gutscagedphadai', amount ='R'},
					{name='bloodcagedphadai', 1},
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
					{name='bloodcagedphadai', amount ='R'},
					{name='skincagedphadai', 1},
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
    	--orexigenic
		{
			ingredients =
				{
					{name='gh',amount ='R'},
					{name='reca',amount ='R'},
					{name='orexigenic',amount =1},
				},
			results =
				{
					{name='skincagedphadai', amount ='R'},
					{name='fatcagedphadai', 1},
				},
			crafting_speed = 80,
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
			crafting_speed = 30,
			tech = 'orexigenic'
		},
	}
}

------------------pup MAKER------------------

fun.autorecipes {
    name = 'phadai-pup',
	category = 'phadai',
	module_limitations = 'phadai',
	subgroup = 'py-alienlife-phadai',
	order = 'c',
    mats =
	{
		{
			ingredients =
				{
                    {name='meat',amount =15},
                    {name='fawogae',amount =10},
					{name='waterbarrel',amount=5,return_item={name='empty-barrel',amount=5}},
					--{name='cage',amount=1},
                    {name='bedding',amount = 1},
                    {name='speaker',amount=1},
                    {name='smalllamp',amount=2},
				},
			results =
				{
					{name='phadaipup', amount =1},
				},
			crafting_speed = 70,
			tech = 'assisted-embryology'
		},
		--food 1
		{
			ingredients =
				{
                    {name='fawogae',amount ='R'},
                    {name='meat',amount ='R'},
                    {name='meat',amount =10},
					{name='phadaifood01',amount =1},
				},
			results =
				{
				
				},
			crafting_speed = 60,
			tech = 'assisted-embryology'
		},
		--fawogae
		{
			ingredients =
				{
					{name='fawogae',amount = 10},
				},
			results =
				{
				
				},
			crafting_speed = 55,
			tech = 'assisted-embryology'
		},
		--energydrink
		{
			ingredients =
				{
					{name='energydrink',amount = 4},
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
					{name='phadaifood01',amount ='R'},
					{name='fawogae',amount ='R'},
					{name='energydrink',amount ='R'},
					{name='phadaifood02',amount =1},

				},
			results =
				{
				
				},
			crafting_speed = 50,
			tech = 'assisted-embryology'
		},
		--food 2 fawogae
		{
			ingredients =
				{
					{name='fawogae',amount =5},
				},
			results =
				{
				
				},
			crafting_speed = 45,
			tech = 'assisted-embryology'
		},
		--food 2 fawogae energydrink
		{
			ingredients =
				{
					{name='energydrink',amount = 4},
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
					{name='energydrink',amount = 'R'},
					{name='fawogae',amount = 'R'},
					{name='phadaifood02',amount = 'R'},
					--{name='meat',amount =15},
					{name='pheromones',amount =1},
                    {name='fawogae',amount =15},
					--{name='waterbarrel',amount=6,return_item={name='empty-barrel',amount=6}},
					--{name='bedding',amount = 1},
				},
			results =
				{
					{name='phadaipup',amount = 'R'},
					{name='phadaipup', amount =2},
				},
			crafting_speed = 70,
			tech = 'pheromones'
		},
		--food 1
		{
			ingredients =
				{
                    {name='fawogae',amount ='R'},
					{name='phadaifood01',amount =1},
				},
			results =
				{
				
				},
			crafting_speed = 60,
			tech = 'pheromones'
		},
		--fawogae
		{
			ingredients =
				{
					{name='fawogae',amount = 10},
				},
			results =
				{
				
				},
			crafting_speed = 55,
			tech = 'pheromones'
		},
		--energydrink
		{
			ingredients =
				{
					{name='energydrink',amount = 5},
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
					{name='phadaifood01',amount ='R'},
					{name='fawogae',amount ='R'},
					{name='energydrink',amount ='R'},
					{name='phadaifood02',amount =1},

				},
			results =
				{
				
				},
			crafting_speed = 50,
			tech = 'pheromones'
		},
		--food 2 fawogae
		{
			ingredients =
				{
					{name='fawogae',amount ='*5'},
				},
			results =
				{
				
				},
			crafting_speed = 45,
			tech = 'pheromones'
		},
		--food 2 fawogae energydrink
		{
			ingredients =
				{
					{name='energydrink',amount = 5},
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
	--module_limitations = 'phadai',
	subgroup = 'py-alienlife-phadai',
	order = 'b',
    mats =
	{
		{
			ingredients =
				{
					{name='cagedphadai',amount=1},
				},
			results =
				{
					{name='bones', probability = 0.3,amount_min =1,amount_max =3},
					{name='meat', probability = 0.3,amount_min =1,amount_max =1},
                    {name='guts', probability = 0.3,amount_min =1,amount_max =3},
                    {name='fat', probability = 0.1,amount_min =1,amount_max =1},
                    {name='skin', probability = 0.1,amount_min =1,amount_max =1},
					{name='carapace', probability = 0.3,amount_min =1,amount_max =1},
					{name='blood', amount =30},
					{name='cage',amount=1},
					{name='brain', probability = 0.5,amount_min =1,amount_max =1},
				},
			crafting_speed = 30,
			tech = 'phadai',
			name = 'Full Render phadais',
			icon = "__pyalienlife__/graphics/icons/rendering-phadai.png",
			icon_size = 64,
		},
		--meat
		{
			ingredients =
				{
					--{name='cagedphadai',amount=1},
				},
			results =
				{
					{name='bones', amount ='R'},
					{name='skin', amount ='R'},
					{name='fat', amount ='R'},
					{name='meat', amount ='R'},
					{name='guts', amount ='R'},
					{name='pelt', amount ='R'},
					{name='carapace', amount ='R'},
					{name='blood', amount ='R'},
					{name='brain', amount ='R'},
					{name='meat', amount =4},
				},
			crafting_speed = 15,
			tech = 'phadai',
			name = 'Extract phadai Meat',
			icon = "__pyalienlife__/graphics/icons/mip/meat-01.png",
			icon_size = 64,
		},
		--brain
		{
			ingredients =
				{
					--{name='cagedphadai',amount=1},
				},
			results =
				{
					{name='meat', amount ='R'},
					{name='brain', amount =1},
				},
			crafting_speed = 15,
			tech = 'phadai',
			name = 'Extract phadai brains',
			icon = "__pyalienlife__/graphics/icons/mip/brain-04.png",
			icon_size = 64,
		},	
		--bones
		{
			ingredients =
				{
					--{name='cagedphadai',amount=1},
				},
			results =
				{
					{name='brain', amount ='R'},
					{name='bones', amount =2},
				},
			crafting_speed = 15,
			tech = 'phadai',
			name = 'Extract phadai bones',
			icon = "__pyalienlife__/graphics/icons/mip/bones-01.png",
			icon_size = 64,
		},
		--guts
		{
			ingredients =
				{
					--{name='cagedphadai',amount=1},
				},
			results =
				{
					{name='bones', amount ='R'},
					{name='guts', amount =3},
				},
			crafting_speed = 15,
			tech = 'phadai',
			name = 'Extract phadai guts',
			icon = "__pyalienlife__/graphics/icons/mip/guts-01.png",
			icon_size = 64,
		},
		--blood
		{
			ingredients =
				{
					--{name='cagedphadai',amount=1},
				},
			results =
				{
					{name='guts', amount ='R'},
					{name='blood', amount =30},
				},
			crafting_speed = 15,
			tech = 'phadai',
			name = 'Extract phadai blood',
			icon = "__pyalienlife__/graphics/icons/blood.png",
			icon_size = 64,
		},
		--fat
		{
			ingredients =
				{
					--{name='cagedphadai',amount=1},
				},
			results =
				{
					{name='blood', amount ='R'},
					{name='fat', amount =1},
				},
			crafting_speed = 15,
			tech = 'phadai',
			name = 'Extract phadai Fat',
			icon = "__pyalienlife__/graphics/icons/mukmoux-fat.png",
			icon_size = 64,
		},
		--Carapace
		{
			ingredients =
				{
					--{name='cagedphadai',amount=1},
				},
			results =
				{
					{name='fat', amount ='R'},
					{name='carapace', amount ='*2'},
				},
			crafting_speed = 15,
			tech = 'phadai',
			name = 'Extract phadai Carapace',
			icon = "__pyalienlife__/graphics/icons/carapace.png",
			icon_size = 64,
		},
		--brain phadai rendering
		{
			ingredients =
				{
					{name='cagedphadai',amount='R'},
					{name='braincagedphadai',amount=1},
				},
			results =
				{
					{name='carapace', amount ='R'},
					{name='brain', amount =3},
				},
			crafting_speed = 15,
			tech = 'nanochondria',
			name = 'Extract brains from Improved phadais',
			icon = "__pyalienlife__/graphics/icons/brain-caged-phadai.png",
			icon_size = 64,
		},
		--bone phadai rendering
		{
			ingredients =
				{
					{name='braincagedphadai',amount='R'},
					{name='bonecagedphadai',amount=1},
				},
			results =
				{
					{name='brain', amount ='R'},
					{name='bones', amount =4},
				},
			crafting_speed = 15,
			tech = 'bmp',
			name = 'Extract bones from Improved phadais',
			icon = "__pyalienlife__/graphics/icons/bone-caged-phadai.png",
			icon_size = 64,
		},
		--guts phadai rendering
		{
			ingredients =
				{
					{name='bonecagedphadai',amount='R'},
					{name='gutscagedphadai',amount=1},
				},
			results =
				{
					{name='bones', amount ='R'},
					{name='guts', amount =6},
				},
			crafting_speed = 15,
			tech = 'antitumor',
			name = 'Extract guts from Improved phadais',
			icon = "__pyalienlife__/graphics/icons/guts-caged-phadai.png",
			icon_size = 64,
		},
		--blood phadai rendering
		{
			ingredients =
				{
					{name='gutscagedphadai',amount='R'},
					{name='bloodcagedphadai',amount=1},
				},
			results =
				{
					{name='guts', amount ='R'},
					{name='blood', amount =45},
				},
			crafting_speed = 15,
			tech = 'recombinant-ery',
			name = 'Extract blood from Improved phadais',
			icon = "__pyalienlife__/graphics/icons/blood-caged-phadai.png",
			icon_size = 64,
		},
		--meat phadai rendering
		{
			ingredients =
				{
					{name='bloodcagedphadai',amount='R'},
					{name='meatcagedphadai',amount=1},
				},
			results =
				{
					{name='blood', amount ='R'},
					{name='meat', amount =6},
				},
			crafting_speed = 15,
			tech = 'anabolic-rna',
			name = 'Extract meat from Improved phadais',
			icon = "__pyalienlife__/graphics/icons/meat-caged-phadai.png",
			icon_size = 64,
        },
        --skin phadai rendering
		{
			ingredients =
				{
					{name='meatcagedphadai',amount='R'},
					{name='skincagedphadai',amount=1},
				},
			results =
				{
					{name='meat', amount ='R'},
					{name='skin', amount =3},
				},
			crafting_speed = 15,
			tech = 'reca',
			name = 'Extract skin from Improved phadais',
			icon = "__pyalienlife__/graphics/icons/skin-caged-phadai.png",
			icon_size = 64,
        },
        --fat phadai rendering
		{
			ingredients =
				{
					{name='skincagedphadai',amount='R'},
					{name='fatcagedphadai',amount=1},
				},
			results =
				{
					{name='skin', amount ='R'},
					{name='fat', amount =3},
				},
			crafting_speed = 15,
			tech = 'orexigenic',
			name = 'Extract fat from Improved phadais',
			icon = "__pyalienlife__/graphics/icons/fat-caged-phadai.png",
			icon_size = 64,
		},
	}
}