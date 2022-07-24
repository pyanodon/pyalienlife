
local FUN = require("__pycoalprocessing__/prototypes/functions/functions")

FUN.autorecipes {
    name = 'guano',
	category = 'vrauks',
	subgroup = 'py-alienlife-vrauks',
	module_limitations = 'vrauks',
    mats =
	{
		{
			ingredients =
				{
                    {name='moss', amount =10},
                    {name='wood', amount =10},
				},
			results =
				{
					{name='guano', amount =5},
				},
			crafting_speed = 80,
			tech = 'vrauks',
			name = 'vrauks-guano-1',
			--icon = "__pyalienlifegraphics__/graphics/icons/atomizer-mk01.png"
		},
		{
			ingredients =
				{
                    {name='moss',remove_item = true},
                    {name='biomass',remove_item = true},
					{name='vrauks-food-01', amount = 1},
				},
			results =
				{

					{name='guano', add_amount = 2},
				},
			crafting_speed = 70,
			tech = 'vrauks',
			name = 'vrauks-guano-2',
			--icon = "__pyalienlifegraphics__/graphics/icons/navens-culture-mk01.png"
		},
		{
			ingredients =
				{
					{name='salt', amount =4},
					{name='bedding', amount =2},
				},
			results =
				{

					{name='guano', add_amount = 6},
				},
				crafting_speed = 50,
				tech = 'vrauks-mk02',
				name = 'vrauks-guano-3',
		},
		{
			ingredients =
				{
					{name='raw-fiber', amount =3},
				},
			results =
				{

					{name='guano', add_amount = 2},
				},
				crafting_speed = 45,
				tech = 'vrauks-mk03',
				name = 'vrauks-guano-4',
		},
		{
			ingredients =
				{
					{name='salt',remove_item = true},
					{name='raw-fiber',remove_item = true},
					{name='vrauks-food-01',remove_item = true},
					{name='bedding',remove_item = true},
					{name='vrauks-food-02', amount = 2},
				},
			results =
				{

					{name='guano', add_amount = 6},
				},
				crafting_speed = 40,
				tech = 'vrauks-mk03',
				name = 'vrauks-guano-5',
		},
		{
			ingredients =
				{
					{name='salt', amount =4},
					{name='bedding', amount =2},
				},
			results =
				{

					{name='guano', add_amount = 6},
				},
				crafting_speed = 25,
				tech = 'vrauks-mk04',
				name = 'vrauks-guano-6',
		},
		{
			ingredients =
				{
					{name='raw-fiber', amount =3},
				},
			results =
				{

					{name='guano', add_amount = 2},
				},
				crafting_speed = 20,
				tech = 'vrauks-mk04',
				name = 'vrauks-guano-7',
		},
	}
}
