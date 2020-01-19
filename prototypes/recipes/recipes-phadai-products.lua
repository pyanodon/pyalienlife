
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
					{name='waterbarrel',amount=4,return_item={name='empty-barrel',amount=4}},
                    {name='speaker',amount=1},
                    {name='smalllamp',amount=2},
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
					{name='phadaifood01'},
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
					{name='energydrink',amount =4},
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
                    {name='energydrink',amount ='R'},
                    {name='bedding',amount ='R'},
					{name='phadaifood01',amount ='R'},
					{name='phadaifood02'},
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
					{name='energydrink',amount =4},
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
