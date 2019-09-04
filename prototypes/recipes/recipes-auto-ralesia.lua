local fun = require("prototypes/functions/functions")


fun.autorecipes {
    name = 'ralesias',
	--baseitem = 'ralesia',
    category = 'ralesia',
    mats =
	{
		{
			ingredients =
				{
					{'s1'},
				},
			results =
				{
					{'a','*4'}
				},
			crafting_speed = 130,
			tech = 'ralesia'
		},
		{
			ingredients =
				{
                    --{'s1'},
                    {'a'},
				},
			results =
				{
					--{'a','*5'}
					{'a','+1'}
				},
				crafting_speed = 120,
				tech = 'ralesia'
		},
		{
			ingredients =
				{
                    --{'s1'},
                    --{'a'},
                    {'b','+15'},
				},
			results =
				{
					--{'a','*7'},
					{'a','+2'}
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
                    {'c','*10'},
				},
			results =
				{
					--{'a','*10'},
					{'a','+3'}
				},
				crafting_speed = 120,
				tech = 'botany-mk02'
        },
        {
			ingredients =
				{
                    --{'s1'},
                    --{'a'},
                    --{'b','+15'},
                    --{'c','*10'},
                    {'d'},
				},
			results =
				{
					--{'a','*12'},
					{'a','+3'}
				},
				crafting_speed = 120,
				tech = 'botany-mk02'
        },
        {
			ingredients =
				{
                    --{'s1'},
                    --{'a'},
					--{'b','+15'},
					{'c','R'},
                    {'e','*10'},
                    --{'d'},
				},
			results =
				{
					--{'a','*15'},
					{'a','+3'}
				},
				crafting_speed = 120,
				tech = 'botany-mk02'
        },
        {
			ingredients =
				{
                    --{'s1'},
                    --{'a'},
					--{'b','+15'},
					{'e','R'},
                    {'f','*3'},
                    --{'d'},
				},
			results =
				{
					--{'a','*17'},
					{'a','+2'}
				},
				crafting_speed = 120,
				tech = 'botany-mk03'
        },
        {
			ingredients =
				{
                    --{'s1'},
                    --{'a'},
				   --{'b','+15'},
				   {'e','R'},
				   {'f','R'},
                    {'g','*2'},
                    --{'d'},
                },
			results =
				{
					--{'a','*20'},
					{'a','+3'}
				},
				crafting_speed = 120,
				tech = 'botany-mk03'
        },
        {
			ingredients =
				{
                    --{'s1'},
                    --{'a'},
                    --{'b','+15'},
                    --{'g','*2'},
                    {'d','R'},
                    {'m'},
				},
			results =
				{
					--{'a','*22'},
					{'a','+2'}
				},
				crafting_speed = 120,
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
					{'m','R'},
                    {'h','+6'},
				},
			results =
				{
					--{'a','*25'},
					--{'a','+3'}
					{'a',25}
				},
				crafting_speed = 120,
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
					{'g','R'},
                    {'f','*10'},
				},
			results =
				{
					--{'a','*25'},
					--{'a','+3'}
					{'a',25}
				},
				crafting_speed = 120,
				tech = 'botany-mk04'
		},
	}
}
