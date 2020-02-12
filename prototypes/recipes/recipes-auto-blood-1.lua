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
					{name='blood', amount =60},
				},
			crafting_speed = 15,
			tech = 'somatic',
			name = 'Extract arthurian blood-1',
			icon = "__pyalienlifegraphics__/graphics/icons/blood.png",
			icon_size = 64,
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
					{name='blood', amount =110},
				},
                crafting_speed = 15,
                tech = 'somatic',
                name = 'Extract auog blood-1',
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
					{name='arthropodblood', amount =40},
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
					{name='cageddingrits',amount=1},
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
					{name='blood', amount =40},
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
					{name='arthropodblood', amount =30},
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
					{name='blood', amount =20},
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
					{name='blood', amount =140},
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
					{name='blood', amount =40},
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
					{name='cagedphagnot',amount=1},
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
					{name='blood', amount =50},
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
					{name='blood', amount =80},
				},
                crafting_speed = 15,
                tech = 'somatic',
                name = 'Extract scrondrix blood-1',
                icon = "__pyalienlifegraphics__/graphics/icons/blood.png",
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
					{name='blood', amount =90},
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
					{name='blood', amount =90},
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
					{name='arthropodblood', amount =110},
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
					{name='cagedvrauks',amount=1},
				},
			results =
				{
                    {name='bones', amount ='R'},
					{name='meat', amount ='R'},
					{name='skin', amount ='R'},
					{name='fat', amount ='R'},
					{name='guts', amount ='R'},
					{name='chitin', amount ='R'},
					{name='formicacid', amount ='R'},
					{name='sulfuricacid', amount ='R'},
					{name='blood', amount ='R'},
					{name='brain', amount ='R'},
					{name='cage',amount=1},
					{name='formicacid', amount =500},
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
					{name='cagedxeno',amount=1},
				},
			results =
				{
					{name='bones', amount ='R'},
					{name='chitin', amount ='R'},
					{name='sulfuricacid', amount ='R'},
                    {name='meat', amount ='R'},
                    {name='brain', amount ='R'},
                    {name='cage', amount ='1'},
					{name='sulfuricacid', amount =90},
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
					{name='xyhiphoe',amount=1},
				},
			results =
				{
					{name='meat', amount ='R'},
					{name='shell', amount ='R'},
					{name='guts', amount ='R'},
					{name='arthropodblood', amount ='R'},
					{name='arthropodblood', amount =90},
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
					{name='arthropodblood', amount =75},
				},
                crafting_speed = 15,
                tech = 'somatic',
                name = 'Extract zipir blood-1',
                icon = "__pyalienlifegraphics__/graphics/icons/arthropod-blood.png",
                icon_size = 32,
		},
	}
}