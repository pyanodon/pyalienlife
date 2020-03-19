
local fun = require("prototypes/functions/functions")

fun.autorecipes {
    name = 'manure',
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
					{name='manure',amount ='*2'},
				},
			crafting_speed = 130,
			tech = 'auog',
			name = 'auog-manure-1',
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
			crafting_speed = 120,
			tech = 'auog',
			name = 'auog-manure-2',
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
				tech = 'auog-mk02',
				name = 'auog-manure-3',
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
				tech = 'auog-mk03',
				name = 'auog-manure-4',
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
					{name='manure',amount ='+6'}
				},
				crafting_speed = 100,
				tech = 'auog-mk03',
				name = 'auog-manure-5',
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
				tech = 'auog-mk04',
				name = 'auog-manure-6',
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
				tech = 'auog-mk04',
				name = 'auog-manure-7',
		},
	}
}
