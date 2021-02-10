local fun = require("prototypes/functions/functions")


fun.autorecipes {
    name = 'fawogae',
	--baseitem = 'ralesia',
	category = 'fawogae',
	subgroup = 'py-alienlife-fawogae',
	order = 'b',
	module_limitations = 'fawogae',
    mats =
	{
		--base recipe
		{
			ingredients =
				{
					{name='fawogaespore',amount =3},
				},
			results =
				{
					{name='fawogae',amount ='*4'}
				},
			crafting_speed = 100,
			tech = 'fawogae'
        },
		--first
        {
			ingredients =
				{
					{name='water'},
					{name='fertilizer',amount =1},
					{name='fungalsubstrate',amount =1},
				},
			results =
				{
					{name='fawogae',amount = 25}
				},
			crafting_speed = 80,
			name = 'fawogae with manure',
			tech = 'fawogae'
        },
        --green
        {
			ingredients =
				{
					{name='fungalsubstrate',amount ='R'},
					{name='fungalsubstrate02',amount =1},
					{name='fertilizer',amount = '+2'},
                    {name='biomass',amount =3},
				},
			results =
				{
					{name='fawogae',amount = 50}
				},
			crafting_speed = 60,
			name = 'fawogae with improved substrate',
			tech = 'mycology-mk02'
        },
    --blue
        {
			ingredients =
				{
					{name='fungalsubstrate02',amount ='R'},
					{name='fungalsubstrate03',amount = 1},
					{name='fertilizer',amount = '+2'},
                    {name='biomass',amount = '+3'},
				},
			results =
				{
					{name='fawogae',amount = 75}
				},
			crafting_speed = 40,
			name = 'fawogae with special substrate',
			tech = 'mycology-mk03'
		},
    --GH
    {
        ingredients =
            {
				{name='gh',amount =1},
				{name='urea',amount =1},
                {name='fertilizer',amount = '+5'},
				{name='biomass',amount = '+14'},
            },
        results =
            {
                {name='fawogae',amount = 100}
            },
		crafting_speed = 10,
		name = 'fawogae with growth hormone',
        tech = 'mycology-mk04'
    },
	}
}
