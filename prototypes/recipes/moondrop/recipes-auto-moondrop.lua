local fun = require("prototypes/functions/functions")


fun.autorecipes {
    name = 'moondrops',
	category = 'moon',
	module_limitations = 'moondrop',
	subgroup = 'py-alienlife-moon',
    order = 'a',
    mats =
	{
		--base
		{
			ingredients =
				{
					{name='moondrop-seeds'},
					{name='water'},
				},
			results =
				{
					{name='moondrop',amount = 4},
				},
			crafting_speed = 140,
			name = 'moondrop 1',
			tech = 'moondrop-mk01'
		},
		--red
		{
			ingredients =
				{
                    {name='moondrop-seeds',amount= '+3'},
					{name='hydrogen',amount = 100},
                    {name='soil',amount = 20},
				},
			results =
				{
					--{'a','*7'},
					{name='moondrop',amount = 8}
				},
				crafting_speed = 120,
				name = 'moondrop 2',
				tech = 'moondrop-mk01'
        },
		--py
        {
			ingredients =
				{
                    {name='moondrop-seeds',amount= '+4'},
					{name='ash',amount = 10},
					{name='fertilizer',amount = 10},
                    {name='biomass',amount = 8},
                    --{'d'},
				},
			results =
				{
					--{'a','*15'},
					{name='moondrop',amount =16}
				},
				crafting_speed = 100,
				name = 'moondrop 3',
				tech = 'moondrop-mk02'
        },
		--chem
        {
			ingredients =
				{
                    {name='moondrop-seeds',amount='+6'},
					{name='water',amount ='R'},
                    {name='syngas',amount = 60},
                    {name='pesticide-mk01',amount = 2},
				    {name='hydrogen',amount ='R'},
					{name='gasoline',amount = 40},
                },
			results =
				{
					{name='moondrop',amount = 32}
				},
				crafting_speed = 80,
				name = 'moondrop 4',
				tech = 'moondrop-mk03'
        },
		--prod
        {
			ingredients =
				{
                    {name='moondrop-seeds',amount='+12'},
                    {name='fertilizer',amount = '+5'},
                    {name='syngas',amount ='R'},
					{name = 'refinedsyngas', amount = 30},
					{name='biomass',amount ='+4'},
					{name='urea',amount = 12},
				},
			results =
				{
					{name='moondrop',amount = 64}
				},
			crafting_speed = 60,
			name = 'moondrop 5',
			tech = 'moondrop-mk04'
		},
	}
}
