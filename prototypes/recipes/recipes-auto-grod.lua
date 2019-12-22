local fun = require("prototypes/functions/functions")


fun.autorecipes {
    name = 'grod',
	--baseitem = 'grod',
	category = 'grod',
	module_limitations = 'grod',
	subgroup = 'py-alienlife-grod',
    order = 'a',
    mats =
	{
        {
			ingredients =
				{
                    {name='grodseeds'},
                    {name='urea',amount = 5},
				},
			results =
				{
					{name='grod',amount = 4},
				},
			crafting_speed = 150,
			tech = 'grod'
		},
		{
			ingredients =
				{
					--{name='grodseeds'},
					{name='water',amount = 500},
				},
			results =
				{
					{name='grod',amount = 4},
				},
			crafting_speed = 130,
			tech = 'grod'
		},
		{
			ingredients =
				{
                    --{'s1'},
					{name='limestone',amount = 5},
				},
			results =
				{
					--{'a','*5'}
					{name='grod',amount ='+1'}
				},
				crafting_speed = 120,
				tech = 'grod'
		},
		{
			ingredients =
				{
                    --{'s1'},
                    --{'a'},
                    {name='soil'},
				},
			results =
				{
					--{'a','*7'},
					{name='grod',amount ='+2'}
				},
				crafting_speed = 120,
				tech = 'grod'
        },
        {
			ingredients =
				{
                    --{'s1'},
                    --{'a'},
                    {name='urea',amount ='R'},
                    {name='manure',amount =5},
				},
			results =
				{
					--{'a','*10'},
					{name='grod',amount ='+3'}
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
                    {name='ash',amount =10},
				},
			results =
				{
					--{'a','*12'},
					{name='grod',amount ='+2'}
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
					{name='urea',amount ='R'},
                    {name='biomass',amount ='*5'},
                    --{'d'},
				},
			results =
				{
					--{'a','*15'},
					{name='grod',amount ='+3'}
				},
				crafting_speed = 100,
				tech = 'botany-mk02'
        },
        {
			ingredients =
				{
                    --{'s1'},
                    --{'a'},
                    {name='coarse',amount =6},
                    --{'d'},
				},
			results =
				{
					--{'a','*17'},
					{name='grod',amount ='+2'}
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
				   {name='coarse',amount ='R'},
                	{name='slackedlime',amount ='*2'},
                    --{'d'},
                },
			results =
				{
					--{'a','*20'},
					{name='grod',amount ='+3'}
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
					{name='manure',amount ='R'},
                    {name='fertilizer',amount ='+4'},
				},
			results =
				{
					--{'a','*25'},
					--{'a','+3'}
					{name='grod',amount ='+2'}
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
					{name='slackedlime',amount ='R'},
                    {name='fluegas',amount ='*2'},
				},
			results =
				{
					--{'a','*25'},
					--{'a','+3'}
					{name='grod',amount =25}
				},
				crafting_speed = 100,
				tech = 'botany-mk04'
		},
    --GH
		{
			ingredients =
				{
					{name='biomass',amount ='R'},
					{name='slackedlime',amount ='R'},
					{name='manure',amount ='R'},
                    {name='fertilizer',amount ='R'},
                    {name='urea',amount ='R'},
					{name='gh',1},
				},
			results =
				{
					{name='grod',amount =25}
				},
			crafting_speed = 70,
			tech = 'botany-mk04'
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
					{name='grod',amount =27}
				},
			crafting_speed = 70,
			tech = 'botany-mk04'
		},
		{
			ingredients =
				{
                    {name='slackedlime',amount ='*10'},
                    {name='fluegas',amount ='R'},
					{name='manure',amount =10},
					--{'biomass','R'},
					--{'gh',1},
				},
			results =
				{
					{name='grod',amount =29}
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
					{name='grod',amount =35}
				},
			crafting_speed = 70,
			tech = 'botany-mk04'
		},
	}
}
