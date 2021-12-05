local fun = require("prototypes/functions/functions")

fun.autorecipes {
    name = 'vrauks',
	category = 'vrauks',
	module_limitations = 'vrauks',
	subgroup = 'py-alienlife-vrauks',
	order = 'b',
	main_product = 'vrauks',
    mats =
	{
		--base
		{
			ingredients =
				{
					{name = 'cocoon', amount = 4},
                    {name='native-flora', amount =15},
                    {name='moss', amount =5},
				},
			results =
				{
					{name='vrauks', amount = 4},
				},
			crafting_speed = 160,
			--tech = 'vrauks'
		},
		--red
		{
			ingredients =
				{
					{name='native-flora',remove_item = true},
					{name = 'cocoon', add_amount = 3},
					{name='moss', add_amount = 5},
					{name='vrauks-food-01', amount = 3},
					{name = 'water-barrel', amount = 3, return_barrel = true},
					{name='saps', amount = 10},
					{name='fawogae', amount = 5},
				},
			results =
				{
					{name='vrauks', add_amount = 3},
				},
			crafting_speed = 100,
			tech = 'vrauks'
		},
		--green
		{
			ingredients =
				{
					{name = 'cocoon', add_amount = 8},
					{name='bedding', amount = 1},
					{name='vrauks-food-02', amount =4},
					{name='saps', add_amount = 10},
					{name='fawogae', add_amount = 5},

				},
			results =
				{
					{name='vrauks', add_amount = 8},
				},
			crafting_speed = 80,
			tech = 'vrauks-mk02'
		},

		--py
		{
			ingredients =
				{
					{name='cocoon', add_amount = 10},
					{name='bedding', add_amount = 5},
					{name='honeycomb', amount = 4},
					{name='syrup-01-barrel', amount=2,return_item={name='empty-barrel', amount=2}},
				},
			results =
				{
					{name='vrauks', add_amount = 10},
				},
			crafting_speed = 60,
			tech = 'vrauks-mk03'
		},
		--production
		{
			ingredients =
				{
					{name='cocoon', add_amount = 10},
					{name='bedding', add_amount = 5},
					{name='vrauks-food-01', add_amount = 7},
					{name='vrauks-food-02', add_amount = 6},
				},
			results =
				{
					{name='vrauks', add_amount = 10},
				},
			crafting_speed = 40,
			tech = 'vrauks-mk04'
		}
	}
}

------------------CUB MAKER------------------

fun.autorecipes {
    name = 'vrauks-coccon',
	category = 'vrauks',
	module_limitations = 'vrauks',
	subgroup = 'py-alienlife-vrauks',
	order = 'c',
	main_product = 'cocoon',
    mats =
	{
		--base
		{
			ingredients =
				{
                    {name='vrauks', amount =2},
                    {name='moss', amount =10},
					{name='saps', amount = 3},
				},
			results =
				{
					{name='cocoon', amount_min =5, amount_max =7},
				},
			crafting_speed = 120,
			--tech = 'vrauks'
		},
		--red
		{
			ingredients =
				{
					{name='vrauks', add_amount = 2},
                    {name='native-flora', amount = 10},
					{name='vrauks-food-01', amount =2},
					{name='water-barrel', amount=4, return_barrel = true},
				},
			results =
				{
					{name='cocoon', amount_min =8, amount_max =12},
				},
			crafting_speed = 100,
			tech = 'vrauks'
		},
		--green
		{
			ingredients =
				{
					{name='vrauks', add_amount = 2},
					{name='bedding', amount = 3},
					{name='vrauks-food-02', amount =4},
					{name='saps', add_amount = 7},
				},
			results =
				{
					{name='cocoon', amount_min = 12, amount_max =18},
				},
			crafting_speed = 80,
			tech = 'vrauks-mk02'
		},
		--py
		{
			ingredients =
				{
					{name='vrauks', add_amount = 2},
					{name='vrauks-food-01', add_amount = 5},
					{name='vrauks-food-02', add_amount = 8},
					{name='bedding', add_amount = 5},
					{name='honeycomb', amount = 4},
					{name='syrup-01-barrel', amount=2,return_item={name='empty-barrel', amount=2}},
					{name='fawogae', amount = 5},
				},
			results =
				{
					{name='cocoon', amount_min = 15, amount_max =25},
				},
			crafting_speed = 60,
			tech = 'vrauks-mk03'
		},
		--production
		{
			ingredients =
				{
					{name='vrauks', add_amount = 2},
					{name='vrauks-food-01', add_amount = 5},
					{name='vrauks-food-02', add_amount = 8},
					{name='bedding', add_amount = 5},

				},
			results =
				{
					{name = 'cocoon', remove_item = true},
					{name = 'cocoon', amount = 40}
				},
			crafting_speed = 40,
			tech = 'assisted-embryology'
		},
	}
}
