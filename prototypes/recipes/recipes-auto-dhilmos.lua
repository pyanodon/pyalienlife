local fun = require("prototypes/functions/functions")

fun.autorecipes {
    name = 'dhilmos',
	category = 'dhilmos',
	module_limitations = 'dhilmos',
	subgroup = 'py-alienlife-dhilmos',
	order = 'b',
    mats =
	{
		{
			ingredients =
				{
					{name='phytoplankton',amount =50},
					{name='dhilmos-egg',amount =1},
					{name='water-saline',amount=100,return_item={name='waste-water',amount=100}},
				},
			results =
				{
					{name='dhilmos', probability = 0.7,amount_min =1,amount_max =1},
				},
			crafting_speed = 150,
			tech = 'dhilmos'
		},
		--food 1
		{
			ingredients =
				{
					{name='dhilmos-food-01',amount =1},
				},
			results =
				{
					{name='dhilmos',amount ='R'},
					{name='dhilmos', probability = 0.8,amount_min =1,amount_max =1},
				},
			crafting_speed = 130,
			tech = 'dhilmos-mk02'
		},
		--filtration-media
		{
			ingredients =
				{
					{name='filtration-media',amount = 1},
				},
			results =
				{

				},
			crafting_speed = 120,
			tech = 'dhilmos-mk02'
		},
		--sea weed
		{
			ingredients =
				{
					{name='seaweed',amount = '*2'},
				},
			results =
				{

				},
			crafting_speed = 110,
			tech = 'dhilmos-mk03'
		},
		--food 2
		{
			ingredients =
				{
					{name='dhilmos-food-01',amount ='R'},
					{name='filtration-media',amount ='R'},
					{name='seaweed',amount ='R'},
					{name='dhilmos-food-02',amount =1},

				},
			results =
				{
					{name='dhilmos',amount ='R'},
					{name='dhilmos', probability = 0.9,amount_min =1,amount_max =1},

				},
			crafting_speed = 110,
			tech = 'dhilmos-mk03'
		},
		--food 2 filtration-media
		{
			ingredients =
				{
					{name='filtration-media',amount =1},
				},
			results =
				{

				},
			crafting_speed = 85,
			tech = 'dhilmos-mk04'
		},
		--food 2 seaweed
		{
			ingredients =
				{
					{name='seaweed',amount = 5},
				},
			results =
				{

				},
			crafting_speed = 80,
			tech = 'dhilmos-mk04'
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
					{name='dhilmos', amount ='R'},
					{name='dhilmos', probability = 1,amount_min =1,amount_max =2},
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
			crafting_speed = 80,
			tech = 'antiviral'
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
					{name='dhilmos', amount ='R'},
					{name='meat-dhilmos', 1},
				},
			crafting_speed = 80,
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
					{name='meat-dhilmos', amount ='R'},
					{name='guts-dhilmos', 1},
				},
			crafting_speed = 80,
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
					{name='guts-dhilmos', amount ='R'},
					{name='blood-dhilmos', 1},
				},
			crafting_speed = 80,
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
					{name='blood-dhilmos', amount ='R'},
					{name='fat-dhilmos', 1},
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

------------------EGG MAKER------------------

fun.autorecipes {
    name = 'dhilmos-egg',
	category = 'dhilmos',
	module_limitations = 'dhilmos',
	subgroup = 'py-alienlife-dhilmos',
	order = 'c',
    mats =
	{
		{
			ingredients =
				{
                    {name='phytoplankton',amount =50},
                    {name='seaweed',amount = 'R'},
					{name='water-saline',amount=100,return_item={name='waste-water',amount=100}},
					{name='filtration-media',amount = 2},
				},
			results =
				{
					{name='dhilmos-egg', amount ='*2'},
				},
			crafting_speed = 80,
			tech = 'assisted-embryology'
		},
		--food 1
		{
			ingredients =
				{
					{name='dhilmos-food-01',amount =1},
				},
			results =
				{
                    {name='dhilmos-egg', amount ="+1"},
				},
			crafting_speed = 70,
			tech = 'assisted-embryology'
		},
		--fiber
		{
			ingredients =
				{
					{name='seaweed',amount = 5},
				},
			results =
				{
                    {name='dhilmos-egg', amount ="+1"},
				},
			crafting_speed = 60,
			tech = 'assisted-embryology'
		},
		--food 2
		{
			ingredients =
				{
                    {name='dhilmos-food-01',amount ='R'},
                    {name='seaweed',amount = 'R'},
					{name='dhilmos-food-02',amount =1},

				},
			results =
				{
                    {name='dhilmos-egg', amount ="+1"},
				},
			crafting_speed = 55,
			tech = 'assisted-embryology'
		},
		--food 2 seaweed fiber
		{
			ingredients =
				{
					{name='seaweed',amount = 5},
				},
			results =
				{
                    {name='dhilmos-egg', amount ="+1"},
				},
			crafting_speed = 50,
			tech = 'assisted-embryology'
		},
		-----------------------PHEROMONES-----------------------------
		{
			ingredients =
				{
					{name='seaweed',amount = 'R'},
					{name='dhilmos-food-02',amount = 'R'},
					{name='fawogae',amount =15},
					{name='pheromones',amount =1},
				},
			results =
				{
					{name='dhilmos-egg',amount = 'R'},
					{name='dhilmos-egg', amount =6},
				},
			crafting_speed = 50,
			tech = 'pheromones'
		},
		--food 1
		{
			ingredients =
				{
					{name='dhilmos-food-01',amount =1},
				},
			results =
				{
                    {name='dhilmos-egg', amount ="+1"},
				},
			crafting_speed = 40,
			tech = 'pheromones'
		},
		--fiber
		{
			ingredients =
				{
					{name='seaweed',amount = 5},
				},
			results =
				{
                    {name='dhilmos-egg', amount ="+1"},
				},
			crafting_speed = 30,
			tech = 'pheromones'
		},
		--food 2
		{
			ingredients =
				{
					{name='dhilmos-food-01',amount ='R'},
					{name='seaweed',amount ='R'},
					{name='dhilmos-food-02',amount =1},

				},
			results =
				{
                    {name='dhilmos-egg', amount ="+1"},
				},
			crafting_speed = 20,
			tech = 'pheromones'
		},
		--food 2 salt fiber
		{
			ingredients =
				{
					{name='seaweed',amount = 5},
				},
			results =
				{
                    {name='dhilmos-egg', amount ="+1"},
				},
			crafting_speed = 15,
			tech = 'pheromones'
		},

	}
}

------------------RENDERING------------------

fun.autorecipes {
    name = 'rendering',
	category = 'slaughterhouse-dhilmos',
	--module_limitations = 'dhilmos',
	subgroup = 'py-alienlife-dhilmos',
	order = 'b',
    mats =
	{
		{
			ingredients =
				{
					{name='dhilmos',amount=1},
				},
			results =
				{
					{name='meat', probability = 0.2,amount_min =1,amount_max =1},
                    {name='mukmoux-fat', probability = 0.1,amount_min =1,amount_max =1},
                    {name='chitin', probability = 0.5,amount_min =1,amount_max =2},
					{name='guts', probability = 0.3,amount_min =1,amount_max =1},
					{name='arthropod-blood', amount =15},
				},
			crafting_speed = 30,
			tech = 'dhilmos',
			name = 'Full Render dhilmoss',
			icon = "__pyalienlifegraphics__/graphics/icons/rendering-dhilmos.png",
			icon_size = 64,
		},
		--meat
		{
			ingredients =
				{

				},
			results =
				{
					{name='meat', amount ='R'},
					{name='mukmoux-fat', amount ='R'},
					{name='guts', amount ='R'},
					{name='arthropod-blood', amount ='R'},
					{name='chitin', amount ='R'},
					{name='meat', amount =1},
				},
			crafting_speed = 15,
			tech = 'dhilmos',
			name = 'Extract dhilmos Meat',
			icon = "__pyalienlifegraphics__/graphics/icons/mip/meat-01.png",
			icon_size = 64,
		},
		--guts
		{
			ingredients =
				{
					--{name='dhilmos',amount=1},
				},
			results =
				{
					{name='meat', amount ='R'},
					{name='guts', amount =1},
				},
			crafting_speed = 15,
			tech = 'dhilmos',
			name = 'Extract dhilmos guts',
			icon = "__pyalienlifegraphics__/graphics/icons/mip/guts-01.png",
			icon_size = 64,
		},
		--blood
		{
			ingredients =
				{
					--{name='dhilmos',amount=1},
				},
			results =
				{
					{name='guts', amount ='R'},
					{name='arthropod-blood', amount =30}
				},
			crafting_speed = 15,
			tech = 'dhilmos',
			name = 'Extract dhilmos blood',
			icon = "__pyalienlifegraphics__/graphics/icons/arthropod-blood.png",
			icon_size = 32,
		},
		--fat
		{
			ingredients =
				{
					--{name='dhilmos',amount=1},
				},
			results =
				{
					{name='arthropod-blood', amount ='R'},
					{name='mukmoux-fat', amount =1},
				},
			crafting_speed = 15,
			tech = 'dhilmos',
			name = 'Extract dhilmos lard',
			icon = "__pyalienlifegraphics__/graphics/icons/mukmoux-fat.png",
			icon_size = 64,
        },
		--chitin
		{
			ingredients =
				{
					--{name='dhilmos',amount=1},
				},
			results =
				{
					{name='mukmoux-fat', amount ='R'},
					{name='chitin', amount =3},
				},
			crafting_speed = 15,
			tech = 'dhilmos',
			name = 'Extract dhilmos chitin',
			icon = "__pyalienlifegraphics__/graphics/icons/chitin.png",
			icon_size = 64,
		},
		--meat dhilmos rendering
		{
			ingredients =
				{
					{name='dhilmos',amount='R'},
					{name='meat-dhilmos',amount=1},
				},
			results =
				{
					{name='chitin', amount ='R'},
					{name='meat', amount =6},
				},
			crafting_speed = 15,
			tech = 'anabolic-rna',
			name = 'Extract meat from Improved dhilmoss',
			icon = "__pyalienlifegraphics__/graphics/icons/meat-dhilmos.png",
			icon_size = 64,
		},
		--guts dhilmos rendering
		{
			ingredients =
				{
					{name='meat-dhilmos',amount='R'},
					{name='guts-dhilmos',amount=1},
				},
			results =
				{
					{name='meat', amount ='R'},
					{name='guts', amount =6},
				},
			crafting_speed = 15,
			tech = 'antitumor',
			name = 'Extract guts from Improved dhilmoss',
			icon = "__pyalienlifegraphics__/graphics/icons/guts-dhilmos.png",
			icon_size = 64,
		},
		--blood dhilmos rendering
		{
			ingredients =
				{
					{name='guts-dhilmos',amount='R'},
					{name='blood-dhilmos',amount=1},
				},
			results =
				{
					{name='guts', amount ='R'},
					{name='arthropod-blood', amount =120},
				},
			crafting_speed = 15,
			tech = 'recombinant-ery',
			name = 'Extract blood from Improved dhilmoss',
			icon = "__pyalienlifegraphics__/graphics/icons/blood-dhilmos.png",
			icon_size = 64,
		},
		--fat dhilmos rendering
		{
			ingredients =
				{
					{name='blood-dhilmos',amount='R'},
					{name='fat-dhilmos',amount=1},
				},
			results =
				{
					{name='arthropod-blood', amount ='R'},
					{name='mukmoux-fat', amount =6},
				},
			crafting_speed = 15,
			tech = 'orexigenic',
			name = 'Extract fat from Improved dhilmoss',
			icon = "__pyalienlifegraphics__/graphics/icons/fat-dhilmos.png",
			icon_size = 64,
		},
	}
}
