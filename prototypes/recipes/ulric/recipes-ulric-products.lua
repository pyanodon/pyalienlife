
local fun = require("prototypes/functions/functions")

fun.autorecipes {
    name = 'manure',
	category = 'ulric',
	subgroup = 'py-alienlife-ulric',
	module_limitations = 'ulric',
    mats =
	{
		{
			ingredients =
				{
					{name='ralesia-seeds',amount =5},
					{name='water-barrel',amount=5,return_item={name='empty-barrel'}},
				},
			results =
				{
					{name='manure',amount ='*3'},
				},
			crafting_speed = 80,
			tech = 'ulric',
			name = 'manure-1',
			--icon = "__pyalienlifegraphics__/graphics/icons/atomizer-mk01.png"
		},
		{
			ingredients =
				{
					{name='ralesia-seeds',remove_item = true},
					{name='ulric-food-01'},
				},
			results =
				{
					--{'a','*5'}
					{name='manure',amount ='+2'}
				},
			crafting_speed = 70,
			tech = 'ulric',
			name = 'manure-2',
			--icon = "__pyalienlifegraphics__/graphics/icons/navens-culture-mk01.png"
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
					{name='manure',amount ='+6'}
				},
				crafting_speed = 55,
				tech = 'ulric-mk02',
				name = 'manure-3',
		},
		{
			ingredients =
				{
					{name='raw-fiber',amount =3},
				},
			results =
				{
					--{'a','*5'}
					{name='manure',amount ='+2'}
				},
				crafting_speed = 50,
				tech = 'ulric-mk02',
				name = 'manure-4',
		},
		{
			ingredients =
				{
					{name='salt',remove_item = true},
					{name='raw-fiber',remove_item = true},
					{name='ulric-food-01',remove_item = true},
					{name='bedding',remove_item = true},
					{name='ulric-food-02'},
				},
			results =
				{
					--{'a','*5'}
					{name='manure',amount ='+1'}
				},
				crafting_speed = 40,
				tech = 'ulric-mk03',
				name = 'manure-5',
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
					{name='manure',amount ='+6'}
				},
				crafting_speed = 30,
				tech = 'ulric-mk04',
				name = 'manure-6',
		},
		{
			ingredients =
				{
					{name='raw-fiber',amount =3},
				},
			results =
				{
					--{'a','*5'}
					{name='manure',amount ='+2'}
				},
				crafting_speed = 20,
				tech = 'ulric--mk04',
				name = 'manure-7',
		},
	}
}
