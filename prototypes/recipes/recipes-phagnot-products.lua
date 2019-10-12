
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
			crafting_speed = 130,
			tech = 'phagnot',
			--name = 'cheeses',
			--icon = "__pyalienlife__/graphics/icons/atomizer-mk01.png"
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
			crafting_speed = 120,
			tech = 'phagnot',
			--name = 'jesus',
			--icon = "__pyalienlife__/graphics/icons/navens-culture-mk01.png"
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
				tech = 'phagnot'
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
				crafting_speed = 120,
				tech = 'phagnot'
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
                    {name='manure',amount =5},
				},
				crafting_speed = 100,
				tech = 'phagnot'
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
                    {name='manure',amount ='+1'},
				},
				crafting_speed = 100,
				tech = 'phagnot'
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
				tech = 'phagnot'
		},
	}
}
