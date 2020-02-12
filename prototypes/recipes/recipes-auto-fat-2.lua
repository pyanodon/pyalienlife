local fun = require("prototypes/functions/functions")


------------------ARTHURIANS------------------

fun.autorecipes {
    name = 'rendering-fat-arthurians-2',
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
					{name='fat', amount =3},
				},
			crafting_speed = 15,
			tech = 'fto4',
			name = 'Extract arthurian lard-2',
			icon = "__pyalienlifegraphics__/graphics/icons/mukmoux-fat.png",
			icon_size = 64,
		},
		--fat arthurian rendering
		{
			ingredients =
				{
					{name='cagedarthurian',amount='R'},
					{name='fatcagedarthurian',amount=1},
				},
			results =
				{
					{name='skin', amount ='R'},
					{name='fat', amount =6},
				},
			crafting_speed = 15,
			tech = 'fto4',
			name = 'Extract fat from Improved arthurians-2',
			icon = "__pyalienlifegraphics__/graphics/icons/fat-caged-arthurian.png",
			icon_size = 64,
		},
	}
}

------------------AUOGS------------------

fun.autorecipes {
    name = 'rendering-fat-auog-2',
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
					{name='fat', amount =4},
				},
                crafting_speed = 15,
                tech = 'fto4',
                name = 'Extract auog lard-2',
                icon = "__pyalienlifegraphics__/graphics/icons/mukmoux-fat.png",
                icon_size = 64,
		},
		--fat auog rendering
		{
			ingredients =
				{
					{name='cagedauog',amount='R'},
					{name='fatcagedauog',amount=1},
				},
			results =
				{
					{name='skin', amount ='R'},
					{name='fat', amount =8},
				},
			crafting_speed = 15,
			tech = 'fto4',
			name = 'Extract fat from Improved auogs-2',
			icon = "__pyalienlifegraphics__/graphics/icons/fat-caged-auog.png",
			icon_size = 64,
		},
	}
}

------------------DHILMOS------------------

fun.autorecipes {
    name = 'rendering-fat-dhilmos-2',
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
					{name='fat', amount =3},
				},
                crafting_speed = 15,
                tech = 'fto4',
                name = 'Extract dhilmos lard-2',
                icon = "__pyalienlifegraphics__/graphics/icons/mukmoux-fat.png",
                icon_size = 64,
		},
		--fat dhilmos rendering
		{
			ingredients =
				{
					{name='dhilmos',amount='R'},
					{name='fatdhilmos',amount=1},
				},
			results =
				{
					{name='arthropodblood', amount ='R'},
					{name='fat', amount =6},
				},
			crafting_speed = 15,
			tech = 'fto4',
			name = 'Extract fat from Improved dhilmoss-2',
			icon = "__pyalienlifegraphics__/graphics/icons/fat-dhilmos.png",
			icon_size = 64,
		},
	}
}

------------------KMAUTS------------------

fun.autorecipes {
    name = 'rendering-fat-kmauts-2',
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
					{name='fat', amount =4},
				},
                crafting_speed = 15,
                tech = 'fto4',
                name = 'Extract kmauts lard-2',
                icon = "__pyalienlifegraphics__/graphics/icons/mukmoux-fat.png",
                icon_size = 64,
		},
		--fat kmauts rendering
		{
			ingredients =
				{
					{name='cagedkmauts',amount='R'},
					{name='fatcagedkmauts',amount=1},
				},
			results =
				{
					{name='meat', amount ='R'},
					{name='fat', amount =7},
				},
			crafting_speed = 15,
			tech = 'fto4',
			name = 'Extract fat from Improved kmauts-2',
			icon = "__pyalienlifegraphics__/graphics/icons/fat-caged-kmauts.png",
			icon_size = 64,
        },
	}
}

------------------KORLEX------------------

fun.autorecipes {
    name = 'rendering-fat-korlex-2',
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
					{name='fat', amount =5},
				},
                crafting_speed = 15,
                tech = 'fto4',
                name = 'Extract Korlex lard-2',
                icon = "__pyalienlifegraphics__/graphics/icons/mukmoux-fat.png",
                icon_size = 64,
		},
		--fat korlex rendering
		{
			ingredients =
				{
					{name='cagedkorlex',amount='R'},
					{name='fatcagedkorlex',amount=1},
				},
			results =
				{
					{name='meat', amount ='R'},
					{name='fat', amount =7},
				},
			crafting_speed = 15,
			tech = 'fto4',
			name = 'Extract fat from Improved Korlex-2',
			icon = "__pyalienlifegraphics__/graphics/icons/fat-caged-korlex.png",
			icon_size = 64,
        },
	}
}

------------------MUKMOUX------------------

fun.autorecipes {
    name = 'rendering-fat-mukmoux-2',
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
					{name='fat', amount =7},
				},
                crafting_speed = 15,
                tech = 'fto4',
                name = 'Extract Mukmoux lard-2',
                icon = "__pyalienlifegraphics__/graphics/icons/mukmoux-fat.png",
                icon_size = 64,
		},
		--fat mukmoux rendering
		{
			ingredients =
				{
					{name='cagedmukmoux',amount='R'},
					{name='fatcagedmukmoux',amount=1},
				},
			results =
				{
					{name='skin', amount ='R'},
					{name='fat', amount =10},
				},
			crafting_speed = 15,
			tech = 'fto4',
			name = 'Extract fat from Improved Mukmouxs-2',
			icon = "__pyalienlifegraphics__/graphics/icons/fat-caged-mukmoux.png",
			icon_size = 64,
		},
	}
}

------------------PHADAI------------------

fun.autorecipes {
    name = 'rendering-fat-phadai-2',
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
					{name='fat', amount =3},
				},
                crafting_speed = 15,
                tech = 'fto4',
                name = 'Extract phadai Fat-2',
                icon = "__pyalienlifegraphics__/graphics/icons/mukmoux-fat.png",
                icon_size = 64,
		},
		--fat phadai rendering
		{
			ingredients =
				{
					{name='cagedphadai',amount='R'},
					{name='fatcagedphadai',amount=1},
				},
			results =
				{
					{name='skin', amount ='R'},
					{name='fat', amount =7},
				},
			crafting_speed = 15,
			tech = 'fto4',
			name = 'Extract fat from Improved phadais-2',
			icon = "__pyalienlifegraphics__/graphics/icons/fat-caged-phadai.png",
			icon_size = 64,
        },
	}
}

------------------SCRONDRIX------------------

fun.autorecipes {
    name = 'rendering-fat-scrondrix-2',
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
					{name='fat', amount =5},
				},
                crafting_speed = 15,
                tech = 'fto4',
                name = 'Extract scrondrix lard-2',
                icon = "__pyalienlifegraphics__/graphics/icons/mukmoux-fat.png",
                icon_size = 64,
		},
		--fat scrondrix rendering
		{
			ingredients =
				{
					{name='cagedscrondrix',amount='R'},
					{name='fatcagedscrondrix',amount=1},
				},
			results =
				{
					{name='skin', amount ='R'},
					{name='fat', amount =9},
				},
			crafting_speed = 15,
			tech = 'fto4',
			name = 'Extract fat from Improved scrondrixs-2',
			icon = "__pyalienlifegraphics__/graphics/icons/fat-caged-scrondrix.png",
			icon_size = 64,
		},
	}
}

------------------TRITS------------------

fun.autorecipes {
    name = 'rendering-fat-trits-2',
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
					{name='fat', amount =9},
				},
                crafting_speed = 15,
                tech = 'fto4',
                name = 'Extract Trits lard-2',
                icon = "__pyalienlifegraphics__/graphics/icons/mukmoux-fat.png",
                icon_size = 64,
		},
		--fat trits rendering
		{
			ingredients =
				{
					{name='trits',amount='R'},
					{name='fattrits',amount=1},
				},
			results =
				{
					{name='skin', amount ='R'},
					{name='fat', amount =25},
				},
			crafting_speed = 15,
			tech = 'fto4',
			name = 'Extract fat from Improved Trits-2',
			icon = "__pyalienlifegraphics__/graphics/icons/fat-trits.png",
			icon_size = 64,
		},
	}
}

------------------ULRIC------------------

fun.autorecipes {
    name = 'rendering-fat-ulric-2',
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
					{name='fat', amount =4},
				},
                crafting_speed = 15,
                tech = 'fto4',
                name = 'Extract Ulric lard-2',
                icon = "__pyalienlifegraphics__/graphics/icons/mukmoux-fat.png",
                icon_size = 64,
		},
		--fat ulric rendering
		{
			ingredients =
				{
					{name='cagedulric',amount='R'},
					{name='fatcagedulric',amount=1},
				},
			results =
				{
					{name='skin', amount ='R'},
					{name='fat', amount =8},
				},
			crafting_speed = 15,
			tech = 'fto4',
			name = 'Extract fat from Improved Ulrics-2',
			icon = "__pyalienlifegraphics__/graphics/icons/fat-caged-ulric.png",
			icon_size = 64,
		},
	}
}

------------------VONIX------------------

fun.autorecipes {
    name = 'rendering-fat-vonix-2',
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
					{name='fat', amount =7},
				},
                crafting_speed = 15,
                tech = 'fto4',
                name = 'Extract Vonix lard-2',
                icon = "__pyalienlifegraphics__/graphics/icons/mukmoux-fat.png",
                icon_size = 64,
		},
		--fat vonix rendering
		{
			ingredients =
				{
					{name='fatvonix',amount='R'},
					{name='vonix',amount='R'},
					{name='fatvonix',amount=1},
				},
			results =
				{
					{name='skin', amount ='R'},
					{name='fat', amount =17},
				},
			crafting_speed = 15,
			tech = 'fto4',
			name = 'Extract fat from Improved Vonixes-2',
			icon = "__pyalienlifegraphics__/graphics/icons/fat-vonix.png",
			icon_size = 64,
		},
	}
}



------------------ZIPIR------------------

fun.autorecipes {
    name = 'rendering-fat-zipir-2',
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
					{name='fat', amount =5},
				},
                crafting_speed = 15,
                tech = 'fto4',
                name = 'Extract zipir lard-2',
                icon = "__pyalienlifegraphics__/graphics/icons/mukmoux-fat.png",
                icon_size = 64,
		},
		--fat zipir rendering
		{
			ingredients =
				{
					{name='zipir',amount='R'},
					{name='fatzipir',amount=1},
				},
			results =
				{
					{name='skin', amount ='R'},
					{name='fat', amount =12},
				},
			crafting_speed = 15,
			tech = 'fto4',
			name = 'Extract fat from Improved Zipir-2',
			icon = "__pyalienlifegraphics__/graphics/icons/fat-zipir.png",
			icon_size = 64,
		},
	}
}