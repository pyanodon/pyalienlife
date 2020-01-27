local fun = require("prototypes/functions/functions")


------------------ARTHURIANS------------------

fun.autorecipes {
    name = 'rendering-skin-arthurians-2',
	category = 'slaughterhouse',
	--module_limitations = 'arthurian',
	subgroup = 'py-alienlife-arthurian',
	order = 'b',
    mats =
	{
		--skin
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
					{name='skin', amount =4},
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
					{name='cagedarthurian',amount='R'},
					{name='skincagedarthurian',amount=1},
				},
			results =
				{
					{name='blood', amount ='R'},
					{name='skin', amount =7},
				},
			crafting_speed = 15,
			tech = 'double-skin',
			name = 'Extract skin from Improved arthurians-2',
			icon = "__pyalienlifegraphics__/graphics/icons/skin-caged-arthurian.png",
			icon_size = 64,
		},
	}
}

------------------AUOGS------------------

fun.autorecipes {
    name = 'rendering-skin-auog-2',
	category = 'slaughterhouse',
	--module_limitations = 'auog',
	subgroup = 'py-alienlife-auog',
	order = 'b',
    mats =
	{
		--skin
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
					{name='skin', amount =4},
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
					{name='cagedauog',amount='R'},
					{name='skincagedauog',amount=1},
				},
			results =
				{
					{name='blood', amount ='R'},
					{name='skin', amount =8},
				},
			crafting_speed = 15,
			tech = 'double-skin',
			name = 'Extract skin from Improved auogs-2',
			icon = "__pyalienlifegraphics__/graphics/icons/skin-caged-auog.png",
			icon_size = 64,
		},
	}
}

------------------DHILMOS------------------

fun.autorecipes {
    name = 'rendering-skin-dhilmos-2',
	category = 'slaughterhouse',
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
					{name='chitin', amount =5},
				},
                crafting_speed = 15,
                tech = 'double-skin',
                name = 'Extract dhilmos chitin-2',
                icon = "__pyalienlifegraphics__/graphics/icons/chitin.png",
                icon_size = 64,
		},	
	}
}

------------------MUKMOUX------------------

fun.autorecipes {
    name = 'rendering-skin-mukmoux-2',
	category = 'slaughterhouse',
	--module_limitations = 'auog',
	subgroup = 'py-alienlife-mukmoux',
	order = 'b',
    mats =
	{
		--skin
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
					{name='skin', amount =6},
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
					{name='cagedmukmoux',amount='R'},
					{name='skincagedmukmoux',amount=1},
				},
			results =
				{
					{name='blood', amount ='R'},
					{name='skin', amount =9},
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
	category = 'slaughterhouse',
	--module_limitations = 'auog',
	subgroup = 'py-alienlife-phadai',
	order = 'b',
    mats =
	{
		--skin
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
					{name='carapace', amount ='R'},
					{name='guts', amount ='R'},
					{name='blood', amount ='R'},
					{name='brain', amount ='R'},
					{name='cage',amount=1},
					{name='skin', amount =4},
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
					{name='cagedphadai',amount='R'},
					{name='skincagedphadai',amount=1},
				},
			results =
				{
					{name='meat', amount ='R'},
					{name='skin', amount =7},
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
	category = 'slaughterhouse',
	--module_limitations = 'auog',
	subgroup = 'py-alienlife-phagnot',
	order = 'b',
    mats =
	{
		--skin
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
					{name='skin', amount =3},
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
					{name='cagedphagnot',amount='R'},
					{name='skincagedphagnot',amount=1},
				},
			results =
				{
					{name='blood', amount ='R'},
					{name='skin', amount =6},
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
	category = 'slaughterhouse',
	--module_limitations = 'auog',
	subgroup = 'py-alienlife-scrondrix',
	order = 'b',
    mats =
	{
		--skin
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
					{name='skin', amount =5},
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
					{name='cagedscrondrix',amount='R'},
					{name='skincagedscrondrix',amount=1},
				},
			results =
				{
					{name='blood', amount ='R'},
					{name='skin', amount =9},
				},
			crafting_speed = 15,
			tech = 'double-skin',
			name = 'Extract skin from Improved scrondrixs-2',
			icon = "__pyalienlifegraphics__/graphics/icons/skin-caged-scrondrix.png",
			icon_size = 64,
		},
	}
}

------------------TRITS------------------

fun.autorecipes {
    name = 'rendering-skin-trits-2',
	category = 'slaughterhouse',
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
                    {name='bones', amount ='R'},
					{name='meat', amount ='R'},
					{name='skin', amount ='R'},
					{name='fat', amount ='R'},
					{name='guts', amount ='R'},
					{name='blood', amount ='R'},
					{name='brain', amount ='R'},
					{name='skin', amount =5},
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
					{name='trits',amount='R'},
					{name='skintrits',amount=1},
				},
			results =
				{
					{name='blood', amount ='R'},
					{name='skin', amount =11},
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
	category = 'slaughterhouse',
	--module_limitations = 'auog',
	subgroup = 'py-alienlife-ulric',
	order = 'b',
    mats =
	{
		--skin
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
					{name='skin', amount =4},
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
					{name='cagedulric',amount='R'},
					{name='skincagedulric',amount=1},
				},
			results =
				{
					{name='blood', amount ='R'},
					{name='skin', amount =8},
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
	category = 'slaughterhouse',
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
					{name='skin', amount =6},
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
					{name='fatvonix',amount='R'},
					{name='vonix',amount='R'},
					{name='skinvonix',amount=1},
				},
			results =
				{
					{name='arthropodblood', amount ='R'},
					{name='skin', amount =10},
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
	category = 'slaughterhouse',
	--module_limitations = 'auog',
	subgroup = 'py-alienlife-vrauks',
	order = 'b',
    mats =
	{
		--skin
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
					{name='chitin', amount =3},
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
					{name='braincagedvrauks',amount='R'},
					{name='cagedvrauks',amount='R'},
					{name='skincagedvrauks',amount=1},
				},
			results =
				{
					{name='formicacid', amount ='R'},
					{name='chitin', amount =8},
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
	category = 'slaughterhouse',
	--module_limitations = 'auog',
	subgroup = 'py-alienlife-xeno',
	order = 'b',
    mats =
	{
		--skin
		{
			ingredients =
				{
					{name='cagedxeno',amount=1},
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
					{name='cage',amount=1},
					{name='chitin', amount =6},
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
					{name='chitinxeno',amount='R'},
                    {name='cagedxeno',amount='R'},
                    {name='cage',amount='R'},
					{name='chitinxeno',amount=1},
				},
			results =
				{
					{name='sulfuricacid', amount ='R'},
					{name='chitin', amount =11},
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
	category = 'slaughterhouse',
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
					{name='skin', amount =8},
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
					{name='zipir',amount='R'},
					{name='skinzipir',amount=1},
				},
			results =
				{
					{name='arthropodblood', amount ='R'},
					{name='skin', amount =14},
				},
			crafting_speed = 15,
			tech = 'double-skin',
			name = 'Extract skin from Improved Zipir-2',
			icon = "__pyalienlifegraphics__/graphics/icons/skin-zipir.png",
			icon_size = 64,
		},
	}
}