local fun = require("prototypes/functions/functions")


------------------ARTHURIANS------------------

fun.autorecipes {
    name = 'rendering-blood-arthurians',
	category = 'slaughterhouse-arthurian',
	--module_limitations = 'arthurian',
	subgroup = 'py-alienlife-arthurian',
	order = 'b',
    mats =
	{
		--blood
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
					{name='blood', add_amount = 20},
				},
			crafting_speed = 15,
			tech = 'somatic',
			name = 'Extract arthurian blood-1',
			icon = "__pyalienlifegraphics__/graphics/icons/blood.png",
			icon_size = 64,
		},
	}
}

------------------ARQAD------------------

fun.autorecipes {
    name = 'rendering-blood-arqad',
	category = 'slaughterhouse-arqad',
	--module_limitations = 'arqad',
	subgroup = 'py-alienlife-arqad',
	order = 'b',
    mats =
	{
		--blood
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
					{name='guts', remove_item = true},
					{name='bee-venom', remove_item = true},
					{name='blood', remove_item = true},
					{name='brain', remove_item = true},
					--{name='cage', amount=1},
					{name='arthropod-blood', add_amount = 20},
				},
                crafting_speed = 15,
                tech = 'somatic',
                name = 'Extract arqad arthropod-blood-1',
                icon = "__pyalienlifegraphics__/graphics/icons/arthropod-blood.png",
                icon_size = 32,
		},
	}
}

------------------AUOGS------------------

fun.autorecipes {
    name = 'rendering-blood-auog',
	category = 'slaughterhouse-auog',
	--module_limitations = 'auog',
	subgroup = 'py-alienlife-auog',
	order = 'b',
    mats =
	{
		--blood
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
					{name='blood', add_amount = 20},
				},
                crafting_speed = 15,
                tech = 'somatic',
                name = 'Extract auog blood-1',
                icon = "__pyalienlifegraphics__/graphics/icons/blood.png",
                icon_size = 64,
		},
	}
}

------------------COTTONGUT------------------

fun.autorecipes {
    name = 'rendering-blood-cottongut',
	category = 'slaughterhouse-cottongut',
	--module_limitations = 'cottongut',
	subgroup = 'py-alienlife-cottongut',
	order = 'b',
    mats =
	{
		--blood
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
					{name='blood', add_amount = 20},
				},
                crafting_speed = 15,
                tech = 'somatic',
                name = 'Extract cottongut blood-1',
                icon = "__pyalienlifegraphics__/graphics/icons/blood.png",
                icon_size = 64,
		},
	}
}

------------------DHILMOS------------------

fun.autorecipes {
    name = 'rendering-blood-dhilmos',
	category = 'slaughterhouse-dhilmos',
	--module_limitations = 'auog',
	subgroup = 'py-alienlife-dhilmos',
	order = 'b',
    mats =
	{
		--blood
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
					{name='arthropod-blood', add_amount = 30},
				},
                crafting_speed = 15,
                tech = 'somatic',
                name = 'Extract dhilmos blood-1',
                icon = "__pyalienlifegraphics__/graphics/icons/arthropod-blood.png",
                icon_size = 32,
		},
	}
}

------------------DINGRITS------------------

fun.autorecipes {
    name = 'rendering-blood-dingrits',
	category = 'slaughterhouse-dingrits',
	--module_limitations = 'auog',
	subgroup = 'py-alienlife-dingrits',
	order = 'b',
    mats =
	{
		--blood
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
					{name='blood', add_amount = 20},
				},
                crafting_speed = 15,
                tech = 'somatic',
                name = 'Extract dingrits blood-1',
                icon = "__pyalienlifegraphics__/graphics/icons/blood.png",
                icon_size = 64,
		},
	}
}

------------------KMAUTS------------------

fun.autorecipes {
    name = 'rendering-blood-kmauts',
	category = 'slaughterhouse-kmauts',
	--module_limitations = 'auog',
	subgroup = 'py-alienlife-kmauts',
	order = 'b',
    mats =
	{
		--blood
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
					{name='arthropod-blood', add_amount = 30},
				},
                crafting_speed = 15,
                tech = 'somatic',
                name = 'Extract kmauts blood-1',
                icon = "__pyalienlifegraphics__/graphics/icons/arthropod-blood.png",
                icon_size = 32,
		},
	}
}

------------------KORLEX------------------

fun.autorecipes {
    name = 'rendering-blood-korlex',
	category = 'slaughterhouse-korlex',
	--module_limitations = 'auog',
	subgroup = 'py-alienlife-korlex',
	order = 'b',
    mats =
	{
		--blood
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
					{name='blood', add_amount = 20},
				},
                crafting_speed = 15,
                tech = 'somatic',
                name = 'Extract Korlex blood-1',
                icon = "__pyalienlifegraphics__/graphics/icons/blood.png",
                icon_size = 64,
		},
	}
}

------------------MUKMOUX------------------

fun.autorecipes {
    name = 'rendering-blood-mukmoux',
	category = 'slaughterhouse-mukmoux',
	--module_limitations = 'auog',
	subgroup = 'py-alienlife-mukmoux',
	order = 'b',
    mats =
	{
		--blood
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
					{name='blood', add_amount = 20},
				},
                crafting_speed = 15,
                tech = 'somatic',
                name = 'Extract Mukmoux blood-1',
                icon = "__pyalienlifegraphics__/graphics/icons/blood.png",
                icon_size = 64,
		},
	}
}

------------------PHADAI------------------

fun.autorecipes {
    name = 'rendering-blood-phadai',
	category = 'slaughterhouse-phadai',
	--module_limitations = 'auog',
	subgroup = 'py-alienlife-phadai',
	order = 'b',
    mats =
	{
		--blood
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
					{name='blood', add_amount = 20},
				},
                crafting_speed = 15,
                tech = 'somatic',
                name = 'Extract phadai blood-1',
                icon = "__pyalienlifegraphics__/graphics/icons/blood.png",
                icon_size = 64,
		},
	}
}

------------------PHAGNOT------------------

fun.autorecipes {
    name = 'rendering-blood-phagnot',
	category = 'slaughterhouse-phagnot',
	--module_limitations = 'auog',
	subgroup = 'py-alienlife-phagnot',
	order = 'b',
    mats =
	{
		--blood
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
					{name='blood', add_amount = 20},
				},
                crafting_speed = 15,
                tech = 'somatic',
                name = 'Extract phagnot blood-1',
                icon = "__pyalienlifegraphics__/graphics/icons/blood.png",
                icon_size = 64,
		},
	}
}

------------------SCRONDRIX------------------

fun.autorecipes {
    name = 'rendering-blood-scrondrix',
	category = 'slaughterhouse-scrondrix',
	--module_limitations = 'auog',
	subgroup = 'py-alienlife-scrondrix',
	order = 'b',
    mats =
	{
		--blood
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
					{name='blood', add_amount = 20},
				},
                crafting_speed = 15,
                tech = 'somatic',
                name = 'Extract scrondrix blood-1',
                icon = "__pyalienlifegraphics__/graphics/icons/blood.png",
                icon_size = 64,
		},
	}
}

------------------SIMIK------------------

fun.autorecipes {
    name = 'rendering-blood-simik',
	category = 'slaughterhouse-simik',
	--module_limitations = 'auog',
	subgroup = 'py-alienlife-simik',
	order = 'b',
    mats =
	{
		--blood
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
					{name='simik-blood', add_amount = 20},
				},
                crafting_speed = 15,
                tech = 'somatic',
                name = 'Extract simik blood-1',
                icon = "__pyalienlifegraphics2__/graphics/icons/simik-blood.png",
                icon_size = 64,
		},
	}
}

------------------TRITS------------------

fun.autorecipes {
    name = 'rendering-blood-trits',
	category = 'slaughterhouse-trits',
	--module_limitations = 'auog',
	subgroup = 'py-alienlife-trits',
	order = 'b',
    mats =
	{
		--blood
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
					{name='blood', add_amount = 30},
				},
                crafting_speed = 15,
                tech = 'somatic',
                name = 'Extract Trits blood-1',
                icon = "__pyalienlifegraphics__/graphics/icons/blood.png",
                icon_size = 64,
		},
	}
}

------------------ULRIC------------------

fun.autorecipes {
    name = 'rendering-blood-ulric',
	category = 'slaughterhouse-ulric',
	--module_limitations = 'auog',
	subgroup = 'py-alienlife-ulric',
	order = 'b',
    mats =
	{
		--blood
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
					{name='blood', add_amount = 20},
				},
                crafting_speed = 15,
                tech = 'somatic',
                name = 'Extract Ulric blood-1',
                icon = "__pyalienlifegraphics__/graphics/icons/blood.png",
                icon_size = 64,
		},
	}
}

------------------VONIX------------------

fun.autorecipes {
    name = 'rendering-blood-vonix',
	category = 'slaughterhouse-vonix',
	--module_limitations = 'auog',
	subgroup = 'py-alienlife-vonix',
	order = 'b',
    mats =
	{
		--blood
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
					{name='arthropod-blood', add_amount = 30},
				},
                crafting_speed = 15,
                tech = 'somatic',
                name = 'Extract Vonix blood-1',
                icon = "__pyalienlifegraphics__/graphics/icons/arthropod-blood.png",
                icon_size = 32,
		},
	}
}

------------------VRAUKS------------------

fun.autorecipes {
    name = 'rendering-formic-vrauks',
	category = 'slaughterhouse-vrauks',
	--module_limitations = 'auog',
	subgroup = 'py-alienlife-vrauks',
	order = 'b',
    mats =
	{
		--formic acid
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
					{name='formic-acid', add_amount = 50},
				},
                crafting_speed = 15,
                tech = 'formic',
				name = 'Extract Vrauks Formic Acid-1',
				icon = "__pyalienlifegraphics__/graphics/icons/formic-acid.png",
				icon_size = 64,
		},
	}
}


------------------RENDERING XENOS------------------

fun.autorecipes {
    name = 'rendering-blood-xenos',
	category = 'slaughterhouse-xeno',
	--module_limitations = 'xeno',
	subgroup = 'py-alienlife-xeno',
	order = 'b',
    mats =
	{
		--blood
		{
			ingredients =
				{
					{name='caged-xeno', amount=1},
				},
			results =
				{
					{name='bones', remove_item = true},
					{name='chitin', remove_item = true},
					{name='sulfuric-acid', remove_item = true},
                    {name='meat', remove_item = true},
                    {name='brain', remove_item = true},
                    {name='cage', amount =1},
					{name='sulfuric-acid', add_amount = 30},
				},
			crafting_speed = 15,
			tech = 'somatic',
			name = 'Extract Xeno blood-1',
			icon = "__base__/graphics/icons/fluid/sulfuric-acid.png",
			icon_size = 64,
		},
	}
}


------------------XYHIPHOE------------------

fun.autorecipes {
    name = 'rendering-blood-xyhiphoe',
	category = 'slaughterhouse-xyhiphoe',
	--module_limitations = 'auog',
	subgroup = 'py-alienlife-xyhiphoe',
	order = 'b',
    mats =
	{
		--blood
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
					{name='arthropod-blood', add_amount = 30},
				},
			crafting_speed = 15,
			tech = 'somatic',
			name = 'Extract xyhiphoe blood-1',
			icon = "__pyalienlifegraphics__/graphics/icons/arthropod-blood.png",
			icon_size = 32,
		},
	}
}
------------------ZIPIR------------------

fun.autorecipes {
    name = 'rendering-blood-zipir',
	category = 'slaughterhouse-zipir',
	--module_limitations = 'auog',
	subgroup = 'py-alienlife-zipir',
	order = 'b',
    mats =
	{
		--blood
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
					{name='arthropod-blood', add_amount = 30},
				},
                crafting_speed = 15,
                tech = 'somatic',
                name = 'Extract zipir blood-1',
                icon = "__pyalienlifegraphics__/graphics/icons/arthropod-blood.png",
                icon_size = 32,
		},
	}
}
