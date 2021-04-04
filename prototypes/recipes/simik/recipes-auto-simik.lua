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
                    {name='stone-wool',amount =3},
                    {name='sea-sponge',amount =1},
					{name='olefin-barrel',amount=2,return_item={name='empty-barrel',amount=2}},
					{name='cage',amount=1},
				},
			results =
				{
					{name='caged-simik', probability = 0.7,amount_min =1,amount_max =1},
				},
			crafting_speed = 160,
			tech = 'simik-mk01'
		},
		--food 1
		{
			ingredients =
				{
					{name='stone-wool',remove_item = true},
					{name='simik-food-01',amount =1},
				},
			results =
				{
					{name='caged-simik',remove_item = true},
					{name='caged-simik', probability = 0.8,amount_min =1,amount_max =1},
				},
			crafting_speed = 150,
			tech = 'simik-mk01'
		},
		--arqad-maggot
		{
			ingredients =
				{
					{name='arqad-maggot',amount = 2},
					{name='yotoi-leaves',amount = 3},
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
					{name='simik-food-01',remove_item = true},
					{name='arqad-maggot',remove_item = true},
					{name='stone',remove_item = true},
					{name='simik-food-02',amount =1},

				},
			results =
				{
					{name='caged-simik',remove_item = true},
					{name='caged-simik',amount =1},
				},
			crafting_speed = 120,
			tech = 'simik-mk03'
		},
		--food 2 arqad-maggot
		{
			ingredients =
				{
					{name='arqad-maggot',amount =5},
				},
			results =
				{

				},
			crafting_speed = 110,
			tech = 'simik-mk04'
		},
		--food 2 arqad-maggot stone
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
					{name='caged-simik', remove_item = true},
					{name='caged-simik', probability = 1,amount_min =1,amount_max =2},
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
					{name='caged-simik', remove_item = true},
					{name='brain-caged-simik',1},
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
					{name='gh',remove_item = true},
					{name='nanochondria',remove_item = true},
					{name='bmp',amount =1},
				},
			results =
				{
					{name='brain-caged-simik', remove_item = true},
					{name='bone-caged-simik', 1},
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
					{name='gh',remove_item = true},
					{name='bmp',remove_item = true},
					{name='anabolic-rna',amount =1},
				},
			results =
				{
					{name='bone-caged-simik', remove_item = true},
					{name='meat-caged-simik', 1},
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
					{name='meat-caged-simik', remove_item = true},
					{name='guts-caged-simik', 1},
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
					{name='gh',remove_item = true},

				},
			results =
				{
					{name='guts-caged-simik', remove_item = true},
					{name='hotair-caged-simik', 1},
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
					{name='gh',remove_item = true},
					{name='antitumor',remove_item = true},
					{name='recombinant-ery',amount =1},
				},
			results =
				{
					{name='hotair-caged-simik', remove_item = true},
					{name='blood-caged-simik', 1},
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
					{name='gh',remove_item = true},
					{name='recombinant-ery',remove_item = true},
					{name='reca',amount =1},
				},
			results =
				{
					{name='blood-caged-simik', remove_item = true},
					{name='skin-caged-simik', 1},
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
					{name='gh',remove_item = true},
				},
			results =
				{
					{name='skin-caged-simik', remove_item = true},
					{name='chitin-caged-simik', 1},
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
					{name='gh',remove_item = true},
				},
			results =
				{
					{name='chitin-caged-simik', remove_item = true},
					{name='keratin-caged-simik', 1},
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
					{name='gh',remove_item = true},
					{name='reca',remove_item = true},
					{name='orexigenic',amount =1},
				},
			results =
				{
					{name='keratin-caged-simik', remove_item = true},
					{name='fat-caged-simik', 1},
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
                    {name='stone-wool',amount =3},
                    {name='sea-sponge',amount =1},
					{name='olefin-barrel',amount=5,return_item={name='empty-barrel',amount=5}},
					{name='yotoi-leaves',amount = 3},
				},
			results =
				{
					{name='simik-pup', probability = 0.8,amount_min =3,amount_max =3},
				},
			crafting_speed = 140,
			tech = 'assisted-embryology'
		},
		--food 1
		{
			ingredients =
				{
                    {name='stone-wool',remove_item = true},
					{name='simik-food-01',amount =2},
				},
			results =
				{

				},
			crafting_speed = 120,
			tech = 'assisted-embryology'
		},
		--arqad-maggot
		{
			ingredients =
				{
					{name='arqad-maggot',amount = 4},
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
					{name='simik-food-01',remove_item = true},
					{name='arqad-maggot',remove_item = true},
					{name='stone',remove_item = true},
					{name='simik-food-02',amount =2},

				},
			results =
				{

				},
			crafting_speed = 100,
			tech = 'assisted-embryology'
		},
		--food 2 arqad-maggot
		{
			ingredients =
				{
					{name='arqad-maggot',remove_item = true},
				},
			results =
				{

				},
			crafting_speed = 90,
			tech = 'assisted-embryology'
		},
		--food 2 arqad-maggot stone
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
					{name='stone',remove_item = true},
					{name='arqad-maggot',remove_item = true},
					{name='simik-food-02',remove_item = true},
					{name='stone-wool',amount =5},
					{name='pheromones',amount =1},
					--{name='olefin-barrel',amount=6,return_item={name='empty-barrel',amount=6}},
					--{name='yotoi-leaves',amount = 3},
				},
			results =
				{
					{name='simik-pup',remove_item = true},
					{name='simik-pup', amount =5},
				},
			crafting_speed = 140,
			tech = 'pheromones'
		},
		--food 1
		{
			ingredients =
				{

                    {name='stone-wool',remove_item = true},
					{name='simik-food-01',amount =2},
				},
			results =
				{

				},
			crafting_speed = 120,
			tech = 'pheromones'
		},
		--arqad-maggot
		{
			ingredients =
				{
					{name='arqad-maggot',amount = 4},
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
					{name='simik-food-01',remove_item = true},
					{name='arqad-maggot',remove_item = true},
					{name='stone',remove_item = true},
					{name='simik-food-02',amount =2},

				},
			results =
				{

				},
			crafting_speed = 100,
			tech = 'pheromones'
		},
		--food 2 arqad-maggot
		{
			ingredients =
				{
					{name='arqad-maggot',remove_item = true},
				},
			results =
				{

				},
			crafting_speed = 90,
			tech = 'pheromones'
		},
		--food 2 arqad-maggot stone
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
					{name='caged-simik',amount=1},
				},
			results =
				{
					{name='bones', probability = 0.1,amount_min =1,amount_max =4},
					{name='meat', probability = 0.3,amount_min =2,amount_max =5},
                    {name='skin', probability = 0.2,amount_min =1,amount_max =2},
                    {name='chitin', probability = 0.2,amount_min =1,amount_max =1},
					{name='mukmoux-fat', probability = 0.2,amount_min =1,amount_max =1},
                    {name='guts', probability = 0.4,amount_min =1,amount_max =1},
                    {name='keratin', probability = 0.1,amount_min =1,amount_max =1},
					{name='simik-blood', amount =30},
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
                    {name='bones', remove_item = true},
					{name='meat', remove_item = true},
					{name='skin', remove_item = true},
					{name='mukmoux-fat', remove_item = true},
					{name='guts', remove_item = true},
					{name='simik-blood', remove_item = true},
                    {name='brain', remove_item = true},
                    {name='keratin', remove_item = true},
                    {name='chitin', remove_item = true},
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
					--{name='caged-simik',amount=1},
				},
			results =
				{
					{name='meat', remove_item = true},
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
					--{name='caged-simik',amount=1},
				},
			results =
				{
					{name='brain', remove_item = true},
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
					--{name='caged-simik',amount=1},
				},
			results =
				{
					{name='skin', remove_item = true},
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
					--{name='caged-simik',amount=1},
				},
			results =
				{
					{name='chitin', remove_item = true},
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
					--{name='caged-simik',amount=1},
				},
			results =
				{
					{name='keratin', remove_item = true},
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
					--{name='caged-simik',amount=1},
				},
			results =
				{
					{name='bones', remove_item = true},
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
					--{name='caged-simik',amount=1},
				},
			results =
				{
					{name='guts', remove_item = true},
					{name='simik-blood', amount =80},
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
					--{name='caged-simik',amount=1},
				},
			results =
				{
					{name='simik-blood', remove_item = true},
					{name='hot-air', amount =80},
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
					--{name='caged-simik',amount=1},
				},
			results =
				{
					{name='hot-air', remove_item = true},
					{name='mukmoux-fat', amount =3},
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
					{name='caged-simik',remove_item = true},
					{name='brain-caged-simik',amount=2},
				},
			results =
				{
					{name='mukmoux-fat', remove_item = true},
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
					{name='brain-caged-simik',remove_item = true},
					{name='bone-caged-simik',amount=1},
				},
			results =
				{
					{name='brain', remove_item = true},
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
					{name='bone-caged-simik',remove_item = true},
					{name='meat-caged-simik',amount=1},
				},
			results =
				{
					{name='bones', remove_item = true},
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
					{name='meat-caged-simik',remove_item = true},
					{name='guts-caged-simik',amount=1},
				},
			results =
				{
					{name='meat', remove_item = true},
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
					{name='guts-caged-simik',remove_item = true},
					{name='blood-caged-simik',amount=1},
				},
			results =
				{
					{name='guts', remove_item = true},
					{name='simik-blood', amount =150},
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
					{name='blood-caged-simik',remove_item = true},
					{name='hotair-caged-simik',amount=1},
				},
			results =
				{
					{name='simik-blood', remove_item = true},
					{name='hot-air', amount =250},
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
					{name='hotair-caged-simik',remove_item = true},
					{name='skin-caged-simik',amount=1},
				},
			results =
				{
					{name='hot-air', remove_item = true},
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
					{name='skin-caged-simik',remove_item = true},
					{name='fat-caged-simik',amount=1},
				},
			results =
				{
					{name='skin', remove_item = true},
					{name='mukmoux-fat', amount =8},
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
					{name='fat-caged-simik',remove_item = true},
					{name='chitin-caged-simik',amount=1},
				},
			results =
				{
					{name='mukmoux-fat', remove_item = true},
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
					{name='chitin', remove_item = true},
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
