local fun = require("prototypes/functions/functions")

fun.autorecipes {
    name = 'trits',
	category = 'trits',
	module_limitations = 'trits',
	subgroup = 'py-alienlife-trits',
	order = 'b',
    mats =
	{
		{
			ingredients =
				{
                    {name='seaweed',amount =15},
                    {name='woodseeds',amount =15},
					{name='watersaline',amount ='*3000',return_item={name='waste-water',amount=500}},
				},
			results =
				{
					{name='trits', probability = 0.7,amount_min =1,amount_max =1},
				},
			crafting_speed = 150,
			tech = 'trits'
		},
		--filtration
		{
			ingredients =
				{
                    --{name='woodseeds',amount ='R'},
                    --{name='seaweed',amount ='R'},
					{name='filtrationmedia',amount =1},
				},
			results =
				{
				
				},
			crafting_speed = 140,
			tech = 'trits'
		},
		--sodiumalginate
		{
			ingredients =
				{
					{name='sodiumalginate',amount = 10},
				},
			results =
				{
				
				},
			crafting_speed = 130,
			tech = 'trits-mk02'
		},
		--sponge
		{
			ingredients =
				{
					{name='sponge',amount = 2},
				},
			results =
				{
					{name='trits',amount ='R'},
					{name='trits', probability = 0.8,amount_min =1,amount_max =1},
				},
			crafting_speed = 120,
			tech = 'trits-mk02'
		},		
		--fish egg
		{
			ingredients =
				{
					{name='sodiumalginate',amount ='R'},
					{name='sponge',amount ='R'},
					{name='fishegg',amount =15},

				},
			results =
				{
				
				},
			crafting_speed = 110,
			tech = 'trits-mk03'
		},
		--food 2 sodiumalginate
		{
			ingredients =
				{
					{name='sodiumalginate',amount =10},
				},
			results =
				{
					{name='trits',amount ='R'},
					{name='trits', probability = 0.9,amount_min =1,amount_max =1},
				},
			crafting_speed = 100,
			tech = 'trits-mk04'
		},
		--food 2 sodiumalginate fiber
		{
			ingredients =
				{
					{name='sponge',amount = 5},
				},
			results =
				{
				
				},
			crafting_speed = 90,
			tech = 'trits-mk04'
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
					{name='trits', amount ='R'},
					{name='trits', probability = 1,amount_min =1,amount_max =2},
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
					{name='trits', amount ='R'},
					{name='braintrits',1},
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
					{name='braintrits', amount ='R'},
					{name='bonetrits', 1},
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
					{name='bonetrits', amount ='R'},
					{name='meattrits', 1},
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
					{name='meattrits', amount ='R'},
					{name='gutstrits', 1},
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
					{name='gutstrits', amount ='R'},
					{name='bloodtrits', 1},
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
					{name='bloodtrits', amount ='R'},
					{name='skintrits', 1},
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
					{name='skintrits', amount ='R'},
					{name='fattrits', 1},
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

------------------pup MAKER------------------

fun.autorecipes {
    name = 'trits-cub',
	category = 'trits',
	module_limitations = 'trits',
	subgroup = 'py-alienlife-trits',
	order = 'c',
    mats =
	{
		{
			ingredients =
				{
                    {name='seaweed',amount =15},
                    {name='woodseeds',amount =15},
					{name='watersaline',amount ='*300',return_item={name='waste-water',amount= 300}},
					--{name='cage',amount=1},
					{name='sponge',amount = 2},
				},
			results =
				{
					{name='tritscub', amount =1},
				},
			crafting_speed = 80,
			tech = 'assisted-embryology'
		},
		--food 1
		{
			ingredients =
				{
                    --{name='woodseeds',amount ='R'},
                    --{name='seaweed',amount ='R'},
					{name='filtrationmedia',amount =2},
				},
			results =
				{
				
				},
			crafting_speed = 70,
			tech = 'assisted-embryology'
		},
		--sodiumalginate
		{
			ingredients =
				{
					{name='sodiumalginate',amount = 10},
				},
			results =
				{
				
				},
			crafting_speed = 65,
			tech = 'assisted-embryology'
		},
		--albumin
		{
			ingredients =
				{
					{name='albumin',amount = 5},
				},
			results =
				{
				
				},
			crafting_speed = 60,
			tech = 'assisted-embryology'
		},		
		--food 2
		{
			ingredients =
				{
					--{name='filtrationmedia',amount ='R'},
					--{name='sodiumalginate',amount ='R'},
					--{name='albumin',amount ='R'},
					{name='fishegg',amount =1},

				},
			results =
				{
				
				},
			crafting_speed = 65,
			tech = 'assisted-embryology'
		},
		--food 2 sodiumalginate
		{
			ingredients =
				{
					{name='guts',amount ='*10'},
				},
			results =
				{
				
				},
			crafting_speed = 60,
			tech = 'trits'
		},
		--food 2 sodiumalginate fiber
		{
			ingredients =
				{
					{name='bhoddos',amount = 5},
				},
			results =
				{
				
				},
			crafting_speed = 55,
			tech = 'assisted-embryology'
		},	
		-----------------------PHEROMONES-----------------------------
		{
			ingredients =
				{
                    {name='sponge',amount = 'R'},
                    {name='bhoddos',amount = 'R'},
                    {name='albumin',amount = 'R'},
                    {name='guts',amount = 'R'},
                    {name='sodiumalginate',amount = 'R'},
                    {name='filtrationmedia',amount = 'R'},
					{name='fishegg',amount = 'R'},
					--{name='seaweed',amount =15},
					{name='pheromones',amount =1},
                    --{name='woodseeds',amount =15},
					--{name='waterbarrel',amount=6,return_item={name='empty-barrel',amount=6}},
					--{name='sponge',amount = 1},
				},
			results =
				{
					{name='tritscub',amount = 'R'},
					{name='tritscub', amount =1},
				},
			crafting_speed = 70,
			tech = 'pheromones'
		},
		--food 1
		{
			ingredients =
				{
                    --{name='woodseeds',amount ='R'},
                    --{name='seaweed',amount ='R'},
					{name='filtrationmedia',amount =2},
				},
			results =
				{
				
				},
			crafting_speed = 60,
			tech = 'pheromones'
		},
		--sodiumalginate
		{
			ingredients =
				{
					{name='sodiumalginate',amount = 10},
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
					{name='sponge',amount = 5},
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
					--{name='filtrationmedia',amount ='R'},
					--{name='sodiumalginate',amount ='R'},
					--{name='sponge',amount ='R'},
					{name='fishegg',amount =1},

				},
			results =
				{
				
				},
			crafting_speed = 50,
			tech = 'pheromones'
		},
		--food 2 sodiumalginate
		{
			ingredients =
				{
					{name='guts',amount ='*10'},
				},
			results =
				{
				
				},
			crafting_speed = 45,
			tech = 'pheromones'
		},
		--food 2 sodiumalginate fiber
		{
			ingredients =
				{
					{name='bhoddos',amount = 5},
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
	category = 'slaughterhouse-trits',
	--module_limitations = 'trits',
	subgroup = 'py-alienlife-trits',
	order = 'b',
    mats =
	{
		{
			ingredients =
				{
					{name='trits',amount=1},
				},
			results =
				{
					{name='bones', probability = 0.3,amount_min =1,amount_max =4},
					{name='meat', probability = 0.4,amount_min =1,amount_max =4},
					{name='skin', probability = 0.4,amount_min =1,amount_max =3},
					{name='fat', probability = 0.4,amount_min =2,amount_max =5},
					{name='guts', probability = 0.4,amount_min =1,amount_max =4},
					{name='blood', amount =60},
					--{name='cage',amount=1},
					{name='brain', probability = 0.4,amount_min =1,amount_max =1},
				},
			crafting_speed = 30,
			tech = 'trits',
			name = 'Full Render Trits',
			icon = "__pyalienlifegraphics__/graphics/icons/rendering-trits.png",
			icon_size = 64,
		},
		--meat
		{
			ingredients =
				{
					--{name='trits',amount=1},
				},
			results =
				{
                    {name='bones', amount ='R'},
					{name='meat', amount ='R'},
					{name='skin', amount ='R'},
					{name='fat', amount ='R'},
					{name='guts', amount ='R'},
					{name='blood', amount ='R'},
					{name='brain', amount ='R'},
					{name='meat', amount =6},
				},
			crafting_speed = 15,
			tech = 'trits',
			name = 'Extract Trits Meat',
			icon = "__pyalienlifegraphics__/graphics/icons/mip/meat-01.png",
			icon_size = 64,
		},
		--brain
		{
			ingredients =
				{
					--{name='trits',amount=1},
				},
			results =
				{
					{name='meat', amount ='R'},
					{name='brain', amount =1},
				},
			crafting_speed = 15,
			tech = 'trits',
			name = 'Extract Trits brains',
			icon = "__pyalienlifegraphics__/graphics/icons/mip/brain-04.png",
			icon_size = 64,
		},	
		--skin
		{
			ingredients =
				{
					--{name='trits',amount=1},
				},
			results =
				{
					{name='brain', amount ='R'},
					{name='skin', amount =3},
				},
			crafting_speed = 15,
			tech = 'trits',
			name = 'Extract Trits skin',
			icon = "__pyalienlifegraphics__/graphics/icons/skin.png",
			icon_size = 32,
		},
		--bones
		{
			ingredients =
				{
					--{name='trits',amount=1},
				},
			results =
				{
					{name='skin', amount ='R'},
					{name='bones', amount =4},
				},
			crafting_speed = 15,
			tech = 'trits',
			name = 'Extract Trits bones',
			icon = "__pyalienlifegraphics__/graphics/icons/mip/bones-01.png",
			icon_size = 64,
		},
		--guts
		{
			ingredients =
				{
					--{name='trits',amount=1},
				},
			results =
				{
					{name='bones', amount ='R'},
					{name='guts', amount =4},
				},
			crafting_speed = 15,
			tech = 'trits',
			name = 'Extract Trits guts',
			icon = "__pyalienlifegraphics__/graphics/icons/mip/guts-01.png",
			icon_size = 64,
		},
		--blood
		{
			ingredients =
				{
					--{name='trits',amount=1},
				},
			results =
				{
					{name='guts', amount ='R'},
					{name='blood', amount =80},
				},
			crafting_speed = 15,
			tech = 'trits',
			name = 'Extract Trits blood',
			icon = "__pyalienlifegraphics__/graphics/icons/blood.png",
			icon_size = 64,
		},
		--fat
		{
			ingredients =
				{
					--{name='trits',amount=1},
				},
			results =
				{
					{name='blood', amount ='R'},
					{name='fat', amount =7},
				},
			crafting_speed = 15,
			tech = 'trits',
			name = 'Extract Trits lard',
			icon = "__pyalienlifegraphics__/graphics/icons/mukmoux-fat.png",
			icon_size = 64,
		},	
		--brain trits rendering
		{
			ingredients =
				{
					{name='trits',amount='R'},
					{name='braintrits',amount=1},
				},
			results =
				{
					{name='fat', amount ='R'},
					{name='brain', amount =3},
				},
			crafting_speed = 15,
			tech = 'nanochondria',
			name = 'Extract brains from Improved Trits',
			icon = "__pyalienlifegraphics__/graphics/icons/brain-trits.png",
			icon_size = 64,
		},
		--bone trits rendering
		{
			ingredients =
				{
					{name='braintrits',amount='R'},
					{name='bonetrits',amount=1},
				},
			results =
				{
					{name='brain', amount ='R'},
					{name='bones', amount =9},
				},
			crafting_speed = 15,
			tech = 'bmp',
			name = 'Extract bones from Improved Trits',
			icon = "__pyalienlifegraphics__/graphics/icons/bone-trits.png",
			icon_size = 64,
		},
		--meat trits rendering
		{
			ingredients =
				{
					{name='bonetrits',amount='R'},
					{name='meattrits',amount=1},
				},
			results =
				{
					{name='bones', amount ='R'},
					{name='meat', amount =9},
				},
			crafting_speed = 15,
			tech = 'anabolic-rna',
			name = 'Extract meat from Improved Trits',
			icon = "__pyalienlifegraphics__/graphics/icons/meat-trits.png",
			icon_size = 64,
		},
		--guts trits rendering
		{
			ingredients =
				{
					{name='meattrits',amount='R'},
					{name='gutstrits',amount=1},
				},
			results =
				{
					{name='meat', amount ='R'},
					{name='guts', amount =11},
				},
			crafting_speed = 15,
			tech = 'antitumor',
			name = 'Extract guts from Improved Trits',
			icon = "__pyalienlifegraphics__/graphics/icons/guts-trits.png",
			icon_size = 64,
		},
		--blood trits rendering
		{
			ingredients =
				{
					{name='gutstrits',amount='R'},
					{name='bloodtrits',amount=1},
				},
			results =
				{
					{name='guts', amount ='R'},
					{name='blood', amount =150},
				},
			crafting_speed = 15,
			tech = 'recombinant-ery',
			name = 'Extract blood from Improved Trits',
			icon = "__pyalienlifegraphics__/graphics/icons/blood-trits.png",
			icon_size = 64,
		},
		--skin trits rendering
		{
			ingredients =
				{
					{name='bloodtrits',amount='R'},
					{name='skintrits',amount=1},
				},
			results =
				{
					{name='blood', amount ='R'},
					{name='skin', amount =9},
				},
			crafting_speed = 15,
			tech = 'reca',
			name = 'Extract skin from Improved Trits',
			icon = "__pyalienlifegraphics__/graphics/icons/skin-trits.png",
			icon_size = 64,
		},
		--fat trits rendering
		{
			ingredients =
				{
					{name='skintrits',amount='R'},
					{name='fattrits',amount=1},
				},
			results =
				{
					{name='skin', amount ='R'},
					{name='fat', amount =20},
				},
			crafting_speed = 15,
			tech = 'orexigenic',
			name = 'Extract fat from Improved Trits',
			icon = "__pyalienlifegraphics__/graphics/icons/fat-trits.png",
			icon_size = 64,
		},
	}
}