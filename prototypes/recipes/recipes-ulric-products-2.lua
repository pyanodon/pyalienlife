
local fun = require("prototypes/functions/functions")

fun.autorecipes {
    name = 'manure-a',
	category = 'ulric',
	subgroup = 'py-alienlife-ulric',
	module_limitations = 'ulric',
    mats =
	{
		{
			ingredients =
				{
					{name='ralesiaseeds',amount =5},
					{name='waterbarrel',amount=5,return_item={name='empty-barrel'}},
				},
			results =
				{
					{name='manure',amount ='*4'},
				},
			crafting_speed = 130,
			tech = 'bigger-colon',
			name = 'manure-1a',
			--name = 'cheeses',
			--icon = "__pyalienlifegraphics__/graphics/icons/atomizer-mk01.png"
		},
		{
			ingredients =
				{
					{name='ralesiaseeds',amount ='R'},
					{name='ulricfood01'},
				},
			results =
				{
					--{'a','*5'}
					{name='manure',amount ='+2'}
				},
			crafting_speed = 120,
			tech = 'bigger-colon',
			name = 'manure-2a',
			--name = 'jesus',
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
				crafting_speed = 120,
				tech = 'bigger-colon',
				name = 'manure-3a',
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
				crafting_speed = 120,
				tech = 'bigger-colon',
				name = 'manure-4a',
		},
		{
			ingredients =
				{
					{name='salt',amount ='R'},
					{name='rawfiber',amount ='R'},
					{name='ulricfood01',amount ='R'},
					{name='bedding',amount ='R'},
					{name='ulricfood02'},
				},
			results =
				{
					--{'a','*5'}
					{name='manure',amount ='+1'}
				},
				crafting_speed = 100,
				tech = 'bigger-colon',
				name = 'manure-5a',
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
				crafting_speed = 100,
				tech = 'bigger-colon',
				name = 'manure-6a',
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
				crafting_speed = 100,
				tech = 'bigger-colon',
				name = 'manure-7a',
		},
	}
}
