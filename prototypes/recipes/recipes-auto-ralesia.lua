local fun = require("prototypes/functions/functions")


fun.autorecipes {
    name = 'ralesias',
	--baseitem = 'ralesia',
	category = 'ralesia',
	module_limitations = 'ralesias',
    mats =
	{
		{
			ingredients =
				{
					{'ralesiaseeds'},
					{'water'},
				},
			results =
				{
					{'ralesias','*4'}
				},
			crafting_speed = 130,
			tech = 'ralesia'
		},
		{
			ingredients =
				{
                    --{'s1'},
					{'hydrogen','*10'},
				},
			results =
				{
					--{'a','*5'}
					{'ralesias','+1'}
				},
				crafting_speed = 120,
				tech = 'ralesia'
		},
		{
			ingredients =
				{
                    --{'s1'},
                    --{'a'},
                    {'soil','+15'},
				},
			results =
				{
					--{'a','*7'},
					{'ralesias','+2'}
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
                    {'manure',5},
				},
			results =
				{
					--{'a','*10'},
					{'ralesias','+3'}
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
                    {'ash',10},
				},
			results =
				{
					--{'a','*12'},
					{'ralesias','+2'}
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
					{'ash','R'},
                    {'biomass','*5'},
                    --{'d'},
				},
			results =
				{
					--{'a','*15'},
					{'ralesias','+3'}
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
					{'hydrogen','R'},
                    {'syngas','*3'},
                    --{'d'},
				},
			results =
				{
					--{'a','*17'},
					{'ralesias','+2'}
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
				   {'syngas','R'},
                	{'fluegas','*2'},
                    --{'d'},
                },
			results =
				{
					--{'a','*20'},
					{'ralesias','+3'}
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
					{'manure','R'},
                    {'fertilizer','+4'},
				},
			results =
				{
					--{'a','*25'},
					--{'a','+3'}
					{'ralesias',25}
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
					{'fluegas','R'},
                    {'syngas','*10'},
				},
			results =
				{
					--{'a','*25'},
					--{'a','+3'}
					{'ralesias',25}
				},
				crafting_speed = 100,
				tech = 'botany-mk04'
		},
	}
}
