
local fun = require("prototypes/functions/functions")

fun.autorecipes {
    name = 'manure-a',
	category = 'phagnot',
	subgroup = 'py-alienlife-phagnot',
    module_limitations = 'phagnot',
	order = 'z',
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
                    {name='manure',amount ='*3'},
				},
			crafting_speed = 130,
			tech = 'bigger-colon',
			name = 'phag-manure-1a',
			--icon = "__pyalienlifegraphics__/graphics/icons/atomizer-mk01.png"
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
			tech = 'bigger-colon',
			name = 'phag-manure-2a',
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
                    {name='manure',amount ='+6'},
				},
				crafting_speed = 120,
                tech = 'bigger-colon',
                name = 'phag-manure-3a',
		},
		{
			ingredients =
				{
					{name='rawfiber',amount =10},
				},
			results =
				{
					--{'a','*5'}
                    {name='manure',amount ='+2'},
				},
				crafting_speed = 120,
                tech = 'bigger-colon',
                name = 'phag-manure-4a',
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
                --    {name='manure',amount =5},
				},
				crafting_speed = 100,
                tech = 'bigger-colon',
                name = 'phag-manure-5a',
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
                    {name='manure',amount ='+6'},
				},
				crafting_speed = 100,
                tech = 'bigger-colon',
                name = 'phag-manure-6a',
		},
		{
			ingredients =
				{
					{name='rawfiber',amount =10},
				},
			results =
				{
					--{'a','*5'}
                    {name='manure',amount ='+2'},
				},
				crafting_speed = 100,
                tech = 'bigger-colon',
                name = 'phag-manure-7a',
		},
	}
}
