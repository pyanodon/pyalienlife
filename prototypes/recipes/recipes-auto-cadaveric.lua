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
                    {name='cadavericarumseeds'},
                    {name='coalgas',amount = "*10"},
				},
			results =
				{
					{name='cadavericarum',amount = 1},
				},
			crafting_speed = 150,
			tech = 'cadaveric-arum'
		},
		{
			ingredients =
				{
					{name='cadavericarumseeds',amount = "+1"},
					{name='water',amount = 500},
				},
			results =
				{
					{name='cadavericarum',amount = "+1"},
				},
			crafting_speed = 130,
			tech = 'cadaveric-arum'
		},
		{
			ingredients =
				{
                    {name='cadavericarumseeds',amount = "+1"},
					{name='sand',amount = 5},
				},
			results =
				{
					--{'a','*5'}
					{name='cadavericarum',amount ='+1'}
				},
				crafting_speed = 120,
				tech = 'cadaveric-arum'
		},
		{
			ingredients =
				{
                    {name='cadavericarumseeds',amount = "+1"},
                    {name='stonewool',amount ='+1'},
				},
			results =
				{
					--{'a','*7'},
					{name='cadavericarum',amount ='+1'}
				},
				crafting_speed = 120,
				tech = 'cadaveric-arum'
        },
        {
			ingredients =
				{
                    --{'s1'},
                    --{'a'},
                    {name='coalgas',amount ='R'},
                    {name='manure',amount =5},
				},
			results =
				{
					--{'a','*10'},
					{name='cadavericarum',amount ='+1'}
				},
				crafting_speed = 100,
				tech = 'cadaveric-arum-mk02'
        },
        {
			ingredients =
				{
                    --{'s1'},
                    --{'a'},
                    --{'b','+15'},
                    --{'c','*10'},
                    {name='ash',amount =10},
				},
			results =
				{
					--{'a','*12'},
					{name='cadavericarum',amount ='+1'}
				},
				crafting_speed = 100,
				tech = 'cadaveric-arum-mk02'
        },
        {
			ingredients =
				{
                    --{'s1'},
                    --{'a'},
					--{'b','+15'},
					{name='coalgas',amount ='R'},
                    {name='bloodmeal',amount ='*5'},
                    --{'d'},
				},
			results =
				{
					--{'a','*15'},
					{name='cadavericarum',amount ='+1'}
				},
				crafting_speed = 100,
				tech = 'cadaveric-arum-mk02'
        },
        {
			ingredients =
				{
                    --{'s1'},
                    --{'a'},
                    {name='acidgas',amount ='*10'},
                    --{'d'},
				},
			results =
				{
					--{'a','*17'},
					{name='cadavericarum',amount ='+1'}
				},
				crafting_speed = 100,
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
					{name='manure',amount ='R'},
                    {name='fertilizer',amount ='+4'},
				},
			results =
				{
					--{'a','*25'},
					--{'a','+3'}
					{name='cadavericarum',amount ='+1'}
				},
				crafting_speed = 100,
				tech = 'cadaveric-arum-mk04'
		},
    --GH
		{
			ingredients =
				{
					{name='bloodmeal',amount ='R'},
					{name='fluegas',amount ='R'},
					{name='manure',amount ='R'},
                    {name='fertilizer',amount ='R'},
                    {name='coalgas',amount ='R'},
                    --{name='water',amount ='*5'},
					{name='gh',1},
				},
			results =
				{
					{name='cadavericarum',amount ="+1"}
				},
			crafting_speed = 70,
			tech = 'cadaveric-arum-mk04'
		},
		{
			ingredients =
				{
					{name='bloodmeal',amount =10},
					--{'nitrogen','R'},
					--{'manure','R'},
					--{'bloodmeal','R'},
					--{'gh',1},
				},
			results =
				{
					{name='cadavericarum',amount ="+1"}
				},
			crafting_speed = 70,
			tech = 'cadaveric-arum-mk04'
		},
		{
			ingredients =
				{
					{name='manure',amount =10},
					--{'bloodmeal','R'},
					--{'gh',1},
				},
			results =
				{
					{name='cadavericarum',amount ="+1"}
				},
			crafting_speed = 70,
			tech = 'cadaveric-arum-mk04'
		},
		{
			ingredients =
				{
                    {name='manure',amount ='R'},
					{name='fertilizer',amount =5},
					{name='coalgas',amount =15},
					--{'gh',1},
				},
			results =
				{
					{name='cadavericarum',amount ="+1"}
				},
			crafting_speed = 70,
			tech = 'cadaveric-arum-mk04'
		},
	}
}
