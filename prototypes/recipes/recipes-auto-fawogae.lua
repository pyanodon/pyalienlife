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
			crafting_speed = 12,
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
			crafting_speed = 12,
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
			crafting_speed = 12,
			tech = 'mycology-mk01'
        },
        {
			ingredients =
				{
					{'fungalsubstrate',2},
				},
			results =
				{
					{'fawogae',10}
				},
			crafting_speed = 12,
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
			crafting_speed = 10,
			tech = 'mycology-mk02'
        },
        {
			ingredients =
				{
                    {'manure',3},
				},
			results =
				{
					{'fawogae',12}
				},
			crafting_speed = 10,
			tech = 'mycology-mk02'
        },
        {
			ingredients =
				{
                    {'biomass',3},
				},
			results =
				{
					{'fawogae',14}
				},
			crafting_speed = 10,
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
			crafting_speed = 8,
			tech = 'mycology-mk03'
        },
        {
			ingredients =
				{
                    {'manure',3},
				},
			results =
				{
					{'fawogae',16}
				},
			crafting_speed = 10,
			tech = 'mycology-mk03'
        },
        {
			ingredients =
				{
                    {'biomass',3},
				},
			results =
				{
					{'fawogae',18}
				},
			crafting_speed = 10,
			tech = 'mycology-mk03'
        },
	}
}
