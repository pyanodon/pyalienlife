local fun = require("prototypes/functions/functions")


------------------ARTHURIANS------------------

fun.autorecipes {
    name = 'rendering-skin-arthurians-2',
	category = 'slaughterhouse-arthurian',
	--module_limitations = 'arthurian',
	subgroup = 'py-alienlife-arthurian',
	order = 'b',
    mats =
	{
		--skin
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
					{name='skin', add_amount = 2},
				},
			crafting_speed = 15,
			tech = 'double-skin',
			name = 'Extract arthurian skin-2',
			icon = "__pyalienlifegraphics__/graphics/icons/skin.png",
			icon_size = 32,
		},
		--skin arthurian rendering
		{
			ingredients =
				{
					{name='caged-arthurian',remove_item = true},
					{name='skin-caged-arthurian', amount=1},
				},
			results =
				{
					{name='blood', remove_item = true},
					{name='skin', add_amount = 5},
				},
			crafting_speed = 15,
			tech = 'double-skin',
			name = 'Extract skin from Improved arthurians-2',
			icon = "__pyalienlifegraphics__/graphics/icons/skin-caged-arthurian.png",
			icon_size = 64,
		},
	}
}

------------------ARQUAD------------------

fun.autorecipes {
    name = 'rendering-skin-arqad-2',
	category = 'slaughterhouse-arqad',
	--module_limitations = 'arqad',
	subgroup = 'py-alienlife-arqad',
	order = 'b',
    mats =
	{
		--skin
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
					{name='chitin', remove_item = true},
					{name='bee-venom', remove_item = true},
					{name='guts', remove_item = true},
					{name='arthropod-blood', remove_item = true},
					{name='brain', remove_item = true},
					{name='chitin', add_amount = 2},
				},
                crafting_speed = 15,
                tech = 'double-skin',
                name = 'Extract arqad chitin-2',
                icon = "__pyalienlifegraphics__/graphics/icons/chitin.png",
                icon_size = 64,
		},
		--skin arqad rendering
		{
			ingredients =
				{
					{name='arqad',remove_item = true},
					{name='chitin-arqad', amount=1},
				},
			results =
				{
					{name='arthropod-blood', remove_item = true},
					{name='chitin', add_amount = 4},
				},
			crafting_speed = 15,
			tech = 'double-skin',
			name = 'Extract chitin from Improved arqads-2',
			icon = "__pyalienlifegraphics3__/graphics/icons/chitin-arqad.png",
			icon_size = 64,
		},
	}
}

------------------AUOGS------------------

fun.autorecipes {
    name = 'rendering-skin-auog-2',
	category = 'slaughterhouse-auog',
	--module_limitations = 'auog',
	subgroup = 'py-alienlife-auog',
	order = 'b',
    mats =
	{
		--skin
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
					{name='skin', add_amount = 2},
				},
                crafting_speed = 15,
                tech = 'double-skin',
                name = 'Extract auog skin-2',
                icon = "__pyalienlifegraphics__/graphics/icons/skin.png",
                icon_size = 32,
		},
		--skin auog rendering
		{
			ingredients =
				{
					{name='caged-auog',remove_item = true},
					{name='skin-caged-auog', amount=1},
				},
			results =
				{
					{name='blood', remove_item = true},
					{name='skin', add_amount = 5},
				},
			crafting_speed = 15,
			tech = 'double-skin',
			name = 'Extract skin from Improved auogs-2',
			icon = "__pyalienlifegraphics__/graphics/icons/skin-caged-auog.png",
			icon_size = 64,
		},
	}
}

------------------COTTONGUT------------------

fun.autorecipes {
    name = 'rendering-skin-cottongut-2',
	category = 'slaughterhouse-cottongut',
	--module_limitations = 'cottongut',
	subgroup = 'py-alienlife-cottongut',
	order = 'b',
    mats =
	{
		--skin
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
					{name='skin', add_amount = 1},
				},
                crafting_speed = 15,
                tech = 'double-skin',
                name = 'Extract cottongut skin-2',
                icon = "__pyalienlifegraphics__/graphics/icons/skin.png",
                icon_size = 32,
		},
		--skin cottongut rendering
		{
			ingredients =
				{
					{name='cottongut',remove_item = true},
					{name='skin-cottongut', amount=5},
				},
			results =
				{
					{name='blood', remove_item = true},
					{name='skin', add_amount = 3},
				},
			crafting_speed = 15,
			tech = 'double-skin',
			name = 'Extract skin from Improved cottonguts-2',
			icon = "__pyalienlifegraphics__/graphics/icons/skin-cottongut.png",
			icon_size = 64,
		},
	}
}

------------------DINGRITS------------------

fun.autorecipes {
    name = 'rendering-skin-dingrits-2',
	category = 'slaughterhouse-dingrits',
	--module_limitations = 'dingrits',
	subgroup = 'py-alienlife-dingrits',
	order = 'b',
    mats =
	{
		--skin
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
					{name='pelt', remove_item = true},
					{name='guts', remove_item = true},
					{name='blood', remove_item = true},
					{name='brain', remove_item = true},
					{name='pelt', add_amount = 1},
					{name='cage', amount=1},
				},
                crafting_speed = 15,
                tech = 'double-skin',
				name = 'Extract dingrits Pelt-2',
				icon = "__pyalienlifegraphics__/graphics/icons/pelt.png",
				icon_size = 64,
		},
		--skin dingrits rendering
		{
			ingredients =
				{
					{name='caged-dingrits',remove_item = true},
					{name='skin-caged-dingrits', amount=1},
				},
			results =
				{
					{name='meat', remove_item = true},
					{name='pelt', add_amount = 2},
					{name='cage', amount=1},
				},
			crafting_speed = 15,
			tech = 'reca',
			name = 'Extract pelt from Improved dingrits-2',
			icon = "__pyalienlifegraphics__/graphics/icons/skin-caged-dingrits.png",
			icon_size = 64,
		},
	}
}


------------------DHILMOS------------------

fun.autorecipes {
    name = 'rendering-skin-dhilmos-2',
	category = 'slaughterhouse-dhilmos',
	--module_limitations = 'auog',
	subgroup = 'py-alienlife-dhilmos',
	order = 'b',
    mats =
	{
		--skin
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
					{name='chitin', add_amount = 2},
				},
                crafting_speed = 15,
                tech = 'double-skin',
                name = 'Extract dhilmos chitin-2',
                icon = "__pyalienlifegraphics__/graphics/icons/chitin.png",
                icon_size = 64,
		},
	}
}

------------------KORLEX------------------

fun.autorecipes {
    name = 'rendering-skin-korlex-2',
	category = 'slaughterhouse-korlex',
	--module_limitations = 'auog',
	subgroup = 'py-alienlife-korlex',
	order = 'b',
    mats =
	{
		--skin
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
					{name='skin', add_amount = 2},
				},
                crafting_speed = 15,
                tech = 'double-skin',
                name = 'Extract Korlex skin-2',
                icon = "__pyalienlifegraphics__/graphics/icons/skin.png",
                icon_size = 32,
		},
		--skin korlex rendering
		{
			ingredients =
				{
					{name='caged-korlex',remove_item = true},
					{name='skin-caged-korlex', amount=1},
				},
			results =
				{
					{name='blood', remove_item = true},
					{name='skin', add_amount = 5},
				},
			crafting_speed = 15,
			tech = 'double-skin',
			name = 'Extract skin from Improved Korlex-2',
			icon = "__pyalienlifegraphics__/graphics/icons/skin-caged-korlex.png",
			icon_size = 64,
		},
	}
}

------------------MUKMOUX------------------

fun.autorecipes {
    name = 'rendering-skin-mukmoux-2',
	category = 'slaughterhouse-mukmoux',
	--module_limitations = 'auog',
	subgroup = 'py-alienlife-mukmoux',
	order = 'b',
    mats =
	{
		--skin
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
					{name='skin', add_amount = 2},
				},
                crafting_speed = 15,
                tech = 'double-skin',
                name = 'Extract Mukmoux skin-2',
                icon = "__pyalienlifegraphics__/graphics/icons/skin.png",
                icon_size = 32,
		},
		--skin mukmoux rendering
		{
			ingredients =
				{
					{name='caged-mukmoux',remove_item = true},
					{name='skin-caged-mukmoux', amount=1},
				},
			results =
				{
					{name='blood', remove_item = true},
					{name='skin', add_amount = 5},
				},
			crafting_speed = 15,
			tech = 'double-skin',
			name = 'Extract skin from Improved Mukmouxs-2',
			icon = "__pyalienlifegraphics__/graphics/icons/skin-caged-mukmoux.png",
			icon_size = 64,
		},
	}
}

------------------PHADAI------------------

fun.autorecipes {
    name = 'rendering-skin-phadai-2',
	category = 'slaughterhouse-phadai',
	--module_limitations = 'auog',
	subgroup = 'py-alienlife-phadai',
	order = 'b',
    mats =
	{
		--skin
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
					{name='carapace', remove_item = true},
					{name='guts', remove_item = true},
					{name='blood', remove_item = true},
					{name='brain', remove_item = true},
					{name='cage', amount=1},
					{name='skin', add_amount = 2},
				},
                crafting_speed = 15,
                tech = 'double-skin',
                name = 'Extract phadai Skin-2',
                icon = "__pyalienlifegraphics__/graphics/icons/skin.png",
                icon_size = 32,
		},
		--skin phadai rendering
		{
			ingredients =
				{
					{name='caged-phadai',remove_item = true},
					{name='skin-caged-phadai', amount=1},
				},
			results =
				{
					{name='meat', remove_item = true},
					{name='skin', add_amount = 5},
				},
			crafting_speed = 15,
			tech = 'double-skin',
			name = 'Extract skin from Improved phadais-2',
			icon = "__pyalienlifegraphics__/graphics/icons/skin-caged-phadai.png",
			icon_size = 64,
        },
	}
}

------------------PHAGNOT------------------

fun.autorecipes {
    name = 'rendering-skin-phagnot-2',
	category = 'slaughterhouse-phagnot',
	--module_limitations = 'auog',
	subgroup = 'py-alienlife-phagnot',
	order = 'b',
    mats =
	{
		--skin
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
					{name='skin', add_amount = 2},
				},
                crafting_speed = 15,
                tech = 'double-skin',
                name = 'Extract phagnot skin-2',
                icon = "__pyalienlifegraphics__/graphics/icons/skin.png",
                icon_size = 32,
		},
		--skin phagnot rendering
		{
			ingredients =
				{
					{name='caged-phagnot',remove_item = true},
					{name='skin-caged-phagnot', amount=1},
				},
			results =
				{
					{name='blood', remove_item = true},
					{name='skin', add_amount = 5},
				},
			crafting_speed = 15,
			tech = 'double-skin',
			name = 'Extract skin from Improved phagnots-2',
			icon = "__pyalienlifegraphics__/graphics/icons/skin-caged-phagnot.png",
			icon_size = 64,
		},
	}
}

------------------SCRONDRIX------------------

fun.autorecipes {
    name = 'rendering-skin-scrondrix-2',
	category = 'slaughterhouse-scrondrix',
	--module_limitations = 'auog',
	subgroup = 'py-alienlife-scrondrix',
	order = 'b',
    mats =
	{
		--skin
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
					{name='skin', add_amount = 3},
				},
                crafting_speed = 15,
                tech = 'double-skin',
                name = 'Extract scrondrix skin-2',
                icon = "__pyalienlifegraphics__/graphics/icons/skin.png",
                icon_size = 32,
		},
		--skin scrondrix rendering
		{
			ingredients =
				{
					{name='caged-scrondrix',remove_item = true},
					{name='skin-caged-scrondrix', amount=1},
				},
			results =
				{
					{name='blood', remove_item = true},
					{name='skin', add_amount = 5},
				},
			crafting_speed = 15,
			tech = 'double-skin',
			name = 'Extract skin from Improved scrondrixs-2',
			icon = "__pyalienlifegraphics__/graphics/icons/skin-caged-scrondrix.png",
			icon_size = 64,
		},
	}
}

------------------SIMIKS------------------

fun.autorecipes {
    name = 'rendering-skin-simik-2',
	category = 'slaughterhouse-simik',
	--module_limitations = 'auog',
	subgroup = 'py-alienlife-simik',
	order = 'b',
    mats =
	{
		--skin
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
					{name='skin', add_amount = 3},
				},
                crafting_speed = 15,
                tech = 'double-skin',
                name = 'Extract simik skin-2',
                icon = "__pyalienlifegraphics__/graphics/icons/skin.png",
                icon_size = 32,
		},
		--skin simik rendering
		{
			ingredients =
				{
					{name='caged-simik',remove_item = true},
					{name='skin-caged-simik', amount=1},
				},
			results =
				{
					{name='blood', remove_item = true},
					{name='skin', add_amount = 5},
				},
			crafting_speed = 15,
			tech = 'double-skin',
			name = 'Extract skin from Improved simik-2',
			icon = "__pyalienlifegraphics2__/graphics/icons/skin-caged-simik.png",
			icon_size = 64,
		},
	}
}

------------------SIMIKS CHITIN------------------

fun.autorecipes {
    name = 'rendering-chitin-simik-2',
	category = 'slaughterhouse-simik',
	--module_limitations = 'auog',
	subgroup = 'py-alienlife-simik',
	order = 'b',
    mats =
	{
		--skin
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
					{name='chitin', remove_item = true},
					{name='mukmoux-fat', remove_item = true},
					{name='guts', remove_item = true},
					{name='simik-blood', remove_item = true},
					{name='brain', remove_item = true},
					{name='cage', amount=1},
					{name='chitin', add_amount = 3},
				},
                crafting_speed = 15,
                tech = 'double-skin',
                name = 'Extract simik chitin-2',
                icon = "__pyalienlifegraphics__/graphics/icons/chitin.png",
                icon_size = 64,
		},
		--chitin simik rendering
		{
			ingredients =
				{
					{name='caged-simik',remove_item = true},
					{name='chitin-caged-simik', amount=1},
				},
			results =
				{
					{name='blood', remove_item = true},
					{name='chitin', add_amount = 4},
				},
			crafting_speed = 15,
			tech = 'double-skin',
			name = 'Extract chitin from Improved simik-2',
			icon = "__pyalienlifegraphics2__/graphics/icons/chitin-caged-simik.png",
			icon_size = 64,
		},
	}
}

------------------SIMIKS KERATIN------------------

fun.autorecipes {
    name = 'rendering-keratin-simik-2',
	category = 'slaughterhouse-simik',
	--module_limitations = 'auog',
	subgroup = 'py-alienlife-simik',
	order = 'b',
    mats =
	{
		--keratin
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
					{name='chitin', remove_item = true},
					{name='keratin', remove_item = true},
					{name='mukmoux-fat', remove_item = true},
					{name='guts', remove_item = true},
					{name='simik-blood', remove_item = true},
					{name='brain', remove_item = true},
					{name='cage', amount=1},
					{name='keratin', add_amount = 3},
				},
                crafting_speed = 15,
                tech = 'double-skin',
                name = 'Extract simik keratin-2',
                icon = "__pyalienlifegraphics2__/graphics/icons/keratin.png",
                icon_size = 64,
		},
		--keratin simik rendering
		{
			ingredients =
				{
					{name='caged-simik',remove_item = true},
					{name='keratin-caged-simik', amount=1},
				},
			results =
				{
					{name='blood', remove_item = true},
					{name='keratin', add_amount = 3},
				},
			crafting_speed = 15,
			tech = 'double-skin',
			name = 'Extract keratin from Improved simik-2',
			icon = "__pyalienlifegraphics2__/graphics/icons/keratin-caged-simik.png",
			icon_size = 64,
		},
	}
}

------------------TRITS------------------

fun.autorecipes {
    name = 'rendering-skin-trits-2',
	category = 'slaughterhouse-trits',
	--module_limitations = 'auog',
	subgroup = 'py-alienlife-trits',
	order = 'b',
    mats =
	{
		--skin
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
					{name='skin', add_amount = 2},
				},
                crafting_speed = 15,
                tech = 'double-skin',
                name = 'Extract Trits skin-2',
                icon = "__pyalienlifegraphics__/graphics/icons/skin.png",
                icon_size = 32,
		},
		--skin trits rendering
		{
			ingredients =
				{
					{name='trits',remove_item = true},
					{name='skin-trits', amount=1},
				},
			results =
				{
					{name='blood', remove_item = true},
					{name='skin', add_amount = 5},
				},
			crafting_speed = 15,
			tech = 'double-skin',
			name = 'Extract skin from Improved Trits-2',
			icon = "__pyalienlifegraphics__/graphics/icons/skin-trits.png",
			icon_size = 64,
		},
	}
}

------------------ULRIC------------------

fun.autorecipes {
    name = 'rendering-skin-ulric-2',
	category = 'slaughterhouse-ulric',
	--module_limitations = 'auog',
	subgroup = 'py-alienlife-ulric',
	order = 'b',
    mats =
	{
		--skin
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
					{name='skin', add_amount = 2},
				},
                crafting_speed = 15,
                tech = 'double-skin',
                name = 'Extract Ulric skin-2',
                icon = "__pyalienlifegraphics__/graphics/icons/skin.png",
                icon_size = 32,
		},
		--skin ulric rendering
		{
			ingredients =
				{
					{name='caged-ulric',remove_item = true},
					{name='skin-caged-ulric', amount=1},
				},
			results =
				{
					{name='blood', remove_item = true},
					{name='skin', add_amount = 5},
				},
			crafting_speed = 15,
			tech = 'double-skin',
			name = 'Extract skin from Improved Ulrics-2',
			icon = "__pyalienlifegraphics__/graphics/icons/skin-caged-ulric.png",
			icon_size = 64,
		},
	}
}

------------------VONIX------------------

fun.autorecipes {
    name = 'rendering-skin-vonix-2',
	category = 'slaughterhouse-vonix',
	--module_limitations = 'auog',
	subgroup = 'py-alienlife-vonix',
	order = 'b',
    mats =
	{
		--skin
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
					{name='skin', add_amount = 2},
				},
                crafting_speed = 15,
                tech = 'double-skin',
                name = 'Extract Vonix skin-2',
                icon = "__pyalienlifegraphics__/graphics/icons/skin.png",
                icon_size = 32,
		},
		--skin vonix rendering
		{
			ingredients =
				{
					{name='fat-vonix',remove_item = true},
					{name='vonix',remove_item = true},
					{name='skin-vonix', amount=1},
				},
			results =
				{
					{name='arthropod-blood', remove_item = true},
					{name='skin', add_amount = 5},
				},
			crafting_speed = 15,
			tech = 'double-skin',
			name = 'Extract skin from Improved Vonixes-2',
			icon = "__pyalienlifegraphics__/graphics/icons/skin-vonix.png",
			icon_size = 64,
		},
	}
}

------------------VRAUkS------------------

fun.autorecipes {
    name = 'rendering-skin-vrauks-2',
	category = 'slaughterhouse-vrauks',
	--module_limitations = 'auog',
	subgroup = 'py-alienlife-vrauks',
	order = 'b',
    mats =
	{
		--skin
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
					{name='chitin', add_amount = 3},
				},
                crafting_speed = 15,
                tech = 'double-skin',
                name = 'Extract Vrauks chithin-2',
                icon = "__pyalienlifegraphics__/graphics/icons/chitin.png",
                icon_size = 64,
		},
		--skin vrauks rendering
		{
			ingredients =
				{
					{name='brain-caged-vrauks',remove_item = true},
					{name='caged-vrauks',remove_item = true},
					{name='chitin-caged-vrauks', amount=1},
				},
			results =
				{
					{name='formic-acid', remove_item = true},
					{name='chitin', add_amount = 5},
				},
			crafting_speed = 15,
			tech = 'double-skin',
			name = 'Extract skin from Improved Vrauks-2',
			icon = "__pyalienlifegraphics__/graphics/icons/chitin-caged-vrauks.png",
			icon_size = 64,
		},
	}
}

------------------XENOS------------------

fun.autorecipes {
    name = 'rendering-skin-xeno-2',
	category = 'slaughterhouse-xeno',
	--module_limitations = 'auog',
	subgroup = 'py-alienlife-xeno',
	order = 'b',
    mats =
	{
		--skin
		{
			ingredients =
				{
					{name='caged-xeno', amount=1},
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
					{name='cage', amount=1},
					{name='chitin', add_amount = 5},
				},
                crafting_speed = 15,
                tech = 'double-skin',
                name = 'Extract xeno chitin-2',
                icon = "__pyalienlifegraphics__/graphics/icons/chitin.png",
                icon_size = 64,
		},
		--skin xeno rendering
		{
			ingredients =
				{
					{name='chitin-xeno',remove_item = true},
                    {name='caged-xeno',remove_item = true},
                    {name='cage',remove_item = true},
					{name='chitin-xeno', amount=1},
				},
			results =
				{
					{name='sulfuric-acid', remove_item = true},
					{name='chitin', add_amount = 10},
				},
			crafting_speed = 15,
			tech = 'double-skin',
			name = 'Extract Chitin from Improved xenos-2',
			icon = "__pyalienlifegraphics__/graphics/icons/chitin-xeno.png",
			icon_size = 64,
		},
	}
}
------------------ZIPIR------------------

fun.autorecipes {
    name = 'rendering-skin-zipir-2',
	category = 'slaughterhouse-zipir',
	--module_limitations = 'auog',
	subgroup = 'py-alienlife-zipir',
	order = 'b',
    mats =
	{
		--skin
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
					{name='skin', add_amount = 4},
				},
                crafting_speed = 15,
                tech = 'double-skin',
                name = 'Extract zipir skin-2',
                icon = "__pyalienlifegraphics__/graphics/icons/skin.png",
                icon_size = 32,
		},
		--skin zipir rendering
		{
			ingredients =
				{
					{name = 'zipir1',remove_item = true},
					{name='skin-zipir', amount=1},
				},
			results =
				{
					{name='arthropod-blood', remove_item = true},
					{name='skin', add_amount = 8},
				},
			crafting_speed = 15,
			tech = 'double-skin',
			name = 'Extract skin from Improved Zipir-2',
			icon = "__pyalienlifegraphics__/graphics/icons/skin-zipir.png",
			icon_size = 64,
		},
	}
}
