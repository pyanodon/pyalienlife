
local fun = require("prototypes/functions/functions")

fun.autorecipes {
    name = 'manure',
	category = 'phagnot',
	subgroup = 'py-alienlife-phagnot',
	module_limitations = 'phagnot',
    mats =
	{
		{
			ingredients =
				{
					{name='fawogae',amount =10},
					{name='water-barrel',amount=3,return_item={name='empty-barrel'}},
				},
			results =
				{
                    {name='manure',amount ='*2'},
				},
			crafting_speed = 80,
			tech = 'phagnot',
			name = 'phag-manure-1',
			--icon = "__pyalienlifegraphics__/graphics/icons/atomizer-mk01.png"
		},
		{
			ingredients =
				{
					{name='fawogae',remove_item = true},
					{name='phagnot-food-01'},
				},
			results =
				{
					--{'a','*5'}
                    {name='manure',amount ='+1'},
				},
			crafting_speed = 70,
			tech = 'phagnot-mk02',
			name = 'phag-manure-2',
			--icon = "__pyalienlifegraphics__/graphics/icons/navens-culture-mk01.png"
		},
		{
			ingredients =
				{
                    {name='salt',amount =4},
                    {name='bedding',amount =1},
				},
			results =
				{
					--{'a','*5'}
                    {name='manure',amount ='+6'},
				},
				crafting_speed = 55,
				tech = 'phagnot-mk02',
				name = 'phag-manure-3',
		},
		{
			ingredients =
				{
					{name='raw-fiber',amount =10},
				},
			results =
				{
					--{'a','*5'}
                    {name='manure',amount ='+2'},
				},
				crafting_speed = 40,
				tech = 'phagnot-mk03',
				name = 'phag-manure-4',
		},
		{
			ingredients =
				{
					{name='salt',remove_item = true},
                    {name='raw-fiber',remove_item = true},
                    {name='bedding',remove_item = true},
					{name='phagnot-food-01',remove_item = true},
					{name='phagnot-food-02'},
				},
			results =
				{
					--{'a','*5'}
                    --{name='manure',amount =5},
				},
				crafting_speed = 35,
				tech = 'phagnot-mk03',
				name = 'phag-manure-5',
		},
		{
			ingredients =
				{
                    {name='salt',amount =4},
                    {name='bedding',amount =2},
				},
			results =
				{
					--{'a','*5'}
                    {name='manure',amount ='+6'},
				},
				crafting_speed = 20,
				tech = 'phagnot-mk04',
				name = 'phag-manure-6',
		},
		{
			ingredients =
				{
					{name='raw-fiber',amount =5},
				},
			results =
				{
					--{'a','*5'}
                    {name='manure',amount ='+2'},
				},
				crafting_speed = 15,
				tech = 'phagnot-mk04',
				name = 'phag-manure-7',
		},
	}
}
