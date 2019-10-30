
local fun = require("prototypes/functions/functions")

fun.autorecipes {
    name = 'manure-b',
	category = 'auog',
	subgroup = 'py-alienlife-auog',
	module_limitations = 'auog',
    mats =
	{
		{
			ingredients =
				{
                    {name='moss',amount =5},
                    {name='biomass',amount =10},
					{name='waterbarrel',amount=3,return_item={name='empty-barrel',amount=3}},
				},
			results =
				{
					{name='manure',amount ='*4'},
				},
			crafting_speed = 130,
			tech = 'explosive-diarrhea',
			name = 'auog-manure-1b',
			--icon = "__pyalienlife__/graphics/icons/atomizer-mk01.png"
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
			tech = 'explosive-diarrhea',
			name = 'auog-manure-2b',
			--icon = "__pyalienlife__/graphics/icons/navens-culture-mk01.png"
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
					{name='manure',amount ='+1'}
				},
				crafting_speed = 120,
				tech = 'explosive-diarrhea',
				name = 'auog-manure-3b',
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
				tech = 'explosive-diarrhea',
				name = 'auog-manure-4b',
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
				crafting_speed = 100,
				tech = 'explosive-diarrhea',
				name = 'auog-manure-5b',
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
					{name='manure',amount ='+2'}
				},
				crafting_speed = 100,
				tech = 'explosive-diarrhea',
				name = 'auog-manure-6b',
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
				tech = 'explosive-diarrhea',
				name = 'auog-manure-7b',
		},
	}
}
