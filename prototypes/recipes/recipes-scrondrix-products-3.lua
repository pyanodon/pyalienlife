
local fun = require("prototypes/functions/functions")

fun.autorecipes {
    name = 'manure-b',
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
                    {name='manure',amount ='*5'},
				},
			crafting_speed = 130,
			tech = 'explosive-diarrhea',
			name = 'scrondrix-manure-1b',
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
			tech = 'explosive-diarrhea',
			name = 'scrondrix-manure-2b',
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
				tech = 'explosive-diarrhea',
				name = 'scrondrix-manure-3b',
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
				tech = 'explosive-diarrhea',
				name = 'scrondrix-manure-4b',
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
				tech = 'explosive-diarrhea',
				name = 'scrondrix-manure-5b',
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
				tech = 'explosive-diarrhea',
				name = 'scrondrix-manure-6b',
		},
	}
}
