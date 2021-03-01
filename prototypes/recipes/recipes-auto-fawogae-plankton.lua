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
		--base
		{
			ingredients =
				{
					{name='fawogae-spore',amount =3},
				},
			results =
				{
					{name='fawogae',amount =10}
				},
			crafting_speed = 100,
			tech = 'plankton'
		},
		--first
        {
			ingredients =
				{
					{name='phytoplankton',amount ='*10'},
					{name='fertilizer',amount =3},
					{name='fungal-substrate',amount =1},
				},
			results =
				{
					{name='fawogae',amount = '+25'}
				},
			crafting_speed = 80,
			name = 'fawogae-03a',
			tech = 'plankton'
        },
        --green
        {
			ingredients =
				{
					{name='fungal-substrate',amount ='R'},
					{name='fungal-substrate-02',amount = 1},
					{name='fertilizer',amount = '+3'},
                    {name='biomass',amount = 3},
				},
			results =
				{
					{name='fawogae',amount = '+25'}
				},
			crafting_speed = 60,
			name = 'fawogae-06a',
			tech = 'plankton'
        },
    --blue
        {
			ingredients =
				{
					{name='fungal-substrate-02',amount ='R'},
					{name='fungal-substrate-03',amount =1},
					{name='fertilizer',amount = '+3'},
                    {name='biomass',amount = '+3'},
				},
			results =
				{
					{name='fawogae',amount = '+25'}
				},
			crafting_speed = 40,
			name = 'fawogae-09a',
			tech = 'plankton'
		},
    --GH
    {
        ingredients =
            {
				{name='urea',amount = 3},
				{name='biomass',amount = '+4'},
				{name='fertilizer',amount = '+3'},
                {name='gh',amount = 1},
            },
        results =
            {
                {name='fawogae',amount = '+25'}
            },
		crafting_speed = 20,
		name = 'fawogae-13a',
        tech = 'plankton'
    },
	}
}
