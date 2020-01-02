local fun = require("prototypes/functions/functions")


fun.autorecipes {
    name = 'rennea',
	--baseitem = 'rennea',
	category = 'rennea',
	module_limitations = 'rennea',
	subgroup = 'py-alienlife-rennea',
    order = 'a',
    mats =
	{
		{
			ingredients =
				{
					{name='renneaseeds',amount = 5},
					{name='water',amount = '*10'},
				},
			results =
				{
					{name='rennea',amount = 1},
				},
			crafting_speed = 130,
			tech = 'rennea'
		},
		{
			ingredients =
				{
                    --{'s1'},
					{name='soil',amount ='*12'},
				},
			results =
				{
					--{'a','*5'}
					{name='rennea',amount ='+1'}
				},
				crafting_speed = 120,
				tech = 'rennea'
		},
		{
			ingredients =
				{
                    --{'s1'},
                    --{'a'},
                    {name='coarse',amount ='+10'},
				},
			results =
				{
					--{'a','*7'},
					{name='rennea',amount ='+1'}
				},
				crafting_speed = 120,
				tech = 'rennea'
        },
        {
			ingredients =
				{
                    --{'s1'},
                    --{'a'},
                    --{'b','+15'},
                    {name='manure',amount =10},
				},
			results =
				{
					--{'a','*10'},
					{name='rennea',amount ='+1'}
				},
				crafting_speed = 100,
				tech = 'botany-mk02'
        },
        {
			ingredients =
				{
                    --{'s1'},
                    --{'a'},
                    --{'b','+15'},
                    --{'c','*10'},
                    {name='yeadols',amount =5},
				},
			results =
				{
					--{'a','*12'},
					{name='rennea',amount ='+1'}
				},
				crafting_speed = 100,
				tech = 'botany-mk02'
        },
        {
			ingredients =
				{
                    --{'s1'},
                    --{'a'},
					--{'b','+15'},
					--{name='yeadols',amount ='R'},
                    {name='lignin',amount ='*5'},
                    --{'d'},
				},
			results =
				{
					--{'a','*15'},
					{name='rennea',amount ='+1'}
				},
				crafting_speed = 100,
				tech = 'botany-mk02'
        },
        {
			ingredients =
				{
                    --{'s1'},
                    --{'a'},
					--{'b','+15'},
					--{name='soil',amount ='R'},
                    {name='bloodmeal',amount ='*8'},
                    --{'d'},
				},
			results =
				{
					--{'a','*17'},
					{name='rennea',amount ='+1'}
				},
				crafting_speed = 100,
				tech = 'botany-mk03'
        },
        {
			ingredients =
				{
                    --{'s1'},
                    --{'a'},
				   --{'b','+15'},
				   --{'carbondioxide','R'},
				   --{name='bloodmeal',amount ='R'},
                	{name='carbondioxide',amount ='*20'},
                    --{'d'},
                },
			results =
				{
					--{'a','*20'},
					{name='rennea',amount ='+1'}
				},
				crafting_speed = 100,
				tech = 'botany-mk03'
        },
        {
			ingredients =
				{
                    --{'s1'},
                    --{'a'},
                    --{'b','+15'},
                    --{'g','*2'},
					--{'d'},
					--{name='manure',amount ='R'},
                    {name='fertilizer',amount ='*7'},
				},
			results =
				{
					--{'a','*25'},
					--{'a','+3'}
					{name='rennea',amount ="+1"}
				},
				crafting_speed = 100,
				tech = 'botany-mk04'
		},
		{
			ingredients =
				{
                    --{'s1'},
                    --{'a'},
                    --{'b','+15'},
                    --{'g','*2'},
					--{'d'},
					--{name='carbondioxide',amount ='R'},
                    {name='smalllamp',amount ='*5'},
				},
			results =
				{
					--{'a','*25'},
					--{'a','+3'}
					{name='rennea',amount ="+1"}
				},
				crafting_speed = 100,
				tech = 'botany-mk04'
		},
    --GH
		{
			ingredients =
				{
					{name='lignin',amount ='R'},
					{name='bloodmeal',amount ='R'},
					{name='manure',amount ='R'},
					{name='fertilizer',amount ='R'},
					{name='gh',1},
				},
			results =
				{
					{name='rennea',amount ="+1"}
				},
			crafting_speed = 70,
			tech = 'botany-mk04'
		},
		{
			ingredients =
				{
					{name='lignin',amount =10},
					--{'carbondioxide','R'},
					--{'manure','R'},
					--{'lignin','R'},
					--{'gh',1},
				},
			results =
				{
					{name='rennea',amount ="+1"}
				},
			crafting_speed = 70,
			tech = 'botany-mk04'
		},
		{
			ingredients =
				{
					{name='bloodmeal',amount ='*5'},
					{name='manure',amount =10},
					--{'lignin','R'},
					--{'gh',1},
				},
			results =
				{
					{name='rennea',amount ="+1"}
				},
			crafting_speed = 70,
			tech = 'botany-mk04'
		},
		{
			ingredients =
				{
					{name='manure',amount ='R'},
					{name='fertilizer',amount =5},
					{name='urea',amount =15},
					--{'gh',1},
				},
			results =
				{
					{name='rennea',amount ="+2"}
				},
			crafting_speed = 70,
			tech = 'botany-mk04'
		},
	}
}
