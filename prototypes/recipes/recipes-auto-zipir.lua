local fun = require("prototypes/functions/functions")

fun.autorecipes {
    name = 'zipir-a',
	category = 'zipir',
	module_limitations = 'zipir1',
	subgroup = 'py-alienlife-zipir',
	order = 'b',
    mats =
	{
		{
			ingredients =
				{
                    {name='pressuredwater',amount ='*30'},
                    {name='zipiregg',amount ='1'},
					{name='stonewool',amount ='3'},
                    {name='water',amount ='*20',return_item={name='wastewater',amount='*10'}},
				},
			results =
				{
                    {name='zipir', probability = 0.5,amount_min =1,amount_max =1},
				},
			crafting_speed = 150,
			tech = 'zipir'
        },
--fawogae substrate
		{
			ingredients =
				{
					--{name='woodseeds',amount ='R'},
					{name='fawogaesubstrate',amount =10},
				},
			results =
				{
				
				},
			crafting_speed = 140,
			tech = 'zipir'
		},
		--water saline
		{
			ingredients =
				{
					{name='pressuredwater',amount = 'R'},
					{name='watersaline',amount = '*10'},
				},
			results =
				{
				
				},
			crafting_speed = 130,
			tech = 'zipir-mk02'
		},
		--food 1
		{
			ingredients =
				{
					{name='zipirfood01',amount = 2},
				},
			results =
				{
				
				},
			crafting_speed = 120,
			tech = 'zipir-mk03'
		},		
		--phyto
		{
			ingredients =
				{
                    {name='water',amount = 'R'},
					{name='phytoplankton',amount =50},

				},
			results =
				{
				
				},
			crafting_speed = 110,
			tech = 'zipir-mk03'
        },
        --food 2
		{
			ingredients =
				{
                    {name='zipirfood01',amount = 'R'},
					{name='zipirfood02',amount =2},

				},
			results =
				{
				
				},
			crafting_speed = 90,
			tech = 'zipir-mk04'
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
					{name='zipir', amount ='R'},
					{name='zipir', probability = 0.7,amount_min =1,amount_max =1},
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
					{name='zipir', amount ='R'},
					{name='brainzipir',1},
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
					{name='brainzipir', amount ='R'},
					{name='meatzipir', 1},
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
					{name='meatzipir', amount ='R'},
					{name='gutszipir', 1},
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
					{name='gutszipir', amount ='R'},
					{name='bloodzipir', 1},
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
					{name='bloodzipir', amount ='R'},
					{name='skinzipir', 1},
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
					{name='skinzipir', amount ='R'},
					{name='fatzipir', 1},
				},
			crafting_speed = 90,
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


------------------EGG MAKER------------------

fun.autorecipes {
    name = 'zipir-egg',
	category = 'zipir',
	module_limitations = 'zipir1',
	subgroup = 'py-alienlife-zipir',
	order = 'c',
    mats =
	{
		{
			ingredients =
				{
                    {name='pressuredwater',amount ='*30',return_item={name='wastewater',amount='*10'}},
					{name='stonewool',amount =3},
                    {name='phytoplankton',amount ='*20'},
				},
			results =
				{
                    {name='zipiregg', probability = 0.7,amount_min =1,amount_max =3},
				},
			crafting_speed = 70,
			tech = 'zipir'
		},
		--fawogae
		{
			ingredients =
				{
                    --{name='woodseeds',amount ='R'},
                    --{name='cagedmukmoux',amount ='R'},
					{name='fawogaesubstrate',amount =10},
				},
			results =
				{
				
				},
			crafting_speed = 60,
			tech = 'zipir-mk02'
		},
		--water saline
		{
			ingredients =
				{
                    {name='pressuredwater',amount = 'R'},
					{name='watersaline',amount = '*10'},
				},
			results =
				{
				
				},
			crafting_speed = 55,
			tech = 'zipir-mk03'
		},
		--food1
		{
			ingredients =
				{
					{name='zipirfood01',amount = 4},
				},
			results =
				{
				
				},
			crafting_speed = 50,
			tech = 'zipir-mk03'
		},		
		--food 2
		{
			ingredients =
				{
                    {name='zipirfood01',amount = 'R'},
                    {name='zipirfood02',amount = 4},

				},
			results =
				{
				
				},
			crafting_speed = 40,
			tech = 'zipir-mk04'
		},

		-----------------------PHEROMONES-----------------------------
		{
			ingredients =
				{
                    {name='zipirfood02',amount = 'R'},
                    {name='water',amount = 'R'},
                    {name='phytoplankton',amount = 'R'},
                    {name='stonewool',amount = 'R'},
                    {name='fawogaesubstrate',amount = 'R'},
                    {name='watersaline',amount = 'R'},

                    {name='pressuredwater',amount ='*30',return_item={name='wastewater',amount='*10'}},
					{name='stonewool',amount =3},
                    {name='phytoplankton',amount ='*50'},
					{name='pheromones',amount =1},
				},
			results =
				{
					{name='zipiregg',amount = 'R'},
					{name='zipiregg', amount =2},
				},
			crafting_speed = 70,
			tech = 'pheromones'
		},
		--fawogae
		{
			ingredients =
				{
                    --{name='woodseeds',amount ='R'},
                    --{name='cagedmukmoux',amount ='R'},
					{name='fawogaesubstrate',amount =10},
				},
			results =
				{
				
				},
			crafting_speed = 60,
			tech = 'pheromones'
		},
		--water saline
		{
			ingredients =
				{
                    {name='pressuredwater',amount = 'R'},
					{name='watersaline',amount = '*10'},
				},
			results =
				{
				
				},
			crafting_speed = 55,
			tech = 'pheromones'
		},
		--food1
		{
			ingredients =
				{
					{name='zipirfood01',amount = 4},
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
                    {name='zipirfood01',amount = 'R'},
                    {name='zipirfood02',amount = 4},

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
	--module_limitations = 'zipir',
	subgroup = 'py-alienlife-zipir',
	order = 'b',
    mats =
	{
		{
			ingredients =
				{
					{name='zipir',amount=1},
				},
			results =
				{
					--{name='bones', probability = 0.5,amount_min =1,amount_max =2},
					{name='meat', probability = 0.4,amount_min =1,amount_max =4},
					{name='skin', probability = 0.5,amount_min =1,amount_max =6},
					{name='fat', probability = 0.4,amount_min =1,amount_max =3},
					{name='guts', probability = 0.4,amount_min =1,amount_max =4},
					{name='arthropodblood', amount =50},
					{name='brain', probability = 0.3,amount_min =1,amount_max =1},
				},
			crafting_speed = 30,
			tech = 'zipir',
			name = 'Full Render zipir',
			icon = "__pyalienlife__/graphics/icons/rendering-zipir.png",
			icon_size = 64,
		},
		--meat
		{
			ingredients =
				{

				},
			results =
				{
					--{name='bones', amount ='R'},
                    {name='meat', amount ='R'},
                    {name='meat', amount =4},
					{name='skin', amount ='R'},
					{name='fat', amount ='R'},
					{name='guts', amount ='R'},
					{name='arthropodblood', amount ='R'},
					{name='brain', amount ='R'},
				},
			crafting_speed = 15,
			tech = 'zipir-mk02',
			name = 'Extract zipir Meat',
			icon = "__pyalienlife__/graphics/icons/mip/meat-01.png",
			icon_size = 64,
		},
		--brain
		{
			ingredients =
				{
					--{name='zipir',amount=1},
				},
			results =
				{
					{name='meat', amount ='R'},
					{name='brain', amount =1},
				},
			crafting_speed = 15,
			tech = 'zipir-mk02',
			name = 'Extract zipir brain',
			icon = "__pyalienlife__/graphics/icons/mip/brain-04.png",
			icon_size = 64,
		},
		--skin
		{
			ingredients =
				{
					--{name='zipir',amount=1},
				},
			results =
				{
					{name='brain', amount ='R'},
					{name='skin', amount =6},
				},
			crafting_speed = 15,
			tech = 'zipir-mk02',
			name = 'Extract zipir skin',
			icon = "__pyalienlife__/graphics/icons/skin.png",
			icon_size = 32,
		},
		--guts
		{
			ingredients =
				{
					--{name='zipir',amount=1},
				},
			results =
				{
					{name='skin', amount ='R'},
					{name='guts', amount =4},
				},
			crafting_speed = 15,
			tech = 'zipir-mk02',
			name = 'Extract zipir guts',
			icon = "__pyalienlife__/graphics/icons/mip/guts-01.png",
			icon_size = 64,
		},
		--blood
		{
			ingredients =
				{
					--{name='zipir',amount=1},
				},
			results =
				{
					{name='guts', amount ='R'},
					{name='arthropodblood', amount =65},
				},
			crafting_speed = 15,
			tech = 'zipir-mk02',
			name = 'Extract zipir blood',
			icon = "__pyalienlife__/graphics/icons/arthropod-blood.png",
			icon_size = 32,
		},
		--fat
		{
			ingredients =
				{
					--{name='zipir',amount=1},
				},
			results =
				{
					{name='arthropodblood', amount ='R'},
					{name='fat', amount =3},
				},
			crafting_speed = 15,
			tech = 'zipir-mk02',
			name = 'Extract zipir lard',
			icon = "__pyalienlife__/graphics/icons/mukmoux-fat.png",
			icon_size = 64,
		},
		--brain zipir rendering
		{
			ingredients =
				{
					{name='zipir',amount='R'},
					{name='brainzipir',amount=1},
				},
			results =
				{
					{name='fat', amount ='R'},
					{name='brain', amount =3},
				},
			crafting_speed = 15,
			tech = 'nanochondria',
			name = 'Extract brains from Improved Zipir',
			icon = "__pyalienlife__/graphics/icons/brain-zipir.png",
			icon_size = 64,
		},
		--guts zipir rendering
		{
			ingredients =
				{
					{name='brainzipir',amount='R'},
					{name='gutszipir',amount=1},
				},
			results =
				{
					{name='brain', amount ='R'},
					{name='guts', amount =6},
				},
			crafting_speed = 15,
			tech = 'antitumor',
			name = 'Extract guts from Improved Zipir',
			icon = "__pyalienlife__/graphics/icons/guts-zipir.png",
			icon_size = 64,
		},
		--blood zipir rendering
		{
			ingredients =
				{
					{name='gutszipir',amount='R'},
					{name='bloodzipir',amount=1},
				},
			results =
				{
					{name='guts', amount ='R'},
					{name='arthropodblood', amount =100},
				},
			crafting_speed = 15,
			tech = 'recombinant-ery',
			name = 'Extract Arthropod blood from Improved Zipir',
			icon = "__pyalienlife__/graphics/icons/blood-zipir.png",
			icon_size = 64,
		},
		--skin zipir rendering
		{
			ingredients =
				{
					{name='bloodzipir',amount='R'},
					{name='skinzipir',amount=1},
				},
			results =
				{
					{name='arthropodblood', amount ='R'},
					{name='skin', amount =10},
				},
			crafting_speed = 15,
			tech = 'reca',
			name = 'Extract skin from Improved Zipir',
			icon = "__pyalienlife__/graphics/icons/skin-zipir.png",
			icon_size = 64,
		},
		--fat zipir rendering
		{
			ingredients =
				{
					{name='skinzipir',amount='R'},
					{name='fatzipir',amount=1},
				},
			results =
				{
					{name='skin', amount ='R'},
					{name='fat', amount =5},
				},
			crafting_speed = 15,
			tech = 'orexigenic',
			name = 'Extract fat from Improved Zipir',
			icon = "__pyalienlife__/graphics/icons/fat-zipir.png",
			icon_size = 64,
		},
		--meat zipir rendering
		{
			ingredients =
				{
					{name='fatzipir',amount='R'},
					{name='meatzipir',amount=1},
				},
			results =
				{
					{name='fat', amount ='R'},
					{name='meat', amount =6},
				},
			crafting_speed = 15,
			tech = 'anabolic-rna',
			name = 'Extract meat from Improved Zipir',
			icon = "__pyalienlife__/graphics/icons/meat-zipir.png",
			icon_size = 64,
		},
	}
}