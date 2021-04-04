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
					{name='tuuphra-seeds',amount = 5},
					{name='water',amount = '*10'},
					{name='manure-bacteria',amount = '*5'},
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
					{name='soil',amount =20},
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
					--{name='ash',remove_item = true},
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
					--{name='soil',remove_item = true},
                    {name='blood-meal',amount =2},
                    --{'d'},
				},
			results =
				{
					--{'a','*17'},
					{name='tuuphra',amount ='+5'}
				},
				crafting_speed = 100,
				tech = 'tuuphra-mk03'
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
					{name='tuuphra',amount ='+8'}
				},
				crafting_speed = 100,
				tech = 'tuuphra-mk03'
        },







        {
			ingredients =
				{


                    {name='nitrogen',amount ='+*50'},
                    --{'d'},
                },
			results =
				{
					--{'a','*20'},
					{name='tuuphra',amount ='+3'}
				},
				crafting_speed = 100,
				tech = 'tuuphra-mk03'
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
					{name='tuuphra',amount ='+10'}
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
					--{name='manure',remove_item = true},
                    {name='fertilizer',amount ='*2'},
				},
			results =
				{
					--{'a','*25'},
					--{'a','+3'}
					{name='tuuphra',amount ="+7"}
				},
				crafting_speed = 80,
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
					--{name='nitrogen',remove_item = true},
                    {name='small-lamp',amount ='*1'},
				},
			results =
				{
					--{'a','*25'},
					--{'a','+3'}
					{name='tuuphra',amount ="+5"}
				},
				crafting_speed = 70,
				tech = 'tuuphra-mk04'
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
					{name='tuuphra',amount ="+6"}
				},
			crafting_speed = 50,
			tech = 'growth-hormone'
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
					{name='tuuphra',amount ="+2"}
				},
			crafting_speed = 50,
			tech = 'growth-hormone'
		},
		{
			ingredients =
				{
					{name='blood-meal',amount ='*2'},
					{name='manure',amount =5},
					--{'biomass',remove_item = true},
					--{'gh',1},
				},
			results =
				{
					{name='tuuphra',amount ="+8"}
				},
			crafting_speed = 45,
			tech = 'growth-hormone'
		},
		{
			ingredients =
				{
					{name='manure',remove_item = true},
					{name='fertilizer',amount =2},
					{name='urea',amount =10},
					--{'gh',1},
				},
			results =
				{
					{name='tuuphra',amount ="+10"}
				},
			crafting_speed = 30,
			tech = 'growth-hormone'
		},
	}
}
