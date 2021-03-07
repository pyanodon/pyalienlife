
local fun = require("prototypes/functions/functions")

fun.autorecipes {
    name = 'korlex-milk',
	category = 'korlex',
	module_limitations = 'korlex',
	subgroup = 'py-alienlife-korlex',
	order = 'z',
    mats =
	{
		{
			ingredients =
				{
                    {name='bhoddos',amount =2},
                    {name='tuuphra',amount =5},
                    {name='empty-barrel-milk',amount =1},
					{name='water-barrel',amount=10,return_item={name='empty-barrel',amount=10}},
				},
			results =
				{
					{name='milk-barrel',amount =1},
				},
			crafting_speed = 100,
			tech = 'korlex',
			name = 'korlex-milk-1',
			--icon = "__pyalienlifegraphics__/graphics/icons/atomizer-mk01.png"
		},
		--food 1
		{
			ingredients =
				{
					{name='bhoddos',amount ='R'},
					{name='tuuphra',amount ='R'},
					{name='korlex-food-01'},
				},
			results =
				{
					--{'a','*5'}
					--{name='milk-barrel',amount ='+2'}
				},
			crafting_speed = 80,
			tech = 'korlex',
			name = 'korlex-milk-2',
			--icon = "__pyalienlifegraphics__/graphics/icons/navens-culture-mk01.png"
		},
		--ash
		{
			ingredients =
				{
                    {name='ash',amount =10},
                    {name='empty-barrel-milk',amount ='+1'},
				},
			results =
				{
					--{'a','*5'}
					{name='milk-barrel',amount ='+1'}
				},
				crafting_speed = 80,
				tech = 'korlex-mk02',
				name = 'korlex-milk-3',
		},
		--fiber
		{
			ingredients =
				{
                    {name='fish',amount =5},
                    {name='empty-barrel-milk',amount ='+2'},
				},
			results =
				{
					--{'a','*5'}
					{name='milk-barrel',amount ='+2'}
				},
				crafting_speed = 80,
				tech = 'korlex-mk02',
				name = 'korlex-milk-4',
		},
		--food 02
		{
			ingredients =
				{
					{name='ash',amount ='R'},
					{name='fish',amount ='R'},
					{name='korlex-food-01',amount ='R'},
                    {name='korlex-food-02'},
                    {name='empty-barrel-milk',amount ='+3'},
				},
			results =
				{
					--{'a','*5'}
					{name='milk-barrel',amount ='+3'}
				},
				crafting_speed = 60,
				tech = 'korlex-mk03',
				name = 'korlex-milk-5',
		},
		--ash
		{
			ingredients =
				{
                    {name='ash',amount =4},
                    {name='empty-barrel-milk',amount ='+1'},
				},
			results =
				{
					--{'a','*5'}
					{name='milk-barrel',amount ='+1'}
				},
				crafting_speed = 60,
				tech = 'korlex-mk03',
				name = 'korlex-milk-6',
		},
		--fiber
		{
			ingredients =
				{
                    {name='fish',amount =5},
                    {name='empty-barrel-milk',amount ='+2'},
				},
			results =
				{
					--{'a','*5'}
					{name='milk-barrel',amount ='+2'}
				},
				crafting_speed = 60,
				tech = 'korlex-mk04',
				name = 'korlex-milk-7',
		},
	}
}
