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
			tech = 'fawogae'
        },
        {
			ingredients =
				{
					{name='water'},
				},
			results =
				{
					{name='fawogae',amount ='+2'}
				},
			crafting_speed = 60,
			tech = 'fawogae'
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
			tech = 'fawogae'
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
			tech = 'fawogae'
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
			tech = 'mycology-mk02'
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
			tech = 'mycology-mk02'
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
			tech = 'mycology-mk02'
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
			tech = 'mycology-mk03'
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
			tech = 'mycology-mk03'
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
			tech = 'mycology-mk03'
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
        tech = 'mycology-mk04'
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
        tech = 'mycology-mk04'
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
        tech = 'mycology-mk04'
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
        tech = 'mycology-mk04'
    },
	}
}
