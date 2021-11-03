local fun = require("prototypes/functions/functions")


------------------ARTHURIANS------------------

fun.autorecipes {
    name = 'rendering-guts-arthurians-2',
	category = 'slaughterhouse-arthurian',
	--module_limitations = 'arthurian',
	subgroup = 'py-alienlife-arthurian',
	order = 'b',
    mats =
	{
		--guts
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
					{name='guts', add_amount = 2},
				},
			crafting_speed = 15,
			tech = 'cavity',
			name = 'Extract arthurian guts-2',
			icon = "__pyalienlifegraphics__/graphics/icons/mip/guts-01.png",
			icon_size = 64,
		},
		--guts arthurian rendering
		{
			ingredients =
				{
					{name='caged-arthurian',remove_item = true},
					{name='guts-caged-arthurian', amount=1},
				},
			results =
				{
					{name='bonemeal', remove_item = true},
					{name='guts', add_amount = 5},
				},
			crafting_speed = 15,
			tech = 'cavity',
			name = 'Extract guts from Improved arthurians-2',
			icon = "__pyalienlifegraphics__/graphics/icons/guts-caged-arthurian.png",
			icon_size = 64,
		},
	}
}

------------------ARQAD------------------

fun.autorecipes {
    name = 'rendering-guts-arqad-2',
	category = 'slaughterhouse-arqad',
	--module_limitations = 'arqad',
	subgroup = 'py-alienlife-arqad',
	order = 'b',
    mats =
	{
		--guts
		{
			ingredients =
				{
					{name='arqad', amount=3},
				},
			results =
				{
                    {name='bones', remove_item = true},
					{name='meat', remove_item = true},
					{name='skin', remove_item = true},
					{name='mukmoux-fat', remove_item = true},
					{name='bee-venom', remove_item = true},
					{name='guts', remove_item = true},
					{name='arthropod-blood', remove_item = true},
					{name='brain', remove_item = true},
					{name='guts', add_amount = 2},
				},
                crafting_speed = 15,
                tech = 'cavity',
                name = 'Extract arqad guts-2',
                icon = "__pyalienlifegraphics__/graphics/icons/mip/guts-01.png",
                icon_size = 64,
		},
		--guts arqad rendering
		{
			ingredients =
				{
					{name='arqad',remove_item = true},
					{name='guts-arqad', amount=1},
				},
			results =
				{
					{name='chitin', remove_item = true},
					{name='guts', add_amount = 5},
				},
			crafting_speed = 15,
			tech = 'cavity',
			name = 'Extract guts from Improved arqads-2',
			icon = "__pyalienlifegraphics3__/graphics/icons/guts-arqad.png",
			icon_size = 64,
		},
	}
}

------------------AUOGS------------------

fun.autorecipes {
    name = 'rendering-guts-auog-2',
	category = 'slaughterhouse-auog',
	--module_limitations = 'auog',
	subgroup = 'py-alienlife-auog',
	order = 'b',
    mats =
	{
		--guts
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
					{name='guts', add_amount = 2},
				},
                crafting_speed = 15,
                tech = 'cavity',
                name = 'Extract auog guts-2',
                icon = "__pyalienlifegraphics__/graphics/icons/mip/guts-01.png",
                icon_size = 64,
		},
		--guts auog rendering
		{
			ingredients =
				{
					{name='caged-auog',remove_item = true},
					{name='guts-caged-auog', amount=1},
				},
			results =
				{
					{name='meat', remove_item = true},
					{name='guts', add_amount = 5},
				},
			crafting_speed = 15,
			tech = 'cavity',
			name = 'Extract guts from Improved auogs-2',
			icon = "__pyalienlifegraphics__/graphics/icons/guts-caged-auog.png",
			icon_size = 64,
		},
	}
}

------------------COTTONGUT------------------

fun.autorecipes {
    name = 'rendering-guts-cottongut-2',
	category = 'slaughterhouse-cottongut',
	--module_limitations = 'cottongut',
	subgroup = 'py-alienlife-cottongut',
	order = 'b',
    mats =
	{
		--guts
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
					{name='guts', add_amount = 2},
				},
                crafting_speed = 15,
                tech = 'cavity',
                name = 'Extract cottongut guts-2',
                icon = "__pyalienlifegraphics__/graphics/icons/mip/guts-01.png",
                icon_size = 64,
		},
		--guts cottongut rendering
		{
			ingredients =
				{
					{name='cottongut',remove_item = true},
					{name='guts-cottongut', amount=5},
				},
			results =
				{
					{name='meat', remove_item = true},
					{name='guts', add_amount = 5},
				},
			crafting_speed = 15,
			tech = 'cavity',
			name = 'Extract guts from Improved cottonguts-2',
			icon = "__pyalienlifegraphics__/graphics/icons/guts-cottongut.png",
			icon_size = 64,
		},
	}
}

------------------DHILMOS------------------

fun.autorecipes {
    name = 'rendering-guts-dhilmos-2',
	category = 'slaughterhouse-dhilmos',
	--module_limitations = 'auog',
	subgroup = 'py-alienlife-dhilmos',
	order = 'b',
    mats =
	{
		--guts
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
					{name='guts', add_amount = 2},
				},
                crafting_speed = 15,
                tech = 'cavity',
                name = 'Extract dhilmos guts-2',
                icon = "__pyalienlifegraphics__/graphics/icons/mip/guts-01.png",
                icon_size = 64,
		},
		--guts dhilmos rendering
		{
			ingredients =
				{
					{name='dhilmos',remove_item = true},
					{name='guts-dhilmos', amount=1},
				},
			results =
				{
					{name='meat', remove_item = true},
					{name='guts', add_amount = 5},
				},
			crafting_speed = 15,
			tech = 'cavity',
			name = 'Extract guts from Improved dhilmoss-2',
			icon = "__pyalienlifegraphics__/graphics/icons/guts-dhilmos.png",
			icon_size = 64,
		},
	}
}

------------------DINGRITS------------------

fun.autorecipes {
    name = 'rendering-guts-dingrits-2',
	category = 'slaughterhouse-dingrits',
	--module_limitations = 'auog',
	subgroup = 'py-alienlife-dingrits',
	order = 'b',
    mats =
	{
		--guts
		{
			ingredients =
				{
					{name='caged-dingrits', amount=1},
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
					{name='guts', add_amount = 2},
				},
                crafting_speed = 15,
                tech = 'cavity',
                name = 'Extract dingrits guts-2',
                icon = "__pyalienlifegraphics__/graphics/icons/mip/guts-01.png",
                icon_size = 64,
		},
		--guts dingrits rendering
		{
			ingredients =
				{
					{name='caged-dingrits',remove_item = true},
					{name='guts-caged-dingrits', amount=1},
				},
			results =
				{
					{name='bones', remove_item = true},
					{name='guts', add_amount = 5},
				},
			crafting_speed = 15,
			tech = 'cavity',
			name = 'Extract guts from Improved dingrits-2',
			icon = "__pyalienlifegraphics__/graphics/icons/guts-caged-dingrits.png",
			icon_size = 64,
		},
	}
}

------------------KMAUTS------------------

fun.autorecipes {
    name = 'rendering-guts-kmauts-2',
	category = 'slaughterhouse-kmauts',
	--module_limitations = 'auog',
	subgroup = 'py-alienlife-kmauts',
	order = 'b',
    mats =
	{
		--guts
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
					{name='guts', add_amount = 2},
				},
                crafting_speed = 15,
                tech = 'cavity',
                name = 'Extract kmauts guts-2',
                icon = "__pyalienlifegraphics__/graphics/icons/mip/guts-01.png",
                icon_size = 64,
		},
		--guts kmauts rendering
		{
			ingredients =
				{
					{name='caged-kmauts',remove_item = true},
					{name='guts-caged-kmauts', amount=1},
				},
			results =
				{
					{name='brain', remove_item = true},
					{name='guts', add_amount = 5},
				},
			crafting_speed = 15,
			tech = 'cavity',
			name = 'Extract guts from Improved kmauts-2',
			icon = "__pyalienlifegraphics__/graphics/icons/guts-caged-kmauts.png",
			icon_size = 64,
        },
	}
}

------------------KORLEX------------------

fun.autorecipes {
    name = 'rendering-guts-korlex-2',
	category = 'slaughterhouse-korlex',
	--module_limitations = 'auog',
	subgroup = 'py-alienlife-korlex',
	order = 'b',
    mats =
	{
		--guts
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
					{name='guts', add_amount = 2},
				},
                crafting_speed = 15,
                tech = 'cavity',
                name = 'Extract Korlex guts-2',
                icon = "__pyalienlifegraphics__/graphics/icons/mip/guts-01.png",
                icon_size = 64,
		},
		--guts korlex rendering
		{
			ingredients =
				{
					{name='caged-korlex',remove_item = true},
					{name='guts-caged-korlex', amount=1},
				},
			results =
				{
					{name='brain', remove_item = true},
					{name='guts', add_amount = 5},
				},
			crafting_speed = 15,
			tech = 'cavity',
			name = 'Extract guts from Improved Korlex-2',
			icon = "__pyalienlifegraphics__/graphics/icons/guts-caged-korlex.png",
			icon_size = 64,
        },
	}
}


------------------MUKMOUX------------------

fun.autorecipes {
    name = 'rendering-guts-mukmoux-2',
	category = 'slaughterhouse-mukmoux',
	--module_limitations = 'auog',
	subgroup = 'py-alienlife-mukmoux',
	order = 'b',
    mats =
	{
		--guts
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
					{name='guts', add_amount = 3},
				},
                crafting_speed = 15,
                tech = 'cavity',
                name = 'Extract Mukmoux guts-2',
                icon = "__pyalienlifegraphics__/graphics/icons/mip/guts-01.png",
                icon_size = 64,
		},
		--guts mukmoux rendering
		{
			ingredients =
				{
					{name='caged-mukmoux',remove_item = true},
					{name='guts-caged-mukmoux', amount=1},
				},
			results =
				{
					{name='meat', remove_item = true},
					{name='guts', add_amount = 7},
				},
			crafting_speed = 15,
			tech = 'cavity',
			name = 'Extract guts from Improved Mukmouxs-2',
			icon = "__pyalienlifegraphics__/graphics/icons/guts-caged-mukmoux.png",
			icon_size = 64,
		},
	}
}

------------------PHADAI------------------

fun.autorecipes {
    name = 'rendering-guts-phadai-2',
	category = 'slaughterhouse-phadai',
	--module_limitations = 'auog',
	subgroup = 'py-alienlife-phadai',
	order = 'b',
    mats =
	{
		--guts
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
					{name='guts', add_amount = 2},
				},
                crafting_speed = 15,
                tech = 'cavity',
                name = 'Extract phadai guts-2',
                icon = "__pyalienlifegraphics__/graphics/icons/mip/guts-01.png",
                icon_size = 64,
		},
		--guts phadai rendering
		{
			ingredients =
				{
					{name='caged-phadai',remove_item = true},
					{name='guts-caged-phadai', amount=1},
				},
			results =
				{
					{name='bones', remove_item = true},
					{name='guts', add_amount = 5},
				},
			crafting_speed = 15,
			tech = 'cavity',
			name = 'Extract guts from Improved phadais-2',
			icon = "__pyalienlifegraphics__/graphics/icons/guts-caged-phadai.png",
			icon_size = 64,
        },
	}
}

------------------PHAGNOT------------------

fun.autorecipes {
    name = 'rendering-guts-phagnot-2',
	category = 'slaughterhouse-phagnot',
	--module_limitations = 'auog',
	subgroup = 'py-alienlife-phagnot',
	order = 'b',
    mats =
	{
		--guts
		{
			ingredients =
				{
					{name='caged-phagnot', amount=1},
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
					{name='guts', add_amount = 1},
				},
                crafting_speed = 15,
                tech = 'cavity',
                name = 'Extract phagnot guts-2',
                icon = "__pyalienlifegraphics__/graphics/icons/mip/guts-01.png",
                icon_size = 64,
		},
		--guts phagnot rendering
		{
			ingredients =
				{
					{name='caged-phagnot',remove_item = true},
					{name='guts-caged-phagnot', amount=1},
				},
			results =
				{
					{name='bones', remove_item = true},
					{name='guts', add_amount = 4},
				},
			crafting_speed = 15,
			tech = 'cavity',
			name = 'Extract guts from Improved phagnots-2',
			icon = "__pyalienlifegraphics__/graphics/icons/guts-caged-phagnot.png",
			icon_size = 64,
		},
	}
}

------------------SCRONDRIX------------------

fun.autorecipes {
    name = 'rendering-guts-scrondrix-2',
	category = 'slaughterhouse-scrondrix',
	--module_limitations = 'auog',
	subgroup = 'py-alienlife-scrondrix',
	order = 'b',
    mats =
	{
		--guts
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
					{name='guts', add_amount = 3},
				},
                crafting_speed = 15,
                tech = 'cavity',
                name = 'Extract scrondrix guts-2',
                icon = "__pyalienlifegraphics__/graphics/icons/mip/guts-01.png",
                icon_size = 64,
		},
		--guts scrondrix rendering
		{
			ingredients =
				{
					{name='caged-scrondrix',remove_item = true},
					{name='guts-caged-scrondrix', amount=1},
				},
			results =
				{
					{name='bones', remove_item = true},
					{name='guts', add_amount = 6},
				},
			crafting_speed = 15,
			tech = 'cavity',
			name = 'Extract guts from Improved scrondrixs-2',
			icon = "__pyalienlifegraphics__/graphics/icons/guts-caged-scrondrix.png",
			icon_size = 64,
		},
	}
}

------------------SIMIKS------------------

fun.autorecipes {
    name = 'rendering-guts-simik-2',
	category = 'slaughterhouse-simik',
	--module_limitations = 'auog',
	subgroup = 'py-alienlife-simik',
	order = 'b',
    mats =
	{
		--guts
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
					{name='guts', add_amount = 3},
				},
                crafting_speed = 15,
                tech = 'cavity',
                name = 'Extract simik guts-2',
                icon = "__pyalienlifegraphics__/graphics/icons/mip/guts-01.png",
                icon_size = 64,
		},
		--guts simik rendering
		{
			ingredients =
				{
					{name='caged-simik',remove_item = true},
					{name='guts-caged-simik', amount=1},
				},
			results =
				{
					{name='bones', remove_item = true},
					{name='guts', add_amount = 4},
				},
			crafting_speed = 15,
			tech = 'cavity',
			name = 'Extract guts from Improved simik-2',
			icon = "__pyalienlifegraphics2__/graphics/icons/guts-caged-simik.png",
			icon_size = 64,
		},
	}
}

------------------TRITS------------------

fun.autorecipes {
    name = 'rendering-guts-trits-2',
	category = 'slaughterhouse-trits',
	--module_limitations = 'auog',
	subgroup = 'py-alienlife-trits',
	order = 'b',
    mats =
	{
		--guts
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
					{name='guts', add_amount = 2},
				},
                crafting_speed = 15,
                tech = 'cavity',
                name = 'Extract Trits guts-2',
                icon = "__pyalienlifegraphics__/graphics/icons/mip/guts-01.png",
                icon_size = 64,
		},
		--guts trits rendering
		{
			ingredients =
				{
					{name='trits',remove_item = true},
					{name='guts-trits', amount=1},
				},
			results =
				{
					{name='meat', remove_item = true},
					{name='guts', add_amount = 5},
				},
			crafting_speed = 15,
			tech = 'cavity',
			name = 'Extract guts from Improved Trits-2',
			icon = "__pyalienlifegraphics__/graphics/icons/guts-trits.png",
			icon_size = 64,
		},
	}
}

------------------ULRIC------------------

fun.autorecipes {
    name = 'rendering-guts-ulric-2',
	category = 'slaughterhouse-ulric',
	--module_limitations = 'auog',
	subgroup = 'py-alienlife-ulric',
	order = 'b',
    mats =
	{
		--guts
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
					{name='guts', add_amount = 2},
				},
                crafting_speed = 15,
                tech = 'cavity',
                name = 'Extract Ulric guts-2',
                icon = "__pyalienlifegraphics__/graphics/icons/mip/guts-01.png",
                icon_size = 64,
		},
		--guts ulric rendering
		{
			ingredients =
				{
					{name='caged-ulric',remove_item = true},
					{name='guts-caged-ulric', amount=1},
				},
			results =
				{
					{name='bonemeal', remove_item = true},
					{name='guts', add_amount = 5},
				},
			crafting_speed = 15,
			tech = 'cavity',
			name = 'Extract guts from Improved Ulrics-2',
			icon = "__pyalienlifegraphics__/graphics/icons/guts-caged-ulric.png",
			icon_size = 64,
		},
	}
}

------------------VONIX------------------

fun.autorecipes {
    name = 'rendering-guts-vonix-2',
	category = 'slaughterhouse-vonix',
	--module_limitations = 'auog',
	subgroup = 'py-alienlife-vonix',
	order = 'b',
    mats =
	{
		--guts
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
					{name='guts', add_amount = 2},
				},
                crafting_speed = 15,
                tech = 'cavity',
                name = 'Extract Vonix guts-2',
                icon = "__pyalienlifegraphics__/graphics/icons/mip/guts-01.png",
                icon_size = 64,
		},
		--guts vonix rendering
		{
			ingredients =
				{
					{name='fat-vonix',remove_item = true},
					{name='vonix',remove_item = true},
					{name='guts-vonix', amount=1},
				},
			results =
				{
					{name='brain', remove_item = true},
					{name='guts', add_amount = 5},
				},
			crafting_speed = 15,
			tech = 'cavity',
			name = 'Extract guts from Improved Vonixes-2',
			icon = "__pyalienlifegraphics__/graphics/icons/guts-vonix.png",
			icon_size = 64,
		},
	}
}

------------------VRAUkS------------------

fun.autorecipes {
    name = 'rendering-guts-vrauks-2',
	category = 'slaughterhouse-vrauks',
	--module_limitations = 'auog',
	subgroup = 'py-alienlife-vrauks',
	order = 'b',
    mats =
	{
		--meat
		--guts
		{
			ingredients =
				{
					{name='caged-vrauks', amount=1},
				},
			results =
				{
                    {name='bones', remove_item = true},
					{name='meat', remove_item = true},
					{name='skin', remove_item = true},
					{name='mukmoux-fat', remove_item = true},
					{name='guts', remove_item = true},
					{name='chitin', remove_item = true},
					{name='formic-acid', remove_item = true},
					{name='sulfuric-acid', remove_item = true},
					{name='blood', remove_item = true},
					{name='brain', remove_item = true},
					{name='cage', amount=1},
					{name='guts', add_amount = 2},
				},
                crafting_speed = 15,
                tech = 'cavity',
                name = 'Extract Vrauks guts-2',
                icon = "__pyalienlifegraphics__/graphics/icons/mip/guts-01.png",
                icon_size = 64,
		},
		--guts vrauks rendering
		{
			ingredients =
				{
					{name='brain-caged-vrauks',remove_item = true},
					{name='caged-vrauks',remove_item = true},
					{name='guts-caged-vrauks', amount=1},
				},
			results =
				{
					{name='bonemeal', remove_item = true},
					{name='guts', add_amount = 5},
				},
			crafting_speed = 15,
			tech = 'cavity',
			name = 'Extract guts from Improved Vrauks-2',
			icon = "__pyalienlifegraphics__/graphics/icons/guts-caged-vrauks.png",
			icon_size = 64,
		},
	}
}

------------------XYHIPHOE------------------

fun.autorecipes {
    name = 'rendering-guts-xyhiphoe-2',
	category = 'slaughterhouse-xyhiphoe',
	--module_limitations = 'auog',
	subgroup = 'py-alienlife-xyhiphoe',
	order = 'b',
    mats =
	{
		--guts
		{
			ingredients =
				{
					{name='xyhiphoe', amount=1},
				},
			results =
				{
					{name='meat', remove_item = true},
					{name='shell', remove_item = true},
					{name='guts', remove_item = true},
					{name='arthropod-blood', remove_item = true},
					{name='guts', add_amount = 4},
				},
			crafting_speed = 15,
			tech = 'cavity',
			name = 'Extract xyhiphoe guts-2',
			icon = "__pyalienlifegraphics__/graphics/icons/mip/guts-01.png",
			icon_size = 64,
		},
		--guts xyhiphoe rendering
		{
			ingredients =
				{
					{name='xyhiphoe',remove_item = true},
					{name='guts-xyhiphoe', amount=1},
				},
			results =
				{
					{name='meat', remove_item = true},
					{name='guts', add_amount = 5},
				},
			crafting_speed = 15,
			tech = 'cavity',
			name = 'Extract guts from Improved xyhiphoe-2',
			icon = "__pyalienlifegraphics__/graphics/icons/guts-xyhiphoe.png",
			icon_size = 64,
		},
	}
}

------------------ZIPIR------------------

fun.autorecipes {
    name = 'rendering-guts-zipir-2',
	category = 'slaughterhouse-zipir',
	--module_limitations = 'auog',
	subgroup = 'py-alienlife-zipir',
	order = 'b',
    mats =
	{
		--guts
		{
			ingredients =
				{
					{name = 'zipir1', amount=1},
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
					{name='guts', add_amount = 2},
				},
                crafting_speed = 15,
                tech = 'cavity',
                name = 'Extract zipir guts-2',
                icon = "__pyalienlifegraphics__/graphics/icons/mip/guts-01.png",
                icon_size = 64,
		},
		--guts zipir rendering
		{
			ingredients =
				{
					{name = 'zipir1',remove_item = true},
					{name='guts-zipir', amount=1},
				},
			results =
				{
					{name='brain', remove_item = true},
					{name='guts', add_amount = 5},
				},
			crafting_speed = 15,
			tech = 'cavity',
			name = 'Extract guts from Improved Zipir-2',
			icon = "__pyalienlifegraphics__/graphics/icons/guts-zipir.png",
			icon_size = 64,
		},
	}
}
