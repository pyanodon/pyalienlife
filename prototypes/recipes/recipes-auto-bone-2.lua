local fun = require("prototypes/functions/functions")


------------------ARTHURIANS------------------

fun.autorecipes {
    name = 'rendering-bone-arthurians-2',
	category = 'slaughterhouse-arthurian',
	--module_limitations = 'arthurian',
	subgroup = 'py-alienlife-arthurian',
	order = 'b',
    mats =
	{
		--bone
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
					{name='bones', amount ='+3'},
				},
                crafting_speed = 15,
                tech = 'hardened-bone',
                name = 'Extract arthurian bones-2',
                icon = "__pyalienlifegraphics__/graphics/icons/mip/bones-01.png",
                icon_size = 64,
		},
		--bone arthurian rendering
		{
			ingredients =
				{
					{name='caged-arthurian',amount='R'},
					{name='bone-caged-arthurian',amount=1},
				},
			results =
				{
					{name='brain', amount ='R'},
					{name='bones', amount ='+5'},
				},
			crafting_speed = 15,
			tech = 'hardened-bone',
			name = 'Extract bones from Improved arthurians-2',
			icon = "__pyalienlifegraphics__/graphics/icons/bone-caged-arthurian.png",
			icon_size = 64,
		},
	}
}

------------------AUOGS------------------

fun.autorecipes {
    name = 'rendering-bone-auog-2',
	category = 'slaughterhouse-auog',
	--module_limitations = 'auog',
	subgroup = 'py-alienlife-auog',
	order = 'b',
    mats =
	{

		--bone
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
					{name='bones', amount ='+3'},
				},
                crafting_speed = 15,
                tech = 'hardened-bone',
                name = 'Extract auog bones-2',
                icon = "__pyalienlifegraphics__/graphics/icons/mip/bones-01.png",
                icon_size = 64,
		},
		--bone auog rendering
		{
			ingredients =
				{
					{name='caged-auog',amount='R'},
					{name='bone-caged-auog',amount=1},
				},
			results =
				{
					{name='brain', amount ='R'},
					{name='bones', amount ='+5'},
				},
			crafting_speed = 15,
			tech = 'hardened-bone',
			name = 'Extract bones from Improved auogs-2',
			icon = "__pyalienlifegraphics__/graphics/icons/bone-caged-auog.png",
			icon_size = 64,
		},
	}
}

------------------COTTONGUT------------------

fun.autorecipes {
    name = 'rendering-bone-cottongut-2',
	category = 'slaughterhouse-cottongut',
	--module_limitations = 'cottongut',
	subgroup = 'py-alienlife-cottongut',
	order = 'b',
    mats =
	{

		--bone
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
					{name='bones', amount ='+2'},
				},
                crafting_speed = 15,
                tech = 'hardened-bone',
                name = 'Extract cottongut bones-2',
                icon = "__pyalienlifegraphics__/graphics/icons/mip/bones-01.png",
                icon_size = 64,
		},
		--bone cottongut rendering
		{
			ingredients =
				{
					{name='cottongut',amount='R'},
					{name='bone-cottongut',amount=5},
				},
			results =
				{
					{name='brain', amount ='R'},
					{name='bones', amount ='+2'},
				},
			crafting_speed = 15,
			tech = 'hardened-bone',
			name = 'Extract bones from Improved cottonguts-2',
			icon = "__pyalienlifegraphics__/graphics/icons/bone-cottongut.png",
			icon_size = 64,
		},
	}
}

------------------DINGRITS------------------

fun.autorecipes {
    name = 'rendering-bone-dingrits-2',
	category = 'slaughterhouse-dingrits',
	--module_limitations = 'auog',
	subgroup = 'py-alienlife-dingrits',
	order = 'b',
    mats =
	{
		--bone
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
					{name='bones', amount ='+3'},
				},
                crafting_speed = 15,
                tech = 'hardened-bone',
                name = 'Extract dingrits bones-2',
                icon = "__pyalienlifegraphics__/graphics/icons/mip/bones-01.png",
                icon_size = 64,
		},
		--meat dingrits rendering
		{
			ingredients =
				{
					{name='caged-dingrits',amount='R'},
					{name='bone-caged-dingrits',amount=1},
				},
			results =
				{
					{name='brain', amount ='R'},
					{name='bones', amount ='+5'},
				},
			crafting_speed = 15,
			tech = 'hardened-bone',
			name = 'Extract bones from Improved dingrits-2',
			icon = "__pyalienlifegraphics__/graphics/icons/bone-caged-dingrits.png",
			icon_size = 64,
		},
	}
}

------------------KORLEX------------------

fun.autorecipes {
    name = 'rendering-bone-korlex-2',
	category = 'slaughterhouse-korlex',
	--module_limitations = 'auog',
	subgroup = 'py-alienlife-korlex',
	order = 'b',
    mats =
	{
		--bone
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
					{name='bones', amount ='+3'},
				},
                crafting_speed = 15,
                tech = 'hardened-bone',
                name = 'Extract Korlex bones-2',
                icon = "__pyalienlifegraphics__/graphics/icons/mip/bones-01.png",
                icon_size = 64,
		},
		--bone korlex rendering
		{
			ingredients =
				{
					{name='caged-korlex',amount='R'},
					{name='bone-caged-korlex',amount=1},
				},
			results =
				{
					{name='brain', amount ='R'},
					{name='bones', amount ='+5'},
				},
			crafting_speed = 15,
			tech = 'hardened-bone',
			name = 'Extract bones from Improved Korlex-2',
			icon = "__pyalienlifegraphics__/graphics/icons/bone-caged-korlex.png",
			icon_size = 64,
		},
	}
}

------------------MUKMOUX------------------

fun.autorecipes {
    name = 'rendering-bone-mukmoux-2',
	category = 'slaughterhouse-mukmoux',
	--module_limitations = 'auog',
	subgroup = 'py-alienlife-mukmoux',
	order = 'b',
    mats =
	{
		--bone
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
					{name='bones', amount ='+3'},
				},
                crafting_speed = 15,
                tech = 'hardened-bone',
                name = 'Extract Mukmoux bones-2',
                icon = "__pyalienlifegraphics__/graphics/icons/mip/bones-01.png",
                icon_size = 64,
		},
		--bone mukmoux rendering
		{
			ingredients =
				{
					{name='caged-mukmoux',amount='R'},
					{name='bonecaged-mukmoux',amount=1},
				},
			results =
				{
					{name='brain', amount ='R'},
					{name='bones', amount ='+5'},
				},
			crafting_speed = 15,
			tech = 'hardened-bone',
			name = 'Extract bones from Improved Mukmouxs-2',
			icon = "__pyalienlifegraphics__/graphics/icons/bone-caged-mukmoux.png",
			icon_size = 64,
		},
	}
}

------------------PHADAI------------------

fun.autorecipes {
    name = 'rendering-bone-phadai-2',
	category = 'slaughterhouse-phadai',
	--module_limitations = 'auog',
	subgroup = 'py-alienlife-phadai',
	order = 'b',
    mats =
	{
		--bone
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
					{name='bones', amount ='+3'},
				},
                crafting_speed = 15,
                tech = 'hardened-bone',
                name = 'Extract phadai bones-2',
                icon = "__pyalienlifegraphics__/graphics/icons/mip/bones-01.png",
                icon_size = 64,
		},
		--bone phadai rendering
		{
			ingredients =
				{
					{name='caged-phadai',amount='R'},
					{name='bone-caged-phadai',amount=1},
				},
			results =
				{
					{name='brain', amount ='R'},
					{name='bones', amount ='+5'},
				},
			crafting_speed = 15,
			tech = 'hardened-bone',
			name = 'Extract bones from Improved phadais-2',
			icon = "__pyalienlifegraphics__/graphics/icons/bone-caged-phadai.png",
			icon_size = 64,
		},
	}
}

------------------PHAGNOT------------------

fun.autorecipes {
    name = 'rendering-bone-phagnot-2',
	category = 'slaughterhouse-phagnot',
	--module_limitations = 'auog',
	subgroup = 'py-alienlife-phagnot',
	order = 'b',
    mats =
	{
		--bone
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
					{name='bones', amount ='+4'},
				},
                crafting_speed = 15,
                tech = 'hardened-bone',
                name = 'Extract phagnot bones-2',
                icon = "__pyalienlifegraphics__/graphics/icons/mip/bones-01.png",
                icon_size = 64,
		},
		--bone phagnot rendering
		{
			ingredients =
				{
					{name='caged-phagnot',amount='R'},
					{name='bone-caged-phagnot',amount=1},
				},
			results =
				{
					{name='brain', amount ='R'},
					{name='bones', amount ='+8'},
				},
			crafting_speed = 15,
			tech = 'hardened-bone',
			name = 'Extract bones from Improved phagnots-2',
			icon = "__pyalienlifegraphics__/graphics/icons/bone-caged-phagnot.png",
			icon_size = 64,
		},
	}
}

------------------SCRONDRIX------------------

fun.autorecipes {
    name = 'rendering-bone-scrondrix-2',
	category = 'slaughterhouse-scrondrix',
	--module_limitations = 'auog',
	subgroup = 'py-alienlife-scrondrix',
	order = 'b',
    mats =
	{
		--bone
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
					{name='bones', amount ='+3'},
				},
                crafting_speed = 15,
                tech = 'hardened-bone',
                name = 'Extract scrondrix bones-2',
                icon = "__pyalienlifegraphics__/graphics/icons/mip/bones-01.png",
                icon_size = 64,
		},
		--bone scrondrix rendering
		{
			ingredients =
				{
					{name='caged-scrondrix',amount='R'},
					{name='bone-caged-scrondrix',amount=1},
				},
			results =
				{
					{name='brain', amount ='R'},
					{name='bones', amount ='+5'},
				},
			crafting_speed = 15,
			tech = 'hardened-bone',
			name = 'Extract bones from Improved scrondrixs-2',
			icon = "__pyalienlifegraphics__/graphics/icons/bone-caged-scrondrix.png",
			icon_size = 64,
		},
	}
}

------------------SIMIKS------------------

fun.autorecipes {
    name = 'rendering-bone-simik-2',
	category = 'slaughterhouse-simik',
	--module_limitations = 'auog',
	subgroup = 'py-alienlife-simik',
	order = 'b',
    mats =
	{
		--bone
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
					{name='bones', amount ='+3'},
				},
                crafting_speed = 15,
                tech = 'hardened-bone',
                name = 'Extract simik bones-2',
                icon = "__pyalienlifegraphics__/graphics/icons/mip/bones-01.png",
                icon_size = 64,
		},
		--bone simik rendering
		{
			ingredients =
				{
					{name='caged-simik',amount='R'},
					{name='bone-caged-simik',amount=1},
				},
			results =
				{
					{name='brain', amount ='R'},
					{name='bones', amount ='+5'},
				},
			crafting_speed = 15,
			tech = 'hardened-bone',
			name = 'Extract bones from Improved simik-2',
			icon = "__pyalienlifegraphics2__/graphics/icons/bone-caged-simik.png",
			icon_size = 64,
		},
	}
}

------------------TRITS------------------

fun.autorecipes {
    name = 'rendering-bone-trits-2',
	category = 'slaughterhouse-trits',
	--module_limitations = 'auog',
	subgroup = 'py-alienlife-trits',
	order = 'b',
    mats =
	{
		--bone
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
					{name='bones', amount ='+3'},
				},
                crafting_speed = 15,
                tech = 'hardened-bone',
                name = 'Extract Trits bones-2',
                icon = "__pyalienlifegraphics__/graphics/icons/mip/bones-01.png",
                icon_size = 64,
		},
		--bone trits rendering
		{
			ingredients =
				{
					{name='trits',amount='R'},
					{name='bone-trits',amount=1},
				},
			results =
				{
					{name='brain', amount ='R'},
					{name='bones', amount ='+5'},
				},
			crafting_speed = 15,
			tech = 'hardened-bone',
			name = 'Extract bones from Improved Trits-2',
			icon = "__pyalienlifegraphics__/graphics/icons/bone-trits.png",
			icon_size = 64,
		},
	}
}

------------------ULRIC------------------

fun.autorecipes {
    name = 'rendering-bone-ulric-2',
	category = 'slaughterhouse-ulric',
	--module_limitations = 'auog',
	subgroup = 'py-alienlife-ulric',
	order = 'b',
    mats =
	{
		--bone
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
					{name='bones', amount ='+3'},
				},
                crafting_speed = 15,
                tech = 'hardened-bone',
                name = 'Extract Ulric bones-2',
                icon = "__pyalienlifegraphics__/graphics/icons/mip/bones-01.png",
                icon_size = 64,
		},
		--bone ulric rendering
		{
			ingredients =
				{
					{name='caged-ulric',amount='R'},
					{name='bone-caged-ulric',amount=1},
				},
			results =
				{
					{name='brain', amount ='R'},
					{name='bones', amount ='+5'},
				},
			crafting_speed = 15,
			tech = 'hardened-bone',
			name = 'Extract bones from Improved Ulrics-2',
			icon = "__pyalienlifegraphics__/graphics/icons/bone-caged-ulric.png",
			icon_size = 64,
		},
	}
}

------------------XENOS------------------

fun.autorecipes {
    name = 'rendering-bone-xeno-2',
	category = 'slaughterhouse-xeno',
	--module_limitations = 'auog',
	subgroup = 'py-alienlife-xeno',
	order = 'b',
    mats =
	{
		--bone
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
					{name='bones', amount ='+3'},
				},
                crafting_speed = 15,
                tech = 'hardened-bone',
                name = 'Extract Xeno bones-2',
                icon = "__pyalienlifegraphics__/graphics/icons/mip/bones-01.png",
                icon_size = 64,
		},
		--bone xeno rendering
		{
			ingredients =
				{
					{name='chitin-xeno',amount='R'},
					{name='caged-xeno',amount='R'},
					{name='bone-xeno',amount=1},
					{name='cage', amount ='R'},
				},
			results =
				{
					{name='brain', amount ='R'},
					{name='bones', amount ='+4'},
				},
			crafting_speed = 15,
			tech = 'hardened-bone',
			name = 'Extract bones from Improved xenos-2',
			icon = "__pyalienlifegraphics__/graphics/icons/bone-xeno.png",
			icon_size = 64,
		},
	}
}
