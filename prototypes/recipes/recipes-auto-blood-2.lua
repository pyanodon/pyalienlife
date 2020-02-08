local fun = require("prototypes/functions/functions")


------------------ARTHURIANS------------------

fun.autorecipes {
    name = 'rendering-blood-arthurians-2',
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
					{name='blood', amount =70},
				},
			crafting_speed = 15,
			tech = 'transgenes',
			name = 'Extract arthurian blood-2',
			icon = "__pyalienlifegraphics__/graphics/icons/blood.png",
			icon_size = 64,
		},	
		--blood arthurian rendering
		{
			ingredients =
				{
					{name='cagedarthurian',amount='R'},
					{name='bloodcagedarthurian',amount=1},
				},
			results =
				{
					{name='guts', amount ='R'},
					{name='blood', amount =100},
				},
			crafting_speed = 15,
			tech = 'transgenes',
			name = 'Extract blood from Improved arthurians-2',
			icon = "__pyalienlifegraphics__/graphics/icons/blood-caged-arthurian.png",
			icon_size = 64,
		},
	}
}

------------------AUOGS------------------

fun.autorecipes {
    name = 'rendering-blood-auog-2',
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
					{name='blood', amount =120},
				},
                crafting_speed = 15,
                tech = 'transgenes',
                name = 'Extract auog blood-2',
                icon = "__pyalienlifegraphics__/graphics/icons/blood.png",
                icon_size = 64,
		},	
		--blood auog rendering
		{
			ingredients =
				{
					{name='cagedauog',amount='R'},
					{name='bloodcagedauog',amount=1},
				},
			results =
				{
					{name='guts', amount ='R'},
					{name='blood', amount =160},
				},
			crafting_speed = 15,
			tech = 'transgenes',
			name = 'Extract blood from Improved auogs-2',
			icon = "__pyalienlifegraphics__/graphics/icons/blood-caged-auog.png",
			icon_size = 64,
		},
	}
}

------------------DHILMOS------------------

fun.autorecipes {
    name = 'rendering-blood-dhilmos-2',
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
					{name='arthropodblood', amount =50},
				},
                crafting_speed = 15,
                tech = 'transgenes',
                name = 'Extract dhilmos blood-2',
                icon = "__pyalienlifegraphics__/graphics/icons/arthropod-blood.png",
                icon_size = 32,
		},	
		--blood dhilmos rendering
		{
			ingredients =
				{
					{name='dhilmos',amount='R'},
					{name='blooddhilmos',amount=1},
				},
			results =
				{
					{name='guts', amount ='R'},
					{name='arthropodblood', amount =80},
				},
			crafting_speed = 15,
			tech = 'transgenes',
			name = 'Extract blood from Improved dhilmoss-2',
			icon = "__pyalienlifegraphics__/graphics/icons/blood-dhilmos.png",
			icon_size = 64,
		},
	}
}

------------------DINGRITS------------------

fun.autorecipes {
    name = 'rendering-blood-dingrits-2',
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
					{name='blood', amount =50},
				},
                crafting_speed = 15,
                tech = 'transgenes',
                name = 'Extract dingrits blood-2',
                icon = "__pyalienlifegraphics__/graphics/icons/blood.png",
                icon_size = 64,
		},	
		--blood dingrits rendering
		{
			ingredients =
				{
					{name='cageddingrits',amount='R'},
					{name='bloodcageddingrits',amount=1},
				},
			results =
				{
					{name='guts', amount ='R'},
					{name='blood', amount =60},
				},
			crafting_speed = 15,
			tech = 'transgenes',
			name = 'Extract blood from Improved dingrits-2',
			icon = "__pyalienlifegraphics__/graphics/icons/blood-caged-dingrits.png",
			icon_size = 64,
		},
	}
}

------------------KMAUTS------------------

fun.autorecipes {
    name = 'rendering-blood-kmauts-2',
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
					{name='arthropodblood', amount =40},
				},
                crafting_speed = 15,
                tech = 'transgenes',
                name = 'Extract kmauts blood-2',
                icon = "__pyalienlifegraphics__/graphics/icons/arthropod-blood.png",
                icon_size = 32,
		},	
		--blood kmauts rendering
		{
			ingredients =
				{
					{name='cagedkmauts',amount='R'},
					{name='bloodcagedkmauts',amount=1},
				},
			results =
				{
					{name='guts', amount ='R'},
					{name='arthropodblood', amount =70},
				},
			crafting_speed = 15,
			tech = 'transgenes',
			name = 'Extract blood from Improved kmauts-2',
			icon = "__pyalienlifegraphics__/graphics/icons/blood-caged-kmauts.png",
			icon_size = 64,
        },
	}
}

------------------MUKMOUX------------------

fun.autorecipes {
    name = 'rendering-blood-mukmoux-2',
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
					{name='blood', amount =150},
				},
                crafting_speed = 15,
                tech = 'transgenes',
                name = 'Extract Mukmoux blood-2',
                icon = "__pyalienlifegraphics__/graphics/icons/blood.png",
                icon_size = 64,
		},	
		--blood mukmoux rendering
		{
			ingredients =
				{
					{name='cagedmukmoux',amount='R'},
					{name='bloodcagedmukmoux',amount=1},
				},
			results =
				{
					{name='guts', amount ='R'},
					{name='blood', amount =200},
				},
			crafting_speed = 15,
			tech = 'transgenes',
			name = 'Extract blood from Improved Mukmouxs-2',
			icon = "__pyalienlifegraphics__/graphics/icons/blood-caged-mukmoux.png",
			icon_size = 64,
		},
	}
}

------------------PHADAI------------------

fun.autorecipes {
    name = 'rendering-blood-phadai-2',
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
					{name='blood', amount =50},
				},
                crafting_speed = 15,
                tech = 'transgenes',
                name = 'Extract phadai blood-2',
                icon = "__pyalienlifegraphics__/graphics/icons/blood.png",
                icon_size = 64,
		},	
		--blood phadai rendering
		{
			ingredients =
				{
					{name='cagedphadai',amount='R'},
					{name='bloodcagedphadai',amount=1},
				},
			results =
				{
					{name='guts', amount ='R'},
					{name='blood', amount =85},
				},
			crafting_speed = 15,
			tech = 'transgenes',
			name = 'Extract blood from Improved phadais-2',
			icon = "__pyalienlifegraphics__/graphics/icons/blood-caged-phadai.png",
			icon_size = 64,
        },
	}
}

------------------PHAGNOT------------------

fun.autorecipes {
    name = 'rendering-blood-phagnot-2',
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
					{name='blood', amount =60},
				},
                crafting_speed = 15,
                tech = 'transgenes',
                name = 'Extract phagnot blood-2',
                icon = "__pyalienlifegraphics__/graphics/icons/blood.png",
                icon_size = 64,
		},	
		--blood phagnot rendering
		{
			ingredients =
				{
					{name='cagedphagnot',amount='R'},
					{name='bloodcagedphagnot',amount=1},
				},
			results =
				{
					{name='guts', amount ='R'},
					{name='blood', amount =90},
				},
			crafting_speed = 15,
			tech = 'transgenes',
			name = 'Extract blood from Improved phagnots-2',
			icon = "__pyalienlifegraphics__/graphics/icons/blood-caged-phagnot.png",
			icon_size = 64,
		},
	}
}

------------------SCRONDRIX------------------

fun.autorecipes {
    name = 'rendering-blood-scrondrix-2',
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
					{name='blood', amount =90},
				},
                crafting_speed = 15,
                tech = 'transgenes',
                name = 'Extract scrondrix blood-2',
                icon = "__pyalienlifegraphics__/graphics/icons/blood.png",
                icon_size = 64,
		},	
		--blood scrondrix rendering
		{
			ingredients =
				{
					{name='cagedscrondrix',amount='R'},
					{name='bloodcagedscrondrix',amount=1},
				},
			results =
				{
					{name='guts', amount ='R'},
					{name='blood', amount =150},
				},
			crafting_speed = 15,
			tech = 'transgenes',
			name = 'Extract blood from Improved scrondrixs-2',
			icon = "__pyalienlifegraphics__/graphics/icons/blood-caged-scrondrix.png",
			icon_size = 64,
		},
	}
}

------------------TRITS------------------

fun.autorecipes {
    name = 'rendering-blood-trits-2',
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
					{name='blood', amount =100},
				},
                crafting_speed = 15,
                tech = 'transgenes',
                name = 'Extract Trits blood-2',
                icon = "__pyalienlifegraphics__/graphics/icons/blood.png",
                icon_size = 64,
		},	
		--blood trits rendering
		{
			ingredients =
				{
					{name='trits',amount='R'},
					{name='bloodtrits',amount=1},
				},
			results =
				{
					{name='guts', amount ='R'},
					{name='blood', amount =170},
				},
			crafting_speed = 15,
			tech = 'transgenes',
			name = 'Extract blood from Improved Trits-1',
			icon = "__pyalienlifegraphics__/graphics/icons/blood-trits.png",
			icon_size = 64,
		},
	}
}

------------------ULRIC------------------

fun.autorecipes {
    name = 'rendering-blood-ulric-2',
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
					{name='blood', amount =100},
				},
                crafting_speed = 15,
                tech = 'transgenes',
                name = 'Extract Ulric blood-2',
                icon = "__pyalienlifegraphics__/graphics/icons/blood.png",
                icon_size = 64,
		},	
		--blood ulric rendering
		{
			ingredients =
				{
					{name='cagedulric',amount='R'},
					{name='bloodcagedulric',amount=1},
				},
			results =
				{
					{name='guts', amount ='R'},
					{name='blood', amount =130},
				},
			crafting_speed = 15,
			tech = 'transgenes',
			name = 'Extract blood from Improved Ulrics-2',
			icon = "__pyalienlifegraphics__/graphics/icons/blood-caged-ulric.png",
			icon_size = 64,
		},
	}
}

------------------VONIX------------------

fun.autorecipes {
    name = 'rendering-blood-vonix-2',
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
					{name='arthropodblood', amount =120},
				},
                crafting_speed = 15,
                tech = 'transgenes',
                name = 'Extract Vonix blood-2',
                icon = "__pyalienlifegraphics__/graphics/icons/arthropod-blood.png",
                icon_size = 32,
		},	
		--blood vonix rendering
		{
			ingredients =
				{
					{name='fatvonix',amount='R'},
					{name='vonix',amount='R'},
					{name='bloodvonix',amount=1},
				},
			results =
				{
					{name='guts', amount ='R'},
					{name='arthropodblood', amount =165},
				},
			crafting_speed = 15,
			tech = 'transgenes',
			name = 'Extract Arthropod blood from Improved Vonixes-2',
			icon = "__pyalienlifegraphics__/graphics/icons/blood-vonix.png",
			icon_size = 64,
		},
	}
}

------------------RENDERING XENOS------------------

fun.autorecipes {
    name = 'rendering-blood-xenos-2',
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
					{name='cage',amount=1},
					{name='sulfuricacid', amount ='R'},
                    {name='meat', amount ='R'},
                    {name='brain', amount ='R'},
					{name='sulfuricacid', amount =100},
				},
			crafting_speed = 15,
			tech = 'transgenes',
			name = 'Extract Xeno blood-2',
			icon = "__base__/graphics/icons/fluid/sulfuric-acid.png",
			icon_size = 64,
		},	
		--blood xeno rendering
		{
			ingredients =
				{
					{name='cagedxeno',amount='R'},
					{name='bloodxeno',amount=1},
				},
			results =
				{
					{name='bonemeal', amount ='R'},
					{name='sulfuricacid', amount =140},
				},
			crafting_speed = 15,
			tech = 'transgenes',
			name = 'Extract blood from Improved Xenos-2',
			icon = "__pyalienlifegraphics__/graphics/icons/sulfuric-xeno.png",
			icon_size = 64,
		},
	}
}


------------------XYHIPHOE------------------

fun.autorecipes {
    name = 'rendering-blood-xyhiphoe-2',
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
					{name='arthropodblood', amount =100},
				},
			crafting_speed = 15,
			tech = 'transgenes',
			name = 'Extract xyhiphoe blood-2',
			icon = "__pyalienlifegraphics__/graphics/icons/arthropod-blood.png",
			icon_size = 32,
		},
		--blood xyhiphoe rendering
		{
			ingredients =
				{
					{name='xyhiphoe',amount='R'},
					{name='bloodxyhiphoe',amount=1},
				},
			results =
				{
					{name='guts', amount ='R'},
					{name='arthropodblood', amount =150},
				},
			crafting_speed = 15,
			tech = 'transgenes',
			name = 'Extract blood from Improved xyhiphoe-2',
			icon = "__pyalienlifegraphics__/graphics/icons/blood-xyhiphoe.png",
			icon_size = 64,
		},
	}
}

------------------ZIPIR------------------

fun.autorecipes {
    name = 'rendering-blood-zipir-2',
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
					{name='arthropodblood', amount =85},
				},
                crafting_speed = 15,
                tech = 'transgenes',
                name = 'Extract zipir blood-2',
                icon = "__pyalienlifegraphics__/graphics/icons/arthropod-blood.png",
                icon_size = 32,
		},	
		--blood zipir rendering
		{
			ingredients =
				{
					{name='zipir',amount='R'},
					{name='bloodzipir',amount=1},
				},
			results =
				{
					{name='guts', amount ='R'},
					{name='arthropodblood', amount =110},
				},
			crafting_speed = 15,
			tech = 'transgenes',
			name = 'Extract Arthropod blood from Improved Zipir-2',
			icon = "__pyalienlifegraphics__/graphics/icons/blood-zipir.png",
			icon_size = 64,
		},
	}
}