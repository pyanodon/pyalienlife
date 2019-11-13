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
					{name='watersaline',amount=100,return_item={name='dirty-water',amount=100}},
				},
			results =
				{
					{name='dhilmos', probability = 0.5,amount_min =1,amount_max =1},
				},
			crafting_speed = 150,
			tech = 'dhilmos'
		},
		--food 1
		{
			ingredients =
				{
					{name='dhilmosfood01',amount =1},
				},
			results =
				{

				},
			crafting_speed = 130,
			tech = 'food-mk01'
		},
		--filtration-media
		{
			ingredients =
				{
					{name='filtrationmedia',amount = 1},
				},
			results =
				{

				},
			crafting_speed = 120,
			tech = 'organic-breeding'
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
			tech = 'organic-breeding'
		},
		--food 2
		{
			ingredients =
				{
					{name='dhilmosfood01',amount ='R'},
					{name='filtrationmedia',amount ='R'},
					{name='seaweed',amount ='R'},
					{name='dhilmosfood02',amount =1},

				},
			results =
				{

				},
			crafting_speed = 110,
			tech = 'food-mk02'
		},
		--food 2 filtrationmedia
		{
			ingredients =
				{
					{name='filtrationmedia',amount =1},
				},
			results =
				{

				},
			crafting_speed = 85,
			tech = 'organic-breeding'
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
			tech = 'organic-breeding'
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
					{name='dhilmos', probability = 0.7,amount_min =1,amount_max =1},
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
					{name='anabolicrna',amount =1},
				},
			results =
				{
					{name='dhilmos', amount ='R'},
					{name='meatdhilmos', 1},
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
					{name='anabolicrna',amount ='R'},
					{name='antitumor',amount =1},
				},
			results =
				{
					{name='meatdhilmos', amount ='R'},
					{name='gutsdhilmos', 1},
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
					{name='recombinantery',amount =1},
				},
			results =
				{
					{name='gutsdhilmos', amount ='R'},
					{name='blooddhilmos', 1},
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
					{name='blooddhilmos', amount ='R'},
					{name='fatdhilmos', 1},
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
					{name='watersaline',amount=100,return_item={name='dirty-water',amount=100}},
					{name='filtrationmedia',amount = 2},
				},
			results =
				{
					{name='dhilmosegg', amount ='*2'},
				},
			crafting_speed = 80,
			tech = 'assisted-embryology'
		},
		--food 1
		{
			ingredients =
				{
					{name='dhilmosfood01',amount =1},
				},
			results =
				{
                    {name='dhilmosegg', amount ="+1"},
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
                    {name='dhilmosegg', amount ="+1"},
				},
			crafting_speed = 60,
			tech = 'assisted-embryology'
		},
		--food 2
		{
			ingredients =
				{
                    {name='dhilmosfood01',amount ='R'},
                    {name='seaweed',amount = 'R'},
					{name='dhilmosfood02',amount =1},

				},
			results =
				{
                    {name='dhilmosegg', amount ="+1"},
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
                    {name='dhilmosegg', amount ="+1"},
				},
			crafting_speed = 50,
			tech = 'assisted-embryology'
		},
		-----------------------PHEROMONES-----------------------------
		{
			ingredients =
				{
					{name='seaweed',amount = 'R'},
					{name='dhilmosfood02',amount = 'R'},
					{name='fawogae',amount =15},
					{name='pheromones',amount =1},
				},
			results =
				{
					{name='dhilmosegg',amount = 'R'},
					{name='dhilmosegg', amount =6},
				},
			crafting_speed = 50,
			tech = 'pheromones'
		},
		--food 1
		{
			ingredients =
				{
					{name='dhilmosfood01',amount =1},
				},
			results =
				{
                    {name='dhilmosegg', amount ="+1"},
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
                    {name='dhilmosegg', amount ="+1"},
				},
			crafting_speed = 30,
			tech = 'pheromones'
		},
		--food 2
		{
			ingredients =
				{
					{name='dhilmosfood01',amount ='R'},
					{name='seaweed',amount ='R'},
					{name='dhilmosfood02',amount =1},

				},
			results =
				{
                    {name='dhilmosegg', amount ="+1"},
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
                    {name='dhilmosegg', amount ="+1"},
				},
			crafting_speed = 15,
			tech = 'pheromones'
		},

	}
}

------------------RENDERING------------------

fun.autorecipes {
    name = 'rendering',
	category = 'slaughterhouse',
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
                    {name='fat', probability = 0.1,amount_min =1,amount_max =1},
                    {name='chitin', probability = 0.5,amount_min =1,amount_max =2},
					{name='guts', probability = 0.3,amount_min =1,amount_max =1},
					{name='arthropodblood', amount =15},
				},
			crafting_speed = 30,
			tech = 'dhilmos',
			name = 'Full Render dhilmoss',
			icon = "__pyalienlife__/graphics/icons/rendering-dhilmos.png",
			icon_size = 64,
		},
		--meat
		{
			ingredients =
				{
					{name='meat', amount ='R'},
					{name='fat', amount ='R'},
					{name='guts', amount ='R'},
					{name='blood', amount ='R'},
				},
			results =
				{
					{name='meat', amount =1},
				},
			crafting_speed = 15,
			tech = 'dhilmos',
			name = 'Extract dhilmos Meat',
			icon = "__pyalienlife__/graphics/icons/mip/meat-01.png",
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
			icon = "__pyalienlife__/graphics/icons/mip/guts-01.png",
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
					{name='arthropodblood', amount =30}
				},
			crafting_speed = 15,
			tech = 'dhilmos',
			name = 'Extract dhilmos blood',
			icon = "__pyalienlife__/graphics/icons/arthropod-blood.png",
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
					{name='arthropodblood', amount ='R'},
					{name='fat', amount =1},
				},
			crafting_speed = 15,
			tech = 'dhilmos',
			name = 'Extract dhilmos lard',
			icon = "__pyalienlife__/graphics/icons/mukmoux-fat.png",
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
					{name='fat', amount ='R'},
					{name='chitin', amount =3},
				},
			crafting_speed = 15,
			tech = 'dhilmos',
			name = 'Extract dhilmos chitin',
			icon = "__pyalienlife__/graphics/icons/chitin.png",
			icon_size = 64,
		},
		--meat dhilmos rendering
		{
			ingredients =
				{
					{name='dhilmos',amount='R'},
					{name='meatdhilmos',amount=1},
				},
			results =
				{
					{name='chitin', amount ='R'},
					{name='meat', amount =2},
				},
			crafting_speed = 15,
			tech = 'anabolic-rna',
			name = 'Extract meat from Improved dhilmoss',
			icon = "__pyalienlife__/graphics/icons/meat-dhilmos.png",
			icon_size = 64,
		},
		--guts dhilmos rendering
		{
			ingredients =
				{
					{name='meatdhilmos',amount='R'},
					{name='gutsdhilmos',amount=1},
				},
			results =
				{
					{name='meat', amount ='R'},
					{name='guts', amount =2},
				},
			crafting_speed = 15,
			tech = 'antitumor',
			name = 'Extract guts from Improved dhilmoss',
			icon = "__pyalienlife__/graphics/icons/guts-dhilmos.png",
			icon_size = 64,
		},
		--blood dhilmos rendering
		{
			ingredients =
				{
					{name='gutsdhilmos',amount='R'},
					{name='blooddhilmos',amount=1},
				},
			results =
				{
					{name='guts', amount ='R'},
					{name='arthropodblood', amount =40},
				},
			crafting_speed = 15,
			tech = 'recombinant-ery',
			name = 'Extract blood from Improved dhilmoss',
			icon = "__pyalienlife__/graphics/icons/blood-dhilmos.png",
			icon_size = 64,
		},
		--fat dhilmos rendering
		{
			ingredients =
				{
					{name='blooddhilmos',amount='R'},
					{name='fatdhilmos',amount=1},
				},
			results =
				{
					{name='arthropodblood', amount ='R'},
					{name='fat', amount =2},
				},
			crafting_speed = 15,
			tech = 'orexigenic',
			name = 'Extract fat from Improved dhilmoss',
			icon = "__pyalienlife__/graphics/icons/fat-dhilmos.png",
			icon_size = 64,
		},
	}
}
