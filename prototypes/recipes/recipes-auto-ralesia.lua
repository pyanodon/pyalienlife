local fun = require("prototypes/functions/functions")


fun.autorecipes {
    name = 'ralesia',
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
		},
		{
			ingredients =
				{
                    {'s1'},
                    {'a'},
				},
			results =
				{
					{'a','*5'}
				},
		},
		{
			ingredients =
				{
                    {'s1'},
                    {'a'},
                    {'b','+15'},
				},
			results =
				{
					{'a','*7'},
				},
        },
        {
			ingredients =
				{
                    {'s1'},
                    {'a'},
                    {'b','+15'},
                    {'c','*10'},
				},
			results =
				{
					{'a','*10'},
				},
        },
        {
			ingredients =
				{
                    {'s1'},
                    {'a'},
                    {'b','+15'},
                    {'c','*10'},
                    {'d'},
				},
			results =
				{
					{'a','*12'},
				},
        },
        {
			ingredients =
				{
                    {'s1'},
                    {'a'},
                    {'b','+15'},
                    {'e','*10'},
                    {'d'},
				},
			results =
				{
					{'a','*15'},
				},
        },
        {
			ingredients =
				{
                    {'s1'},
                    {'a'},
                    {'b','+15'},
                    {'f','*3'},
                    {'d'},
				},
			results =
				{
					{'a','*17'},
				},
        },
        {
			ingredients =
				{
                    {'s1'},
                    {'a'},
                    {'b','+15'},
                    {'g','*2'},
                    {'d'},
                },
			results =
				{
					{'a','*20'},
				},
        },
        {
			ingredients =
				{
                    {'s1'},
                    {'a'},
                    {'b','+15'},
                    {'g','*2'},
                    {'d'},
                    {'m'},
				},
			results =
				{
					{'a','*22'},
				},
        },
        {
			ingredients =
				{
                    {'s1'},
                    {'a'},
                    {'b','+15'},
                    {'g','*2'},
                    {'d'},
                    {'h','+6'},
				},
			results =
				{
					{'a','*25'},
				},
		},
	}
}