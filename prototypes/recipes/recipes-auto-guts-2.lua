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
					{name='guts', amount =5},
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
					{name='cagedarthurian',amount='R'},
					{name='gutscagedarthurian',amount=1},
				},
			results =
				{
					{name='bonemeal', amount ='R'},
					{name='guts', amount =9},
				},
			crafting_speed = 15,
			tech = 'cavity',
			name = 'Extract guts from Improved arthurians-2',
			icon = "__pyalienlifegraphics__/graphics/icons/guts-caged-arthurian.png",
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
					{name='guts', amount =5},
				},
                crafting_speed = 15,
                tech = 'cavity',
                name = 'Extract auog guts-5',
                icon = "__pyalienlifegraphics__/graphics/icons/mip/guts-01.png",
                icon_size = 64,
		},
		--guts auog rendering
		{
			ingredients =
				{
					{name='cagedauog',amount='R'},
					{name='gutscagedauog',amount=1},
				},
			results =
				{
					{name='meat', amount ='R'},
					{name='guts', amount =9},
				},
			crafting_speed = 15,
			tech = 'cavity',
			name = 'Extract guts from Improved auogs-2',
			icon = "__pyalienlifegraphics__/graphics/icons/guts-caged-auog.png",
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
					{name='guts', amount =3},
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
					{name='dhilmos',amount='R'},
					{name='gutsdhilmos',amount=1},
				},
			results =
				{
					{name='meat', amount ='R'},
					{name='guts', amount =6},
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
					{name='guts', amount =6},
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
					{name='cageddingrits',amount='R'},
					{name='gutscageddingrits',amount=1},
				},
			results =
				{
					{name='bones', amount ='R'},
					{name='guts', amount =9},
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
					{name='guts', amount =4},
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
					{name='cagedkmauts',amount='R'},
					{name='gutscagedkmauts',amount=1},
				},
			results =
				{
					{name='brain', amount ='R'},
					{name='guts', amount =7},
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
					{name='guts', amount =4},
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
					{name='cagedkorlex',amount='R'},
					{name='gutscagedkorlex',amount=1},
				},
			results =
				{
					{name='brain', amount ='R'},
					{name='guts', amount =7},
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
					{name='guts', amount =10},
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
					{name='cagedmukmoux',amount='R'},
					{name='gutscagedmukmoux',amount=1},
				},
			results =
				{
					{name='meat', amount ='R'},
					{name='guts', amount =14},
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
					{name='guts', amount =5},
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
					{name='cagedphadai',amount='R'},
					{name='gutscagedphadai',amount=1},
				},
			results =
				{
					{name='bones', amount ='R'},
					{name='guts', amount =10},
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
					{name='guts', amount =3},
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
					{name='cagedphagnot',amount='R'},
					{name='gutscagedphagnot',amount=1},
				},
			results =
				{
					{name='bones', amount ='R'},
					{name='guts', amount =6},
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
					{name='guts', amount =6},
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
					{name='cagedscrondrix',amount='R'},
					{name='gutscagedscrondrix',amount=1},
				},
			results =
				{
					{name='bones', amount ='R'},
					{name='guts', amount =10},
				},
			crafting_speed = 15,
			tech = 'cavity',
			name = 'Extract guts from Improved scrondrixs-2',
			icon = "__pyalienlifegraphics__/graphics/icons/guts-caged-scrondrix.png",
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
					{name='guts', amount =6},
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
					{name='trits',amount='R'},
					{name='gutstrits',amount=1},
				},
			results =
				{
					{name='meat', amount ='R'},
					{name='guts', amount =13},
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
					{name='guts', amount =5},
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
					{name='cagedulric',amount='R'},
					{name='gutscagedulric',amount=1},
				},
			results =
				{
					{name='bonemeal', amount ='R'},
					{name='guts', amount =9},
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
					{name='guts', amount =8},
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
					{name='fatvonix',amount='R'},
					{name='vonix',amount='R'},
					{name='gutsvonix',amount=1},
				},
			results =
				{
					{name='brain', amount ='R'},
					{name='guts', amount =16},
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
					{name='guts', amount =4},
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
					{name='braincagedvrauks',amount='R'},
					{name='cagedvrauks',amount='R'},
					{name='gutscagedvrauks',amount=1},
				},
			results =
				{
					{name='bonemeal', amount ='R'},
					{name='guts', amount =9},
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
					{name='xyhiphoe',amount=1},
				},
			results =
				{
					{name='meat', amount ='R'},
					{name='shell', amount ='R'},
					{name='guts', amount ='R'},
					{name='arthropodblood', amount ='R'},
					{name='guts', amount =6},
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
					{name='xyhiphoe',amount='R'},
					{name='gutsxyhiphoe',amount=1},
				},
			results =
				{
					{name='meat', amount ='R'},
					{name='guts', amount =10},
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
					{name='guts', amount =6},
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
					{name='zipir',amount='R'},
					{name='gutszipir',amount=1},
				},
			results =
				{
					{name='brain', amount ='R'},
					{name='guts', amount =10},
				},
			crafting_speed = 15,
			tech = 'cavity',
			name = 'Extract guts from Improved Zipir-2',
			icon = "__pyalienlifegraphics__/graphics/icons/guts-zipir.png",
			icon_size = 64,
		},
	}
}