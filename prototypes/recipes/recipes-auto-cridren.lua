local fun = require("prototypes/functions/functions")


fun.autorecipes {
    name = 'cridren',
	--baseitem = 'cridren',
	category = 'cridren',
	module_limitations = 'cridren',
	subgroup = 'py-alienlife-cridren',
    order = 'a',
    mats =
	{
		{
			ingredients =
				{
					{name='cridrenseeds'},
					{name='cagedarthurian',amount = '*1'},
				},
			results =
				{
					{name='cridren',amount = '*1'},
				},
			crafting_speed = 120,
			tech = 'cridren'
		},
		{
			ingredients =
				{
                    --{'s1'},
					{name='fish',amount ='*10'},
				},
			results =
				{
					--{'a','*5'}
					--{name='cridren',amount ='+1'}
				},
				crafting_speed = 105,
				tech = 'cridren'
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
					--{name='cridren',amount ='+1'}
				},
				crafting_speed = 100,
				tech = 'cridren'
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
					--{name='cridren',amount ='+1'}
				},
				crafting_speed = 90,
				tech = 'cridren-mk02'
        },
        {
			ingredients =
				{
					{name='cridrenseeds',amount ='+1'},
					{name='manure',amount ='+5'},
                    {name='soil',amount ='+25'},
                    {name='fish',amount ='+6'},
                    {name='cagedarthurian',amount = '+1'},
                    {name='ash',amount =20},
				},
			results =
				{
					--{'a','*12'},
					{name='cridren',amount ='+1'}
				},
				crafting_speed = 120,
				tech = 'cridren-mk02'
        },
        {
			ingredients =
				{
                    {name='biomass',amount ='*30'},
                    --{'d'},
				},
			results =
				{
					--{'a','*15'},
					--{name='cridren',amount ='+1'}
				},
				crafting_speed = 110,
				tech = 'cridren-mk03'
        },
        {
			ingredients =
				{
				   {name='soil',amount ='R'},
					{name='bones',amount ='*20'},
                },
			results =
				{
					--{'a','*20'},
					--{name='cridren',amount ='+3'}
				},
				crafting_speed = 100,
				tech = 'cridren-mk03'
        },
        {
			ingredients =
				{
                    --{'s1'},
                    {name='cagedarthurian',amount = '+1'},
                    {name='cridrenseeds',amount ='+1'},
                    {name='fish',amount ='+4'},
					{name='bones',amount ='+10'},
					{name='manure',amount ='R'},
                    {name='fertilizer',amount =15},
				},
			results =
				{
					--{'a','*25'},
					--{'a','+3'}
					{name='cridren',amount ='+1'}
				},
				crafting_speed = 120,
				tech = 'cridren-mk04'
		},
		{
			ingredients =
				{
					{name='bones',amount ='R'},
                    {name='soil',amount ='+40'},
				},
			results =
				{
					--{'a','*25'},
					--{'a','+3'}
					--{name='cridren',amount =25}
				},
				crafting_speed = 110,
				tech = 'cridren-mk04'
		},
    --GH
		{
			ingredients =
				{
					--{name='biomass',amount ='R'},
					--{name='soil',amount ='R'},
					--{name='manure',amount ='R'},
					--{name='cridrenseeds',amount =2},
					{name='gh',1},
					--{name='cagedarthurian',amount =2},
				},
			results =
				{
					--{name='cridren',amount =25}
				},
			crafting_speed = 75,
			tech = 'cridren-mk04'
		},
		{
			ingredients =
				{
					{name='antiviral',amount ='*1'},
					--{'nitrogen','R'},
					--{'manure','R'},
					--{'biomass','R'},
					--{'gh',1},
				},
			results =
				{
					{name='cridren',amount ='+1'}
				},
			crafting_speed = 60,
			tech = 'cridren-mk04'
		},
		{
			ingredients =
				{
					--{name='soil',amount ='*10'},
					{name='pheromones',amount ='*1'},
					--{'biomass','R'},
					--{'gh',1},
				},
			results =
				{
					{name='cridren',amount ='+1'}
				},
			crafting_speed = 55,
			tech = 'cridren-mk04'
		},
		{
			ingredients =
				{
					{name='manure',amount ='*10'},
					{name='urea',amount =30},
					{name='gh',amount ='+1'},
					{name='cridrenseeds',amount ='+1'},
					{name='cagedarthurian',amount = '+1'},
				},
			results =
				{
					{name='cridren',amount ='+2'}
				},
			crafting_speed = 50,
			tech = 'cridren-mk04'
		},
	}
}
