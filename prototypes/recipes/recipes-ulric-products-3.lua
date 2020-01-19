
local fun = require("prototypes/functions/functions")

fun.autorecipes {
    name = 'manure-b',
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
					{name='manure',amount ='*5'},
				},
			crafting_speed = 130,
			tech = 'explosive-diarrhea',
			name = 'manure-1b',
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
			tech = 'explosive-diarrhea',
			name = 'manure-2b',
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
					{name='manure',amount ='+1'}
				},
				crafting_speed = 120,
				tech = 'explosive-diarrhea',
				name = 'manure-3b',
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
				name = 'manure-4b',
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
					{name='manure',amount =10}
				},
				crafting_speed = 100,
				tech = 'explosive-diarrhea',
				name = 'manure-5b',
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
				name = 'manure-6b',
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
				name = 'manure-7b',
		},
	}
}
