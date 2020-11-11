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
					{name='cagedarthurian',amount=1},
				},
			results =
				{
					{name='bones', amount ='R'},
					{name='meat', amount ='R'},
					{name='skin', amount ='R'},
					{name='fat', amount ='R'},
					{name='guts', amount ='R'},
					{name='blood', amount ='R'},
					{name='brain', amount ='R'},
					{name='cage',amount=1},
					{name='fat', amount ='+1'},
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
					{name='cagedauog',amount=1},
				},
			results =
				{
                    {name='bones', amount ='R'},
					{name='meat', amount ='R'},
					{name='skin', amount ='R'},
					{name='fat', amount ='R'},
					{name='guts', amount ='R'},
					{name='blood', amount ='R'},
					{name='brain', amount ='R'},
					{name='cage',amount=1},
					{name='fat', amount ='+2'},
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
					{name='cottongut',amount=5},
				},
			results =
				{
                    {name='bones', amount ='R'},
					{name='meat', amount ='R'},
					{name='skin', amount ='R'},
					{name='fat', amount ='R'},
					{name='guts', amount ='R'},
					{name='blood', amount ='R'},
					{name='brain', amount ='R'},
					{name='fat', amount ='+1'},
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
					{name='dhilmos',amount=1},
				},
			results =
				{
                    {name='bones', amount ='R'},
					{name='meat', amount ='R'},
					{name='skin', amount ='R'},
					{name='chitin', amount ='R'},
					{name='arthropodblood', amount ='R'},
					{name='sulfuricacid', amount ='R'},
					{name='fat', amount ='R'},
					{name='guts', amount ='R'},
					{name='blood', amount ='R'},
					{name='brain', amount ='R'},
					{name='fat', amount ='+2'},
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
					{name='cagedkmauts',amount=1},
				},
			results =
				{
                    {name='bones', amount ='R'},
					{name='meat', amount ='R'},
					{name='skin', amount ='R'},
					{name='fat', amount ='R'},
					{name='guts', amount ='R'},
					{name='blood', amount ='R'},
					{name='brain', amount ='R'},
					{name='cage',amount=1},
					{name='fat', amount ='+1'},
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
					{name='cagedkorlex',amount=1},
				},
			results =
				{
                    {name='bones', amount ='R'},
					{name='meat', amount ='R'},
					{name='skin', amount ='R'},
					{name='fat', amount ='R'},
					{name='guts', amount ='R'},
					{name='blood', amount ='R'},
					{name='brain', amount ='R'},
					{name='cage',amount=1},
					{name='fat', amount ='+3'},
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
					{name='cagedmukmoux',amount=1},
				},
			results =
				{
                    {name='bones', amount ='R'},
					{name='meat', amount ='R'},
					{name='skin', amount ='R'},
					{name='fat', amount ='R'},
					{name='guts', amount ='R'},
					{name='blood', amount ='R'},
					{name='brain', amount ='R'},
					{name='cage',amount=1},
					{name='fat', amount ='+2'},
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
					{name='cagedphadai',amount=1},
				},
			results =
				{
                    {name='bones', amount ='R'},
					{name='meat', amount ='R'},
					{name='skin', amount ='R'},
					{name='fat', amount ='R'},
					{name='guts', amount ='R'},
					{name='blood', amount ='R'},
					{name='brain', amount ='R'},
					{name='cage',amount=1},
					{name='fat', amount ='+1'},
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
					{name='cagedscrondrix',amount=1},
				},
			results =
				{
                    {name='bones', amount ='R'},
					{name='meat', amount ='R'},
					{name='skin', amount ='R'},
					{name='fat', amount ='R'},
					{name='guts', amount ='R'},
					{name='blood', amount ='R'},
					{name='brain', amount ='R'},
					{name='cage',amount=1},
					{name='fat', amount ='+3'},
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
					{name='cagedsimik',amount=1},
				},
			results =
				{
                    {name='bones', amount ='R'},
					{name='meat', amount ='R'},
					{name='skin', amount ='R'},
					{name='fat', amount ='R'},
					{name='guts', amount ='R'},
					{name='simikblood', amount ='R'},
					{name='brain', amount ='R'},
					{name='cage',amount=1},
					{name='fat', amount ='+3'},
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
					{name='trits',amount=1},
				},
			results =
				{
                    {name='bones', amount ='R'},
					{name='meat', amount ='R'},
					{name='skin', amount ='R'},
					{name='fat', amount ='R'},
					{name='guts', amount ='R'},
					{name='blood', amount ='R'},
					{name='brain', amount ='R'},
					{name='fat', amount ='+5'},
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
					{name='cagedulric',amount=1},
				},
			results =
				{
                    {name='bones', amount ='R'},
					{name='meat', amount ='R'},
					{name='skin', amount ='R'},
					{name='fat', amount ='R'},
					{name='guts', amount ='R'},
					{name='blood', amount ='R'},
					{name='brain', amount ='R'},
					{name='cage',amount=1},
					{name='fat', amount ='+2'},
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
					{name='vonix',amount=1},
				},
			results =
				{
                    {name='bones', amount ='R'},
					{name='meat', amount ='R'},
					{name='skin', amount ='R'},
					{name='fat', amount ='R'},
					{name='chitin', amount ='R'},
					{name='arthropodblood', amount ='R'},
					{name='sulfuricacid', amount ='R'},
					{name='guts', amount ='R'},
					{name='blood', amount ='R'},
					{name='brain', amount ='R'},
					{name='fat', amount ='+4'},
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
					{name='zipir',amount=1},
				},
			results =
				{
                    {name='bones', amount ='R'},
					{name='meat', amount ='R'},
					{name='skin', amount ='R'},
					{name='chitin', amount ='R'},
					{name='arthropodblood', amount ='R'},
					{name='sulfuricacid', amount ='R'},
					{name='fat', amount ='R'},
					{name='guts', amount ='R'},
					{name='blood', amount ='R'},
					{name='brain', amount ='R'},
					{name='fat', amount ='+3'},
				},
                crafting_speed = 15,
                tech = 'force-feeding',
                name = 'Extract zipir lard-1',
                icon = "__pyalienlifegraphics__/graphics/icons/mukmoux-fat.png",
                icon_size = 64,
		},
	}
}