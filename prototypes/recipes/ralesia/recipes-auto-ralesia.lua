local fun = require("prototypes/functions/functions")


fun.autorecipes {
    name = 'ralesias',
	--baseitem = 'ralesia',
	category = 'ralesia',
	module_limitations = 'ralesias',
	subgroup = 'py-alienlife-ralesia',
    order = 'a',
    mats =
	{
		--base
		{
			ingredients =
				{
					{name='ralesia-seeds'},
					{name='water'},
				},
			results =
				{
					{name='ralesias', amount = 5},
				},
			crafting_speed = 150,
			tech = 'ralesia'
		},
		--red
		{
			ingredients =
				{
					{name='hydrogen', amount = 100},
					{name='soil', amount = 15},
				},
			results =
				{
					{name='ralesias', amount = 10},
				},
			crafting_speed = 125,
			tech = 'ralesia'
		},
		--green
        {
			ingredients =
				{
					{name='fertilizer', amount = 5},
					{name='ash', amount = 10},
                    {name='biomass', amount = 10},
				},
			results =
				{
					{name='ralesias', amount = 25}
				},
				crafting_speed = 100,
				tech = 'botany-mk02'
        },
		--py
        {
			ingredients =
				{
					{name='water',remove_item = true},
					{name='hydrogen',remove_item = true},
                    {name='syngas', amount = 100},
					{name='flue-gas', amount = 50},
				},
			results =
				{
					{name='ralesias', amount = 50}
				},
				crafting_speed = 75,
				tech = 'botany-mk03'
		},
		--prod
		{
			ingredients =
				{
					{name='fertilizer',remove_item = true},
					{name='fertilizer', amount = 10},
					{name='urea', amount = 15},
					{name = 'biomass', remove_item = true},
					{name = 'biomass', amount = 25}
				},
			results =
				{
					{name='ralesias', amount = 75}
				},
			crafting_speed = 50,
			tech = 'botany-mk04'
		},
	}
}
