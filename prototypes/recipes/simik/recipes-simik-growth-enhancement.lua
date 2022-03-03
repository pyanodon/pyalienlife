local fun = require("prototypes/functions/functions")

fun.autorecipes {
    name = 'simik-improved',
	category = 'creature-chamber',
	--module_limitations = 'simik',
	subgroup = 'py-alienlife-simik',
	order = 'b',
	--main_product = "simik",
    mats =
	{
		--nanochondria
		{
			ingredients =
				{
					{name='caged-simik', amount=1},
					{name='nanochondria', amount =1},
					{name='antiviral', amount = 1},
				},
			results =
				{
					{name='brain-caged-simik', amount = 1},
				},
			crafting_speed = 90,
			tech = 'nanochondria'
		},
		--nanochondria and gh
		{
			ingredients =
				{
					--{name='nanochondria', amount =1},
					{name='gh', amount =1},
				},
			results =
				{

				},
			crafting_speed = 30,
			tech = 'nanochondria'
		},
		--bmp
		{
			ingredients =
				{
					{name='gh',remove_item = true},
					{name='nanochondria',remove_item = true},
					{name='bmp', amount =1},
				},
			results =
				{
					{name='brain-caged-simik', remove_item = true},
					{name='bone-caged-simik', amount = 1},
				},
			crafting_speed = 90,
			tech = 'bmp'
		},

		--bmp and gh
		{
			ingredients =
				{
					--{name='nanochondria', amount =1},
					{name='gh', amount =1},
				},
			results =
				{

				},
			crafting_speed = 30,
			tech = 'bmp'
		},
		--rna anabolic
		{
			ingredients =
				{
					{name='gh',remove_item = true},
					{name='bmp',remove_item = true},
					{name='anabolic-rna', amount =1},
				},
			results =
				{
					{name='bone-caged-simik', remove_item = true},
					{name='meat-caged-simik', amount = 1},
				},
			crafting_speed = 90,
			tech = 'anabolic-rna'
		},
		--rna anabolic and gh
		{
			ingredients =
				{
					--{name='nanochondria', amount =1},
					{name='gh', amount =1},
				},
			results =
				{

				},
			crafting_speed = 30,
			tech = 'anabolic-rna'
		},
		--antitumor
		{
			ingredients =
				{
					{name='gh',remove_item = true},
					{name='anabolic-rna',remove_item = true},
					{name='antitumor', amount =1},
				},
			results =
				{
					{name='meat-caged-simik', remove_item = true},
					{name='guts-caged-simik', amount = 1},
				},
			crafting_speed = 90,
			tech = 'antitumor'
		},
		--antitumor and gh
		{
			ingredients =
				{
					--{name='nanochondria', amount =1},
					{name='gh', amount =1},
				},
			results =
				{

				},
			crafting_speed = 30,
			tech = 'antitumor'
		},

		--antitumor hot air
		{
			ingredients =
				{
					{name='gh',remove_item = true},

				},
			results =
				{
					{name='guts-caged-simik', remove_item = true},
					{name='hotair-caged-simik', amount = 1},
				},
			crafting_speed = 90,
			tech = 'antitumor'
		},
		--antitumor and gh hot air
		{
			ingredients =
				{
					--{name='nanochondria', amount =1},
					{name='gh', amount =1},
				},
			results =
				{

				},
			crafting_speed = 30,
			tech = 'antitumor'
		},

		--Recombinant Ery
		{
			ingredients =
				{
					{name='gh',remove_item = true},
					{name='antitumor',remove_item = true},
					{name='recombinant-ery', amount =1},
				},
			results =
				{
					{name='hotair-caged-simik', remove_item = true},
					{name='blood-caged-simik', amount = 1},
				},
			crafting_speed = 90,
			tech = 'recombinant-ery'
		},
		--Recombinant Ery and gh
		{
			ingredients =
				{
					{name='gh', amount =1},
				},
			results =
				{

				},
			crafting_speed = 30,
			tech = 'recombinant-ery'
		},
		--reca skin
		{
			ingredients =
				{
					{name='gh',remove_item = true},
					{name='recombinant-ery',remove_item = true},
					{name='reca', amount =1},
				},
			results =
				{
					{name='blood-caged-simik', remove_item = true},
					{name='skin-caged-simik', amount = 1},
				},
			crafting_speed = 90,
			tech = 'reca'
		},
		--reca skin and gh
		{
			ingredients =
				{
					{name='gh', amount =1},
				},
			results =
				{

				},
			crafting_speed = 30,
			tech = 'reca'
        },
        --reca chitin
		{
			ingredients =
				{
					{name='gh',remove_item = true},
				},
			results =
				{
					{name='skin-caged-simik', remove_item = true},
					{name='chitin-caged-simik', amount = 1},
				},
			crafting_speed = 90,
			tech = 'reca'
		},
		--reca chitin and gh
		{
			ingredients =
				{
					{name='gh', amount =1},
				},
			results =
				{

				},
			crafting_speed = 30,
			tech = 'reca'
        },
        --reca keratin
		{
			ingredients =
				{
					{name='gh',remove_item = true},
				},
			results =
				{
					{name='chitin-caged-simik', remove_item = true},
					{name='keratin-caged-simik', amount = 1},
				},
			crafting_speed = 90,
			tech = 'reca'
		},
		--reca keratin and gh
		{
			ingredients =
				{
					{name='gh', amount =1},
				},
			results =
				{

				},
			crafting_speed = 30,
			tech = 'reca'
		},
		--orexigenic
		{
			ingredients =
				{
					{name='gh',remove_item = true},
					{name='reca',remove_item = true},
					{name='orexigenic', amount =1},
				},
			results =
				{
					{name='keratin-caged-simik', remove_item = true},
					{name='fat-caged-simik', amount = 1},
				},
			crafting_speed = 90,
			tech = 'orexigenic'
		},
		--orexigenic and gh
		{
			ingredients =
				{
					{name='gh', amount =1},
				},
			results =
				{

				},
			crafting_speed = 30,
			tech = 'orexigenic'
		},
	}
}
