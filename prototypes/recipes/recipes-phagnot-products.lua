
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
					{name='waterbarrel',amount=3,return_item={name='empty-barrel'}},
				},
			results =
				{
                    {name='manure',amount ='*2'},
				},
			crafting_speed = 90,
			tech = 'phagnot',
			name = 'phag-manure-1',
			--icon = "__pyalienlifegraphics__/graphics/icons/atomizer-mk01.png"
		},
		{
			ingredients =
				{
					{name='fawogae',amount ='R'},
					{name='phagnotfood01'},
				},
			results =
				{
					--{'a','*5'}
                    {name='manure',amount ='+1'},
				},
			crafting_speed = 80,
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
				crafting_speed = 70,
				tech = 'phagnot-mk02',
				name = 'phag-manure-3',
		},
		{
			ingredients =
				{
					{name='rawfiber',amount =10},
				},
			results =
				{
					--{'a','*5'}
                    {name='manure',amount ='+2'},
				},
				crafting_speed = 60,
				tech = 'phagnot-mk03',
				name = 'phag-manure-4',
		},
		{
			ingredients =
				{
					{name='salt',amount ='R'},
                    {name='rawfiber',amount ='R'},
                    {name='bedding',amount ='R'},
					{name='phagnotfood01',amount ='R'},
					{name='phagnotfood02'},
				},
			results =
				{
					--{'a','*5'}
                    --{name='manure',amount =5},
				},
				crafting_speed = 50,
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
				crafting_speed = 40,
				tech = 'phagnot-mk04',
				name = 'phag-manure-6',
		},
		{
			ingredients =
				{
					{name='rawfiber',amount =10},
				},
			results =
				{
					--{'a','*5'}
                    {name='manure',amount ='+2'},
				},
				crafting_speed = 30,
				tech = 'phagnot-mk04',
				name = 'phag-manure-7',
		},
	}
}
