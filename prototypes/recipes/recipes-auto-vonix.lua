local fun = require("prototypes/functions/functions")

fun.autorecipes {
    name = 'vonix',
	category = 'vonix',
	module_limitations = 'vonix',
	subgroup = 'py-alienlife-vonix',
	order = 'b',
    mats =
	{
		{
			ingredients =
				{
                    {name='cagedmukmoux',amount =1},
                    {name='vonixegg',amount =1},
					{name='guts',amount =10},
					{name='waterbarrel',amount=15,return_item={name='empty-barrel',amount=15}},
				},
			results =
				{
					{name='vonix', probability = 0.8,amount_min =1,amount_max =1},
				},
			crafting_speed = 150,
			tech = 'vonix'
		},
--yotoi leaves
		{
			ingredients =
				{
					--{name='woodseeds',amount ='R'},
					{name='meat',amount =10},
				},
			results =
				{
				
				},
			crafting_speed = 140,
			tech = 'vonix'
		},
		--bedding
		{
			ingredients =
				{
					{name='bedding',amount = 5},
					{name='cagedauog',amount = 1},
				},
			results =
				{
				
				},
			crafting_speed = 130,
			tech = 'vonix-mk02'
		},
		--fiber
		{
			ingredients =
				{
					{name='arthurianegg',amount = 5},
				},
			results =
				{
				
				},
			crafting_speed = 120,
			tech = 'vonix-mk03'
		},		
		--navens
		{
			ingredients =
				{
					{name='navens',amount =5},

				},
			results =
				{
				
				},
			crafting_speed = 110,
			tech = 'vonix-mk04'
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
					{name='vonix', amount ='R'},
					{name='vonix', amount =1},
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
					{name='vonix', amount ='R'},
					{name='brainvonix',1},
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
					{name='brainvonix', amount ='R'},
					{name='meatvonix', 1},
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
					{name='meatvonix', amount ='R'},
					{name='gutsvonix', 1},
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
					{name='gutsvonix', amount ='R'},
					{name='bloodvonix', 1},
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
					{name='bloodvonix', amount ='R'},
					{name='skinvonix', 1},
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
					{name='skinvonix', amount ='R'},
					{name='fatvonix', 1},
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

------------------CUB MAKER------------------

fun.autorecipes {
    name = 'vonix-cub',
	category = 'vonix',
	module_limitations = 'vonix',
	subgroup = 'py-alienlife-vonix',
	order = 'c',
    mats =
	{
		{
			ingredients =
				{
                    {name='cagedmukmoux',amount =1},
					{name='cagedauog',amount =1},
					{name='meat',amount =5},
					{name='waterbarrel',amount=20,return_item={name='empty-barrel',amount=20}},
				},
			results =
				{
					{name='vonixegg', probability = 0.7,amount_min =1,amount_max =3},
				},
			crafting_speed = 70,
			tech = 'vonix'
		},
		--guts
		{
			ingredients =
				{
                    --{name='woodseeds',amount ='R'},
                    --{name='cagedmukmoux',amount ='R'},
					{name='guts',amount =10},
				},
			results =
				{
				
				},
			crafting_speed = 60,
			tech = 'vonix'
		},
		--bedding
		{
			ingredients =
				{
					{name='bedding',amount = 10},
				},
			results =
				{
				
				},
			crafting_speed = 55,
			tech = 'vonix-mk02'
		},
		--fiber
		{
			ingredients =
				{
					{name='arthurianegg',amount = 5},
				},
			results =
				{
				
				},
			crafting_speed = 50,
			tech = 'vonix-mk03'
		},		
		--navens
		{
			ingredients =
				{
					{name='navens',amount =5},

				},
			results =
				{
				
				},
			crafting_speed = 40,
			tech = 'vonix-mk04'
		},

		-----------------------PHEROMONES-----------------------------
		{
			ingredients =
				{
					{name='arthurianegg',amount = 'R'},
					{name='bedding',amount = 'R'},
					{name='navens',amount = 'R'},
					{name='meat',amount ='R'},
					{name='pheromones',amount =1},
                    --{name='cagedauog',amount =4},
					--{name='waterbarrel',amount=6,return_item={name='empty-barrel',amount=6}},
					--{name='cagedauog',amount = 1},
				},
			results =
				{
					{name='vonixegg',amount = 'R'},
					{name='vonixegg', amount =2},
				},
			crafting_speed = 70,
			tech = 'pheromones'
		},
		--yotoi leaves
		{
			ingredients =
				{
                    --{name='woodseeds',amount ='R'},
                    --{name='cagedmukmoux',amount ='15'},
					{name='meat',amount =10},
				},
			results =
				{
				
				},
			crafting_speed = 60,
			tech = 'pheromones'
		},
		--bedding
		{
			ingredients =
				{
					{name='bedding',amount = 10},
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
					{name='arthurianegg',amount = 5},
				},
			results =
				{
				
				},
			crafting_speed = 50,
			tech = 'pheromones'
		},		
		--navens
		{
			ingredients =
				{
					{name='navens',amount =5},

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
	--module_limitations = 'vonix',
	subgroup = 'py-alienlife-vonix',
	order = 'b',
    mats =
	{
		{
			ingredients =
				{
					{name='vonix',amount=1},
				},
			results =
				{
					--{name='bones', probability = 0.5,amount_min =1,amount_max =2},
					{name='meat', probability = 0.5,amount_min =1,amount_max =6},
					{name='skin', probability = 0.4,amount_min =1,amount_max =4},
					{name='fat', probability = 0.5,amount_min =1,amount_max =5},
					{name='guts', probability = 0.4,amount_min =1,amount_max =6},
					{name='arthropodblood', amount =80},
					{name='venongland', probability = 0.2,amount_min =1,amount_max =1},
					{name='brain', probability = 0.3,amount_min =1,amount_max =1},
				},
			crafting_speed = 30,
			tech = 'vonix',
			name = 'Full Render Vonix',
			icon = "__pyalienlifegraphics__/graphics/icons/rendering-vonix.png",
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
					{name='venongland', amount ='R'},
                    {name='meat', amount =6},
					{name='skin', amount ='R'},
					{name='fat', amount ='R'},
					{name='guts', amount ='R'},
					{name='arthropodblood', amount ='R'},
					{name='brain', amount ='R'},
				},
			crafting_speed = 15,
			tech = 'vonix-mk02',
			name = 'Extract Vonix Meat',
			icon = "__pyalienlifegraphics__/graphics/icons/mip/meat-01.png",
			icon_size = 64,
		},
		--brain
		{
			ingredients =
				{
					--{name='vonix',amount=1},
				},
			results =
				{
					{name='meat', amount ='R'},
					{name='brain', amount =1},
				},
			crafting_speed = 15,
			tech = 'vonix-mk02',
			name = 'Extract Vonix brain',
			icon = "__pyalienlifegraphics__/graphics/icons/mip/brain-04.png",
			icon_size = 64,
		},
		--venon
		{
			ingredients =
				{
					--{name='vonix',amount=1},
				},
			results =
				{
					{name='brain', amount ='R'},
					{name='venongland', amount =1},
				},
			crafting_speed = 15,
			tech = 'vonix-mk02',
			name = 'Extract Vonix´s Venom Gland',
			icon = "__pyalienlifegraphics__/graphics/icons/venon-gland.png",
			icon_size = 64,
		},	
		--skin
		{
			ingredients =
				{
					--{name='vonix',amount=1},
				},
			results =
				{
					{name='venongland', amount ='R'},
					{name='skin', amount =4},
				},
			crafting_speed = 15,
			tech = 'vonix-mk02',
			name = 'Extract Vonix skin',
			icon = "__pyalienlifegraphics__/graphics/icons/skin.png",
			icon_size = 32,
		},
		--guts
		{
			ingredients =
				{
					--{name='vonix',amount=1},
				},
			results =
				{
					{name='skin', amount ='R'},
					{name='guts', amount =6},
				},
			crafting_speed = 15,
			tech = 'vonix-mk02',
			name = 'Extract Vonix guts',
			icon = "__pyalienlifegraphics__/graphics/icons/mip/guts-01.png",
			icon_size = 64,
		},
		--blood
		{
			ingredients =
				{
					--{name='vonix',amount=1},
				},
			results =
				{
					{name='guts', amount ='R'},
					{name='arthropodblood', amount =100},
				},
			crafting_speed = 15,
			tech = 'vonix-mk02',
			name = 'Extract Vonix blood',
			icon = "__pyalienlifegraphics__/graphics/icons/arthropod-blood.png",
			icon_size = 32,
		},
		--fat
		{
			ingredients =
				{
					--{name='vonix',amount=1},
				},
			results =
				{
					{name='arthropodblood', amount ='R'},
					{name='fat', amount =5},
				},
			crafting_speed = 15,
			tech = 'vonix-mk02',
			name = 'Extract Vonix lard',
			icon = "__pyalienlifegraphics__/graphics/icons/mukmoux-fat.png",
			icon_size = 64,
		},
		--brain vonix rendering
		{
			ingredients =
				{
					{name='vonix',amount='R'},
					{name='brainvonix',amount=1},
				},
			results =
				{
					{name='fat', amount ='R'},
					{name='brain', amount =3},
				},
			crafting_speed = 15,
			tech = 'nanochondria',
			name = 'Extract brains from Improved Vonixes',
			icon = "__pyalienlifegraphics__/graphics/icons/brain-vonix.png",
			icon_size = 64,
		},
		--guts vonix rendering
		{
			ingredients =
				{
					{name='brainvonix',amount='R'},
					{name='gutsvonix',amount=1},
				},
			results =
				{
					{name='brain', amount ='R'},
					{name='guts', amount =14},
				},
			crafting_speed = 15,
			tech = 'antitumor',
			name = 'Extract guts from Improved Vonixes',
			icon = "__pyalienlifegraphics__/graphics/icons/guts-vonix.png",
			icon_size = 64,
		},
		--blood vonix rendering
		{
			ingredients =
				{
					{name='gutsvonix',amount='R'},
					{name='bloodvonix',amount=1},
				},
			results =
				{
					{name='guts', amount ='R'},
					{name='arthropodblood', amount =150},
				},
			crafting_speed = 15,
			tech = 'recombinant-ery',
			name = 'Extract Arthropod blood from Improved Vonixes',
			icon = "__pyalienlifegraphics__/graphics/icons/blood-vonix.png",
			icon_size = 64,
		},
		--skin vonix rendering
		{
			ingredients =
				{
					{name='bloodvonix',amount='R'},
					{name='skinvonix',amount=1},
				},
			results =
				{
					{name='arthropodblood', amount ='R'},
					{name='skin', amount =8},
				},
			crafting_speed = 15,
			tech = 'reca',
			name = 'Extract skin from Improved Vonixes',
			icon = "__pyalienlifegraphics__/graphics/icons/skin-vonix.png",
			icon_size = 64,
		},
		--fat vonix rendering
		{
			ingredients =
				{
					{name='skinvonix',amount='R'},
					{name='fatvonix',amount=1},
				},
			results =
				{
					{name='skin', amount ='R'},
					{name='fat', amount =15},
				},
			crafting_speed = 15,
			tech = 'orexigenic',
			name = 'Extract fat from Improved Vonixes',
			icon = "__pyalienlifegraphics__/graphics/icons/fat-vonix.png",
			icon_size = 64,
		},
		--meat vonix rendering
		{
			ingredients =
				{
					{name='fatvonix',amount='R'},
					{name='meatvonix',amount=1},
				},
			results =
				{
					{name='fat', amount ='R'},
					{name='meat', amount =10},
				},
			crafting_speed = 15,
			tech = 'anabolic-rna',
			name = 'Extract meat from Improved Vonixes',
			icon = "__pyalienlifegraphics__/graphics/icons/meat-vonix.png",
			icon_size = 64,
		},
	}
}