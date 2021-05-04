local fun = require("prototypes/functions/functions")


fun.autorecipes {
    name = 'yotoi-fruit',
	--baseitem = 'yotoi-fruit',
	category = 'yotoi',
	module_limitations = 'yotoi',
	subgroup = 'py-alienlife-yotoi',
    order = 'z',
    mats =
	{
		{
			ingredients =
				{
					{name='soil', amount = "*4"},
					{name='water', amount = "*10"},
				},
			results =
				{
					{name='yotoi-fruit', amount = 3},
				},
			crafting_speed = 100,
			tech = 'yotoi'
		},
		{
			ingredients =
				{
                    --{'s1'},
					{name='stone', amount ='*10'},
				},
			results =
				{
					--{'a','*5'}
					{name='yotoi-fruit', amount ='+1'}
				},
				crafting_speed = 90,
				tech = 'yotoi'
		},
		{
			ingredients =
				{
                    --{'s1'},
                    --{'a'},
                    {name='limestone', amount ='+5'},
				},
			results =
				{
					--{'a','*7'},
					{name='yotoi-fruit', amount ='+2'}
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
                    {name='manure', amount =5},
				},
			results =
				{
					--{'a','*10'},
					{name='yotoi-fruit', amount ='+8'}
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
                    --{'c','*10'},
                    {name='ash', amount =4},
				},
			results =
				{
					--{'a','*12'},
					{name='yotoi-fruit', amount ='+3'}
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
					--{name='ash',remove_item = true},
                    {name='biomass', amount ='*5'},
                    --{'d'},
				},
			results =
				{
					--{'a','*15'},
					{name='yotoi-fruit', amount ='+1'}
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
					--{name='stone',remove_item = true},
                    {name='blood-meal', amount ='*1'},
                    --{'d'},
				},
			results =
				{
					--{'a','*17'},
					{name='yotoi-fruit', amount ='+4'}
				},
				crafting_speed = 55,
				tech = 'yotoi-mk03'
        },




        {
			ingredients =
				{

                    {name='pesticide-mk01', amount ='+1'},
                    --{'d'},
                },
			results =
				{
					--{'a','*20'},
					{name='yotoi-fruit', amount ='+8'}
				},
				crafting_speed = 50,
				tech = 'yotoi-mk03'
        },


        {
			ingredients =
				{

					{name='carbon-dioxide', amount ='*20'},
                    --{'d'},
                },
			results =
				{
					--{'a','*20'},
					{name='yotoi-fruit', amount ='+2'}
				},
				crafting_speed = 50,
				tech = 'yotoi-mk03'
        },

        {
			ingredients =
				{

                    {name='pesticide-mk01',remove_item = true},
                    {name='pesticide-mk02', amount ='+1'},
                },
			results =
				{
					--{'a','*20'},
					{name='yotoi-fruit', amount ='+8'}
				},
				crafting_speed = 45,
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
					--{name='manure',remove_item = true},
                    {name='fertilizer', amount ='*1'},
				},
			results =
				{
					--{'a','*25'},
					--{'a','+3'}
					{name='yotoi-fruit', amount ="+10"}
				},
				crafting_speed = 35,
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
					--{name='carbon-dioxide',remove_item = true},
                    {name='small-lamp', amount ='*1'},
				},
			results =
				{
					--{'a','*25'},
					--{'a','+3'}
					{name='yotoi-fruit', amount ="+2"}
				},
				crafting_speed = 30,
				tech = 'yotoi-mk04'
		},
    --GH
		{
			ingredients =
				{
					{name='biomass',remove_item = true},
					{name='blood-meal',remove_item = true},
					{name='manure',remove_item = true},
					{name='fertilizer',remove_item = true},
					{name='gh', amount = 1},
				},
			results =
				{
					{name='yotoi-fruit', amount ="+8"}
				},
			crafting_speed = 20,
			tech = 'yotoi-mk04'
		},
		{
			ingredients =
				{
					{name='biomass', amount =5},
					--{'nitrogen',remove_item = true},
					--{'manure',remove_item = true},
					--{'biomass',remove_item = true},
					--{'gh',1},
				},
			results =
				{
					{name='yotoi-fruit', amount ="+1"}
				},
			crafting_speed = 20,
			tech = 'yotoi-mk04'
		},
		{
			ingredients =
				{
					{name='blood-meal', amount ='*1'},
					{name='manure', amount =5},
					--{'biomass',remove_item = true},
					--{'gh',1},
				},
			results =
				{
					{name='yotoi-fruit', amount ="+8"}
				},
			crafting_speed = 20,
			tech = 'yotoi-mk04'
		},
		{
			ingredients =
				{
					{name='manure',remove_item = true},
					{name='fertilizer', amount =1},
					{name='urea', amount =5},
					--{'gh',1},
				},
			results =
				{
					{name='yotoi-fruit', amount ="+6"}
				},
			crafting_speed = 10,
			tech = 'yotoi-mk04'
		},
	}
}
