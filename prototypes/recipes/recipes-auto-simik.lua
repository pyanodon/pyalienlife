local fun = require("prototypes/functions/functions")

fun.autorecipes {
    name = 'caged-simik',
	category = 'simik',
	module_limitations = 'simik',
	subgroup = 'py-alienlife-simik',
	order = 'b',
    mats =
	{
		{
			ingredients =
				{
                    {name='stonewool',amount =3},
                    {name='seasponge',amount =1},
					{name='olefinbarrel',amount=2,return_item={name='empty-barrel',amount=2}},
					{name='cage',amount=1},
				},
			results =
				{
					{name='cagedsimik', probability = 0.7,amount_min =1,amount_max =1},
				},
			crafting_speed = 160,
			tech = 'simik-mk01'
		},
		--food 1
		{
			ingredients =
				{
					{name='stonewool',amount ='R'},
					{name='simikfood01',amount =1},
				},
			results =
				{
					{name='cagedsimik',amount ='R'},
					{name='cagedsimik', probability = 0.8,amount_min =1,amount_max =1},
				},
			crafting_speed = 150,
			tech = 'simik-mk01'
		},
		--arqadmaggot
		{
			ingredients =
				{
					{name='arqadmaggot',amount = 2},
					{name='yotoileaves',amount = 3},
				},
			results =
				{

				},
			crafting_speed = 140,
			tech = 'simik-mk02'
		},
		--stone
		{
			ingredients =
				{
					{name='stone',amount = 5},
				},
			results =
				{

				},
			crafting_speed = 130,
			tech = 'simik-mk02'
		},
		--food 2
		{
			ingredients =
				{
					{name='simikfood01',amount ='R'},
					{name='arqadmaggot',amount ='R'},
					{name='stone',amount ='R'},
					{name='simikfood02',amount =1},

				},
			results =
				{
					{name='cagedsimik',amount ='R'},
					{name='cagedsimik',amount =1},
				},
			crafting_speed = 120,
			tech = 'simik-mk03'
		},
		--food 2 arqadmaggot
		{
			ingredients =
				{
					{name='arqadmaggot',amount =5},
				},
			results =
				{

				},
			crafting_speed = 110,
			tech = 'simik-mk04'
		},
		--food 2 arqadmaggot stone
		{
			ingredients =
				{
					{name='stone',amount = 5},
				},
			results =
				{

				},
			crafting_speed = 100,
			tech = 'simik-mk04'
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
					{name='cagedsimik', amount ='R'},
					{name='cagedsimik', probability = 1,amount_min =1,amount_max =2},
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
					{name='cagedsimik', amount ='R'},
					{name='braincagedsimik',1},
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
					{name='braincagedsimik', amount ='R'},
					{name='bonecagedsimik', 1},
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
					{name='bonecagedsimik', amount ='R'},
					{name='meatcagedsimik', 1},
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
					{name='meatcagedsimik', amount ='R'},
					{name='gutscagedsimik', 1},
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

		--antitumor hot air
		{
			ingredients =
				{
					{name='gh',amount ='R'},

				},
			results =
				{
					{name='gutscagedsimik', amount ='R'},
					{name='hotaircagedsimik', 1},
				},
			crafting_speed = 90,
			tech = 'antitumor'
		},
		--antitumor and gh hot air
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
					{name='hotaircagedsimik', amount ='R'},
					{name='bloodcagedsimik', 1},
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
		--reca skin
		{
			ingredients =
				{
					{name='gh',amount ='R'},
					{name='recombinantery',amount ='R'},
					{name='reca',amount =1},
				},
			results =
				{
					{name='bloodcagedsimik', amount ='R'},
					{name='skincagedsimik', 1},
				},
			crafting_speed = 90,
			tech = 'reca'
		},
		--reca skin and gh
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
        --reca chitin
		{
			ingredients =
				{
					{name='gh',amount ='R'},
				},
			results =
				{
					{name='skincagedsimik', amount ='R'},
					{name='chitincagedsimik', 1},
				},
			crafting_speed = 90,
			tech = 'reca'
		},
		--reca chitin and gh
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
        --reca keratin
		{
			ingredients =
				{
					{name='gh',amount ='R'},
				},
			results =
				{
					{name='chitincagedsimik', amount ='R'},
					{name='keratincagedsimik', 1},
				},
			crafting_speed = 90,
			tech = 'reca'
		},
		--reca keratin and gh
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
					{name='keratincagedsimik', amount ='R'},
					{name='fatcagedsimik', 1},
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
    name = 'simik-cub',
	category = 'simik',
	module_limitations = 'simik',
	subgroup = 'py-alienlife-simik',
	order = 'c',
    mats =
	{
		{
			ingredients =
				{
                    {name='stonewool',amount =3},
                    {name='seasponge',amount =1},
					{name='olefinbarrel',amount=5,return_item={name='empty-barrel',amount=5}},
					{name='yotoileaves',amount = 3},
				},
			results =
				{
					{name='simikpup', probability = 0.8,amount_min =3,amount_max =3},
				},
			crafting_speed = 140,
			tech = 'assisted-embryology'
		},
		--food 1
		{
			ingredients =
				{
                    {name='stonewool',amount ='R'},
					{name='simikfood01',amount =2},
				},
			results =
				{

				},
			crafting_speed = 120,
			tech = 'assisted-embryology'
		},
		--arqadmaggot
		{
			ingredients =
				{
					{name='arqadmaggot',amount = 4},
				},
			results =
				{

				},
			crafting_speed = 110,
			tech = 'assisted-embryology'
		},
		--stone
		{
			ingredients =
				{
					{name='stone',amount = 10},
				},
			results =
				{

				},
			crafting_speed = 100,
			tech = 'assisted-embryology'
		},
		--food 2
		{
			ingredients =
				{
					{name='simikfood01',amount ='R'},
					{name='arqadmaggot',amount ='R'},
					{name='stone',amount ='R'},
					{name='simikfood02',amount =2},

				},
			results =
				{

				},
			crafting_speed = 100,
			tech = 'assisted-embryology'
		},
		--food 2 arqadmaggot
		{
			ingredients =
				{
					{name='arqadmaggot',amount ='R'},
				},
			results =
				{

				},
			crafting_speed = 90,
			tech = 'assisted-embryology'
		},
		--food 2 arqadmaggot stone
		{
			ingredients =
				{
					{name='stone',amount = 10},
				},
			results =
				{

				},
			crafting_speed = 80,
			tech = 'assisted-embryology'
		},
		-----------------------PHEROMONES-----------------------------
		{
			ingredients =
				{
					{name='stone',amount = 'R'},
					{name='arqadmaggot',amount = 'R'},
					{name='simikfood02',amount = 'R'},
					{name='stonewool',amount =5},
					{name='pheromones',amount =1},
					--{name='olefinbarrel',amount=6,return_item={name='empty-barrel',amount=6}},
					--{name='yotoileaves',amount = 3},
				},
			results =
				{
					{name='simikpup',amount = 'R'},
					{name='simikpup', amount =5},
				},
			crafting_speed = 140,
			tech = 'pheromones'
		},
		--food 1
		{
			ingredients =
				{

                    {name='stonewool',amount ='R'},
					{name='simikfood01',amount =2},
				},
			results =
				{

				},
			crafting_speed = 120,
			tech = 'pheromones'
		},
		--arqadmaggot
		{
			ingredients =
				{
					{name='arqadmaggot',amount = 4},
				},
			results =
				{

				},
			crafting_speed = 110,
			tech = 'pheromones'
		},
		--stone
		{
			ingredients =
				{
					{name='stone',amount = 10},
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
					{name='simikfood01',amount ='R'},
					{name='arqadmaggot',amount ='R'},
					{name='stone',amount ='R'},
					{name='simikfood02',amount =2},

				},
			results =
				{

				},
			crafting_speed = 100,
			tech = 'pheromones'
		},
		--food 2 arqadmaggot
		{
			ingredients =
				{
					{name='arqadmaggot',amount ='R'},
				},
			results =
				{

				},
			crafting_speed = 90,
			tech = 'pheromones'
		},
		--food 2 arqadmaggot stone
		{
			ingredients =
				{
					{name='stone',amount = 10},
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
	category = 'slaughterhouse-simik',
	--module_limitations = 'simik',
	subgroup = 'py-alienlife-simik',
	order = 'b',
    mats =
	{
		{
			ingredients =
				{
					{name='cagedsimik',amount=1},
				},
			results =
				{
					{name='bones', probability = 0.1,amount_min =1,amount_max =4},
					{name='meat', probability = 0.3,amount_min =2,amount_max =5},
                    {name='skin', probability = 0.2,amount_min =1,amount_max =2},
                    {name='chitin', probability = 0.2,amount_min =1,amount_max =1},
					{name='fat', probability = 0.2,amount_min =1,amount_max =1},
                    {name='guts', probability = 0.4,amount_min =1,amount_max =1},
                    {name='keratin', probability = 0.1,amount_min =1,amount_max =1},
					{name='simikblood', amount =30},
					{name='cage',amount=1},
					{name='brain', probability = 0.3,amount_min =1,amount_max =1},
				},
			crafting_speed = 30,
			tech = 'rendering',
			name = 'Full Render simik',
			icon = "__pyalienlifegraphics2__/graphics/icons/rendering-simik.png",
			icon_size = 64,
		},
		--meat
		{
			ingredients =
				{

				},
			results =
				{
                    {name='bones', amount ='R'},
					{name='meat', amount ='R'},
					{name='skin', amount ='R'},
					{name='fat', amount ='R'},
					{name='guts', amount ='R'},
					{name='simikblood', amount ='R'},
                    {name='brain', amount ='R'},
                    {name='keratin', amount ='R'},
                    {name='chitin', amount ='R'},
					{name='meat', amount =3},
				},
			crafting_speed = 15,
			tech = 'advanced-rendering',
			name = 'Extract simik Meat',
			icon = "__pyalienlifegraphics__/graphics/icons/mip/meat-01.png",
			icon_size = 64,
		},
		--brain
		{
			ingredients =
				{
					--{name='cagedsimik',amount=1},
				},
			results =
				{
					{name='meat', amount ='R'},
					{name='brain', amount =1},
				},
			crafting_speed = 15,
			tech = 'advanced-rendering',
			name = 'Extract simik brains',
			icon = "__pyalienlifegraphics__/graphics/icons/mip/brain-04.png",
			icon_size = 64,
		},
		--skin
		{
			ingredients =
				{
					--{name='cagedsimik',amount=1},
				},
			results =
				{
					{name='brain', amount ='R'},
					{name='skin', amount =3},
				},
			crafting_speed = 15,
			tech = 'advanced-rendering',
			name = 'Extract simik skin',
			icon = "__pyalienlifegraphics__/graphics/icons/skin.png",
			icon_size = 32,
        },
        --chitin
		{
			ingredients =
				{
					--{name='cagedsimik',amount=1},
				},
			results =
				{
					{name='skin', amount ='R'},
					{name='chitin', amount =3},
				},
			crafting_speed = 15,
			tech = 'advanced-rendering',
			name = 'Extract simik chitin',
			icon = "__pyalienlifegraphics__/graphics/icons/chitin.png",
			icon_size = 64,
        },
        --keratin
		{
			ingredients =
				{
					--{name='cagedsimik',amount=1},
				},
			results =
				{
					{name='chitin', amount ='R'},
					{name='keratin', amount =3},
				},
			crafting_speed = 15,
			tech = 'advanced-rendering',
			name = 'Extract simik keratin',
			icon = "__pyalienlifegraphics2__/graphics/icons/keratin.png",
			icon_size = 64,
        },
		--bones
		{
			ingredients =
				{
					--{name='cagedsimik',amount=1},
				},
			results =
				{
					{name='keratin', amount ='R'},
					{name='bones', amount =4},
				},
			crafting_speed = 15,
			tech = 'advanced-rendering',
			name = 'Extract simik bones',
			icon = "__pyalienlifegraphics__/graphics/icons/mip/bones-01.png",
			icon_size = 64,
		},
		--guts
		{
			ingredients =
				{
					--{name='cagedsimik',amount=1},
				},
			results =
				{
					{name='bones', amount ='R'},
					{name='guts', amount =3},
				},
			crafting_speed = 15,
			tech = 'advanced-rendering',
			name = 'Extract simik guts',
			icon = "__pyalienlifegraphics__/graphics/icons/mip/guts-01.png",
			icon_size = 64,
		},
		--blood
		{
			ingredients =
				{
					--{name='cagedsimik',amount=1},
				},
			results =
				{
					{name='guts', amount ='R'},
					{name='simikblood', amount =80},
				},
			crafting_speed = 15,
			tech = 'advanced-rendering',
			name = 'Extract simik blood',
			icon = "__pyalienlifegraphics2__/graphics/icons/simik-blood.png",
			icon_size = 64,
		},
		--hot air
		{
			ingredients =
				{
					--{name='cagedsimik',amount=1},
				},
			results =
				{
					{name='simikblood', amount ='R'},
					{name='hotair', amount =80},
				},
			crafting_speed = 15,
			tech = 'advanced-rendering',
			name = 'Extract simik hot air',
			icon = "__pypetroleumhandlinggraphics__/graphics/icons/hot-air.png",
			icon_size = 32,
		},
		--fat
		{
			ingredients =
				{
					--{name='cagedsimik',amount=1},
				},
			results =
				{
					{name='hotair', amount ='R'},
					{name='fat', amount =3},
				},
			crafting_speed = 15,
			tech = 'advanced-rendering',
			name = 'Extract simik lard',
			icon = "__pyalienlifegraphics__/graphics/icons/mukmoux-fat.png",
			icon_size = 64,
		},
		--brain simik rendering
		{
			ingredients =
				{
					{name='cagedsimik',amount='R'},
					{name='braincagedsimik',amount=2},
				},
			results =
				{
					{name='fat', amount ='R'},
					{name='brain', amount =6},
					{name='cage',amount = 1}
				},
			crafting_speed = 30,
			tech = 'nanochondria',
			name = 'Extract brains from Improved simiks',
			icon = "__pyalienlifegraphics2__/graphics/icons/brain-caged-simik.png",
			icon_size = 64,
		},
		--bone simik rendering
		{
			ingredients =
				{
					{name='braincagedsimik',amount='R'},
					{name='bonecagedsimik',amount=1},
				},
			results =
				{
					{name='brain', amount ='R'},
					{name='bones', amount =9},
				},
			crafting_speed = 15,
			tech = 'bmp',
			name = 'Extract bones from Improved simik',
			icon = "__pyalienlifegraphics2__/graphics/icons/bone-caged-simik.png",
			icon_size = 64,
		},
		--meat simik rendering
		{
			ingredients =
				{
					{name='bonecagedsimik',amount='R'},
					{name='meatcagedsimik',amount=1},
				},
			results =
				{
					{name='bones', amount ='R'},
					{name='meat', amount =11},
				},
			crafting_speed = 15,
			tech = 'anabolic-rna',
			name = 'Extract meat from Improved simik',
			icon = "__pyalienlifegraphics2__/graphics/icons/meat-caged-simik.png",
			icon_size = 64,
		},
		--guts simik rendering
		{
			ingredients =
				{
					{name='meatcagedsimik',amount='R'},
					{name='gutscagedsimik',amount=1},
				},
			results =
				{
					{name='meat', amount ='R'},
					{name='guts', amount =8},
				},
			crafting_speed = 15,
			tech = 'antitumor',
			name = 'Extract guts from Improved simik',
			icon = "__pyalienlifegraphics2__/graphics/icons/guts-caged-simik.png",
			icon_size = 64,
		},
		--blood simik rendering
		{
			ingredients =
				{
					{name='gutscagedsimik',amount='R'},
					{name='bloodcagedsimik',amount=1},
				},
			results =
				{
					{name='guts', amount ='R'},
					{name='simikblood', amount =150},
				},
			crafting_speed = 15,
			tech = 'recombinant-ery',
			name = 'Extract blood from Improved simik',
			icon = "__pyalienlifegraphics2__/graphics/icons/blood-caged-simik.png",
			icon_size = 64,
		},
		--hot air simik rendering
		{
			ingredients =
				{
					{name='bloodcagedsimik',amount='R'},
					{name='hotaircagedsimik',amount=1},
				},
			results =
				{
					{name='simikblood', amount ='R'},
					{name='hotair', amount =250},
				},
			crafting_speed = 15,
			tech = 'antitumor',
			name = 'Extract hot-air from Improved simik',
			icon = "__pyalienlifegraphics2__/graphics/icons/hot-air-caged-simik.png",
			icon_size = 64,
		},
		--skin simik rendering
		{
			ingredients =
				{
					{name='hotaircagedsimik',amount='R'},
					{name='skincagedsimik',amount=1},
				},
			results =
				{
					{name='hotair', amount ='R'},
					{name='skin', amount =8},
				},
			crafting_speed = 15,
			tech = 'reca',
			name = 'Extract skin from Improved simik',
			icon = "__pyalienlifegraphics2__/graphics/icons/skin-caged-simik.png",
			icon_size = 64,
		},
		--fat simik rendering
		{
			ingredients =
				{
					{name='skincagedsimik',amount='R'},
					{name='fatcagedsimik',amount=1},
				},
			results =
				{
					{name='skin', amount ='R'},
					{name='fat', amount =8},
				},
			crafting_speed = 15,
			tech = 'orexigenic',
			name = 'Extract fat from Improved simik',
			icon = "__pyalienlifegraphics2__/graphics/icons/fat-caged-simik.png",
			icon_size = 64,
		},
		--chitin simik rendering
		{
			ingredients =
				{
					{name='fatcagedsimik',amount='R'},
					{name='chitincagedsimik',amount=1},
				},
			results =
				{
					{name='fat', amount ='R'},
					{name='chitin', amount =10},
				},
			crafting_speed = 15,
			tech = 'reca',
			name = 'Extract chitin from Improved simik',
			icon = "__pyalienlifegraphics2__/graphics/icons/chitin-caged-simik.png",
			icon_size = 64,
		},
		--keratin simik rendering
		{
			ingredients =
				{

				},
			results =
				{
					{name='chitin', amount ='R'},
					{name='keratin', amount =10},
				},
			crafting_speed = 15,
			tech = 'reca',
			name = 'Extract keratin from Improved simik',
			icon = "__pyalienlifegraphics2__/graphics/icons/keratin-caged-simik.png",
			icon_size = 64,
		},
	}
}
