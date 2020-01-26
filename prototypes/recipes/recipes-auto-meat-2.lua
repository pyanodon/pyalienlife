local fun = require("prototypes/functions/functions")


------------------ARTHURIANS------------------

fun.autorecipes {
    name = 'rendering-meats-arthurians-2',
	category = 'slaughterhouse',
	--module_limitations = 'arthurian',
	subgroup = 'py-alienlife-arthurian',
	order = 'b',
    mats =
	{
		--meat
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
					{name='meat', amount =7},
				},
			crafting_speed = 15,
			tech = 'myostatin',
			name = 'Extract arthurian Meat-2',
			icon = "__pyalienlifegraphics__/graphics/icons/mip/meat-01.png",
			icon_size = 64,
		},	
		--meat arthurian rendering
		{
			ingredients =
				{
					{name='cagedarthurian',amount='R'},
					{name='meatcagedarthurian',amount=1},
				},
			results =
				{
					{name='fat', amount ='R'},
					{name='meat', amount =8},
				},
			crafting_speed = 15,
			tech = 'myostatin',
			name = 'Extract meat from Improved arthurians-2',
			icon = "__pyalienlifegraphics__/graphics/icons/meat-caged-arthurian.png",
			icon_size = 64,
		},
	}
}

------------------AUOGS------------------

fun.autorecipes {
    name = 'rendering-meats-auog-2',
	category = 'slaughterhouse',
	--module_limitations = 'auog',
	subgroup = 'py-alienlife-auog',
	order = 'b',
    mats =
	{

		--meat
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
					{name='meat', amount =12},
				},
                crafting_speed = 15,
                tech = 'myostatin',
                name = 'Extract auog Meat-2',
                icon = "__pyalienlifegraphics__/graphics/icons/mip/meat-01.png",
                icon_size = 64,
		},	
		--meat auog rendering
		{
			ingredients =
				{
					{name='cagedauog',amount='R'},
					{name='meatcagedauog',amount=1},
				},
			results =
				{
					{name='bonemeal', amount ='R'},
					{name='meat', amount =16},
				},
			crafting_speed = 15,
			tech = 'myostatin',
			name = 'Extract meat from Improved auogs-2',
			icon = "__pyalienlifegraphics__/graphics/icons/meat-caged-auog.png",
			icon_size = 64,
		},
	}
}

------------------DHILMOS------------------

fun.autorecipes {
    name = 'rendering-meats-dhilmos-2',
	category = 'slaughterhouse',
	--module_limitations = 'auog',
	subgroup = 'py-alienlife-dhilmos',
	order = 'b',
    mats =
	{
		--meat
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
					{name='fat', amount ='R'},
					{name='chitin', amount ='R'},
					{name='arthropodblood', amount ='R'},
					{name='sulfuricacid', amount ='R'},
					{name='guts', amount ='R'},
					{name='blood', amount ='R'},
					{name='brain', amount ='R'},
					{name='meat', amount =3},
				},
                crafting_speed = 15,
                tech = 'myostatin',
				name = 'Extract dhilmos Meat-2',
				icon = "__pyalienlifegraphics__/graphics/icons/mip/meat-01.png",
				icon_size = 64,
		},	
		--meat dhilmos rendering
		{
			ingredients =
				{
					{name='dhilmos',amount='R'},
					{name='meatdhilmos',amount=1},
				},
			results =
				{
					{name='chitin', amount ='R'},
					{name='meat', amount =6},
				},
			crafting_speed = 15,
			tech = 'myostatin',
			name = 'Extract meat from Improved dhilmoss-2',
			icon = "__pyalienlifegraphics__/graphics/icons/meat-dhilmos.png",
			icon_size = 64,
		},
	}
}

------------------DINGRITS------------------

fun.autorecipes {
    name = 'rendering-meats-dingrits-2',
	category = 'slaughterhouse',
	--module_limitations = 'auog',
	subgroup = 'py-alienlife-dingrits',
	order = 'b',
    mats =
	{
		--meat
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
					{name='meat', amount =6},
				},
                crafting_speed = 15,
                tech = 'myostatin',
				name = 'Extract dingrits Meat-2',
				icon = "__pyalienlifegraphics__/graphics/icons/mip/meat-01.png",
				icon_size = 64,
		},	
		--meat dingrits rendering
		{
			ingredients =
				{
					{name='cageddingrits',amount='R'},
					{name='meatcageddingrits',amount=1},
				},
			results =
				{
					{name='blood', amount ='R'},
					{name='meat', amount =7},
				},
			crafting_speed = 15,
			tech = 'myostatin',
			name = 'Extract meat from Improved dingrits-2',
			icon = "__pyalienlifegraphics__/graphics/icons/meat-caged-dingrits.png",
			icon_size = 64,
		},
	}
}

------------------KMAUTS------------------

fun.autorecipes {
    name = 'rendering-meats-kmauts-2',
	category = 'slaughterhouse',
	--module_limitations = 'auog',
	subgroup = 'py-alienlife-kmauts',
	order = 'b',
    mats =
	{
		--meat
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
					{name='meat', amount =4},
				},
                crafting_speed = 15,
                tech = 'myostatin',
				name = 'Extract kmauts Meat-2',
				icon = "__pyalienlifegraphics__/graphics/icons/mip/meat-01.png",
				icon_size = 64,
		},	
		--meat kmauts rendering
		{
			ingredients =
				{
					{name='cagedkmauts',amount='R'},
					{name='meatcagedkmauts',amount=1},
				},
			results =
				{
					{name='arthropodblood', amount ='R'},
					{name='meat', amount =7},
				},
			crafting_speed = 15,
			tech = 'myostatin',
			name = 'Extract meat from Improved kmauts-2',
			icon = "__pyalienlifegraphics__/graphics/icons/meat-caged-kmauts.png",
			icon_size = 64,
        },
	}
}

------------------MUKMOUX------------------

fun.autorecipes {
    name = 'rendering-meats-mukmoux-2',
	category = 'slaughterhouse',
	--module_limitations = 'auog',
	subgroup = 'py-alienlife-mukmoux',
	order = 'b',
    mats =
	{
		--meat
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
					{name='meat', amount =7},
				},
                crafting_speed = 15,
                tech = 'myostatin',
				name = 'Extract Mukmoux Meat-2',
				icon = "__pyalienlifegraphics__/graphics/icons/mip/meat-01.png",
				icon_size = 64,
		},	
		--meat mukmoux rendering
		{
			ingredients =
				{
					{name='cagedmukmoux',amount='R'},
					{name='meatcagedmukmoux',amount=1},
				},
			results =
				{
					{name='bones', amount ='R'},
					{name='meat', amount =12},
				},
			crafting_speed = 15,
			tech = 'myostatin',
			name = 'Extract meat from Improved Mukmouxs-2',
			icon = "__pyalienlifegraphics__/graphics/icons/meat-caged-mukmoux.png",
			icon_size = 64,
		},
	}
}

------------------PHADAI------------------

fun.autorecipes {
    name = 'rendering-meats-phadai-2',
	category = 'slaughterhouse',
	--module_limitations = 'auog',
	subgroup = 'py-alienlife-phadai',
	order = 'b',
    mats =
	{
		--meat
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
					{name='meat', amount =6},
				},
                crafting_speed = 15,
                tech = 'myostatin',
				name = 'Extract phadai Meat-2',
				icon = "__pyalienlifegraphics__/graphics/icons/mip/meat-01.png",
				icon_size = 64,
		},	
		--meat phadai rendering
		{
			ingredients =
				{
					{name='cagedphadai',amount='R'},
					{name='meatcagedphadai',amount=1},
				},
			results =
				{
					{name='blood', amount ='R'},
					{name='meat', amount =10},
				},
			crafting_speed = 15,
			tech = 'myostatin',
			name = 'Extract meat from Improved phadais-2',
			icon = "__pyalienlifegraphics__/graphics/icons/meat-caged-phadai.png",
			icon_size = 64,
        },
	}
}

------------------PHAGNOT------------------

fun.autorecipes {
    name = 'rendering-meats-phagnot-2',
	category = 'slaughterhouse',
	--module_limitations = 'auog',
	subgroup = 'py-alienlife-phagnot',
	order = 'b',
    mats =
	{
		--meat
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
					{name='meat', amount =4},
				},
                crafting_speed = 15,
                tech = 'myostatin',
				name = 'Extract phagnot Meat-2',
				icon = "__pyalienlifegraphics__/graphics/icons/mip/meat-01.png",
				icon_size = 64,
		},	
		--meat phagnot rendering
		{
			ingredients =
				{
					{name='cagedphagnot',amount='R'},
					{name='meatcagedphagnot',amount=1},
				},
			results =
				{
					{name='skin', amount ='R'},
					{name='meat', amount =9},
				},
			crafting_speed = 15,
			tech = 'myostatin',
			name = 'Extract meat from Improved phagnots-2',
			icon = "__pyalienlifegraphics__/graphics/icons/meat-caged-phagnot.png",
			icon_size = 64,
		},
	}
}

------------------SCRONDRIX------------------

fun.autorecipes {
    name = 'rendering-meats-scrondrix-2',
	category = 'slaughterhouse',
	--module_limitations = 'auog',
	subgroup = 'py-alienlife-scrondrix',
	order = 'b',
    mats =
	{
		--meat
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
					{name='meat', amount =7},
				},
                crafting_speed = 15,
                tech = 'myostatin',
				name = 'Extract scrondrix Meat-2',
				icon = "__pyalienlifegraphics__/graphics/icons/mip/meat-01.png",
				icon_size = 64,
		},	
		--meat scrondrix rendering
		{
			ingredients =
				{
					{name='cagedscrondrix',amount='R'},
					{name='meatcagedscrondrix',amount=1},
				},
			results =
				{
					{name='fat', amount ='R'},
					{name='meat', amount =10},
				},
			crafting_speed = 15,
			tech = 'myostatin',
			name = 'Extract meat from Improved scrondrixs-2',
			icon = "__pyalienlifegraphics__/graphics/icons/meat-caged-scrondrix.png",
			icon_size = 64,
		},
	}
}

------------------TRITS------------------

fun.autorecipes {
    name = 'rendering-meats-trits-2',
	category = 'slaughterhouse',
	--module_limitations = 'auog',
	subgroup = 'py-alienlife-trits',
	order = 'b',
    mats =
	{
		--meat
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
					{name='meat', amount =8},
				},
                crafting_speed = 15,
                tech = 'myostatin',
				name = 'Extract Trits Meat-2',
				icon = "__pyalienlifegraphics__/graphics/icons/mip/meat-01.png",
				icon_size = 64,
		},	
		--meat trits rendering
		{
			ingredients =
				{
					{name='trits',amount='R'},
					{name='meattrits',amount=1},
				},
			results =
				{
					{name='bones', amount ='R'},
					{name='meat', amount =11},
				},
			crafting_speed = 15,
			tech = 'myostatin',
			name = 'Extract meat from Improved Trits-2',
			icon = "__pyalienlifegraphics__/graphics/icons/meat-trits.png",
			icon_size = 64,
		},
	}
}

------------------ULRIC------------------

fun.autorecipes {
    name = 'rendering-meats-ulric-2',
	category = 'slaughterhouse',
	--module_limitations = 'auog',
	subgroup = 'py-alienlife-ulric',
	order = 'b',
    mats =
	{
		--meat
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
					{name='meat', amount =6},
				},
                crafting_speed = 15,
                tech = 'myostatin',
				name = 'Extract Ulric Meat-2',
				icon = "__pyalienlifegraphics__/graphics/icons/mip/meat-01.png",
				icon_size = 64,
		},	
		--meat ulric rendering
		{
			ingredients =
				{
					{name='cagedulric',amount='R'},
					{name='meatcagedulric',amount=1},
				},
			results =
				{
					{name='skin', amount ='R'},
					{name='meat', amount =9},
				},
			crafting_speed = 15,
			tech = 'myostatin',
			name = 'Extract meat from Improved Ulrics-2',
			icon = "__pyalienlifegraphics__/graphics/icons/meat-caged-ulric.png",
			icon_size = 64,
		},
	}
}

------------------VONIX------------------

fun.autorecipes {
    name = 'rendering-meats-vonix-2',
	category = 'slaughterhouse',
	--module_limitations = 'auog',
	subgroup = 'py-alienlife-vonix',
	order = 'b',
    mats =
	{
		--meat
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
					{name='meat', amount =8},
				},
                crafting_speed = 15,
                tech = 'myostatin',
				name = 'Extract Vonix Meat-2',
				icon = "__pyalienlifegraphics__/graphics/icons/mip/meat-01.png",
				icon_size = 64,
		},	
		--meat vonix rendering
		{
			ingredients =
				{
					{name='fatvonix',amount='R'},
					{name='vonix',amount='R'},
					{name='meatvonix',amount=1},
				},
			results =
				{
					{name='fat', amount ='R'},
					{name='meat', amount =12},
				},
			crafting_speed = 15,
			tech = 'myostatin',
			name = 'Extract meat from Improved Vonixes-2',
			icon = "__pyalienlifegraphics__/graphics/icons/meat-vonix.png",
			icon_size = 64,
		},
	}
}

------------------VRAUkS------------------

fun.autorecipes {
    name = 'rendering-meats-vrauks-2',
	category = 'slaughterhouse',
	--module_limitations = 'auog',
	subgroup = 'py-alienlife-vrauks',
	order = 'b',
    mats =
	{
		--meat
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
					{name='chitin', amount ='R'},
					{name='formicacid', amount ='R'},
					{name='sulfuricacid', amount ='R'},
					{name='fat', amount ='R'},
					{name='guts', amount ='R'},
					{name='blood', amount ='R'},
					{name='brain', amount ='R'},
					{name='cage',amount=1},
					{name='meat', amount =4},
				},
                crafting_speed = 15,
                tech = 'myostatin',
				name = 'Extract Vrauks Meat-2',
				icon = "__pyalienlifegraphics__/graphics/icons/mip/meat-01.png",
				icon_size = 64,
		},		
		--meat vrauks rendering
		{
			ingredients =
				{
					{name='braincagedvrauks',amount='R'},
					{name='cagedvrauks',amount='R'},
					{name='meatcagedvrauks',amount=1},
				},
			results =
				{
					{name='bonemeal', amount ='R'},
					{name='meat', amount =8},
				},
			crafting_speed = 15,
			tech = 'myostatin',
			name = 'Extract meat from Improved Vrauks-2',
			icon = "__pyalienlifegraphics__/graphics/icons/meat-caged-vrauks.png",
			icon_size = 64,
		},
	}
}

------------------XENOS------------------

fun.autorecipes {
    name = 'rendering-meats-xeno-2',
	category = 'slaughterhouse',
	--module_limitations = 'auog',
	subgroup = 'py-alienlife-xeno',
	order = 'b',
    mats =
	{
		--meat
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
					{name='meat', amount =6},
				},
                crafting_speed = 15,
                tech = 'myostatin',
				name = 'Extract Xeno Meat-2',
				icon = "__pyalienlifegraphics__/graphics/icons/mip/meat-01.png",
				icon_size = 64,
		},		
		--meat xeno rendering
		{
			ingredients =
				{
					{name='chitinxeno',amount='R'},
					{name='cagedxeno',amount='R'},
					{name='meatxeno',amount=1},
					{name='cage', amount ='R'},
				},
			results =
				{
					{name='chitin', amount ='R'},
					{name='meat', amount =10},
				},
			crafting_speed = 15,
			tech = 'myostatin',
			name = 'Extract meat from Improved Xenos-2',
			icon = "__pyalienlifegraphics__/graphics/icons/meat-xeno.png",
			icon_size = 64,
		},
	}
}

------------------XYHIPHOE------------------

fun.autorecipes {
    name = 'rendering-meats-xyhiphoe-2',
	category = 'slaughterhouse',
	--module_limitations = 'auog',
	subgroup = 'py-alienlife-xyhiphoe',
	order = 'b',
    mats =
	{
		--meat
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
					{name='meat', amount =4},
				},
			crafting_speed = 15,
			tech = 'myostatin',
			name = 'Extract xyhiphoe Meat-2',
			icon = "__pyalienlifegraphics__/graphics/icons/mip/meat-01.png",
			icon_size = 64,
		},
		--meat xyhiphoe rendering
		{
			ingredients =
				{
					{name='xyhiphoe',amount='R'},
					{name='meatxyhiphoe',amount=1},
				},
			results =
				{
					{name='arthropodblood', amount ='R'},
					{name='meat', amount =7},
				},
			crafting_speed = 15,
			tech = 'myostatin',
			name = 'Extract meat from Improved xyhiphoe-2',
			icon = "__pyalienlifegraphics__/graphics/icons/meat-xyhiphoe.png",
			icon_size = 64,
		},
	}
}

------------------ZIPIR------------------

fun.autorecipes {
    name = 'rendering-meats-zipir-2',
	category = 'slaughterhouse',
	--module_limitations = 'auog',
	subgroup = 'py-alienlife-zipir',
	order = 'b',
    mats =
	{
		--meat
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
					{name='meat', amount =6},
				},
                crafting_speed = 15,
                tech = 'myostatin',
				name = 'Extract zipir Meat-2',
				icon = "__pyalienlifegraphics__/graphics/icons/mip/meat-01.png",
				icon_size = 64,
		},		
		--meat zipir rendering
		{
			ingredients =
				{
					{name='zipir',amount='R'},
					{name='meatzipir',amount=1},
				},
			results =
				{
					{name='fat', amount ='R'},
					{name='meat', amount =10},
				},
			crafting_speed = 15,
			tech = 'myostatin',
			name = 'Extract meat from Improved Zipir-2',
			icon = "__pyalienlifegraphics__/graphics/icons/meat-zipir.png",
			icon_size = 64,
		},
	}
}