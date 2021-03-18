local fun = require("prototypes/functions/functions")

------------------RENDERING------------------

fun.autorecipes {
    name = 'rendering',
	category = 'slaughterhouse-dhilmos',
	--module_limitations = 'dhilmos',
	subgroup = 'py-alienlife-dhilmos',
	order = 'b',
    mats =
	{
		{
			ingredients =
				{
					{name='dhilmos',amount=1},
				},
			results =
				{
					{name='meat', probability = 0.2,amount_min =1,amount_max =1},
                    {name='mukmoux-fat', probability = 0.1,amount_min =1,amount_max =1},
                    {name='chitin', probability = 0.5,amount_min =1,amount_max =2},
					{name='guts', probability = 0.3,amount_min =1,amount_max =1},
					{name='arthropod-blood', amount =15},
				},
			crafting_speed = 30,
			tech = 'dhilmos',
			name = 'Full Render dhilmoss',
			icon = "__pyalienlifegraphics__/graphics/icons/rendering-dhilmos.png",
			icon_size = 64,
		},
		--meat
		{
			ingredients =
				{

				},
			results =
				{
					{name='meat', amount ='R'},
					{name='mukmoux-fat', amount ='R'},
					{name='guts', amount ='R'},
					{name='arthropod-blood', amount ='R'},
					{name='chitin', amount ='R'},
					{name='meat', amount =1},
				},
			crafting_speed = 15,
			tech = 'dhilmos',
			name = 'Extract dhilmos Meat',
			icon = "__pyalienlifegraphics__/graphics/icons/mip/meat-01.png",
			icon_size = 64,
		},
		--guts
		{
			ingredients =
				{
					--{name='dhilmos',amount=1},
				},
			results =
				{
					{name='meat', amount ='R'},
					{name='guts', amount =1},
				},
			crafting_speed = 15,
			tech = 'dhilmos',
			name = 'Extract dhilmos guts',
			icon = "__pyalienlifegraphics__/graphics/icons/mip/guts-01.png",
			icon_size = 64,
		},
		--blood
		{
			ingredients =
				{
					--{name='dhilmos',amount=1},
				},
			results =
				{
					{name='guts', amount ='R'},
					{name='arthropod-blood', amount =30}
				},
			crafting_speed = 15,
			tech = 'dhilmos',
			name = 'Extract dhilmos blood',
			icon = "__pyalienlifegraphics__/graphics/icons/arthropod-blood.png",
			icon_size = 32,
		},
		--fat
		{
			ingredients =
				{
					--{name='dhilmos',amount=1},
				},
			results =
				{
					{name='arthropod-blood', amount ='R'},
					{name='mukmoux-fat', amount =1},
				},
			crafting_speed = 15,
			tech = 'dhilmos',
			name = 'Extract dhilmos lard',
			icon = "__pyalienlifegraphics__/graphics/icons/mukmoux-fat.png",
			icon_size = 64,
        },
		--chitin
		{
			ingredients =
				{
					--{name='dhilmos',amount=1},
				},
			results =
				{
					{name='mukmoux-fat', amount ='R'},
					{name='chitin', amount =3},
				},
			crafting_speed = 15,
			tech = 'dhilmos',
			name = 'Extract dhilmos chitin',
			icon = "__pyalienlifegraphics__/graphics/icons/chitin.png",
			icon_size = 64,
		},
		--meat dhilmos rendering
		{
			ingredients =
				{
					{name='dhilmos',amount='R'},
					{name='meat-dhilmos',amount=1},
				},
			results =
				{
					{name='chitin', amount ='R'},
					{name='meat', amount =6},
				},
			crafting_speed = 15,
			tech = 'anabolic-rna',
			name = 'Extract meat from Improved dhilmoss',
			icon = "__pyalienlifegraphics__/graphics/icons/meat-dhilmos.png",
			icon_size = 64,
		},
		--guts dhilmos rendering
		{
			ingredients =
				{
					{name='meat-dhilmos',amount='R'},
					{name='guts-dhilmos',amount=1},
				},
			results =
				{
					{name='meat', amount ='R'},
					{name='guts', amount =6},
				},
			crafting_speed = 15,
			tech = 'antitumor',
			name = 'Extract guts from Improved dhilmoss',
			icon = "__pyalienlifegraphics__/graphics/icons/guts-dhilmos.png",
			icon_size = 64,
		},
		--blood dhilmos rendering
		{
			ingredients =
				{
					{name='guts-dhilmos',amount='R'},
					{name='blood-dhilmos',amount=1},
				},
			results =
				{
					{name='guts', amount ='R'},
					{name='arthropod-blood', amount =120},
				},
			crafting_speed = 15,
			tech = 'recombinant-ery',
			name = 'Extract blood from Improved dhilmoss',
			icon = "__pyalienlifegraphics__/graphics/icons/blood-dhilmos.png",
			icon_size = 64,
		},
		--fat dhilmos rendering
		{
			ingredients =
				{
					{name='blood-dhilmos',amount='R'},
					{name='fat-dhilmos',amount=1},
				},
			results =
				{
					{name='arthropod-blood', amount ='R'},
					{name='mukmoux-fat', amount =6},
				},
			crafting_speed = 15,
			tech = 'orexigenic',
			name = 'Extract fat from Improved dhilmoss',
			icon = "__pyalienlifegraphics__/graphics/icons/fat-dhilmos.png",
			icon_size = 64,
		},
	}
}
