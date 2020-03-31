local fun = require("prototypes/functions/functions")


fun.autorecipes {
    name = 'tuuphra',
	--baseitem = 'tuuphra',
	category = 'tuuphra',
	module_limitations = 'tuuphra',
	subgroup = 'py-alienlife-tuuphra',
    order = 'a',
    mats =
	{
		{
			ingredients =
				{
					{name='tuuphraseeds',amount = 5},
					{name='water',amount = '*10'},
				},
			results =
				{
					{name='tuuphra',amount = 3},
				},
			crafting_speed = 130,
			tech = 'tuuphra'
		},
		{
			ingredients =
				{
                    --{'s1'},
					{name='soil',amount ='20'},
				},
			results =
				{
					--{'a','*5'}
					{name='tuuphra',amount ='+1'}
				},
				crafting_speed = 120,
				tech = 'tuuphra'
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
					{name='tuuphra',amount ='+1'}
				},
				crafting_speed = 120,
				tech = 'tuuphra'
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
					{name='tuuphra',amount ='+2'}
				},
				crafting_speed = 100,
				tech = 'tuuphra-mk02'
        },
        {
			ingredients =
				{
                    --{'s1'},
                    --{'a'},
                    --{'b','+15'},
                    --{'c','*10'},
                    {name='ash',amount =5},
				},
			results =
				{
					--{'a','*12'},
					{name='tuuphra',amount ='+3'}
				},
				crafting_speed = 100,
				tech = 'tuuphra-mk02'
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
					{name='tuuphra',amount ='+1'}
				},
				crafting_speed = 100,
				tech = 'tuuphra-mk02'
        },
        {
			ingredients =
				{
                    --{'s1'},
                    --{'a'},
					--{'b','+15'},
					--{name='soil',amount ='R'},
                    {name='bloodmeal',amount ='2'},
                    --{'d'},
				},
			results =
				{
					--{'a','*17'},
					{name='tuuphra',amount ='+5'}    --bloodmeal is very expensive 
				},
				crafting_speed = 100,
				tech = 'tuuphra-mk03'
        },
        {
			ingredients =
				{
                    --{'s1'},
                    --{'a'},
				   --{'b','+15'},
				   --{'nitrogen','R'},
				   --{name='bloodmeal',amount ='R'},
					{name='nitrogen',amount ='*15'},
                    --{'d'},
                },
			results =
				{
					--{'a','*20'},
					{name='tuuphra',amount ='+2'}
				},
				crafting_speed = 100,
				tech = 'tuuphra-mk03'
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
                    {name='fertilizer',amount ='*2'},
				},
			results =
				{
					--{'a','*25'},
					--{'a','+3'}
					{name='tuuphra',amount ="+7"}
				},
				crafting_speed = 100,
				tech = 'tuuphra-mk04'
		},
		{
			ingredients =
				{
                    --{'s1'},
                    --{'a'},
                    --{'b','+15'},
                    --{'g','*2'},
					--{'d'},
					--{name='nitrogen',amount ='R'},
                    {name='smalllamp',amount ='*2'},
				},
			results =
				{
					--{'a','*25'},
					--{'a','+3'}
					{name='tuuphra',amount ="+3"}
				},
				crafting_speed = 90,
				tech = 'tuuphra-mk04'
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
					{name='tuuphra',amount ="+4"}
				},
			crafting_speed = 60,
			tech = 'growth-hormone'
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
					{name='tuuphra',amount ="+1"}
				},
			crafting_speed = 60,
			tech = 'growth-hormone'
		},
		{
			ingredients =
				{
					{name='bloodmeal',amount ='*2'},
					{name='manure',amount =10},
					--{'biomass','R'},
					--{'gh',1},
				},
			results =
				{
					{name='tuuphra',amount ="+8"}
				},
			crafting_speed = 60,
			tech = 'growth-hormone'
		},
		{
			ingredients =
				{
					{name='manure',amount ='R'},
					{name='fertilizer',amount =2},
					{name='urea',amount =10},
					--{'gh',1},
				},
			results =
				{
					{name='tuuphra',amount ="+4"}
				},
			crafting_speed = 60,
			tech = 'growth-hormone'
		},
	}
}
