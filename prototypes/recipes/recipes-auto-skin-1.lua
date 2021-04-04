local fun = require("prototypes/functions/functions")


------------------ARTHURIANS------------------

fun.autorecipes {
    name = 'rendering-skin-arthurians',
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
					{name='caged-arthurian',amount=1},
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
					{name='cage',amount=1},
					{name='skin', amount ='+2'},
				},
			crafting_speed = 15,
			tech = 'defective-collagen',
			name = 'Extract arthurian skin-1',
			icon = "__pyalienlifegraphics__/graphics/icons/skin.png",
			icon_size = 32,
		},
	}
}

------------------ARQAD------------------

fun.autorecipes {
    name = 'rendering-skin-arqad',
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
					{name='arqad',amount=3},
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
					{name='chitin', amount ='+2'},
				},
                crafting_speed = 15,
                tech = 'defective-collagen',
                name = 'Extract arqad chitin-1',
                icon = "__pyalienlifegraphics__/graphics/icons/chitin.png",
                icon_size = 64,
		},
	}
}

------------------AUOGS------------------

fun.autorecipes {
    name = 'rendering-skin-auog',
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
					{name='caged-auog',amount=1},
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
					{name='cage',amount=1},
					{name='skin', amount ='+2'},
				},
                crafting_speed = 15,
                tech = 'defective-collagen',
                name = 'Extract auog skin-1',
                icon = "__pyalienlifegraphics__/graphics/icons/skin.png",
                icon_size = 32,
		},
	}
}

------------------COTTONGUT------------------

fun.autorecipes {
    name = 'rendering-skin-cottongut',
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
					{name='cottongut',amount=5},
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
					{name='skin', amount ='+2'},
				},
                crafting_speed = 15,
                tech = 'defective-collagen',
                name = 'Extract cottongut skin-1',
                icon = "__pyalienlifegraphics__/graphics/icons/skin.png",
                icon_size = 32,
		},
	}
}

------------------DINGRITS------------------

fun.autorecipes {
    name = 'rendering-skin-dingrits',
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
					{name='caged-dingrits',amount=1},
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
					{name='pelt', amount ='+1'},
					{name='cage',amount=1},
				},
                crafting_speed = 15,
                tech = 'defective-collagen',
				name = 'Extract dingrits Pelt-1',
				icon = "__pyalienlifegraphics__/graphics/icons/pelt.png",
				icon_size = 64,
		},
	}
}

------------------DHILMOS------------------

fun.autorecipes {
    name = 'rendering-skin-dhilmos',
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
					{name='dhilmos',amount=1},
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
					{name='chitin', amount ='+2'},
				},
                crafting_speed = 15,
                tech = 'defective-collagen',
                name = 'Extract dhilmos chitin-1',
                icon = "__pyalienlifegraphics__/graphics/icons/chitin.png",
                icon_size = 64,
		},
	}
}

------------------KORLEX------------------

fun.autorecipes {
    name = 'rendering-skin-korlex',
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
					{name='caged-korlex',amount=1},
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
					{name='cage',amount=1},
					{name='skin', amount ='+3'},
				},
                crafting_speed = 15,
                tech = 'defective-collagen',
                name = 'Extract Korlex skin-1',
                icon = "__pyalienlifegraphics__/graphics/icons/skin.png",
                icon_size = 32,
		},
	}
}

------------------MUKMOUX------------------

fun.autorecipes {
    name = 'rendering-skin-mukmoux',
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
					{name='caged-mukmoux',amount=1},
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
					{name='cage',amount=1},
					{name='skin', amount ='+2'},
				},
                crafting_speed = 15,
                tech = 'defective-collagen',
                name = 'Extract Mukmoux skin-1',
                icon = "__pyalienlifegraphics__/graphics/icons/skin.png",
                icon_size = 32,
		},
	}
}

------------------PHADAI------------------

fun.autorecipes {
    name = 'rendering-skin-phadai',
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
					{name='caged-phadai',amount=1},
				},
			results =
				{
                    {name='bones', remove_item = true},
					{name='meat', remove_item = true},
					{name='skin', remove_item = true},
					{name='carapace', remove_item = true},
					{name='mukmoux-fat', remove_item = true},
					{name='guts', remove_item = true},
					{name='blood', remove_item = true},
					{name='brain', remove_item = true},
					{name='cage',amount=1},
					{name='skin', amount ='+2'},
				},
                crafting_speed = 15,
                tech = 'defective-collagen',
                name = 'Extract phadai Skin-1',
                icon = "__pyalienlifegraphics__/graphics/icons/skin.png",
                icon_size = 32,
		},
	}
}

------------------PHAGNOT------------------

fun.autorecipes {
    name = 'rendering-skin-phagnot',
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
					{name='caged-phagnot',amount=1},
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
					{name='cage',amount=1},
					{name='skin', amount ='+2'},
				},
                crafting_speed = 15,
                tech = 'defective-collagen',
                name = 'Extract phagnot skin-1',
                icon = "__pyalienlifegraphics__/graphics/icons/skin.png",
                icon_size = 32,
		},
	}
}

------------------SCRONDRIX------------------

fun.autorecipes {
    name = 'rendering-skin-scrondrix',
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
					{name='caged-scrondrix',amount=1},
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
					{name='cage',amount=1},
					{name='skin', amount ='+4'},
				},
                crafting_speed = 15,
                tech = 'defective-collagen',
                name = 'Extract scrondrix skin-1',
                icon = "__pyalienlifegraphics__/graphics/icons/skin.png",
                icon_size = 32,
		},
	}
}

------------------SIMIK SKIN------------------

fun.autorecipes {
    name = 'rendering-skin-simik',
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
					{name='caged-simik',amount=1},
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
					{name='cage',amount=1},
					{name='skin', amount ='+3'},
				},
                crafting_speed = 15,
                tech = 'defective-collagen',
                name = 'Extract simik skin-1',
                icon = "__pyalienlifegraphics__/graphics/icons/skin.png",
                icon_size = 32,
		},
	}
}

------------------SIMIK CHITIN------------------

fun.autorecipes {
    name = 'rendering-chitin-simik',
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
					{name='caged-simik',amount=1},
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
					{name='cage',amount=1},
					{name='chitin', amount ='+2'},
				},
                crafting_speed = 15,
                tech = 'defective-collagen',
                name = 'Extract simik chitin-1',
                icon = "__pyalienlifegraphics__/graphics/icons/chitin.png",
                icon_size = 64,
		},
	}
}

------------------SIMIK KERATIN------------------

fun.autorecipes {
    name = 'rendering-keratin-simik',
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
					{name='caged-simik',amount=1},
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
					{name='cage',amount=1},
					{name='keratin', amount ='+1'},
				},
                crafting_speed = 15,
                tech = 'defective-collagen',
                name = 'Extract simik keratin-1',
                icon = "__pyalienlifegraphics2__/graphics/icons/keratin.png",
                icon_size = 64,
		},
	}
}

------------------TRITS------------------

fun.autorecipes {
    name = 'rendering-skin-trits',
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
					{name='trits',amount=1},
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
					{name='skin', amount ='+2'},
				},
                crafting_speed = 15,
                tech = 'defective-collagen',
                name = 'Extract Trits skin-1',
                icon = "__pyalienlifegraphics__/graphics/icons/skin.png",
                icon_size = 32,
		},
	}
}

------------------ULRIC------------------

fun.autorecipes {
    name = 'rendering-skin-ulric',
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
					{name='caged-ulric',amount=1},
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
					{name='cage',amount=1},
					{name='skin', amount ='+2'},
				},
                crafting_speed = 15,
                tech = 'defective-collagen',
                name = 'Extract Ulric skin-1',
                icon = "__pyalienlifegraphics__/graphics/icons/skin.png",
                icon_size = 32,
		},
	}
}

------------------VONIX------------------

fun.autorecipes {
    name = 'rendering-skin-vonix',
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
					{name='vonix',amount=1},
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
					{name='skin', amount ='+4'},
				},
                crafting_speed = 15,
                tech = 'defective-collagen',
                name = 'Extract Vonix skin-1',
                icon = "__pyalienlifegraphics__/graphics/icons/skin.png",
                icon_size = 32,
		},
	}
}

------------------VRAUKS------------------

fun.autorecipes {
    name = 'rendering-skin-vrauks',
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
					{name='caged-vrauks',amount=1},
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
					{name='cage',amount=1},
					{name='chitin', amount ='+2'},
				},
                crafting_speed = 15,
                tech = 'defective-collagen',
                name = 'Extract Vrauks chithin-1',
                icon = "__pyalienlifegraphics__/graphics/icons/chitin.png",
                icon_size = 64,
		},
	}
}

------------------XENOS------------------

fun.autorecipes {
    name = 'rendering-skin-xeno',
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
					{name='caged-xeno',amount=1},
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
					{name='cage',amount=1},
					{name='chitin', amount ='+4'},
				},
                crafting_speed = 15,
                tech = 'defective-collagen',
                name = 'Extract xeno chitin-1',
                icon = "__pyalienlifegraphics__/graphics/icons/chitin.png",
                icon_size = 64,
		},
	}
}
------------------ZIPIR------------------

fun.autorecipes {
    name = 'rendering-skin-zipir',
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
					{name='zipir',amount=1},
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
					{name='skin', amount ='+6'},
				},
                crafting_speed = 15,
                tech = 'defective-collagen',
                name = 'Extract zipir skin-1',
                icon = "__pyalienlifegraphics__/graphics/icons/skin.png",
                icon_size = 32,
		},
	}
}
