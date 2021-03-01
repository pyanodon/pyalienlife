local fun = require("prototypes/functions/functions")

fun.autorecipes {
    name = 'breed-fish',
	category = 'fish-farm',
	module_limitations = 'fish',
	subgroup = 'py-alienlife-fish',
	order = 'b',
    mats =
	{
		{
			ingredients =
				{
                    {name='oxygen',amount =60},
                    {name='small-lamp',amount =3},
					{name='biomass',amount =10},
					{name='water-saline',amount=100,return_item={name='waste-water',amount=100}},
				},
			results =
				{
					{name='fish',amount =10},
				},
			crafting_speed = 150,
			tech = 'water-animals-mk01'
		},
		--food 1
		{
			ingredients =
				{
                    {name='biomass',amount ='R'},
					{name='fishfood1',amount =1},
				},
			results =
				{
					{name='fish',amount =15},
				},
			crafting_speed = 130,
			tech = 'water-animals-mk02'
		},
		--filtration-media
		{
			ingredients =
				{
					{name='filtration-media',amount = 1},
				},
			results =
				{
                   -- {name='fish',amount =15},
				},
			crafting_speed = 110,
			tech = 'water-animals-mk02'
		},
		--sea weed
		{
			ingredients =
				{
					{name='seaweed',amount = 10},
				},
			results =
				{

				},
			crafting_speed = 100,
			tech = 'water-animals-mk03'
		},
		--food 2
		{
			ingredients =
				{
					{name='fishfood1',amount ='R'},
					{name='filtration-media',amount ='R'},
					{name='seaweed',amount ='R'},
					{name='fishfood2',amount =1},

				},
			results =
				{
                    {name='fish',amount =20},
				},
			crafting_speed = 100,
			tech = 'water-animals-mk03'
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
			tech = 'water-animals-mk04'
		},
		--food 2 seaweed
		{
			ingredients =
				{
					{name='seaweed',amount = 10},
				},
			results =
				{

				},
			crafting_speed = 80,
			tech = 'water-animals-mk04'
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
			crafting_speed = 20,
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
                    {name='fish',amount =30},
				},
			crafting_speed = 20,
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
	}
}

------------------EGG MAKER------------------

fun.autorecipes {
    name = 'breed-fish-egg',
	category = 'fish-farm',
	module_limitations = 'fish',
	subgroup = 'py-alienlife-fish',
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
					{name='fish-egg', amount =10},
				},
			crafting_speed = 80,
			tech = 'assisted-embryology'
		},
		--food 1
		{
			ingredients =
				{
					{name='fishfood1',amount =1},
				},
			results =
				{
                    {name='fish-egg', amount ="+5"},
				},
			crafting_speed = 70,
			tech = 'assisted-embryology'
		},
		--fiber
		{
			ingredients =
				{
					{name='seaweed',amount = 10},
				},
			results =
				{
                    {name='fish-egg', amount ="+2"},
				},
			crafting_speed = 60,
			tech = 'assisted-embryology'
		},
		--food 2
		{
			ingredients =
				{
                    {name='fishfood1',amount ='R'},
                    {name='seaweed',amount = 'R'},
					{name='fishfood2',amount =1},

				},
			results =
				{
                    {name='fish-egg', amount ="+10"},
				},
			crafting_speed = 55,
			tech = 'assisted-embryology'
		},
		--food 2 seaweed fiber
		{
			ingredients =
				{
					{name='seaweed',amount = 10},
				},
			results =
				{
                    {name='fish-egg', amount ="+2"},
				},
			crafting_speed = 50,
			tech = 'assisted-embryology'
		},
		-----------------------PHEROMONES-----------------------------
		{
			ingredients =
				{
					{name='seaweed',amount = 'R'},
					{name='fishfood2',amount = 'R'},
					{name='fawogae',amount =15},
					{name='pheromones',amount =1},
				},
			results =
				{
					{name='fish-egg',amount = 'R'},
					{name='fish-egg', amount =32},
				},
			crafting_speed = 50,
			tech = 'pheromones'
		},
		--food 1
		{
			ingredients =
				{
					{name='fishfood1',amount =1},
				},
			results =
				{
                    {name='fish-egg', amount ="+5"},
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
                    {name='fish-egg', amount ="+2"},
				},
			crafting_speed = 30,
			tech = 'pheromones'
		},
		--food 2
		{
			ingredients =
				{
					{name='fishfood1',amount ='R'},
					{name='seaweed',amount ='R'},
					{name='fishfood2',amount =1},

				},
			results =
				{
                    {name='fish-egg', amount ="+5"},
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
                    {name='fish-egg', amount ="+2"},
				},
			crafting_speed = 15,
			tech = 'pheromones'
		},

	}
}
