
local fun = require("prototypes/functions/functions")

fun.autorecipes {
    name = 'carapace',
	category = 'phadai',
	subgroup = 'py-alienlife-phadai',
	module_limitations = 'phadai',
    mats =
	{
		{
			ingredients =
				{
					{name='meat',amount =15},
					{name='water-barrel',amount=4,return_item={name='empty-barrel',amount=4}},
                    {name='programmable-speaker',amount=1},
                    {name='small-lamp',amount=2},
				},
			results =
				{
                    {name='carapace',amount ='*1'},
				},
			crafting_speed = 130,
			tech = 'phadai',
			name = 'phag-carapace-1',
			--icon = "__pyalienlifegraphics__/graphics/icons/atomizer-mk01.png"
		},
		{
			ingredients =
				{
					{name='fawogae',amount =4},
					{name='phadai-food-01'},
				},
			results =
				{
					--{'a','*5'}
                    {name='carapace',amount ='+1'},
				},
			crafting_speed = 120,
			tech = 'phadai',
			name = 'phag-carapace-2',
			--icon = "__pyalienlifegraphics__/graphics/icons/navens-culture-mk01.png"
		},
		{
			ingredients =
				{
                    {name='bedding',amount =1},
				},
			results =
				{
					--{'a','*5'}
                    {name='carapace',amount ='+1'},
				},
				crafting_speed = 120,
				tech = 'phadai',
				name = 'phag-carapace-3',
		},
		{
			ingredients =
				{
					{name='energy-drink',amount =4},
				},
			results =
				{
					--{'a','*5'}
                    {name='carapace',amount ='+1'},
				},
				crafting_speed = 120,
				tech = 'phadai',
				name = 'phag-carapace-4',
		},
		{
			ingredients =
				{
                    {name='energy-drink',amount ='R'},
                    {name='bedding',amount ='R'},
					{name='phadai-food-01',amount ='R'},
					{name='phadai-food-02'},
				},
			results =
				{
					--{'a','*5'}
                    {name='carapace',amount =5},
				},
				crafting_speed = 100,
				tech = 'phadai',
				name = 'phag-carapace-5',
		},
		{
			ingredients =
				{
                    {name='bedding',amount =2},
				},
			results =
				{
					--{'a','*5'}
                    {name='carapace',amount ='+1'},
				},
				crafting_speed = 100,
				tech = 'phadai',
				name = 'phag-carapace-6',
		},
		{
			ingredients =
				{
					{name='energy-drink',amount =4},
				},
			results =
				{
					--{'a','*5'}
                    {name='carapace',amount ='+1'},
				},
				crafting_speed = 100,
				tech = 'phadai',
				name = 'phag-carapace-7',
		},
	}
}
