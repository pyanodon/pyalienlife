local fun = require("prototypes/functions/functions")


fun.autorecipes {
    name = 'yotoi',
	--baseitem = 'yotoi',
	category = 'yotoi',
	module_limitations = 'yotoi',
	subgroup = 'py-alienlife-yotoi',
    order = 'a',
    mats =
	{
		{
			ingredients =
				{
					{name='yotoi-seeds'},
					{name='water'},
				},
			results =
				{
					{name='yotoi',amount = 4},
				},
			crafting_speed = 130,
			tech = 'yotoi'
		},
		{
			ingredients =
				{
                    --{'s1'},
					{name='sand',amount ='+8'},
				},
			results =
				{
					--{'a','*5'}
					{name='yotoi',amount ='+2'}
				},
				crafting_speed = 120,
				tech = 'yotoi'
		},
		{
			ingredients =
				{
                    --{'s1'},
                    --{'a'},
                    {name='limestone',amount ='+6'},
				},
			results =
				{
					--{'a','*7'},
					{name='yotoi',amount ='+2'}
				},
				crafting_speed = 120,
				tech = 'yotoi'
        },
        {
			ingredients =
				{
                    --{'s1'},
                    --{'a'},
                    --{'b','+15'},
                    {name='manure',amount =6},
				},
			results =
				{
					--{'a','*10'},
					{name='yotoi',amount ='+8'}
				},
				crafting_speed = 100,
				tech = 'yotoi-mk02'
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
					{name='yotoi',amount ='+2'}
				},
				crafting_speed = 90,
				tech = 'yotoi-mk02'
        },
        {
			ingredients =
				{
                    --{'s1'},
                    --{'a'},
					--{'b','+15'},
					--{name='ash',remove_item = true},
                    {name='biomass',amount ='*5'},
                    --{'d'},
				},
			results =
				{
					--{'a','*15'},
					{name='yotoi',amount ='+1'}
				},
				crafting_speed = 90,
				tech = 'yotoi-mk02'
        },
        {
			ingredients =
				{
                    --{'s1'},
                    --{'a'},
					--{'b','+15'},
					--{name='sand',remove_item = true},
                    {name='blood-meal',amount ='*4'},
                    --{'d'},
				},
			results =
				{
					--{'a','*17'},
					{name='yotoi',amount ='+6'}
				},
				crafting_speed = 80,
				tech = 'yotoi-mk03'
        },




        {
			ingredients =
				{

                    {name='pesticide-mk01',amount ='+1'},
                    --{'d'},
                },
			results =
				{
					--{'a','*20'},
					{name='yotoi',amount ='+8'}
				},
				crafting_speed = 75,
				tech = 'yotoi-mk03'
        },


        {
			ingredients =
				{
                    --{'s1'},
                    --{'a'},
				   --{'b','+15'},
				   --{'carbon-dioxide',remove_item = true},
				   --{name='blood-meal',remove_item = true},
					{name='carbon-dioxide',amount ='*50'},
                    --{'d'},
                },
			results =
				{
					--{'a','*20'},
					{name='yotoi',amount ='+4'}
				},
				crafting_speed = 70,
				tech = 'yotoi-mk03'
        },

        {
			ingredients =
				{

                    {name='pesticide-mk01',remove_item = true},
                    {name='pesticide-mk02',amount ='+1'},
                    --{'d'},
                },
			results =
				{
					--{'a','*20'},
					{name='yotoi',amount ='+8'}
				},
				crafting_speed = 70,
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
                    {name='fertilizer',amount ='*1'},
				},
			results =
				{
					--{'a','*25'},
					--{'a','+3'}
					{name='yotoi',amount ="+10"}
				},
				crafting_speed = 55,
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
                    {name='small-lamp',amount ='*2'},
				},
			results =
				{
					--{'a','*25'},
					--{'a','+3'}
					{name='yotoi',amount ="+4"}
				},
				crafting_speed = 50,
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
					{name='gh',1},
				},
			results =
				{
					{name='yotoi',amount ="+8"}
				},
			crafting_speed = 35,
			tech = 'yotoi-mk04'
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
					{name='yotoi',amount ="+2"}
				},
			crafting_speed = 35,
			tech = 'yotoi-mk04'
		},
		{
			ingredients =
				{
					{name='blood-meal',amount ='*1'},
					{name='manure',amount =5},
					--{'biomass',remove_item = true},
					--{'gh',1},
				},
			results =
				{
					{name='yotoi',amount ="+3"}
				},
			crafting_speed = 30,
			tech = 'yotoi-mk04'
		},
		{
			ingredients =
				{
					{name='manure',remove_item = true},
					{name='fertilizer',amount =1},
					{name='urea',amount =5},
					--{'gh',1},
				},
			results =
				{
					{name='yotoi',amount ="+10"}
				},
			crafting_speed = 20,
			tech = 'yotoi-mk04'
		},
	}
}
