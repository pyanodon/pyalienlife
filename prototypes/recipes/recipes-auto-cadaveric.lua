local fun = require("prototypes/functions/functions")


fun.autorecipes {
    name = 'cadaveric-arum',
	--baseitem = 'cadaveric-arum',
	category = 'arum',
	module_limitations = 'cadaveric-arum',
	subgroup = 'py-alienlife-cadaveric',
    order = 'a',
    mats =
	{
        {
			ingredients =
				{
                    {name='cadaveric-arum-seeds'},
                    {name='coal-gas',amount = "*10"},
				},
			results =
				{
					{name='cadaveric-arum',amount = 1},
				},
			crafting_speed = 125,
			tech = 'cadaveric-arum'
		},
		{
			ingredients =
				{
					{name='cadaveric-arum-seeds',amount = "+1"},
					{name='water',amount = 500},
				},
			results =
				{
					{name='cadaveric-arum',amount = "+1"},
				},
			crafting_speed = 110,
			tech = 'cadaveric-arum'
		},
		{
			ingredients =
				{
                    {name='cadaveric-arum-seeds',amount = "+1"},
					{name='sand',amount = 5},
				},
			results =
				{
					--{'a','*5'}
					{name='cadaveric-arum',amount ='+1'}
				},
				crafting_speed = 100,
				tech = 'cadaveric-arum'
		},
		{
			ingredients =
				{
                    {name='cadaveric-arum-seeds',amount = "+1"},
                    {name='stone-wool',amount ='+1'},
				},
			results =
				{
					--{'a','*7'},
					{name='cadaveric-arum',amount ='+1'}
				},
				crafting_speed = 90,
				tech = 'cadaveric-arum'
        },
        {
			ingredients =
				{
                    --{'s1'},
                    {name='cadaveric-arum-seeds',amount = "+3"},
                    {name='coal-gas',amount ='R'},
                    {name='manure',amount =5},
				},
			results =
				{
					--{'a','*10'},
					{name='cadaveric-arum',amount ='+3'}
				},
				crafting_speed = 75,
				tech = 'cadaveric-arum-mk02'
        },
        {
			ingredients =
				{
                    --{'s1'},
                    --{'a'},
                    --{'b','+15'},
                    {name='cadaveric-arum-seeds',amount = "+2"},
                    {name='ash',amount =7},
				},
			results =
				{
					--{'a','*12'},
					{name='cadaveric-arum',amount ='+2'}
				},
				crafting_speed = 70,
				tech = 'cadaveric-arum-mk02'
        },
        {
			ingredients =
				{
                    --{'s1'},
                    --{'a'},
                    {name='cadaveric-arum-seeds',amount = "+1"},
					{name='coal-gas',amount ='R'},
                    {name='blood-meal',amount ='*4'},
                    --{'d'},
				},
			results =
				{
					--{'a','*15'},
					{name='cadaveric-arum',amount ='+1'}
				},
				crafting_speed = 60,
				tech = 'cadaveric-arum-mk02'
		},
		{
			ingredients =
				{
                    --{'s1'},
                    --{'a'},
                    --{'b','+15'},
                    --{'g','*2'},
                    {name='cadaveric-arum-seeds',amount = "+4"},
					--{name='manure',amount ='R'},
                    {name='pesticide-mk01',amount ='+1'},
				},
			results =
				{
					--{'a','*25'},
					--{'a','+3'}
					{name='cadaveric-arum',amount ='+4'}
				},
				crafting_speed = 50,
				tech = 'cadaveric-arum-mk03'
		},
        {
			ingredients =
				{
                    --{'s1'},
                    --{'a'},
                    {name='acidgas',amount ='*10'},
                    {name='cadaveric-arum-seeds',amount = "+2"},
				},
			results =
				{
					--{'a','*17'},
					{name='cadaveric-arum',amount ='+2'}
				},
				crafting_speed = 40,
				tech = 'cadaveric-arum-mk03'
		},
		{
			ingredients =
				{
                    --{'s1'},
                    --{'a'},
                    --{'b','+15'},
                    --{'g','*2'},
					--{'d'},
                    {name='cadaveric-arum-seeds',amount = "+6"},
					{name='pesticide-mk01',amount ='R'},
					{name='pesticide-mk02',amount ='+1'},
				},
			results =
				{
					--{'a','*25'},
					--{'a','+3'}
					{name='cadaveric-arum',amount ='+6'}
				},
				crafting_speed = 30,
				tech = 'cadaveric-arum-mk03'
		},
        {
			ingredients =
				{
                    --{'s1'},
                    --{'a'},
                    --{'b','+15'},
                    --{'g','*2'},
                    {name='cadaveric-arum-seeds',amount = "+6"},
					{name='manure',amount ='R'},
                    {name='fertilizer',amount ='+2'},
				},
			results =
				{
					--{'a','*25'},
					--{'a','+3'}
					{name='cadaveric-arum',amount ='+6'}
				},
				crafting_speed = 20,
				tech = 'cadaveric-arum-mk04'
		},
    --GH
		{
			ingredients =
				{
					{name='blood-meal',amount ='R'},
					{name='flue-gas',amount ='R'},
					{name='manure',amount ='R'},
                    {name='fertilizer',amount ='R'},
					{name='coal-gas',amount ='R'},
					--{name='pesticide-mk02',amount ='R'},
                    --{name='water',amount ='*5'},
                    {name='cadaveric-arum-seeds',amount = "+5"},
					{name='gh',1},
				},
			results =
				{
					{name='cadaveric-arum',amount ="+5"}
				},
			crafting_speed = 10,
			tech = 'cadaveric-arum-mk04'
		},
		{
			ingredients =
				{
					{name='blood-meal',amount =10},
                    {name='cadaveric-arum-seeds',amount = "+4"},
					--{'manure','R'},
					--{'blood-meal','R'},
					--{'gh',1},
				},
			results =
				{
					{name='cadaveric-arum',amount ="+4"}
				},
			crafting_speed = 10,
			tech = 'cadaveric-arum-mk04'
		},
		{
			ingredients =
				{
					{name='manure',amount =10},
                    {name='cadaveric-arum-seeds',amount = "+3"},
					--{'gh',1},
				},
			results =
				{
					{name='cadaveric-arum',amount ="+3"}
				},
			crafting_speed = 7,
			tech = 'cadaveric-arum-mk04'
		},
		{
			ingredients =
				{
                    {name='manure',amount ='R'},
					{name='fertilizer',amount =4},
					{name='coal-gas',amount =15},
                    {name='cadaveric-arum-seeds',amount = "+8"},
				},
			results =
				{
					{name='cadaveric-arum',amount ="+8"}
				},
			crafting_speed = 5,
			tech = 'cadaveric-arum-mk04'
		},
	}
}
