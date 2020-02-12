
local fun = require("prototypes/functions/functions")

fun.autorecipes {
    name = 'manure',
	category = 'mukmoux',
	module_limitations = 'mukmoux',
	subgroup = 'py-alienlife-mukmoux',
	order = 'z',
    mats =
	{
		{
			ingredients =
				{
                    {name='ralesiaseeds',amount =5},
                    {name='fawogae',amount =15},
					{name='waterbarrel',amount=6,return_item={name='empty-barrel',amount=6}},
				},
			results =
				{
					{name='manure',amount =6},
				},
			crafting_speed = 100,
			tech = 'mukmoux',
			name = 'muk-manure-1',
			--icon = "__pyalienlifegraphics__/graphics/icons/atomizer-mk01.png"
		},
		--food 1
		{
			ingredients =
				{
					{name='ralesiaseeds',amount ='R'},
					{name='fawogae',amount ='R'},
					{name='mukmouxfood01'},
				},
			results =
				{
					--{'a','*5'}
					--{name='manure',amount ='+2'}
				},
			crafting_speed = 80,
			tech = 'mukmoux',
			name = 'muk-manure-2',
			--icon = "__pyalienlifegraphics__/graphics/icons/navens-culture-mk01.png"
		},
		--salt
		{
			ingredients =
				{
					{name='salt',amount =10},
				},
			results =
				{
					--{'a','*5'}
					{name='manure',amount ='+1'}
				},
				crafting_speed = 80,
				tech = 'mukmoux',
				name = 'muk-manure-3',
		},
		--fiber
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
				crafting_speed = 80,
				tech = 'mukmoux',
				name = 'muk-manure-4',
		},
		--food 02
		{
			ingredients =
				{
					{name='salt',amount ='R'},
					{name='rawfiber',amount ='R'},
					{name='mukmouxfood01',amount ='R'},
					{name='mukmouxfood02'},
				},
			results =
				{
					--{'a','*5'}
					{name='manure',amount =10}
				},
				crafting_speed = 60,
				tech = 'mukmoux',
				name = 'muk-manure-5',
		},
		--salt
		{
			ingredients =
				{
					{name='salt',amount =4},
				},
			results =
				{
					--{'a','*5'}
					{name='manure',amount ='+2'}
				},
				crafting_speed = 60,
				tech = 'mukmoux',
				name = 'muk-manure-6',
		},
		--fiber
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
				tech = 'mukmoux',
				name = 'muk-manure-7',
		},
	}
}
