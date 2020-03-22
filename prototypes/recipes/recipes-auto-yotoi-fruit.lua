local fun = require("prototypes/functions/functions")


fun.autorecipes {
    name = 'yotoifruit',
	--baseitem = 'yotoifruit',
	category = 'yotoi',
	module_limitations = 'yotoi',
	subgroup = 'py-alienlife-yotoi',
    order = 'z',
    mats =
	{
		{
			ingredients =
				{
					{name='soil',amount = "*4"},
					{name='water',amount = "*10"},
				},
			results =
				{
					{name='yotoifruit',amount = 3},
				},
			crafting_speed = 100,
			tech = 'yotoi'
		},
		{
			ingredients =
				{
                    --{'s1'},
					{name='stone',amount ='*10'},
				},
			results =
				{
					--{'a','*5'}
					{name='yotoifruit',amount ='+1'}
				},
				crafting_speed = 90,
				tech = 'yotoi'
		},
		{
			ingredients =
				{
                    --{'s1'},
                    --{'a'},
                    {name='limestone',amount ='+15'},
				},
			results =
				{
					--{'a','*7'},
					{name='yotoifruit',amount ='+1'}
				},
				crafting_speed = 80,
				tech = 'yotoi'
        },
        {
			ingredients =
				{
                    --{'s1'},
                    --{'a'},
                    --{'b','+15'},
                    {name='manure',amount =5},
				},
			results =
				{
					--{'a','*10'},
					{name='yotoifruit',amount ='+3'}
				},
				crafting_speed = 75,
				tech = 'yotoi-mk02'
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
					{name='yotoifruit',amount ='+2'}
				},
				crafting_speed = 70,
				tech = 'yotoi-mk02'
        },
        {
			ingredients =
				{
                    --{'s1'},
                    --{'a'},
					--{'b','+15'},
					--{name='ash',amount ='R'},
                    {name='biomass',amount ='*5'},
                    --{'d'},
				},
			results =
				{
					--{'a','*15'},
					{name='yotoifruit',amount ='+1'}
				},
				crafting_speed = 65,
				tech = 'yotoi-mk02'
        },
        {
			ingredients =
				{
                    --{'s1'},
                    --{'a'},
					--{'b','+15'},
					--{name='stone',amount ='R'},
                    {name='bloodmeal',amount ='*8'},
                    --{'d'},
				},
			results =
				{
					--{'a','*17'},
					{name='yotoifruit',amount ='+1'}
				},
				crafting_speed = 60,
				tech = 'yotoi-mk03'
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
					{name='yotoifruit',amount ='+1'}
				},
				crafting_speed = 50,
				tech = 'yotoi-mk03'
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
                    {name='fertilizer',amount ='*5'},
				},
			results =
				{
					--{'a','*25'},
					--{'a','+3'}
					{name='yotoifruit',amount ="+1"}
				},
				crafting_speed = 50,
				tech = 'yotoi-mk04'
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
                    {name='smalllamp',amount ='*10'},
				},
			results =
				{
					--{'a','*25'},
					--{'a','+3'}
					{name='yotoifruit',amount ="+2"}
				},
				crafting_speed = 50,
				tech = 'yotoi-mk04'
		},
    --GH
		{
			ingredients =
				{
					{name='biomass',amount ='R'},
					{name='bloodmeal',amount ='R'},
					{name='manure',amount ='R'},
					{name='fertilizer',amount ='R'},
					{name='gh',1},
				},
			results =
				{
					{name='yotoifruit',amount ="+1"}
				},
			crafting_speed = 30,
			tech = 'yotoi-mk04'
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
					{name='yotoifruit',amount ="+1"}
				},
			crafting_speed = 30,
			tech = 'yotoi-mk04'
		},
		{
			ingredients =
				{
					{name='bloodmeal',amount ='*10'},
					{name='manure',amount =10},
					--{'biomass','R'},
					--{'gh',1},
				},
			results =
				{
					{name='yotoifruit',amount ="+3"}
				},
			crafting_speed = 30,
			tech = 'yotoi-mk04'
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
					{name='yotoifruit',amount ="+2"}
				},
			crafting_speed = 30,
			tech = 'yotoi-mk04'
		},
	}
}
