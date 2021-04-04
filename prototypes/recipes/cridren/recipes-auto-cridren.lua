local fun = require("prototypes/functions/functions")


fun.autorecipes {
    name = 'cridren',
	--baseitem = 'cridren',
	category = 'cridren',
	module_limitations = 'cridren',
	subgroup = 'py-alienlife-cridren',
    order = 'a',
    mats =
	{
		--chem
		{
			ingredients =
				{
					{name='cridren-seeds', amount = 3},
					{name='caged-arthurian',amount = 1},
					{name='fish',amount = 10},
					{name='soil',amount = 15},
				},
			results =
				{
					{name='cridren',amount = 3},
				},
			crafting_speed = 120,
			tech = 'cridren'
		},
		--py
        {
			ingredients =
				{
					{name='cridren-seeds', add_amount = 3},
					{name='fertilizer', amount = 10},
                    {name='soil', add_amount = 20},
                    {name='fish', add_amount = 6},
                    {name='caged-arthurian', add_amount = 1},
                    {name='ash', amount = 20},
				},
			results =
				{
					{name='cridren', add_amount = 3}
				},
				crafting_speed = 90,
				tech = 'cridren-mk02'
        },
		--prod
        {
			ingredients =
				{
					{name='cridren-seeds', add_amount = 3},
					{name='soil', remove_item = true},
                    {name='biomass', amount = 30},
					{name='bones', amount = 20},
				},
			results =
				{
					{name='cridren', add_amount = 3}
				},
				crafting_speed = 60,
				tech = 'cridren-mk03'
        },
		--utility
        {
			ingredients =
				{
                    {name='cridren-seeds', add_amount = 3},
                    {name='caged-arthurian', add_amount = 2},
                    {name='fish', add_amount = 5},
					{name='bones', add_amount = 10},
                    {name='fertilizer', add_amount = 10},
					{name='gh', amount = 1},
					{name='antiviral',amount = 1},
				},
			results =
				{
					{name='cridren', add_amount = 3}
				},
				crafting_speed = 30,
				tech = 'cridren-mk04'
		},
	}
}
