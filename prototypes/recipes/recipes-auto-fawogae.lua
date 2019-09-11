local fun = require("prototypes/functions/functions")


fun.autorecipes {
    name = 'fawogae',
	--baseitem = 'ralesia',
	category = 'fawogae',
	--module_limitations = 'fawogae',
    mats =
	{
		{
			ingredients =
				{
					{'fawogaespore',3},
				},
			results =
				{
					{'fawogae','*4'}
				},
			crafting_speed = 25,
			tech = 'mycology-mk01'
        },
        {
			ingredients =
				{
					{'water'},
				},
			results =
				{
					{'fawogae','+2'}
				},
			crafting_speed = 25,
			tech = 'mycology-mk01'
        },
        {
			ingredients =
				{
					{'manure',3},
				},
			results =
				{
					{'fawogae','+2'}
				},
			crafting_speed = 25,
			tech = 'mycology-mk01'
        },
        {
			ingredients =
				{
					{'fungalsubstrate',2},
				},
			results =
				{
					{'fawogae',9}
				},
			crafting_speed = 25,
			tech = 'mycology-mk01'
        },
        --green
        {
			ingredients =
				{
                    {'fungalsubstrate','R'},
                    {'manure','R'},
                    {'fungalsubstrate02',2},
				},
			results =
				{
					{'fawogae',10}
				},
			crafting_speed = 20,
			tech = 'mycology-mk02'
        },
        {
			ingredients =
				{
                    {'manure',3},
				},
			results =
				{
					{'fawogae',11}
				},
			crafting_speed = 20,
			tech = 'mycology-mk02'
        },
        {
			ingredients =
				{
                    {'biomass',3},
				},
			results =
				{
					{'fawogae',12}
				},
			crafting_speed = 20,
			tech = 'mycology-mk02'
        },
    --blue
        {
			ingredients =
				{
                    {'fungalsubstrate02','R'},
                    {'manure','R'},
                    {'biomass','R'},
                    {'fungalsubstrate03',2},
				},
			results =
				{
					{'fawogae',14}
				},
			crafting_speed = 18,
			tech = 'mycology-mk03'
        },
        {
			ingredients =
				{
                    {'manure',3},
				},
			results =
				{
					{'fawogae',15}
				},
			crafting_speed = 18,
			tech = 'mycology-mk03'
        },
        {
			ingredients =
				{
                    {'biomass',3},
				},
			results =
				{
					{'fawogae',16}
				},
			crafting_speed = 18,
			tech = 'mycology-mk03'
		},
    --GH
    {
        ingredients =
            {
                {'manure','R'},
                {'biomass','R'},
                {'gh',1},
            },
        results =
            {
                {'fawogae',16}
            },
        crafting_speed = 15,
        tech = 'mycology-mk04'
    },
    {
        ingredients =
            {
                {'urea','10'},
                --{'nitrogen','R'},
                --{'manure','R'},
                --{'biomass','R'},
                --{'gh',1},
            },
        results =
            {
                {'fawogae',17}
            },
        crafting_speed = 15,
        tech = 'mycology-mk04'
    },
    {
        ingredients =
            {
                {'manure','*10'},
				{'biomass',15},
                --{'gh',1},
            },
        results =
            {
                {'fawogae',18}
            },
        crafting_speed = 15,
        tech = 'mycology-mk04'
    },
    {
        ingredients =
            {
                {'fertilizer',5},
                --{'gh',1},
            },
        results =
            {
                {'fawogae',20}
            },
        crafting_speed = 15,
        tech = 'mycology-mk04'
    },
	}
}
