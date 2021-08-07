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
					{name='moondrop-seeds', amount = 2},
					{name='water', amount = 100},
				},
			results =
				{
					{name='moondrop', amount = 4},
				},
			crafting_speed = 140,
			name = 'moondrop 1',
			tech = 'moondrop'
		},
		--red
		{
			ingredients =
				{
                    {name='moondrop-seeds', add_amount= 3},
					{name='hydrogen', amount = 100},
                    {name='soil', amount = 20},
				},
			results =
				{
					{name='moondrop', add_amount = 4}
				},
				crafting_speed = 120,
				name = 'moondrop 2',
				tech = 'moondrop'
        },
		--py
        {
			ingredients =
				{
                    {name='moondrop-seeds', add_amount = 4},
					{name='ash', amount = 10},
					{name='fertilizer', amount = 10},
                    {name='biomass', amount = 8},
				},
			results =
				{
					{name='moondrop', add_amount = 8}
				},
				crafting_speed = 100,
				name = 'moondrop 3',
				tech = 'moondrop-mk02'
        },
		--chem
        {
			ingredients =
				{
                    {name='moondrop-seeds', add_amount = 6},
					{name='water',remove_item = true},
                    {name='syngas', amount = 60},
                    {name='pesticide-mk01', amount = 2},
				    {name='hydrogen',remove_item = true},
					{name='gasoline', amount = 40},
                },
			results =
				{
					{name='moondrop', add_amount = 16}
				},
				crafting_speed = 80,
				name = 'moondrop 4',
				tech = 'moondrop-mk03'
        },
		--prod
        {
			ingredients =
				{
                    {name='moondrop-seeds', add_amount = 12},
                    {name='fertilizer', add_amount = 5},
                    {name='syngas',remove_item = true},
					{name = 'refsyngas', amount = 30},
					{name='biomass', add_amount = 4},
					{name='urea', amount = 12},
				},
			results =
				{
					{name='moondrop', add_amount = 32}
				},
			crafting_speed = 60,
			name = 'moondrop 5',
			tech = 'moondrop-mk04'
		},
	}
}
