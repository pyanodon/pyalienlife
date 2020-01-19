
local fun = require("prototypes/functions/functions")

fun.autorecipes {
    name = 'manure',
	category = 'scrondrix',
	subgroup = 'py-alienlife-scrondrix',
    module_limitations = 'scrondrix',
    order = 'z',
    mats =
	{
		{
			ingredients =
				{
                    {name='woodseeds',amount =10},
                    {name='meat',amount =4},
					{name='waterbarrel',amount=5,return_item={name='empty-barrel'}},
				},
			results =
				{
                    {name='manure',amount ='*3'},
				},
			crafting_speed = 130,
			tech = 'scrondrix',
			name = 'scrondrix-manure-1',
			--icon = "__pyalienlifegraphics__/graphics/icons/atomizer-mk01.png"
		},
		{
			ingredients =
				{
					--{name='woodseeds',amount ='R'},
					{name='yotoileaves'},
				},
			results =
				{
					--{'a','*5'}
                    {name='manure',amount ='+1'},
				},
			crafting_speed = 120,
			tech = 'scrondrix',
			name = 'scrondrix-manure-2',
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
                    {name='manure',amount ='+1'},
				},
				crafting_speed = 120,
				tech = 'scrondrix',
				name = 'scrondrix-manure-3',
		},
		{
			ingredients =
				{
					{name='fish',amount =5},
				},
			results =
				{
					--{'a','*5'}
                    {name='manure',amount ='+1'},
				},
				crafting_speed = 120,
				tech = 'scrondrix',
				name = 'scrondrix-manure-4',
		},
		{
			ingredients =
				{
					{name='navens',amount ='*4'},
				},
			results =
				{
					--{'a','*5'}
                    {name='manure',amount ='+1'},
				},
				crafting_speed = 100,
				tech = 'scrondrix',
				name = 'scrondrix-manure-5',
		},
		{
			ingredients =
				{
					{name='rawfiber',amount =10},
				},
			results =
				{
					--{'a','*5'}
                    {name='manure',amount ='+1'},
				},
				crafting_speed = 100,
				tech = 'scrondrix',
				name = 'scrondrix-manure-6',
		},
	}
}
