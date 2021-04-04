
local fun = require("prototypes/functions/functions")

fun.autorecipes {
    name = 'korlex-milk-b',
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
                    {name='empty-barrel-milk',amount =2},
					{name='water-barrel',amount=10,return_item={name='empty-barrel',amount=10}},
				},
			results =
				{
					{name='barrel-milk',amount =2},
				},
			crafting_speed = 100,
			tech = 'biopolymer-clusters',
			name = 'korlex-milk-1b',
			--icon = "__pyalienlifegraphics__/graphics/icons/atomizer-mk01.png"
		},
		--food 1
		{
			ingredients =
				{
					{name='bhoddos',remove_item = true},
					{name='tuuphra',remove_item = true},
					{name='korlex-food-01'},
				},
			results =
				{
					--{'a','*5'}
					--{name='barrel-milk',amount ='+2'}
				},
			crafting_speed = 80,
			tech = 'biopolymer-clusters',
			name = 'korlex-milk-2b',
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
					{name='barrel-milk',amount ='+1'}
				},
				crafting_speed = 80,
				tech = 'biopolymer-clusters',
				name = 'korlex-milk-3b',
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
					{name='barrel-milk',amount ='+2'}
				},
				crafting_speed = 80,
				tech = 'biopolymer-clusters',
				name = 'korlex-milk-4b',
		},
		--food 02
		{
			ingredients =
				{
					{name='ash',remove_item = true},
					{name='fish',remove_item = true},
					{name='korlex-food-01',remove_item = true},
                    {name='korlex-food-02'},
                    {name='empty-barrel-milk',amount ='+3'},
				},
			results =
				{
					--{'a','*5'}
					{name='barrel-milk',amount ='+3'}
				},
				crafting_speed = 60,
				tech = 'biopolymer-clusters',
				name = 'korlex-milk-5b',
		},
		--ash
		{
			ingredients =
				{
                    {name='ash',amount =4},
                    {name='empty-barrel-milk',amount ='+4'},
				},
			results =
				{
					--{'a','*5'}
					{name='barrel-milk',amount ='+4'}
				},
				crafting_speed = 60,
				tech = 'biopolymer-clusters',
				name = 'korlex-milk-6b',
		},
		--fiber
		{
			ingredients =
				{
                    {name='fish',amount =5},
                    {name='empty-barrel-milk',amount ='+5'},  -- 4 would be ok too but in the case of b recipes not so worth it
				},
			results =
				{
					--{'a','*5'}
					{name='barrel-milk',amount ='+5'}
				},
				crafting_speed = 60,
				tech = 'biopolymer-clusters',
				name = 'korlex-milk-7b',
		},
	}
}
