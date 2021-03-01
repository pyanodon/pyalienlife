local fun = require("prototypes/functions/functions")


------------------ARTHURIANS------------------

fun.autorecipes {
    name = 'rendering-meats-arthurians-2',
	category = 'slaughterhouse-arthurian',
	--module_limitations = 'arthurian',
	subgroup = 'py-alienlife-arthurian',
	order = 'b',
    mats =
	{
		--meat
		{
			ingredients =
				{
					{name='caged-arthurian',amount=1},
				},
			results =
				{
					{name='bones', amount ='R'},
					{name='meat', amount ='R'},
					{name='skin', amount ='R'},
					{name='mukmoux-fat', amount ='R'},
					{name='guts', amount ='R'},
					{name='blood', amount ='R'},
					{name='brain', amount ='R'},
					{name='cage',amount=1},
					{name='meat', amount ='+2'},
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
					{name='caged-arthurian',amount='R'},
					{name='meat-caged-arthurian',amount=1},
				},
			results =
				{
					{name='mukmoux-fat', amount ='R'},
					{name='meat', amount ='+5'},
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

fun.autorecipes {
    name = 'rendering-meats-arqad-2',
	category = 'slaughterhouse-arqad',
	--module_limitations = 'arqad',
	subgroup = 'py-alienlife-arqad',
	order = 'b',
    mats =
	{

		--meat
		{
			ingredients =
				{
					{name='arqad',amount=3},
				},
			results =
				{
                    {name='bones', amount ='R'},
					{name='meat', amount ='R'},
					{name='skin', amount ='R'},
					{name='bee-venom', amount ='R'},
					{name='mukmoux-fat', amount ='R'},
					{name='guts', amount ='R'},
					{name='arthropod-blood', amount ='R'},
					{name='brain', amount ='R'},
					{name='meat', amount ='+2'},
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
					{name='arqad',amount='R'},
					{name='meat-arqad',amount=1},
				},
			results =
				{
					{name='bee-venom', amount ='R'},
					{name='meat', amount ='+4'},
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

fun.autorecipes {
    name = 'rendering-meats-auog-2',
	category = 'slaughterhouse-auog',
	--module_limitations = 'auog',
	subgroup = 'py-alienlife-auog',
	order = 'b',
    mats =
	{

		--meat
		{
			ingredients =
				{
					{name='caged-auog',amount=1},
				},
			results =
				{
                    {name='bones', amount ='R'},
					{name='meat', amount ='R'},
					{name='skin', amount ='R'},
					{name='mukmoux-fat', amount ='R'},
					{name='guts', amount ='R'},
					{name='blood', amount ='R'},
					{name='brain', amount ='R'},
					{name='cage',amount=1},
					{name='meat', amount ='+2'},
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
					{name='caged-auog',amount='R'},
					{name='meat-caged-auog',amount=1},
				},
			results =
				{
					{name='bonemeal', amount ='R'},
					{name='meat', amount ='+6'},
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

fun.autorecipes {
    name = 'rendering-meats-cottongut-2',
	category = 'slaughterhouse-cottongut',
	--module_limitations = 'cottongut',
	subgroup = 'py-alienlife-cottongut',
	order = 'b',
    mats =
	{

		--meat
		{
			ingredients =
				{
					{name='cottongut',amount=5},
				},
			results =
				{
                    {name='bones', amount ='R'},
					{name='meat', amount ='R'},
					{name='skin', amount ='R'},
					{name='mukmoux-fat', amount ='R'},
					{name='guts', amount ='R'},
					{name='blood', amount ='R'},
					{name='brain', amount ='R'},
					{name='meat', amount ='+2'},
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
					{name='cottongut',amount='R'},
					{name='meat-cottongut',amount=5},
				},
			results =
				{
					{name='bonemeal', amount ='R'},
					{name='mukmoux-fat', amount ='R'},
					{name='meat', amount ='+5'},
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

fun.autorecipes {
    name = 'rendering-meats-dhilmos-2',
	category = 'slaughterhouse-dhilmos',
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
					{name='mukmoux-fat', amount ='R'},
					{name='chitin', amount ='R'},
					{name='arthropod-blood', amount ='R'},
					{name='sulfuric-acid', amount ='R'},
					{name='guts', amount ='R'},
					{name='blood', amount ='R'},
					{name='brain', amount ='R'},
					{name='meat', amount ='+2'},
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
					{name='meat-dhilmos',amount=1},
				},
			results =
				{
					{name='chitin', amount ='R'},
					{name='meat', amount ='+5'},
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
	category = 'slaughterhouse-dingrits',
	--module_limitations = 'auog',
	subgroup = 'py-alienlife-dingrits',
	order = 'b',
    mats =
	{
		--meat
		{
			ingredients =
				{
					{name='caged-dingrits',amount=1},
				},
			results =
				{
                    {name='bones', amount ='R'},
					{name='meat', amount ='R'},
					{name='skin', amount ='R'},
					{name='mukmoux-fat', amount ='R'},
					{name='guts', amount ='R'},
					{name='blood', amount ='R'},
					{name='brain', amount ='R'},
					{name='cage',amount=1},
					{name='meat', amount ='+2'},
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
					{name='caged-dingrits',amount='R'},
					{name='meat-caged-dingrits',amount=1},
				},
			results =
				{
					{name='blood', amount ='R'},
					{name='meat', amount ='+5'},
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
	category = 'slaughterhouse-kmauts',
	--module_limitations = 'auog',
	subgroup = 'py-alienlife-kmauts',
	order = 'b',
    mats =
	{
		--meat
		{
			ingredients =
				{
					{name='caged-kmauts',amount=1},
				},
			results =
				{
                    {name='bones', amount ='R'},
					{name='meat', amount ='R'},
					{name='skin', amount ='R'},
					{name='mukmoux-fat', amount ='R'},
					{name='guts', amount ='R'},
					{name='blood', amount ='R'},
					{name='brain', amount ='R'},
					{name='cage',amount=1},
					{name='meat', amount ='+2'},
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
					{name='caged-kmauts',amount='R'},
					{name='meat-caged-kmauts',amount=1},
				},
			results =
				{
					{name='arthropod-blood', amount ='R'},
					{name='meat', amount ='+5'},
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

fun.autorecipes {
    name = 'rendering-meats-korlex-2',
	category = 'slaughterhouse-korlex',
	--module_limitations = 'auog',
	subgroup = 'py-alienlife-korlex',
	order = 'b',
    mats =
	{
		--meat
		{
			ingredients =
				{
					{name='caged-korlex',amount=1},
				},
			results =
				{
                    {name='bones', amount ='R'},
					{name='meat', amount ='R'},
					{name='skin', amount ='R'},
					{name='mukmoux-fat', amount ='R'},
					{name='guts', amount ='R'},
					{name='blood', amount ='R'},
					{name='brain', amount ='R'},
					{name='cage',amount=1},
					{name='meat', amount ='+2'},
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
					{name='caged-korlex',amount='R'},
					{name='meat-caged-korlex',amount=1},
				},
			results =
				{
					{name='arthropod-blood', amount ='R'},
					{name='meat', amount ='+5'},
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

fun.autorecipes {
    name = 'rendering-meats-mukmoux-2',
	category = 'slaughterhouse-mukmoux',
	--module_limitations = 'auog',
	subgroup = 'py-alienlife-mukmoux',
	order = 'b',
    mats =
	{
		--meat
		{
			ingredients =
				{
					{name='caged-mukmoux',amount=1},
				},
			results =
				{
                    {name='bones', amount ='R'},
					{name='meat', amount ='R'},
					{name='skin', amount ='R'},
					{name='mukmoux-fat', amount ='R'},
					{name='guts', amount ='R'},
					{name='blood', amount ='R'},
					{name='brain', amount ='R'},
					{name='cage',amount=1},
					{name='meat', amount ='+2'},
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
					{name='caged-mukmoux',amount='R'},
					{name='meat-caged-mukmoux',amount=1},
				},
			results =
				{
					{name='bones', amount ='R'},
					{name='meat', amount ='+5'},
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
	category = 'slaughterhouse-phadai',
	--module_limitations = 'auog',
	subgroup = 'py-alienlife-phadai',
	order = 'b',
    mats =
	{
		--meat
		{
			ingredients =
				{
					{name='caged-phadai',amount=1},
				},
			results =
				{
                    {name='bones', amount ='R'},
					{name='meat', amount ='R'},
					{name='skin', amount ='R'},
					{name='mukmoux-fat', amount ='R'},
					{name='guts', amount ='R'},
					{name='blood', amount ='R'},
					{name='brain', amount ='R'},
					{name='cage',amount=1},
					{name='meat', amount ='+2'},
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
					{name='caged-phadai',amount='R'},
					{name='meat-caged-phadai',amount=1},
				},
			results =
				{
					{name='blood', amount ='R'},
					{name='meat', amount ='+5'},
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
	category = 'slaughterhouse-phagnot',
	--module_limitations = 'auog',
	subgroup = 'py-alienlife-phagnot',
	order = 'b',
    mats =
	{
		--meat
		{
			ingredients =
				{
					{name='caged-phagnot',amount=1},
				},
			results =
				{
                    {name='bones', amount ='R'},
					{name='meat', amount ='R'},
					{name='skin', amount ='R'},
					{name='mukmoux-fat', amount ='R'},
					{name='guts', amount ='R'},
					{name='blood', amount ='R'},
					{name='brain', amount ='R'},
					{name='cage',amount=1},
					{name='meat', amount ='+2'},
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
					{name='caged-phagnot',amount='R'},
					{name='meat-caged-phagnot',amount=1},
				},
			results =
				{
					{name='skin', amount ='R'},
					{name='meat', amount ='+5'},
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
	category = 'slaughterhouse-scrondrix',
	--module_limitations = 'auog',
	subgroup = 'py-alienlife-scrondrix',
	order = 'b',
    mats =
	{
		--meat
		{
			ingredients =
				{
					{name='caged-scrondrix',amount=1},
				},
			results =
				{
                    {name='bones', amount ='R'},
					{name='meat', amount ='R'},
					{name='skin', amount ='R'},
					{name='mukmoux-fat', amount ='R'},
					{name='guts', amount ='R'},
					{name='blood', amount ='R'},
					{name='brain', amount ='R'},
					{name='cage',amount=1},
					{name='meat', amount ='+2'},
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
					{name='caged-scrondrix',amount='R'},
					{name='meat-caged-scrondrix',amount=1},
				},
			results =
				{
					{name='mukmoux-fat', amount ='R'},
					{name='meat', amount ='+5'},
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

fun.autorecipes {
    name = 'rendering-meats-simik-2',
	category = 'slaughterhouse-simik',
	--module_limitations = 'auog',
	subgroup = 'py-alienlife-simik',
	order = 'b',
    mats =
	{
		--meat
		{
			ingredients =
				{
					{name='caged-simik',amount=1},
				},
			results =
				{
                    {name='bones', amount ='R'},
					{name='meat', amount ='R'},
					{name='skin', amount ='R'},
					{name='mukmoux-fat', amount ='R'},
					{name='guts', amount ='R'},
					{name='simik-blood', amount ='R'},
					{name='brain', amount ='R'},
					{name='cage',amount=1},
					{name='meat', amount ='+2'},
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
					{name='caged-simik',amount='R'},
					{name='meat-caged-simik',amount=1},
				},
			results =
				{
					{name='mukmoux-fat', amount ='R'},
					{name='meat', amount ='+3'},
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

fun.autorecipes {
    name = 'rendering-meats-trits-2',
	category = 'slaughterhouse-trits',
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
					{name='mukmoux-fat', amount ='R'},
					{name='guts', amount ='R'},
					{name='blood', amount ='R'},
					{name='brain', amount ='R'},
					{name='meat', amount ='+2'},
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
					{name='meat-trits',amount=1},
				},
			results =
				{
					{name='bones', amount ='R'},
					{name='meat', amount ='+5'},
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
	category = 'slaughterhouse-ulric',
	--module_limitations = 'auog',
	subgroup = 'py-alienlife-ulric',
	order = 'b',
    mats =
	{
		--meat
		{
			ingredients =
				{
					{name='caged-ulric',amount=1},
				},
			results =
				{
                    {name='bones', amount ='R'},
					{name='meat', amount ='R'},
					{name='skin', amount ='R'},
					{name='mukmoux-fat', amount ='R'},
					{name='guts', amount ='R'},
					{name='blood', amount ='R'},
					{name='brain', amount ='R'},
					{name='cage',amount=1},
					{name='meat', amount ='+2'},
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
					{name='caged-ulric',amount='R'},
					{name='meat-caged-ulric',amount=1},
				},
			results =
				{
					{name='skin', amount ='R'},
					{name='mukmoux-fat', amount ='R'},
					{name='meat', amount ='+5'},
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
	category = 'slaughterhouse-vonix',
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
					{name='mukmoux-fat', amount ='R'},
					{name='chitin', amount ='R'},
					{name='arthropod-blood', amount ='R'},
					{name='sulfuric-acid', amount ='R'},
					{name='guts', amount ='R'},
					{name='blood', amount ='R'},
					{name='brain', amount ='R'},
					{name='meat', amount ='+2'},
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
					{name='fat-vonix',amount='R'},
					{name='vonix',amount='R'},
					{name='meat-vonix',amount=1},
				},
			results =
				{
					{name='mukmoux-fat', amount ='R'},
					{name='meat', amount ='+5'},
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
	category = 'slaughterhouse-vrauks',
	--module_limitations = 'auog',
	subgroup = 'py-alienlife-vrauks',
	order = 'b',
    mats =
	{
		--meat
		{
			ingredients =
				{
					{name='caged-vrauks',amount=1},
				},
			results =
				{
                    {name='bones', amount ='R'},
					{name='meat', amount ='R'},
					{name='skin', amount ='R'},
					{name='chitin', amount ='R'},
					{name='formic-acid', amount ='R'},
					{name='sulfuric-acid', amount ='R'},
					{name='mukmoux-fat', amount ='R'},
					{name='guts', amount ='R'},
					{name='blood', amount ='R'},
					{name='brain', amount ='R'},
					{name='cage',amount=1},
					{name='meat', amount ='+2'},
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
					{name='brain-caged-vrauks',amount='R'},
					{name='caged-vrauks',amount='R'},
					{name='meat-caged-vrauks',amount=1},
				},
			results =
				{
					{name='bonemeal', amount ='R'},
					{name='meat', amount ='+5'},
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
	category = 'slaughterhouse-xeno',
	--module_limitations = 'auog',
	subgroup = 'py-alienlife-xeno',
	order = 'b',
    mats =
	{
		--meat
		{
			ingredients =
				{
					{name='caged-xeno',amount=1},
				},
			results =
				{
                    {name='bones', amount ='R'},
					{name='meat', amount ='R'},
					{name='skin', amount ='R'},
					{name='chitin', amount ='R'},
					{name='arthropod-blood', amount ='R'},
					{name='sulfuric-acid', amount ='R'},
					{name='mukmoux-fat', amount ='R'},
					{name='guts', amount ='R'},
					{name='blood', amount ='R'},
					{name='brain', amount ='R'},
					{name='cage',amount=1},
					{name='meat', amount ='+2'},
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
					{name='chitin-xeno',amount='R'},
					{name='caged-xeno',amount='R'},
					{name='meat-xeno',amount=1},
					{name='cage', amount ='R'},
				},
			results =
				{
					{name='chitin', amount ='R'},
					{name='meat', amount ='+5'},
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
	category = 'slaughterhouse-xyhiphoe',
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
					{name='arthropod-blood', amount ='R'},
					{name='meat', amount ='+2'},
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
					{name='meat-xyhiphoe',amount=1},
				},
			results =
				{
					{name='arthropod-blood', amount ='R'},
					{name='meat', amount ='+5'},
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
	category = 'slaughterhouse-zipir',
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
					{name='arthropod-blood', amount ='R'},
					{name='sulfuric-acid', amount ='R'},
					{name='mukmoux-fat', amount ='R'},
					{name='guts', amount ='R'},
					{name='blood', amount ='R'},
					{name='brain', amount ='R'},
					{name='meat', amount ='+2'},
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
					{name='meat-zipir',amount=1},
				},
			results =
				{
					{name='mukmoux-fat', amount ='R'},
					{name='meat', amount ='+5'},
				},
			crafting_speed = 15,
			tech = 'myostatin',
			name = 'Extract meat from Improved Zipir-2',
			icon = "__pyalienlifegraphics__/graphics/icons/meat-zipir.png",
			icon_size = 64,
		},
	}
}
