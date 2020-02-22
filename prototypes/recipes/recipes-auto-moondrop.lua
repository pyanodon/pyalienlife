local fun = require("prototypes/functions/functions")


fun.autorecipes {
    name = 'moondrops',
	category = 'moon',
	module_limitations = 'moondrop',
	subgroup = 'py-alienlife-moon',
    order = 'a',
    mats =
	{
		{
			ingredients =
				{
					{name='moondropseeds'},
					{name='water'},
				},
			results =
				{
					{name='moondrop',amount = 4},
				},
			crafting_speed = 130,
			tech = 'moondrop-mk01'
		},
		{
			ingredients =
				{
                    --{'s1'},
					{name='hydrogen',amount ='*10'},
				},
			results =
				{
					--{'a','*5'}
					{name='moondrop',amount ='+1'}
				},
				crafting_speed = 120,
				tech = 'ralesia'
		},
		{
			ingredients =
				{
                    --{'s1'},
                    --{'a'},
                    {name='soil',amount ='+15'},
				},
			results =
				{
					--{'a','*7'},
					{name='moondrop',amount ='+2'}
				},
				crafting_speed = 120,
				tech = 'ralesia'
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
					{name='moondrop',amount ='+3'}
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
					{name='moondrop',amount ='+2'}
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
					{name='ash',amount ='R'},
                    {name='biomass',amount ='*5'},
                    --{'d'},
				},
			results =
				{
					--{'a','*15'},
					{name='moondrop',amount ='+3'}
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
					{name='hydrogen',amount ='R'},
                    {name='syngas',amount ='*3'},
                    --{'d'},
				},
			results =
				{
					--{'a','*17'},
					{name='moondrop',amount ='+2'}
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
				    {name='syngas',amount ='R'},
					{name='fluegas',amount ='*2'},
                    --{'d'},
                },
			results =
				{
					--{'a','*20'},
					{name='moondrop',amount ='+3'}
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
					{name='moondrop',amount =25}
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
					{name='fluegas',amount ='R'},
                    {name='syngas',amount ='*10'},
				},
			results =
				{
					--{'a','*25'},
					--{'a','+3'}
					{name='moondrop',amount =25}
				},
				crafting_speed = 100,
				tech = 'botany-mk04'
		},
    --GH
		{
			ingredients =
				{
					{name='biomass',amount ='R'},
					{name='syngas',amount ='R'},
					{name='manure',amount ='R'},
					{name='fertilizer',amount ='R'},
					{name='gh',1},
				},
			results =
				{
					{name='moondrop',amount =25}
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
					{name='moondrop',amount =27}
				},
			crafting_speed = 70,
			tech = 'botany-mk04'
		},
		{
			ingredients =
				{
					{name='syngas',amount ='*10'},
					{name='manure',amount =10},
					--{'biomass','R'},
					--{'gh',1},
				},
			results =
				{
					{name='moondrop',amount =29}
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
					{name='moondrop',amount =35}
				},
			crafting_speed = 70,
			tech = 'botany-mk04'
		},
	}
}
