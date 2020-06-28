local fun = require("prototypes/functions/functions")

fun.autorecipes {
    name = 'caged-arqad',
	category = 'arqad',
	module_limitations = 'arqad',
	subgroup = 'py-alienlife-arqad',
	order = 'b',
    mats =
	{
		{
			ingredients =
				{
                    {name='biomass',amount =15},
                    {name='ralesias',amount =5},
					{name='naturalbarrel',amount=3,return_item={name='empty-barrel',amount=3}},
				},
			results =
				{
					{name='arqad', probability = 0.7,amount_min =1,amount_max =1},
				},
			crafting_speed = 160,
			tech = 'arqad'
		},
		--yaedols 1
		{
			ingredients =
				{
					{name='biomass',amount ='R'},
					{name='yaedols',amount =1},
				},
			results =
				{
					{name='arqad',amount ='R'},
					{name='arqad', probability = 0.8,amount_min =1,amount_max =1},
				},
			crafting_speed = 150,
			tech = 'arqad'
		},
		--saps
		{
			ingredients =
				{
					{name='saps',amount = 5},
					{name='redhotcoke',amount = 1},
				},
			results =
				{

				},
			crafting_speed = 140,
			tech = 'arqad-mk02'
		},
		--fiber
		{
			ingredients =
				{
					{name='coal',amount = 5},
				},
			results =
				{

				},
			crafting_speed = 130,
			tech = 'arqad-mk02'
		},
		--zipir egg 2
		{
			ingredients =
				{
					{name='yaedols',amount ='R'},
					{name='saps',amount ='R'},
					{name='coal',amount ='R'},
					{name='zipiregg',amount =1},

				},
			results =
				{
					{name='arqad',amount ='R'},
					{name='arqad', probability = 0.9,amount_min =1,amount_max =1},
				},
			crafting_speed = 120,
			tech = 'arqad-mk03'
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
			tech = 'arqad-mk04'
		},
		--food 2 saps fiber
		{
			ingredients =
				{
					{name='coal',amount = 5},
				},
			results =
				{

				},
			crafting_speed = 100,
			tech = 'arqad-mk04'
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
					{name='arqad', amount ='R'},
					{name='arqad', probability = 1,amount_min =1,amount_max =2},
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
		--rna anabolic
		{
			ingredients =
				{
					{name='gh',amount ='R'},
					{name='anabolicrna',amount =1},
				},
			results =
				{
					{name='arqad', amount ='R'},
					{name='meatarqad', 1},
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
					{name='meatarqad', amount ='R'},
					{name='gutsarqad', 1},
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
					{name='gutsarqad', amount ='R'},
					{name='bloodarqad', 1},
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
					{name='bloodarqad', amount ='R'},
					{name='chitinarqad', 1},
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

------------------EGG MAKER------------------

fun.autorecipes {
    name = 'arqad-egg',
	category = 'arqad',
	module_limitations = 'arqad',
	subgroup = 'py-alienlife-arqad',
	order = 'c',
    mats =
	{
		{
			ingredients =
				{
                    {name='biomass',amount =30},
                    {name='ralesias',amount =10},
					{name='naturalbarrel',amount=10,return_item={name='empty-barrel',amount=10}},
					{name='redhotcoke',amount = 1},
				},
			results =
				{
					{name='arqadegg', probability = 0.85,amount_min =3,amount_max =4},
				},
			crafting_speed = 140,
			tech = 'assisted-embryology'
		},
		--food 1
		{
			ingredients =
				{
                    {name='biomass',amount ='R'},
					{name='yaedols',amount =1},
				},
			results =
				{

				},
			crafting_speed = 120,
			tech = 'assisted-embryology'
		},
		--saps
		{
			ingredients =
				{
					{name='saps',amount = 15},
				},
			results =
				{

				},
			crafting_speed = 110,
			tech = 'assisted-embryology'
		},
		--coal
		{
			ingredients =
				{
					{name='coal',amount = 10},
				},
			results =
				{

				},
			crafting_speed = 100,
			tech = 'assisted-embryology'
		},
		--zipiregg 2
		{
			ingredients =
				{
					{name='yaedols',amount ='R'},
					{name='saps',amount ='R'},
					{name='coal',amount ='R'},
					{name='zipiregg',amount =2},

				},
			results =
				{

				},
			crafting_speed = 100,
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
			crafting_speed = 90,
			tech = 'assisted-embryology'
		},
		--food 2 saps fiber
		{
			ingredients =
				{
					{name='coal',amount = 10},
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
					{name='coal',amount = 'R'},
					{name='saps',amount = 'R'},
					{name='zipiregg',amount = 'R'},
					{name='biomass',amount =30},
					{name='pheromones',amount =1},
					--{name='naturalbarrel',amount=6,return_item={name='empty-barrel',amount=6}},
					--{name='redhotcoke',amount = 1},
				},
			results =
				{
					{name='arqadegg',amount = 'R'},
					{name='arqadegg', amount =8},
				},
			crafting_speed = 140,
			tech = 'pheromones'
		},
		--food 1
		{
			ingredients =
				{

                    {name='biomass',amount ='R'},
					{name='yaedols',amount =1},
				},
			results =
				{

				},
			crafting_speed = 120,
			tech = 'pheromones'
		},
		--saps
		{
			ingredients =
				{
					{name='saps',amount = 15},
				},
			results =
				{

				},
			crafting_speed = 110,
			tech = 'pheromones'
		},
		--fiber
		{
			ingredients =
				{
					{name='coal',amount = 10},
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
					{name='yaedols',amount ='R'},
					{name='saps',amount ='R'},
					{name='coal',amount ='R'},
					{name='zipiregg',amount =2},

				},
			results =
				{

				},
			crafting_speed = 100,
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
			crafting_speed = 90,
			tech = 'pheromones'
		},
		--food 2 saps fiber
		{
			ingredients =
				{
					{name='coal',amount = 10},
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
	category = 'slaughterhouse-arqad',
	--module_limitations = 'arqad',
	subgroup = 'py-alienlife-arqad',
	order = 'b',
    mats =
	{
		{
			ingredients =
				{
					{name='arqad',amount=3},
				},
			results =
				{
					{name='meat', probability = 0.4,amount_min =1,amount_max =3},
					{name='chitin', probability = 0.3,amount_min =1,amount_max =5},
					{name='guts', probability = 0.4,amount_min =1,amount_max =3},
					{name='arthropodblood', amount =30},
				},
			crafting_speed = 30,
			tech = 'rendering',
			name = 'Full Render arqads',
			icon = "__pyalienlifegraphics3__/graphics/icons/rendering-arqad.png",
			icon_size = 64,
		},
		--meat
		{
			ingredients =
				{
					--{name='arqad',amount=1},
				},
			results =
				{
					{name='meat', amount ='R'},
					{name='chitin', amount ='R'},
					{name='guts', amount ='R'},
					{name='arthropodblood', amount ='R'},
					{name='meat', amount =3},
				},
			crafting_speed = 15,
			tech = 'advanced-rendering',
			name = 'Extract arqad Meat',
			icon = "__pyalienlifegraphics__/graphics/icons/mip/meat-01.png",
			icon_size = 64,
		},
		--chitin
		{
			ingredients =
				{
					--{name='arqad',amount=1},
				},
			results =
				{
					{name='meat', amount ='R'},
					{name='chitin', amount =4},
				},
			crafting_speed = 15,
			tech = 'advanced-rendering',
			name = 'Extract arqad chitin',
			icon = "__pyalienlifegraphics__/graphics/icons/chitin.png",
			icon_size = 64,
		},
		--guts
		{
			ingredients =
				{
					--{name='arqad',amount=1},
				},
			results =
				{
					{name='chitin', amount ='R'},
					{name='guts', amount =3},
				},
			crafting_speed = 15,
			tech = 'advanced-rendering',
			name = 'Extract arqad guts',
			icon = "__pyalienlifegraphics__/graphics/icons/mip/guts-01.png",
			icon_size = 64,
		},
		--arthropodblood
		{
			ingredients =
				{
					--{name='arqad',amount=1},
				},
			results =
				{
					{name='guts', amount ='R'},
					{name='arthropodblood', amount =40},
				},
			crafting_speed = 15,
			tech = 'advanced-rendering',
			name = 'Extract arqad arthropodblood',
			icon = "__pyalienlifegraphics__/graphics/icons/arthropod-blood.png",
			icon_size = 32,
		},
		--venom
		{
			ingredients =
				{
					--{name='arqad',amount=1},
				},
			results =
				{
					{name='arthropodblood', amount ='R'},
					{name='venom', amount =30},
				},
			crafting_speed = 15,
			tech = 'advanced-rendering',
			name = 'Extract arqad venom',
			icon = "__pyalienlifegraphics3__/graphics/icons/bee-venom.png",
			icon_size = 64,
		},
		--meat arqad rendering
		{
			ingredients =
				{
					{name='arqad',amount='R'},
					{name='meatarqad',amount=1},
				},
			results =
				{
					{name='venom', amount ='R'},
					{name='meat', amount =5},
				},
			crafting_speed = 15,
			tech = 'anabolic-rna',
			name = 'Extract meat from Improved arqads',
			icon = "__pyalienlifegraphics3__/graphics/icons/meat-arqad.png",
			icon_size = 64,
		},
		--guts arqad rendering
		{
			ingredients =
				{
					{name='meatarqad',amount='R'},
					{name='gutsarqad',amount=1},
				},
			results =
				{
					{name='meat', amount ='R'},
					{name='guts', amount =6},
				},
			crafting_speed = 15,
			tech = 'antitumor',
			name = 'Extract guts from Improved arqads',
			icon = "__pyalienlifegraphics3__/graphics/icons/guts-arqad.png",
			icon_size = 64,
		},
		--arthropodblood arqad rendering
		{
			ingredients =
				{
					{name='gutsarqad',amount='R'},
					{name='bloodarqad',amount=1},
				},
			results =
				{
					{name='guts', amount ='R'},
					{name='arthropodblood', amount =45},
				},
			crafting_speed = 15,
			tech = 'recombinant-ery',
			name = 'Extract arthropodblood from Improved arqads',
			icon = "__pyalienlifegraphics3__/graphics/icons/blood-arqad.png",
			icon_size = 64,
		},
		--chitin arqad rendering
		{
			ingredients =
				{
					{name='bloodarqad',amount='R'},
					{name='chitinarqad',amount=1},
				},
			results =
				{
					{name='arthropodblood', amount ='R'},
					{name='chitin', amount =7},
				},
			crafting_speed = 15,
			tech = 'reca',
			name = 'Extract chitin from Improved arqads',
			icon = "__pyalienlifegraphics3__/graphics/icons/chitin-arqad.png",
			icon_size = 64,
		},
	}
}