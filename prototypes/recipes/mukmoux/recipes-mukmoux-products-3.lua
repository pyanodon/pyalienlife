
local fun = require("prototypes/functions/functions")

fun.autorecipes {
    name = 'manure-b',
	category = 'mukmoux',
	subgroup = 'py-alienlife-mukmoux',
	module_limitations = 'mukmoux',
	order = 'z',
    mats =
	{
		{
			ingredients =
				{
                    {name='ralesia-seeds',amount =5},
                    {name='fawogae',amount =15},
					{name='water-barrel',amount=6,return_item={name='empty-barrel',amount=6}},
				},
			results =
				{
					{name='manure',amount ='*8'},
				},
			crafting_speed = 60,
			tech = 'explosive-diarrhea',
			name = 'muk-manure-1b',
			--icon = "__pyalienlifegraphics__/graphics/icons/atomizer-mk01.png"
		},
		--food 1
		{
			ingredients =
				{
					{name='ralesia-seeds',amount ='R'},
					{name='fawogae',amount ='R'},
					{name='mukmoux-food-01'},
				},
			results =
				{
					--{'a','*5'}
					--{name='manure',amount ='+2'}
				},
			crafting_speed = 50,
			tech = 'explosive-diarrhea',
			name = 'muk-manure-2b',
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
				crafting_speed = 45,
                tech = 'explosive-diarrhea',
                name = 'muk-manure-3b',
		},
		--fiber
		{
			ingredients =
				{
					{name='raw-fiber',amount =5},
				},
			results =
				{
					--{'a','*5'}
					{name='manure',amount ='+2'}
				},
				crafting_speed = 35,
                tech = 'explosive-diarrhea',
                name = 'muk-manure-4b',
		},
		--food 02
		{
			ingredients =
				{
					{name='salt',amount ='R'},
					{name='raw-fiber',amount ='R'},
					{name='mukmoux-food-01',amount ='R'},
					{name='mukmoux-food-02'},
				},
			results =
				{
					--{'a','*5'}
					{name='manure',amount ='+1'}
				},
				crafting_speed = 25,
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
				crafting_speed = 20,
                tech = 'explosive-diarrhea',
                name = 'muk-manure-6b',
		},
		--fiber
		{
			ingredients =
				{
					{name='raw-fiber',amount =3},
				},
			results =
				{
					--{'a','*5'}
					{name='manure',amount ='+2'}
				},
				crafting_speed = 10,
                tech = 'explosive-diarrhea',
                name = 'muk-manure-7b',
		},
	}
}
