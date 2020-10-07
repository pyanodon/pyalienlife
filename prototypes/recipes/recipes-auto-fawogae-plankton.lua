local fun = require("prototypes/functions/functions")


fun.autorecipes {
    name = 'fawogae-2',
	--baseitem = 'ralesia',
	category = 'fawogae',
	subgroup = 'py-alienlife-fawogae',
	order = 'b',
	module_limitations = 'fawogae',
    mats =
	{
		{
			ingredients =
				{
					{name='fawogaespore',amount =3},
				},
			results =
				{
					{name='fawogae',amount ='*4'}
				},
			crafting_speed = 70,
			tech = 'plankton'
        },
        {
			ingredients =
				{
					{name='phytoplankton',amount ='*10'},
				},
			results =
				{
					{name='fawogae',amount ='+2'}
				},
			crafting_speed = 60,
			name = 'fawogae-01a',
			tech = 'plankton'
        },
        {
			ingredients =
				{
					{name='manure',amount =3},
				},
			results =
				{
					{name='fawogae',amount ='+5'}
				},
			crafting_speed = 55,
			name = 'fawogae-02a',
			tech = 'plankton'
        },
        {
			ingredients =
				{
					{name='fungalsubstrate',amount =1},
				},
			results =
				{
					{name='fawogae',amount ='+14'}
				},
			crafting_speed = 52,
			name = 'fawogae-03a',
			tech = 'plankton'
        },
        --green
        {
			ingredients =
				{
                    {name='fungalsubstrate',amount ='R'},
                    {name='manure',amount ='R'},
                    {name='fungalsubstrate02',amount =1},
				},
			results =
				{
					{name='fawogae',amount ="+5"}
				},
			crafting_speed = 48,
			name = 'fawogae-04a',
			tech = 'plankton'
        },
        {
			ingredients =
				{
                    {name='manure',amount =3},
				},
			results =
				{
					{name='fawogae',amount ='+3'}
				},
			crafting_speed = 44,
			name = 'fawogae-05a',
			tech = 'plankton'
        },
        {
			ingredients =
				{
                    {name='biomass',amount =3},
				},
			results =
				{
					{name='fawogae',amount ='+2'}
				},
			crafting_speed = 40,
			name = 'fawogae-06a',
			tech = 'plankton'
        },
    --blue
        {
			ingredients =
				{
                    {name='fungalsubstrate02',amount ='R'},
                    {name='manure',amount ='R'},
                    {name='biomass',amount ='R'},
                    {name='fungalsubstrate03',amount =1},
				},
			results =
				{
					{name='fawogae',amount ='+4'}
				},
			crafting_speed = 36,
			name = 'fawogae-07a',
			tech = 'plankton'
        },
        {
			ingredients =
				{
                    {name='manure',amount =3},
				},
			results =
				{
					{name='fawogae',amount ='+4'}
				},
			crafting_speed = 32,
			name = 'fawogae-08a',
			tech = 'plankton'
        },
        {
			ingredients =
				{
                    {name='biomass',amount =3},
				},
			results =
				{
					{name='fawogae',amount ='+2'}
				},
			crafting_speed = 28,
			name = 'fawogae-09a',
			tech = 'plankton'
		},
    --GH
    {
        ingredients =
            {
                {name='manure',amount ='R'},
                {name='biomass',amount ='R'},
                {name='gh',amount =1},
            },
        results =
            {
                {name='fawogae',amount ='+6'}
            },
		crafting_speed = 25,
		name = 'fawogae-10a',
        tech = 'plankton'
    },
    {
        ingredients =
            {
                {name='urea',amount =1},
                --{'nitrogen','R'},
                --{'manure','R'},
                --{'biomass','R'},
                --{'gh',1},
            },
        results =
            {
                {name='fawogae',amount ='+2'}
            },
		crafting_speed = 20,
		name = 'fawogae-11a',
        tech = 'plankton'
    },
    {
        ingredients =
            {
                {name='manure',amount ='*3'},
				{name='biomass',amount =8},
                --{'gh',1},
            },
        results =
            {
                {name='fawogae',amount ='+3'}
            },
		crafting_speed = 15,
		name = 'fawogae-12a',
        tech = 'plankton'
    },
    {
        ingredients =
            {
                {name='fertilizer',amount =1},
                --{'gh',1},
            },
        results =
            {
                {name='fawogae',amount ='+10'}
            },
		crafting_speed = 10,
		name = 'fawogae-13a',
        tech = 'plankton'
    },
	}
}
