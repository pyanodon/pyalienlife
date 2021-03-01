
local fun = require("prototypes/functions/functions")

fun.autorecipes {
    name = 'guano',
	category = 'vrauks',
	subgroup = 'py-alienlife-vrauks',
	module_limitations = 'vrauks',
    mats =
	{
		{
			ingredients =
				{
                    {name='moss',amount =10},
                    {name='wood',amount =10},
				},
			results =
				{
					{name='guano',amount =5},
				},
			crafting_speed = 80,
			tech = 'vrauks',
			name = 'vrauks-guano-1',
			--icon = "__pyalienlifegraphics__/graphics/icons/atomizer-mk01.png"
		},
		{
			ingredients =
				{
                    {name='moss',amount ='R'},
                    {name='biomass',amount ='R'},
					{name='vrauks-food-01'},
				},
			results =
				{
					--{'a','*5'}
					{name='guano',amount ='+2'}
				},
			crafting_speed = 70,
			tech = 'vrauks',
			name = 'vrauks-guano-2',
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
					{name='guano',amount ='+6'}
				},
				crafting_speed = 50,
				tech = 'vrauks-mk02',
				name = 'vrauks-guano-3',
		},
		{
			ingredients =
				{
					{name='raw-fiber',amount =3},
				},
			results =
				{
					--{'a','*5'}
					{name='guano',amount ='+2'}
				},
				crafting_speed = 45,
				tech = 'vrauks-mk03',
				name = 'vrauks-guano-4',
		},
		{
			ingredients =
				{
					{name='salt',amount ='R'},
					{name='raw-fiber',amount ='R'},
					{name='vrauks-food-01',amount ='R'},
					{name='bedding',amount ='R'},
					{name='vrauks-food-02'},
				},
			results =
				{
					--{'a','*5'}
					{name='guano',amount ='+6'}
				},
				crafting_speed = 40,
				tech = 'vrauks-mk03',
				name = 'vrauks-guano-5',
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
					{name='guano',amount ='+6'}
				},
				crafting_speed = 25,
				tech = 'vrauks-mk04',
				name = 'vrauks-guano-6',
		},
		{
			ingredients =
				{
					{name='raw-fiber',amount =3},
				},
			results =
				{
					--{'a','*5'}
					{name='guano',amount ='+2'}
				},
				crafting_speed = 20,
				tech = 'vrauks-mk04',
				name = 'vrauks-guano-7',
		},
	}
}
