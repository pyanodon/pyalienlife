local fun = require("prototypes/functions/functions")


fun.autorecipes {
    name = 'kicalk',
	--baseitem = 'kicalk',
	category = 'kicalk',
	module_limitations = 'kicalk',
	subgroup = 'py-alienlife-kicalk',
    order = 'a',
    mats =
	{
        {
			ingredients =
				{
                    {name='kicalkseeds',amount = "*3"},
                    {name='clay',amount = "*1"},
				},
			results =
				{
					{name='kicalk',amount = 2},
				},
			crafting_speed = 150,
			tech = 'kicalk'
		},
		{
			ingredients =
				{
					{name='kicalkseeds',amount = "+1"},
					{name='water',amount = 800},
				},
			results =
				{
					{name='kicalk',amount = "+1"},
				},
			crafting_speed = 130,
			tech = 'kicalk'
		},
		{
			ingredients =
				{
                    --{'s1'},
					{name='sand',amount = 5},
				},
			results =
				{
					--{'a','*5'}
					{name='kicalk',amount ='+1'}
				},
				crafting_speed = 120,
				tech = 'kicalk'
		},
		{
			ingredients =
				{
                    --{'s1'},
                    --{'a'},
                    {name='smalllamp',amount ='+1'},
				},
			results =
				{
					--{'a','*7'},
					{name='kicalk',amount ='+1'}
				},
				crafting_speed = 120,
				tech = 'kicalk'
        },
        {
			ingredients =
				{
                    --{'s1'},
                    --{'a'},
                    {name='clay',amount ='R'},
                    {name='manure',amount =5},
				},
			results =
				{
					--{'a','*10'},
					{name='kicalk',amount ='+1'}
				},
				crafting_speed = 100,
				tech = 'kicalk-mk02'
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
					{name='kicalk',amount ='+1'}
				},
				crafting_speed = 100,
				tech = 'kicalk-mk02'
        },
        {
			ingredients =
				{
                    --{'s1'},
                    --{'a'},
					--{'b','+15'},
					{name='clay',amount ='R'},
                    {name='biomass',amount ='*5'},
                    --{'d'},
				},
			results =
				{
					--{'a','*15'},
					{name='kicalk',amount ='+1'}
				},
				crafting_speed = 100,
				tech = 'kicalk-mk02'
        },
        {
			ingredients =
				{
                    --{'s1'},
                    --{'a'},
                    {name='carbondioxide',amount ="*12"},
                    --{'d'},
				},
			results =
				{
					--{'a','*17'},
					{name='kicalk',amount ='+1'}
				},
				crafting_speed = 100,
				tech = 'kicalk-mk03'
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
					{name='kicalk',amount ='+1'}
				},
				crafting_speed = 100,
				tech = 'kicalk-mk04'
		},
		{
			ingredients =
				{
                    --{'s1'},
                    --{'a'},
                    --{'b','+15'},
                    --{'g','*2'},
					--{'d'},
					{name='water',amount ='R'},
                    {name='fluegas',amount ='*2'},
				},
			results =
				{
					--{'a','*25'},
					--{'a','+3'}
					{name='kicalk',amount ="+2"}
				},
				crafting_speed = 100,
				tech = 'kicalk-mk04'
		},
    --GH
		{
			ingredients =
				{
					{name='biomass',amount ='R'},
					{name='fluegas',amount ='R'},
					{name='manure',amount ='R'},
                    {name='fertilizer',amount ='R'},
                    {name='clay',amount ='R'},
                    {name='water',amount ='*5'},
					{name='gh',1},
				},
			results =
				{
					{name='kicalk',amount ="+1"}
				},
			crafting_speed = 70,
			tech = 'kicalk-mk04'
		},
		{
			ingredients =
				{
					{name='biomass',amount =10},
					--{'nitrogen','R'},
					--{'manure','R'},
					--{'biomass','R'},
					--{'gh',1},
				},
			results =
				{
					{name='kicalk',amount ="+1"}
				},
			crafting_speed = 70,
			tech = 'kicalk-mk04'
		},
		{
			ingredients =
				{
					{name='manure',amount =10},
					--{'biomass','R'},
					--{'gh',1},
				},
			results =
				{
					{name='kicalk',amount ="+1"}
				},
			crafting_speed = 70,
			tech = 'kicalk-mk04'
		},
		{
			ingredients =
				{
                    {name='manure',amount ='R'},
					{name='fertilizer',amount =5},
					{name='clay',amount =15},
					--{'gh',1},
				},
			results =
				{
					{name='kicalk',amount ="+1"}
				},
			crafting_speed = 70,
			tech = 'kicalk-mk04'
		},
	}
}
