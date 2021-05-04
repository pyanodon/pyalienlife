local fun = require("prototypes/functions/functions")


fun.autorecipes {
    name = 'moondrops-a',
	category = 'moon',
	module_limitations = 'moondrop',
	subgroup = 'py-alienlife-moon',
    order = 'a',
    mats =
	{
		{
			ingredients =
				{
                    {name='moondrop-seeds'},
                    {name='copper-ore', amount = 5},
					{name='water'},
				},
			results =
				{
					{name='moondrop', amount = 4},
				},
			crafting_speed = 130,
            tech = 'cu',
            name = 'moondrop-1a',
		},
		{
			ingredients =
				{
                    {name='moondrop-seeds', amount='+1'},
					{name='hydrogen', amount ='*10'},
				},
			results =
				{
					--{'a','*5'}
					{name='moondrop', amount ='+1'}
				},
                crafting_speed = 120,
                name = 'moondrop-2a',
				tech = 'cu'
		},
		{
			ingredients =
				{
                    {name='moondrop-seeds', amount='+1'},
                    {name='soil', amount ='+15'},
				},
			results =
				{
					--{'a','*7'},
					{name='moondrop', amount ='+2'}
				},
                crafting_speed = 120,
                name = 'moondrop-3a',
				tech = 'cu'
        },
        {
			ingredients =
				{
                    {name='moondrop-seeds', amount='+2'},
                    {name='manure', amount =5},
				},
			results =
				{
					--{'a','*10'},
					{name='moondrop', amount ='+3'}
				},
                crafting_speed = 100,
                name = 'moondrop-4a',
				tech = 'cu'
        },
        {
			ingredients =
				{
                    {name='moondrop-seeds', amount='+2'},
                    {name='ash', amount =10},
				},
			results =
				{
					--{'a','*12'},
					{name='moondrop', amount ='+3'}
				},
                crafting_speed = 100,
                name = 'moondrop-5a',
				tech = 'cu'
        },
        {
			ingredients =
				{
                    {name='moondrop-seeds', amount='+2'},
					{name='ash',remove_item = true},
                    {name='biomass', amount ='*5'},
                    --{'d'},
				},
			results =
				{
					--{'a','*15'},
					{name='moondrop', amount ='+3'}
				},
                crafting_speed = 100,
                name = 'moondrop-6a',
				tech = 'cu'
        },
        {
			ingredients =
				{
                    {name='moondrop-seeds', amount='+2'},
					{name='hydrogen',remove_item = true},
                    {name='syngas', amount ='*3'},
                    --{'d'},
				},
			results =
				{
					--{'a','*17'},
					{name='moondrop', amount ='+2'}
				},
                crafting_speed = 100,
                name = 'moondrop-7a',
				tech = 'cu'
        },









                {
			ingredients =
				{
                    {name='moondrop-seeds', amount='+2'},
                    {name='pesticide-mk01', amount ='+1'},
                    --{'d'},
                },
			results =
				{
					--{'a','*20'},
					{name='moondrop', amount ='+5'}
				},
                crafting_speed = 100,
                name = 'moondrop-8a',
				tech = 'cu'
        },






        {
			ingredients =
				{
                    {name='moondrop-seeds', amount='+1'},
				    {name='syngas',remove_item = true},
					{name='flue-gas', amount ='*3'},
                    --{'d'},
                },
			results =
				{
					--{'a','*20'},
					{name='moondrop', amount ='+3'}
				},
                crafting_speed = 100,
                name = 'moondrop-9a',
				tech = 'cu'
        },




                {
			ingredients =
				{
                    {name='pesticide-mk01',remove_item = true},
                    {name='moondrop-seeds', amount='+2'},
                    {name='pesticide-mk02', amount ='+1'},

                },
			results =
				{
					--{'a','*20'},
					{name='moondrop', amount ='+10'}
				},
                crafting_speed = 100,
                name = 'moondrop-10a',
				tech = 'cu'
        },




        {
			ingredients =
				{
                    {name='moondrop-seeds', amount='+2'},
					{name='manure',remove_item = true},
                    {name='fertilizer', amount ='+4'},
				},
			results =
				{
					--{'a','*25'},
					--{'a','+3'}
					{name='moondrop', amount ='+12'}
				},
                crafting_speed = 85,
                name = 'moondrop-11a',
				tech = 'cu'
		},
		{
			ingredients =
				{
                    {name='moondrop-seeds', amount='+1'},
					{name='flue-gas',remove_item = true},
                    {name='syngas', amount ='*10'},
				},
			results =
				{
					--{'a','*25'},
					--{'a','+3'}
					{name='moondrop', amount ='+2'}
				},
                crafting_speed = 75,
                name = 'moondrop-12a',
				tech = 'cu'
		},
    --GH
		{
			ingredients =
				{
					{name='biomass',remove_item = true},
					{name='syngas',remove_item = true},
					{name='manure',remove_item = true},
					{name='fertilizer',remove_item = true},
					{name='gh', amount = 1},
				},
			results =
				{
					{name='moondrop', amount ='+3'}
				},
            crafting_speed = 35,
            name = 'moondrop-13a',
			tech = 'cu'
		},
		{
			ingredients =
				{
					{name='biomass', amount =10},
					--{'nitrogen',remove_item = true},
					--{'manure',remove_item = true},
					--{'biomass',remove_item = true},
					--{'gh',1},
				},
			results =
				{
					{name='moondrop', amount ='+2'}
				},
            crafting_speed = 35,
            name = 'moondrop-14a',
			tech = 'cu'
		},
		{
			ingredients =
				{
					{name='syngas', amount ='*10'},
					{name='manure', amount =5},
					--{'biomass',remove_item = true},
					--{'gh',1},
				},
			results =
				{
					{name='moondrop', amount ='+3'}
				},
            crafting_speed = 30,
            name = 'moondrop-15a',
			tech = 'cu'
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
					{name='moondrop', amount ='+8'}
				},
            crafting_speed = 20,
            name = 'moondrop-16a',
			tech = 'cu'
		},
	}
}
