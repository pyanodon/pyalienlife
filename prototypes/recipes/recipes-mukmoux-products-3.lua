
local fun = require("prototypes/functions/functions")

fun.autorecipes {
    name = 'manure-b',
	category = 'mukmoux',
	subgroup = 'py-alienlife-mukmoux',
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
					{name='manure',amount =8},
				},
			crafting_speed = 100,
			tech = 'explosive-diarrhea',
			name = 'muk-manure-1b',
			--icon = "__pyalienlife__/graphics/icons/atomizer-mk01.png"
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
			tech = 'explosive-diarrhea',
			name = 'muk-manure-2b',
			--icon = "__pyalienlife__/graphics/icons/navens-culture-mk01.png"
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
                tech = 'explosive-diarrhea',
                name = 'muk-manure-3b',
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
                tech = 'explosive-diarrhea',
                name = 'muk-manure-4b',
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
					{name='manure',amount =12}
				},
				crafting_speed = 60,
                tech = 'explosive-diarrhea',
                name = 'muk-manure-5b',
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
                tech = 'explosive-diarrhea',
                name = 'muk-manure-6b',
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
                tech = 'explosive-diarrhea',
                name = 'muk-manure-7b',
		},
	}
}
