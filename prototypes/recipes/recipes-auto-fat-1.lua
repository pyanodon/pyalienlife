local fun = require("prototypes/functions/functions")


------------------ARTHURIANS------------------

fun.autorecipes {
    name = 'rendering-fat-arthurians',
	category = 'slaughterhouse-arthurian',
	--module_limitations = 'arthurian',
	subgroup = 'py-alienlife-arthurian',
	order = 'b',
    mats =
	{
		--fat
		{
			ingredients =
				{
					{name='caged-arthurian', amount=1},
				},
			results =
				{
					{name='bones', remove_item = true},
					{name='meat', remove_item = true},
					{name='skin', remove_item = true},
					{name='mukmoux-fat', remove_item = true},
					{name='guts', remove_item = true},
					{name='blood', remove_item = true},
					{name='brain', remove_item = true},
					{name='cage', amount=1},
					{name='mukmoux-fat', amount ='+1'},
				},
			crafting_speed = 15,
			tech = 'force-feeding',
			name = 'Extract arthurian lard-1',
			icon = "__pyalienlifegraphics__/graphics/icons/mukmoux-fat.png",
			icon_size = 64,
		},
	}
}

------------------AUOGS------------------

fun.autorecipes {
    name = 'rendering-fat-auog',
	category = 'slaughterhouse-auog',
	--module_limitations = 'auog',
	subgroup = 'py-alienlife-auog',
	order = 'b',
    mats =
	{
		--fat
		{
			ingredients =
				{
					{name='caged-auog', amount=1},
				},
			results =
				{
                    {name='bones', remove_item = true},
					{name='meat', remove_item = true},
					{name='skin', remove_item = true},
					{name='mukmoux-fat', remove_item = true},
					{name='guts', remove_item = true},
					{name='blood', remove_item = true},
					{name='brain', remove_item = true},
					{name='cage', amount=1},
					{name='mukmoux-fat', amount ='+2'},
				},
                crafting_speed = 15,
                tech = 'force-feeding',
                name = 'Extract auog lard-1',
                icon = "__pyalienlifegraphics__/graphics/icons/mukmoux-fat.png",
                icon_size = 64,
		},
	}
}

------------------COTTONGUT------------------

fun.autorecipes {
    name = 'rendering-fat-cottongut',
	category = 'slaughterhouse-cottongut',
	--module_limitations = 'cottongut',
	subgroup = 'py-alienlife-cottongut',
	order = 'b',
    mats =
	{
		--fat
		{
			ingredients =
				{
					{name='cottongut', amount=5},
				},
			results =
				{
                    {name='bones', remove_item = true},
					{name='meat', remove_item = true},
					{name='skin', remove_item = true},
					{name='mukmoux-fat', remove_item = true},
					{name='guts', remove_item = true},
					{name='blood', remove_item = true},
					{name='brain', remove_item = true},
					{name='mukmoux-fat', amount ='+1'},
				},
                crafting_speed = 15,
                tech = 'force-feeding',
                name = 'Extract cottongut lard-1',
                icon = "__pyalienlifegraphics__/graphics/icons/mukmoux-fat.png",
                icon_size = 64,
		},
	}
}

------------------DHILMOS------------------

fun.autorecipes {
    name = 'rendering-fat-dhilmos',
	category = 'slaughterhouse-dhilmos',
	--module_limitations = 'auog',
	subgroup = 'py-alienlife-dhilmos',
	order = 'b',
    mats =
	{
		--fat
		{
			ingredients =
				{
					{name='dhilmos', amount=1},
				},
			results =
				{
                    {name='bones', remove_item = true},
					{name='meat', remove_item = true},
					{name='skin', remove_item = true},
					{name='chitin', remove_item = true},
					{name='arthropod-blood', remove_item = true},
					{name='sulfuric-acid', remove_item = true},
					{name='mukmoux-fat', remove_item = true},
					{name='guts', remove_item = true},
					{name='blood', remove_item = true},
					{name='brain', remove_item = true},
					{name='mukmoux-fat', amount ='+2'},
				},
                crafting_speed = 15,
                tech = 'force-feeding',
                name = 'Extract dhilmos lard-1',
                icon = "__pyalienlifegraphics__/graphics/icons/mukmoux-fat.png",
                icon_size = 64,
		},
	}
}

------------------KMAUTS------------------

fun.autorecipes {
    name = 'rendering-fat-kmauts',
	category = 'slaughterhouse-kmauts',
	--module_limitations = 'auog',
	subgroup = 'py-alienlife-kmauts',
	order = 'b',
    mats =
	{
		--fat
		{
			ingredients =
				{
					{name='caged-kmauts', amount=1},
				},
			results =
				{
                    {name='bones', remove_item = true},
					{name='meat', remove_item = true},
					{name='skin', remove_item = true},
					{name='mukmoux-fat', remove_item = true},
					{name='guts', remove_item = true},
					{name='blood', remove_item = true},
					{name='brain', remove_item = true},
					{name='cage', amount=1},
					{name='mukmoux-fat', amount ='+1'},
				},
                crafting_speed = 15,
                tech = 'force-feeding',
                name = 'Extract kmauts lard-1',
                icon = "__pyalienlifegraphics__/graphics/icons/mukmoux-fat.png",
                icon_size = 64,
		},
	}
}

------------------KORLEX------------------

fun.autorecipes {
    name = 'rendering-fat-korlex',
	category = 'slaughterhouse-korlex',
	--module_limitations = 'auog',
	subgroup = 'py-alienlife-korlex',
	order = 'b',
    mats =
	{
		--fat
		{
			ingredients =
				{
					{name='caged-korlex', amount=1},
				},
			results =
				{
                    {name='bones', remove_item = true},
					{name='meat', remove_item = true},
					{name='skin', remove_item = true},
					{name='mukmoux-fat', remove_item = true},
					{name='guts', remove_item = true},
					{name='blood', remove_item = true},
					{name='brain', remove_item = true},
					{name='cage', amount=1},
					{name='mukmoux-fat', amount ='+3'},
				},
                crafting_speed = 15,
                tech = 'force-feeding',
                name = 'Extract Korlex lard-1',
                icon = "__pyalienlifegraphics__/graphics/icons/mukmoux-fat.png",
                icon_size = 64,
		},
	}
}

------------------MUKMOUX------------------

fun.autorecipes {
    name = 'rendering-fat-mukmoux',
	category = 'slaughterhouse-mukmoux',
	--module_limitations = 'auog',
	subgroup = 'py-alienlife-mukmoux',
	order = 'b',
    mats =
	{
		--fat
		{
			ingredients =
				{
					{name='caged-mukmoux', amount=1},
				},
			results =
				{
                    {name='bones', remove_item = true},
					{name='meat', remove_item = true},
					{name='skin', remove_item = true},
					{name='mukmoux-fat', remove_item = true},
					{name='guts', remove_item = true},
					{name='blood', remove_item = true},
					{name='brain', remove_item = true},
					{name='cage', amount=1},
					{name='mukmoux-fat', amount ='+2'},
				},
                crafting_speed = 15,
                tech = 'force-feeding',
                name = 'Extract Mukmoux lard-1',
                icon = "__pyalienlifegraphics__/graphics/icons/mukmoux-fat.png",
                icon_size = 64,
		},
	}
}

------------------PHADAI------------------

fun.autorecipes {
    name = 'rendering-fat-phadai',
	category = 'slaughterhouse-phadai',
	--module_limitations = 'auog',
	subgroup = 'py-alienlife-phadai',
	order = 'b',
    mats =
	{
		--fat
		{
			ingredients =
				{
					{name='caged-phadai', amount=1},
				},
			results =
				{
                    {name='bones', remove_item = true},
					{name='meat', remove_item = true},
					{name='skin', remove_item = true},
					{name='mukmoux-fat', remove_item = true},
					{name='guts', remove_item = true},
					{name='blood', remove_item = true},
					{name='brain', remove_item = true},
					{name='cage', amount=1},
					{name='mukmoux-fat', amount ='+1'},
				},
                crafting_speed = 15,
                tech = 'force-feeding',
                name = 'Extract phadai Fat-1',
                icon = "__pyalienlifegraphics__/graphics/icons/mukmoux-fat.png",
                icon_size = 64,
		},
	}
}

------------------SCRONDRIX------------------

fun.autorecipes {
    name = 'rendering-fat-scrondrix',
	category = 'slaughterhouse-scrondrix',
	--module_limitations = 'auog',
	subgroup = 'py-alienlife-scrondrix',
	order = 'b',
    mats =
	{
		--fat
		{
			ingredients =
				{
					{name='caged-scrondrix', amount=1},
				},
			results =
				{
                    {name='bones', remove_item = true},
					{name='meat', remove_item = true},
					{name='skin', remove_item = true},
					{name='mukmoux-fat', remove_item = true},
					{name='guts', remove_item = true},
					{name='blood', remove_item = true},
					{name='brain', remove_item = true},
					{name='cage', amount=1},
					{name='mukmoux-fat', amount ='+3'},
				},
                crafting_speed = 15,
                tech = 'force-feeding',
                name = 'Extract scrondrix lard-1',
                icon = "__pyalienlifegraphics__/graphics/icons/mukmoux-fat.png",
                icon_size = 64,
		},
	}
}

------------------SIMIKS------------------

fun.autorecipes {
    name = 'rendering-fat-simik',
	category = 'slaughterhouse-simik',
	--module_limitations = 'auog',
	subgroup = 'py-alienlife-simik',
	order = 'b',
    mats =
	{
		--fat
		{
			ingredients =
				{
					{name='caged-simik', amount=1},
				},
			results =
				{
                    {name='bones', remove_item = true},
					{name='meat', remove_item = true},
					{name='skin', remove_item = true},
					{name='mukmoux-fat', remove_item = true},
					{name='guts', remove_item = true},
					{name='simik-blood', remove_item = true},
					{name='brain', remove_item = true},
					{name='cage', amount=1},
					{name='mukmoux-fat', amount ='+3'},
				},
                crafting_speed = 15,
                tech = 'force-feeding',
                name = 'Extract simik lard-1',
                icon = "__pyalienlifegraphics__/graphics/icons/mukmoux-fat.png",
                icon_size = 64,
		},
	}
}

------------------TRITS------------------

fun.autorecipes {
    name = 'rendering-fat-trits',
	category = 'slaughterhouse-trits',
	--module_limitations = 'auog',
	subgroup = 'py-alienlife-trits',
	order = 'b',
    mats =
	{
		--fat
		{
			ingredients =
				{
					{name='trits', amount=1},
				},
			results =
				{
                    {name='bones', remove_item = true},
					{name='meat', remove_item = true},
					{name='skin', remove_item = true},
					{name='mukmoux-fat', remove_item = true},
					{name='guts', remove_item = true},
					{name='blood', remove_item = true},
					{name='brain', remove_item = true},
					{name='mukmoux-fat', amount ='+5'},
				},
                crafting_speed = 15,
                tech = 'force-feeding',
                name = 'Extract Trits lard-1',
                icon = "__pyalienlifegraphics__/graphics/icons/mukmoux-fat.png",
                icon_size = 64,
		},
	}
}

------------------ULRIC------------------

fun.autorecipes {
    name = 'rendering-fat-ulric',
	category = 'slaughterhouse-ulric',
	--module_limitations = 'auog',
	subgroup = 'py-alienlife-ulric',
	order = 'b',
    mats =
	{
		--fat
		{
			ingredients =
				{
					{name='caged-ulric', amount=1},
				},
			results =
				{
                    {name='bones', remove_item = true},
					{name='meat', remove_item = true},
					{name='skin', remove_item = true},
					{name='mukmoux-fat', remove_item = true},
					{name='guts', remove_item = true},
					{name='blood', remove_item = true},
					{name='brain', remove_item = true},
					{name='cage', amount=1},
					{name='mukmoux-fat', amount ='+2'},
				},
                crafting_speed = 15,
                tech = 'force-feeding',
                name = 'Extract Ulric lard-1',
                icon = "__pyalienlifegraphics__/graphics/icons/mukmoux-fat.png",
                icon_size = 64,
		},
	}
}

------------------VONIX------------------

fun.autorecipes {
    name = 'rendering-fat-vonix',
	category = 'slaughterhouse-vonix',
	--module_limitations = 'auog',
	subgroup = 'py-alienlife-vonix',
	order = 'b',
    mats =
	{
		--fat
		{
			ingredients =
				{
					{name='vonix', amount=1},
				},
			results =
				{
                    {name='bones', remove_item = true},
					{name='meat', remove_item = true},
					{name='skin', remove_item = true},
					{name='mukmoux-fat', remove_item = true},
					{name='chitin', remove_item = true},
					{name='arthropod-blood', remove_item = true},
					{name='sulfuric-acid', remove_item = true},
					{name='guts', remove_item = true},
					{name='blood', remove_item = true},
					{name='brain', remove_item = true},
					{name='mukmoux-fat', amount ='+4'},
				},
                crafting_speed = 15,
                tech = 'force-feeding',
                name = 'Extract Vonix lard-1',
                icon = "__pyalienlifegraphics__/graphics/icons/mukmoux-fat.png",
                icon_size = 64,
		},
	}
}

------------------ZIPIR------------------

fun.autorecipes {
    name = 'rendering-fat-zipir',
	category = 'slaughterhouse-zipir',
	--module_limitations = 'auog',
	subgroup = 'py-alienlife-zipir',
	order = 'b',
    mats =
	{
		--fat
		{
			ingredients =
				{
					{name='zipir', amount=1},
				},
			results =
				{
                    {name='bones', remove_item = true},
					{name='meat', remove_item = true},
					{name='skin', remove_item = true},
					{name='chitin', remove_item = true},
					{name='arthropod-blood', remove_item = true},
					{name='sulfuric-acid', remove_item = true},
					{name='mukmoux-fat', remove_item = true},
					{name='guts', remove_item = true},
					{name='blood', remove_item = true},
					{name='brain', remove_item = true},
					{name='mukmoux-fat', amount ='+3'},
				},
                crafting_speed = 15,
                tech = 'force-feeding',
                name = 'Extract zipir lard-1',
                icon = "__pyalienlifegraphics__/graphics/icons/mukmoux-fat.png",
                icon_size = 64,
		},
	}
}
