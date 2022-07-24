local FUN = require("__pycoalprocessing__/prototypes/functions/functions")


FUN.autorecipes {
    name = 'grod',
	category = 'grod',
	module_limitations = 'grod',
	main_product = 'grod',
	subgroup = 'py-alienlife-grod',
    order = 'a',
    mats =
	{
		--logistic
        {
			ingredients =
				{
                    {name='grod-seeds', amount = 5},
                    {name='urea', amount = 10, fallback = 'manure'},
					{name='water', amount = 500},
					{name='limestone', amount = 5},
                    {name='soil', amount = 10},
				},
			results =
				{
					{name='grod', amount = 10},
				},
			crafting_speed = 150,
			tech = 'grod'
		},
		--py
        {
			ingredients =
				{
                    {name='fertilizer', amount = 5},
                    {name='ash', amount =10},
                    {name='biomass', amount = 5},
				},
			results =
				{
					{name='grod', add_amount = 7}
				},
				crafting_speed = 110,
				tech = 'grod-mk02'
        },
		--chem
        {
			ingredients =
				{
                    {name='coarse', amount =6},
					{name='pesticide-mk01', amount = 2},
					{name='slacked-lime', amount = 20},
				},
			results =
				{
					{name='grod', add_amount = 10}
				},
				crafting_speed = 70,
				tech = 'grod-mk03'
        },
		--production
        {
			ingredients =
				{

                    {name='fertilizer', add_amount = 8},
                    {name='pesticide-mk02', amount = 2},
					{name = 'water', remove_item = true},
                    {name='flue-gas', amount = 40},
					{name='gh', amount = 1},
					{name='biomass', amount =10},
					{name='slacked-lime', add_amount = 50},
					{name='urea', add_amount = 20, fallback = 'manure'},
				},
			results =
				{
					{name='grod', add_amount = 15}
				},
				crafting_speed = 30,
				tech = 'grod-mk04'
		},
	}
}
