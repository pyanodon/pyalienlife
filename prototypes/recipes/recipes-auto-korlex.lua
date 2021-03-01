local fun = require("prototypes/functions/functions")

fun.autorecipes {
    name = 'caged-korlex',
	category = 'korlex',
	module_limitations = 'korlex',
	subgroup = 'py-alienlife-korlex',
	order = 'b',
    mats =
	{
		{
			ingredients =
				{
                    {name='tuuphra',amount =5},
                    {name='kicalk',amount =1},
                    {name='bhoddos',amount =1},
					{name='water-barrel',amount=8,return_item={name='empty-barrel',amount=8}},
					{name='cage',amount=1},
				},
			results =
				{
					{name='caged-korlex', probability = 0.7,amount_min =1,amount_max =1},
				},
			crafting_speed = 150,
			tech = 'korlex'
		},
		--food 1
		{
			ingredients =
				{
                    {name='bhoddos',amount ='R'},
                    {name='kicalk',amount ='R'},
                    {name='tuuphra',amount ='R'},
					{name='korlex-food-01',amount =1},
				},
			results =
				{
					{name='caged-korlex',amount ='R'},
					{name='caged-korlex', probability = 0.8,amount_min =1,amount_max =1},
				},
			crafting_speed = 140,
			tech = 'korlex'
		},
		--ash
		{
			ingredients =
				{
					{name='ash',amount = 10},
					{name='bedding',amount = 2},
				},
			results =
				{

				},
			crafting_speed = 130,
			tech = 'korlex-mk02'
		},
		--fish
		{
			ingredients =
				{
					{name='fish',amount = 5},
				},
			results =
				{

				},
			crafting_speed = 120,
			tech = 'korlex-mk02'
		},
		--food 2
		{
			ingredients =
				{
					{name='korlex-food-01',amount ='R'},
					{name='ash',amount ='R'},
					{name='fish',amount ='R'},
					{name='korlex-food-02',amount =1},

				},
			results =
				{
					{name='caged-korlex',amount ='R'},
					{name='caged-korlex', probability = 0.9,amount_min =1,amount_max =1},
				},
			crafting_speed = 110,
			tech = 'korlex-mk03'
		},
		--food 2 ash
		{
			ingredients =
				{
					{name='ash',amount =10},
				},
			results =
				{

				},
			crafting_speed = 100,
			tech = 'korlex-mk03'
		},
		--food 2 ash fish
		{
			ingredients =
				{
					{name='fish',amount = 5},
				},
			results =
				{

				},
			crafting_speed = 90,
			tech = 'korlex-mk04'
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

					{name='caged-korlex', amount ='R'},
					{name='caged-korlex', probability = 1,amount_min =1,amount_max =2},
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
					{name='caged-korlex', amount ='R'},
					{name='brain-caged-korlex',1},
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
					{name='brain-caged-korlex', amount ='R'},
					{name='bone-caged-korlex', 1},
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
					{name='anabolic-rna',amount =1},
				},
			results =
				{
					{name='bone-caged-korlex', amount ='R'},
					{name='meat-caged-korlex', 1},
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
					{name='anabolic-rna',amount ='R'},
					{name='antitumor',amount =1},
				},
			results =
				{
					{name='meat-caged-korlex', amount ='R'},
					{name='guts-caged-korlex', 1},
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
					{name='recombinant-ery',amount =1},
				},
			results =
				{
					{name='guts-caged-korlex', amount ='R'},
					{name='blood-caged-korlex', 1},
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
					{name='recombinant-ery',amount ='R'},
					{name='reca',amount =1},
				},
			results =
				{
					{name='blood-caged-korlex', amount ='R'},
					{name='skin-caged-korlex', 1},
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
					{name='skin-caged-korlex', amount ='R'},
					{name='fat-caged-korlex', 1},
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

------------------PUP MAKER------------------

fun.autorecipes {
    name = 'korlex-pup',
	category = 'korlex',
	module_limitations = 'korlex',
	subgroup = 'py-alienlife-korlex',
	order = 'c',
    mats =
	{
		{
			ingredients =
				{
                    {name='tuuphra',amount =6},
                    {name='kicalk',amount =3},
                    {name='bhoddos',amount =2},
					{name='water-barrel',amount=20,return_item={name='empty-barrel',amount=20}},
					--{name='cage',amount=1},
					{name='bedding',amount = 1},
				},
			results =
				{
					{name='korlex-pup', amount =3},
				},
			crafting_speed = 160,
			tech = 'assisted-embryology'
		},
		--food 1
		{
			ingredients =
				{
                    {name='bhoddos',amount ='R'},
                    {name='kicalk',amount ='R'},
                    {name='tuuphra',amount ='R'},
					{name='korlex-food-01',amount =2},
				},
			results =
				{

				},
			crafting_speed = 140,
			tech = 'assisted-embryology'
		},
		--ash
		{
			ingredients =
				{
					{name='ash',amount = 20},
				},
			results =
				{

				},
			crafting_speed = 130,
			tech = 'assisted-embryology'
		},
		--fish
		{
			ingredients =
				{
					{name='fish',amount = 10},
				},
			results =
				{

				},
			crafting_speed = 120,
			tech = 'assisted-embryology'
		},
		--food 2
		{
			ingredients =
				{
					{name='korlex-food-01',amount ='R'},
					{name='ash',amount ='R'},
					{name='fish',amount ='R'},
					{name='korlex-food-02',amount =2},

				},
			results =
				{

				},
			crafting_speed = 130,
			tech = 'assisted-embryology'
		},
		--food 2 ash
		{
			ingredients =
				{
					{name='ash',amount ='R'},
				},
			results =
				{

				},
			crafting_speed = 120,
			tech = 'assisted-embryology'
		},
		--food 2 ash fish
		{
			ingredients =
				{
					{name='fish',amount = 10},
				},
			results =
				{

				},
			crafting_speed = 110,
			tech = 'assisted-embryology'
		},
		-----------------------PHEROMONES-----------------------------
		{
			ingredients =
				{
					{name='fish',amount = 'R'},
					{name='ash',amount = 'R'},
                    {name='korlex-food-02',amount = 'R'},
                    {name='kicalk',amount =3},
					{name='tuuphra',amount =6},
					{name='pheromones',amount =1},
                    {name='bhoddos',amount =2},
					--{name='water-barrel',amount=6,return_item={name='empty-barrel',amount=6}},
					--{name='bedding',amount = 1},
				},
			results =
				{
					{name='korlex-pup',amount = 'R'},
					{name='korlex-pup', amount =5},
				},
			crafting_speed = 140,
			tech = 'pheromones'
		},
		--food 1
		{
			ingredients =
				{
                    {name='bhoddos',amount ='R'},
                    {name='tuuphra',amount ='R'},
                    {name='kicalk',amount ='R'},
					{name='korlex-food-01',amount =2},
				},
			results =
				{

				},
			crafting_speed = 120,
			tech = 'pheromones'
		},
		--ash
		{
			ingredients =
				{
					{name='ash',amount = 20},
				},
			results =
				{

				},
			crafting_speed = 110,
			tech = 'pheromones'
		},
		--fish
		{
			ingredients =
				{
					{name='fish',amount = 10},
				},
			results =
				{

				},
			crafting_speed = 100,
			tech = 'pheromones'
		},
		--food 2
		{
			ingredients =
				{
					{name='korlex-food-01',amount ='R'},
					{name='ash',amount ='R'},
					{name='fish',amount ='R'},
					{name='korlex-food-02',amount =2},

				},
			results =
				{

				},
			crafting_speed = 100,
			tech = 'pheromones'
		},
		--food 2 ash
		{
			ingredients =
				{
					{name='ash',amount ='R'},
				},
			results =
				{

				},
			crafting_speed = 60,
			tech = 'pheromones'
		},
		--food 2 ash fish
		{
			ingredients =
				{
					{name='fish',amount = 10},
				},
			results =
				{

				},
			crafting_speed = 80,
			tech = 'pheromones'
		},

	}
}

------------------RENDERING------------------

fun.autorecipes {
    name = 'rendering',
	category = 'slaughterhouse-korlex',
	--module_limitations = 'korlex',
	subgroup = 'py-alienlife-korlex',
	order = 'b',
    mats =
	{
		{
			ingredients =
				{
					{name='caged-korlex',amount=1},
				},
			results =
				{
					{name='bones', probability = 0.3,amount_min =1,amount_max =3},
					{name='meat', probability = 0.4,amount_min =1,amount_max =3},
					{name='skin', probability = 0.5,amount_min =2,amount_max =5},
					{name='mukmoux-fat', probability = 0.5,amount_min =1,amount_max =3},
					{name='guts', probability = 0.4,amount_min =1,amount_max =2},
					{name='blood', amount =20},
					{name='cage',amount=1},
					{name='brain', probability = 0.5,amount_min =1,amount_max =1},
				},
			crafting_speed = 30,
			tech = 'korlex',
			name = 'Full Render Korlex',
			icon = "__pyalienlifegraphics__/graphics/icons/rendering-korlex.png",
			icon_size = 64,
		},
		--meat
		{
			ingredients =
				{
					--{name='caged-korlex',amount=1},
				},
			results =
				{
					{name='bones', amount ='R'},
					{name='meat', amount ='R'},
					{name='skin', amount ='R'},
					{name='mukmoux-fat', amount ='R'},
					{name='guts', amount ='R'},
					{name='blood', amount ='R'},
					{name='brain', amount ='R'},
					{name='meat', amount =3},
				},
			crafting_speed = 15,
			tech = 'korlex',
			name = 'Extract Korlex Meat',
			icon = "__pyalienlifegraphics__/graphics/icons/mip/meat-01.png",
			icon_size = 64,
		},
		--brain
		{
			ingredients =
				{
					--{name='caged-korlex',amount=1},
				},
			results =
				{
					{name='meat', amount ='R'},
					{name='brain', amount =1},
				},
			crafting_speed = 15,
			tech = 'korlex',
			name = 'Extract Korlex brain',
			icon = "__pyalienlifegraphics__/graphics/icons/mip/brain-04.png",
			icon_size = 64,
		},
		--skin
		{
			ingredients =
				{
					--{name='caged-korlex',amount=1},
				},
			results =
				{
					{name='brain', amount ='R'},
					{name='skin', amount =5},
				},
			crafting_speed = 15,
			tech = 'korlex',
			name = 'Extract Korlex skin',
			icon = "__pyalienlifegraphics__/graphics/icons/skin.png",
			icon_size = 32,
		},
		--bones
		{
			ingredients =
				{
					--{name='caged-korlex',amount=1},
				},
			results =
				{
					{name='skin', amount ='R'},
					{name='bones', amount =3},
				},
			crafting_speed = 15,
			tech = 'korlex',
			name = 'Extract Korlex bones',
			icon = "__pyalienlifegraphics__/graphics/icons/mip/bones-01.png",
			icon_size = 64,
		},
		--guts
		{
			ingredients =
				{
					--{name='caged-korlex',amount=1},
				},
			results =
				{
					{name='bones', amount ='R'},
					{name='guts', amount =2},
				},
			crafting_speed = 15,
			tech = 'korlex',
			name = 'Extract Korlex guts',
			icon = "__pyalienlifegraphics__/graphics/icons/mip/guts-01.png",
			icon_size = 64,
		},
		--blood
		{
			ingredients =
				{
					--{name='caged-korlex',amount=1},
				},
			results =
				{
					{name='guts', amount ='R'},
					{name='blood', amount =30},
				},
			crafting_speed = 15,
			tech = 'korlex',
			name = 'Extract Korlex blood',
			icon = "__pyalienlifegraphics__/graphics/icons/blood.png",
			icon_size = 64,
		},
		--fat
		{
			ingredients =
				{
					--{name='caged-korlex',amount=1},
				},
			results =
				{
					{name='blood', amount ='R'},
					{name='mukmoux-fat', amount =3},
				},
			crafting_speed = 15,
			tech = 'korlex',
			name = 'Extract Korlex lard',
			icon = "__pyalienlifegraphics__/graphics/icons/mukmoux-fat.png",
			icon_size = 64,
		},
		--brain korlex rendering
		{
			ingredients =
				{
					{name='caged-korlex',amount='R'},
					{name='brain-caged-korlex',amount=1},
				},
			results =
				{
					{name='mukmoux-fat', amount ='R'},
					{name='brain', amount =5},
				},
			crafting_speed = 15,
			tech = 'nanochondria',
			name = 'Extract brains from Improved Korlex',
			icon = "__pyalienlifegraphics__/graphics/icons/brain-caged-korlex.png",
			icon_size = 64,
		},
		--bone korlex rendering
		{
			ingredients =
				{
					{name='brain-caged-korlex',amount='R'},
					{name='bone-caged-korlex',amount=1},
				},
			results =
				{
					{name='brain', amount ='R'},
					{name='bones', amount =9},
				},
			crafting_speed = 15,
			tech = 'bmp',
			name = 'Extract bones from Improved Korlex',
			icon = "__pyalienlifegraphics__/graphics/icons/bone-caged-korlex.png",
			icon_size = 64,
		},
		--meat korlex rendering
		{
			ingredients =
				{
					{name='bone-caged-korlex',amount='R'},
					{name='meat-caged-korlex',amount=1},
				},
			results =
				{
					{name='bones', amount ='R'},
					{name='meat', amount =10},
				},
			crafting_speed = 15,
			tech = 'anabolic-rna',
			name = 'Extract meat from Improved Korlex',
			icon = "__pyalienlifegraphics__/graphics/icons/meat-caged-korlex.png",
			icon_size = 64,
		},
		--guts korlex rendering
		{
			ingredients =
				{
					{name='meat-caged-korlex',amount='R'},
					{name='guts-caged-korlex',amount=1},
				},
			results =
				{
					{name='meat', amount ='R'},
					{name='guts', amount =7},
				},
			crafting_speed = 15,
			tech = 'antitumor',
			name = 'Extract guts from Improved Korlex',
			icon = "__pyalienlifegraphics__/graphics/icons/guts-caged-korlex.png",
			icon_size = 64,
		},
		--blood korlex rendering
		{
			ingredients =
				{
					{name='guts-caged-korlex',amount='R'},
					{name='blood-caged-korlex',amount=1},
				},
			results =
				{
					{name='guts', amount ='R'},
					{name='blood', amount =100},
				},
			crafting_speed = 15,
			tech = 'recombinant-ery',
			name = 'Extract blood from Improved Korlex',
			icon = "__pyalienlifegraphics__/graphics/icons/blood-caged-korlex.png",
			icon_size = 64,
		},
		--skin korlex rendering
		{
			ingredients =
				{
					{name='blood-caged-korlex',amount='R'},
					{name='skin-caged-korlex',amount=1},
				},
			results =
				{
					{name='blood', amount ='R'},
					{name='skin', amount =13},
				},
			crafting_speed = 15,
			tech = 'reca',
			name = 'Extract skin from Improved Korlex',
			icon = "__pyalienlifegraphics__/graphics/icons/skin-caged-korlex.png",
			icon_size = 64,
		},
		--fat korlex rendering
		{
			ingredients =
				{
					{name='skin-caged-korlex',amount='R'},
					{name='fat-caged-korlex',amount=1},
				},
			results =
				{
					{name='skin', amount ='R'},
					{name='mukmoux-fat', amount =8},
				},
			crafting_speed = 15,
			tech = 'orexigenic',
			name = 'Extract fat from Improved Korlex',
			icon = "__pyalienlifegraphics__/graphics/icons/fat-caged-korlex.png",
			icon_size = 64,
		},
	}
}
