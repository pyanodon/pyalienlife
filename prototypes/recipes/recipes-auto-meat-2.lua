local FUN = require("__pycoalprocessing__/prototypes/functions/functions")


------------------ARTHURIANS------------------

FUN.autorecipes {
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
					{name='meat', add_amount = 2},
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
					{name='caged-arthurian',remove_item = true},
					{name='meat-caged-arthurian', amount=1},
				},
			results =
				{
					{name='mukmoux-fat', remove_item = true},
					{name='meat', add_amount = 5},
				},
			crafting_speed = 15,
			tech = 'myostatin',
			name = 'Extract meat from Improved arthurians-2',
			icon = "__pyalienlifegraphics__/graphics/icons/meat-caged-arthurian.png",
			icon_size = 64,
		},
	}
}

------------------ARQAD------------------

FUN.autorecipes {
    name = 'rendering-meats-arqad-2',
	category = 'slaughterhouse',
	--module_limitations = 'arqad',
	subgroup = 'py-alienlife-arqad',
	order = 'b',
    mats =
	{

		--meat
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
					{name='bee-venom', remove_item = true},
					{name='mukmoux-fat', remove_item = true},
					{name='guts', remove_item = true},
					{name='arthropod-blood', remove_item = true},
					{name='brain', remove_item = true},
					{name='meat', add_amount = 2},
				},
                crafting_speed = 15,
                tech = 'myostatin',
                name = 'Extract arqad Meat-2',
                icon = "__pyalienlifegraphics__/graphics/icons/mip/meat-01.png",
                icon_size = 64,
		},
		--meat arqad rendering
		{
			ingredients =
				{
					{name='arqad',remove_item = true},
					{name='meat-arqad', amount=1},
				},
			results =
				{
					{name='bee-venom', remove_item = true},
					{name='meat', add_amount = 4},
				},
			crafting_speed = 15,
			tech = 'myostatin',
			name = 'Extract meat from Improved arqads-2',
			icon = "__pyalienlifegraphics3__/graphics/icons/meat-arqad.png",
			icon_size = 64,
		},
	}
}

------------------AUOGS------------------

FUN.autorecipes {
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
					{name='meat', add_amount = 2},
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
					{name='caged-auog',remove_item = true},
					{name='meat-caged-auog', amount=1},
				},
			results =
				{
					{name='bonemeal', remove_item = true},
					{name='meat', add_amount = 6},
				},
			crafting_speed = 15,
			tech = 'myostatin',
			name = 'Extract meat from Improved auogs-2',
			icon = "__pyalienlifegraphics__/graphics/icons/meat-caged-auog.png",
			icon_size = 64,
		},
	}
}

------------------COTTONGUT------------------

FUN.autorecipes {
    name = 'rendering-meats-cottongut-2',
	category = 'slaughterhouse',
	--module_limitations = 'cottongut',
	subgroup = 'py-alienlife-cottongut',
	order = 'b',
    mats =
	{

		--meat
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
					{name='meat', add_amount = 2},
				},
                crafting_speed = 15,
                tech = 'myostatin',
                name = 'Extract cottongut Meat-2',
                icon = "__pyalienlifegraphics__/graphics/icons/mip/meat-01.png",
                icon_size = 64,
		},
		--meat cottongut rendering
		{
			ingredients =
				{
					{name='cottongut',remove_item = true},
					{name='meat-cottongut', amount=5},
				},
			results =
				{
					{name='bonemeal', remove_item = true},
					{name='mukmoux-fat', remove_item = true},
					{name='meat', add_amount = 5},
				},
			crafting_speed = 15,
			tech = 'myostatin',
			name = 'Extract meat from Improved cottonguts-2',
			icon = "__pyalienlifegraphics__/graphics/icons/meat-cottongut.png",
			icon_size = 64,
		},
	}
}
------------------DHILMOS------------------

FUN.autorecipes {
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
					{name='dhilmos', amount=1},
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
					{name='meat', add_amount = 2},
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
					{name='dhilmos',remove_item = true},
					{name='meat-dhilmos', amount=1},
				},
			results =
				{
					{name='chitin', remove_item = true},
					{name='meat', add_amount = 5},
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

FUN.autorecipes {
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
					{name='meat', add_amount = 2},
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
					{name='caged-dingrits',remove_item = true},
					{name='meat-caged-dingrits', amount=1},
				},
			results =
				{
					{name='blood', remove_item = true},
					{name='meat', add_amount = 5},
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

FUN.autorecipes {
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
					{name='meat', add_amount = 2},
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
					{name='caged-kmauts',remove_item = true},
					{name='meat-caged-kmauts', amount=1},
				},
			results =
				{
					{name='arthropod-blood', remove_item = true},
					{name='meat', add_amount = 5},
				},
			crafting_speed = 15,
			tech = 'myostatin',
			name = 'Extract meat from Improved kmauts-2',
			icon = "__pyalienlifegraphics__/graphics/icons/meat-caged-kmauts.png",
			icon_size = 64,
        },
	}
}


------------------KORLEX------------------

FUN.autorecipes {
    name = 'rendering-meats-korlex-2',
	category = 'slaughterhouse',
	--module_limitations = 'auog',
	subgroup = 'py-alienlife-korlex',
	order = 'b',
    mats =
	{
		--meat
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
					{name='meat', add_amount = 2},
				},
                crafting_speed = 15,
                tech = 'myostatin',
				name = 'Extract Korlex Meat-2',
				icon = "__pyalienlifegraphics__/graphics/icons/mip/meat-01.png",
				icon_size = 64,
		},
		--meat korlex rendering
		{
			ingredients =
				{
					{name='caged-korlex',remove_item = true},
					{name='meat-caged-korlex', amount=1},
				},
			results =
				{
					{name='arthropod-blood', remove_item = true},
					{name='meat', add_amount = 5},
				},
			crafting_speed = 15,
			tech = 'myostatin',
			name = 'Extract meat from Improved Korlex-2',
			icon = "__pyalienlifegraphics__/graphics/icons/meat-caged-korlex.png",
			icon_size = 64,
        },
	}
}

------------------MUKMOUX------------------

FUN.autorecipes {
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
					{name='meat', add_amount = 2},
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
					{name='caged-mukmoux',remove_item = true},
					{name='meat-caged-mukmoux', amount=1},
				},
			results =
				{
					{name='bones', remove_item = true},
					{name='meat', add_amount = 5},
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

FUN.autorecipes {
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
					{name='meat', add_amount = 2},
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
					{name='caged-phadai',remove_item = true},
					{name='meat-caged-phadai', amount=1},
				},
			results =
				{
					{name='blood', remove_item = true},
					{name='meat', add_amount = 5},
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

FUN.autorecipes {
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
					{name='meat', add_amount = 2},
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
					{name='caged-phagnot',remove_item = true},
					{name='meat-caged-phagnot', amount=1},
				},
			results =
				{
					{name='skin', remove_item = true},
					{name='meat', add_amount = 5},
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

FUN.autorecipes {
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
					{name='meat', add_amount = 2},
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
					{name='caged-scrondrix',remove_item = true},
					{name='meat-caged-scrondrix', amount=1},
				},
			results =
				{
					{name='mukmoux-fat', remove_item = true},
					{name='meat', add_amount = 5},
				},
			crafting_speed = 15,
			tech = 'myostatin',
			name = 'Extract meat from Improved scrondrixs-2',
			icon = "__pyalienlifegraphics__/graphics/icons/meat-caged-scrondrix.png",
			icon_size = 64,
		},
	}
}

------------------SIMIKS------------------

FUN.autorecipes {
    name = 'rendering-meats-simik-2',
	category = 'slaughterhouse',
	--module_limitations = 'auog',
	subgroup = 'py-alienlife-simik',
	order = 'b',
    mats =
	{
		--meat
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
					{name='meat', add_amount = 2},
				},
                crafting_speed = 15,
                tech = 'myostatin',
				name = 'Extract simik Meat-2',
				icon = "__pyalienlifegraphics__/graphics/icons/mip/meat-01.png",
				icon_size = 64,
		},
		--meat simik rendering
		{
			ingredients =
				{
					{name='caged-simik',remove_item = true},
					{name='meat-caged-simik', amount=1},
				},
			results =
				{
					{name='mukmoux-fat', remove_item = true},
					{name='meat', add_amount = 3},
				},
			crafting_speed = 15,
			tech = 'myostatin',
			name = 'Extract meat from Improved simik-2',
			icon = "__pyalienlifegraphics2__/graphics/icons/meat-caged-simik.png",
			icon_size = 64,
		},
	}
}

------------------TRITS------------------

FUN.autorecipes {
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
					{name='meat', add_amount = 2},
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
					{name='trits',remove_item = true},
					{name='meat-trits', amount=1},
				},
			results =
				{
					{name='bones', remove_item = true},
					{name='meat', add_amount = 5},
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

FUN.autorecipes {
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
					{name='meat', add_amount = 2},
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
					{name='caged-ulric',remove_item = true},
					{name='meat-caged-ulric', amount=1},
				},
			results =
				{
					{name='skin', remove_item = true},
					{name='mukmoux-fat', remove_item = true},
					{name='meat', add_amount = 5},
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

FUN.autorecipes {
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
					{name='meat', add_amount = 2},
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
					{name='fat-vonix',remove_item = true},
					{name='vonix',remove_item = true},
					{name='meat-vonix', amount=1},
				},
			results =
				{
					{name='mukmoux-fat', remove_item = true},
					{name='meat', add_amount = 5},
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

FUN.autorecipes {
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
					{name='caged-vrauks', amount=1},
				},
			results =
				{
                    {name='bones', remove_item = true},
					{name='meat', remove_item = true},
					{name='skin', remove_item = true},
					{name='chitin', remove_item = true},
					{name='formic-acid', remove_item = true},
					{name='sulfuric-acid', remove_item = true},
					{name='mukmoux-fat', remove_item = true},
					{name='guts', remove_item = true},
					{name='blood', remove_item = true},
					{name='brain', remove_item = true},
					{name='cage', amount=1},
					{name='meat', add_amount = 2},
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
					{name='brain-caged-vrauks',remove_item = true},
					{name='caged-vrauks',remove_item = true},
					{name='meat-caged-vrauks', amount=1},
				},
			results =
				{
					{name='bonemeal', remove_item = true},
					{name='meat', add_amount = 5},
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

FUN.autorecipes {
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
					{name='meat', add_amount = 2},
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
					{name='chitin-xeno',remove_item = true},
					{name='caged-xeno',remove_item = true},
					{name='meat-xeno', amount=1},
					{name='cage', remove_item = true},
				},
			results =
				{
					{name='chitin', remove_item = true},
					{name='meat', add_amount = 5},
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

FUN.autorecipes {
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
					{name='xyhiphoe', amount=1},
				},
			results =
				{
					{name='meat', remove_item = true},
					{name='shell', remove_item = true},
					{name='guts', remove_item = true},
					{name='arthropod-blood', remove_item = true},
					{name='meat', add_amount = 2},
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
					{name='xyhiphoe',remove_item = true},
					{name='meat-xyhiphoe', amount=1},
				},
			results =
				{
					{name='arthropod-blood', remove_item = true},
					{name='meat', add_amount = 5},
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

FUN.autorecipes {
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
					{name='meat', add_amount = 2},
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
					{name = 'zipir1',remove_item = true},
					{name='meat-zipir', amount=1},
				},
			results =
				{
					{name='mukmoux-fat', remove_item = true},
					{name='meat', add_amount = 5},
				},
			crafting_speed = 15,
			tech = 'myostatin',
			name = 'Extract meat from Improved Zipir-2',
			icon = "__pyalienlifegraphics__/graphics/icons/meat-zipir.png",
			icon_size = 64,
		},
	}
}
