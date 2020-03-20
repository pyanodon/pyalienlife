
local fun = require("prototypes/functions/functions")

fun.autorecipes {
    name = 'manure-a',
	category = 'auog',
	subgroup = 'py-alienlife-auog',
	module_limitations = 'auog',
    mats =
	{
		{
			ingredients =
				{
                    {name='moss',amount =10},
                    {name='biomass',amount =10},
					{name='waterbarrel',amount=3,return_item={name='empty-barrel',amount=3}},
				},
			results =
				{
					{name='manure',amount ='*3'},
				},
			crafting_speed = 90,
			tech = 'bigger-colon',
			name = 'auog-manure-1a',
			--icon = "__pyalienlifegraphics__/graphics/icons/atomizer-mk01.png"
		},
		{
			ingredients =
				{
                    {name='moss',amount ='R'},
                    {name='biomass',amount ='R'},
					{name='auogfood01'},
				},
			results =
				{
					--{'a','*5'}
					{name='manure',amount ='+2'}
				},
			crafting_speed = 80,
			tech = 'bigger-colon',
			name = 'auog-manure-2a',
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
				crafting_speed = 70,
				tech = 'bigger-colon',
				name = 'auog-manure-3a',
		},
		{
			ingredients =
				{
					{name='rawfiber',amount =5},
				},
			results =
				{
					--{'a','*5'}
					{name='manure',amount ='+2'}
				},
				crafting_speed = 60,
				tech = 'bigger-colon',
				name = 'auog-manure-4a',
		},
		{
			ingredients =
				{
					{name='salt',amount ='R'},
					{name='rawfiber',amount ='R'},
					{name='auogfood01',amount ='R'},
					{name='bedding',amount ='R'},
					{name='auogfood02'},
				},
			results =
				{
					--{'a','*5'}
					{name='manure',amount ='+1'}
				},
				crafting_speed = 50,
				tech = 'bigger-colon',
				name = 'auog-manure-5a',
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
				crafting_speed = 40,
				tech = 'bigger-colon',
				name = 'auog-manure-6a',
		},
		{
			ingredients =
				{
					{name='rawfiber',amount =5},
				},
			results =
				{
					--{'a','*5'}
					{name='manure',amount ='+2'}
				},
				crafting_speed = 30,
				tech = 'bigger-colon',
				name = 'auog-manure-7a',
		},
	}
}
