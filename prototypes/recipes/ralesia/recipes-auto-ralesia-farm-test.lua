local fun = require("prototypes/functions/functions")


fun.autorecipes {
    name = 'ralesias',
	--baseitem = 'ralesia',
	category = 'ralesia-farm',
	module_limitations = 'ralesias',
	subgroup = 'py-alienlife-ralesia',
    order = 'a',
    mats =
	{
		{
			ingredients =
				{
					--{name='ralesia-seeds'},
					{name='water'},
				},
			results =
				{
					{name='ralesias',amount = 4},
				},
			crafting_speed = 130,
			tech = 'ralesia',
			name = 'ralesiasthefirst'
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
					{name='ralesias',amount ='+1'}
				},
				crafting_speed = 120,
				tech = 'ralesia',
				name = 'ralesiasthesecond'
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
					{name='ralesias',amount ='+2'}
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
					{name='ralesias',amount ='+3'}
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
					{name='ralesias',amount ='+2'}
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
					{name='ash',remove_item = true},
                    {name='biomass',amount ='*5'},
                    --{'d'},
				},
			results =
				{
					--{'a','*15'},
					{name='ralesias',amount ='+3'}
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
					{name='hydrogen',remove_item = true},
                    {name='syngas',amount ='*3'},
                    --{'d'},
				},
			results =
				{
					--{'a','*17'},
					{name='ralesias',amount ='+2'}
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
				   --{'carbon-dioxide',remove_item = true},
					{name='syngas',remove_item = true},
					{name='flue-gas',amount ='*2'},
                    --{'d'},
                },
			results =
				{
					--{'a','*20'},
					{name='ralesias',amount ='+3'}
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
					{name='manure',remove_item = true},
                    {name='fertilizer',amount ='+4'},
				},
			results =
				{
					--{'a','*25'},
					--{'a','+3'}
					{name='ralesias',amount =25}
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
					{name='flue-gas',remove_item = true},
                    {name='syngas',amount ='*10'},
				},
			results =
				{
					--{'a','*25'},
					--{'a','+3'}
					{name='ralesias',amount =25}
				},
				crafting_speed = 100,
				tech = 'botany-mk04'
		},
    --GH
		{
			ingredients =
				{
					{name='biomass',remove_item = true},
					{name='syngas',remove_item = true},
					{name='manure',remove_item = true},
					{name='fertilizer',remove_item = true},
					{name='gh',1},
				},
			results =
				{
					{name='ralesias',amount =25}
				},
			crafting_speed = 70,
			tech = 'botany-mk04'
		},
		{
			ingredients =
				{
					{name='biomass',amount =10},
					--{'nitrogen',remove_item = true},
					--{'manure',remove_item = true},
					--{'biomass',remove_item = true},
					--{'gh',1},
				},
			results =
				{
					{name='ralesias',amount =27}
				},
			crafting_speed = 70,
			tech = 'botany-mk04'
		},
		{
			ingredients =
				{
					{name='syngas',amount ='*10'},
					{name='manure',amount =10},
					--{'biomass',remove_item = true},
					--{'gh',1},
				},
			results =
				{
					{name='ralesias',amount =29}
				},
			crafting_speed = 70,
			tech = 'botany-mk04'
		},
		{
			ingredients =
				{
					{name='manure',remove_item = true},
					{name='fertilizer',amount =5},
					{name='urea',amount =15},
					--{'gh',1},
				},
			results =
				{
					{name='ralesias',amount =35}
				},
			crafting_speed = 70,
			tech = 'botany-mk04'
		},
	}
}
