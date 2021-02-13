local fun = require("prototypes/functions/functions")


fun.autorecipes {
    name = 'kicalk',
	--baseitem = 'kicalk',
	category = 'kicalk',
	module_limitations = 'kicalk',
	subgroup = 'py-alienlife-kicalk',
    order = 'a',
    mats =
	{
		--base
        {
			ingredients =
				{
                    {name='kicalkseeds',amount = 15},
                    {name='clay',amount = 4},
				},
			results =
				{
					{name='kicalk',amount = 10},
				},
			crafting_speed = 150,
			tech = 'kicalk'
		},
		--red
		{
			ingredients =
				{
                    {name='water',amount = 500},
					{name='sand',amount = 10},
                    {name='smalllamp',amount = 1},
				},
			results =
				{
					{name='kicalk',amount = 12}
				},
				crafting_speed = 120,
				tech = 'kicalk'
        },
		--py
        {
			ingredients =
				{
                    {name='fertilizer',amount = 5},
					{name='ash',amount = 10},
					{name='biomass',amount = 10},
					{name='carbondioxide',amount = 150},
				},
			results =
				{
					{name='kicalk',amount =20}
				},
				crafting_speed = 90,
				tech = 'kicalk-mk02'
        },
        --also py? fix this
        {
			ingredients =
				{
					{name='pesticide01',amount ='+1'},
					{name='carbondioxide',amount = 'R'},
                    {name='fluegas',amount = 100},
				},
			results =
				{
					{name='kicalk',amount = 32}
				},
				crafting_speed = 60,
				tech = 'kicalk-mk03'
        },
		--production
		{
			ingredients =
				{
					{name='fertilizer',amount = '+6'},
					{name='water',amount = 'R'},
					{name = 'phosphorousacid', amount = 50, fallback = 'nitrogen'},
					{name='biomass',amount = '+10'},
					{name='clay',amount = '+11'},
				},
			results =
				{
					{name='kicalk',amount = 50}
				},
			crafting_speed = 30,
			tech = 'kicalk-mk04'
		},
	}
}
