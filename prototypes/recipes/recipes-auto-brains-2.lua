local FUN = require("__pycoalprocessing__/prototypes/functions/functions")


------------------ARTHURIANS------------------

FUN.autorecipes {
    name = 'rendering-brains-arthurians-2',
	category = 'slaughterhouse-arthurian',
	--module_limitations = 'arthurian',
	subgroup = 'py-alienlife-arthurian',
	order = 'b',
    mats =
	{
		--brain
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
                    {name='brain', add_amount = 2},
                    {name='cage', amount =1},
				},
			crafting_speed = 15,
			tech = 'metamide5',
			name = 'Extract arthurian brains-2',
			icon = "__pyalienlifegraphics__/graphics/icons/mip/brain-04.png",
			icon_size = 64,
		},
		--brain arthurian rendering
		{
			ingredients =
				{
					{name='caged-arthurian',remove_item = true},
					{name='brain-caged-arthurian', amount=1},
				},
			results =
				{
                    {name='brain', add_amount = 2},
				},
			crafting_speed = 15,
			tech = 'metamide5',
			name = 'Extract brains from Improved arthurians-2',
			icon = "__pyalienlifegraphics__/graphics/icons/brain-caged-arthurian.png",
			icon_size = 64,
		},
	}
}

------------------AUOGS------------------

FUN.autorecipes {
    name = 'rendering-brains-auog-2',
	category = 'slaughterhouse-auog',
	--module_limitations = 'auog',
	subgroup = 'py-alienlife-auog',
	order = 'b',
    mats =
	{

		--brain
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
                    {name='brain', add_amount = 2},
                    {name='cage', amount =1},
				},
			crafting_speed = 15,
			tech = 'metamide5',
			name = 'Extract auog brains-2',
			icon = "__pyalienlifegraphics__/graphics/icons/mip/brain-04.png",
			icon_size = 64,
		},
		--brain auog rendering
		{
			ingredients =
				{
					{name='caged-auog',remove_item = true},
					{name='brain-caged-auog', amount=1},
				},
			results =
				{
                    {name='brain', add_amount = 2},
				},
			crafting_speed = 15,
			tech = 'metamide5',
			name = 'Extract brains from Improved auogs-2',
			icon = "__pyalienlifegraphics__/graphics/icons/brain-caged-auog.png",
			icon_size = 64,
		},
	}
}

------------------COTTONGUT------------------

FUN.autorecipes {
    name = 'rendering-brains-cottongut-2',
	category = 'slaughterhouse-cottongut',
	--module_limitations = 'cottongut',
	subgroup = 'py-alienlife-cottongut',
	order = 'b',
    mats =
	{

		--brain
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
                    {name='brain', add_amount = 2},
				},
			crafting_speed = 15,
			tech = 'metamide5',
			name = 'Extract cottongut brains-2',
			icon = "__pyalienlifegraphics__/graphics/icons/mip/brain-04.png",
			icon_size = 64,
		},
		--brain cottongut rendering
		{
			ingredients =
				{
					{name='cottongut',remove_item = true},
					{name='brain-cottongut', amount=5},
				},
			results =
				{
                    {name='brain', add_amount = 2},
				},
			crafting_speed = 15,
			tech = 'metamide5',
			name = 'Extract brains from Improved cottonguts-2',
			icon = "__pyalienlifegraphics__/graphics/icons/brain-cottongut.png",
			icon_size = 64,
		},
	}
}

------------------DINGRITS------------------

FUN.autorecipes {
    name = 'rendering-brains-dingrits-2',
	category = 'slaughterhouse-dingrits',
	--module_limitations = 'dingrits',
	subgroup = 'py-alienlife-dingrits',
	order = 'b',
    mats =
	{
		--brain
		{
			ingredients =
				{
					{name='caged-dingrits', amount=1},
				},
			results =
				{
					{name='bones', remove_item = true},
					{name='meat', remove_item = true},
					{name='guts', remove_item = true},
					{name='pelt', remove_item = true},
					{name='dingrit-spike', remove_item = true},
					{name='blood', remove_item = true},
					{name='brain', remove_item = true},
                    {name='brain', add_amount = 2},
                    {name='cage', amount =1},
				},
			crafting_speed = 15,
			tech = 'metamide5',
			name = 'Extract dingrits brains-2',
			icon = "__pyalienlifegraphics__/graphics/icons/mip/brain-04.png",
			icon_size = 64,
		},
		--brain dingrits rendering
		{
			ingredients =
				{
					{name='caged-dingrits',remove_item = true},
					{name='brain-caged-dingrits', amount=1},
				},
			results =
				{
                    {name='brain', add_amount = 2},
				},
			crafting_speed = 15,
			tech = 'metamide5',
			name = 'Extract brains from Improved dingrits-2',
			icon = "__pyalienlifegraphics__/graphics/icons/brain-caged-dingrits.png",
			icon_size = 64,
		},
	}
}

------------------KMAUTS------------------

FUN.autorecipes {
    name = 'rendering-brains-kmauts-2',
	category = 'slaughterhouse-kmauts',
	--module_limitations = 'kmauts',
	subgroup = 'py-alienlife-kmauts',
	order = 'b',
    mats =
	{
		--brain
		{
			ingredients =
				{
					{name='caged-kmauts', amount=1},
				},
			results =
				{
					{name='meat', remove_item = true},
                    {name='guts', remove_item = true},
                    {name='mukmoux-fat', remove_item = true},
					{name='tendon', remove_item = true},
					{name='arthropod-blood', remove_item = true},
					{name='brain', remove_item = true},
                    {name='brain', add_amount = 2},
                    {name='cage', amount =1},
				},
			crafting_speed = 15,
			tech = 'metamide5',
			name = 'Extract kmauts brains-2',
			icon = "__pyalienlifegraphics__/graphics/icons/mip/brain-04.png",
			icon_size = 64,
		},
		--brain kmauts rendering
		{
			ingredients =
				{
					{name='caged-kmauts',remove_item = true},
					{name='brain-caged-kmauts', amount=1},
				},
			results =
				{
                    {name='brain', add_amount = 2},
				},
			crafting_speed = 15,
			tech = 'metamide5',
			name = 'Extract brains from Improved kmauts-2',
			icon = "__pyalienlifegraphics__/graphics/icons/brain-caged-kmauts.png",
			icon_size = 64,
		},
	}
}

------------------KORLEX------------------

FUN.autorecipes {
    name = 'rendering-brains-korlex-2',
	category = 'slaughterhouse-korlex',
	--module_limitations = 'korlex',
	subgroup = 'py-alienlife-korlex',
	order = 'b',
    mats =
	{
		--brain
		{
			ingredients =
				{
					{name='caged-korlex', amount=1},
				},
			results =
				{
					{name='meat', remove_item = true},
                    {name='guts', remove_item = true},
                    {name='mukmoux-fat', remove_item = true},
					{name='tendon', remove_item = true},
					{name='arthropod-blood', remove_item = true},
					{name='brain', remove_item = true},
                    {name='brain', add_amount = 2},
                    {name='cage', amount =1},
				},
			crafting_speed = 15,
			tech = 'metamide5',
			name = 'Extract Korlex brain-2',
			icon = "__pyalienlifegraphics__/graphics/icons/mip/brain-04.png",
			icon_size = 64,
		},
		--brain korlex rendering
		{
			ingredients =
				{
					{name='caged-korlex',remove_item = true},
					{name='brain-caged-korlex', amount=1},
				},
			results =
				{
                    {name='brain', add_amount = 2},
				},
			crafting_speed = 15,
			tech = 'metamide5',
			name = 'Extract brains from Improved Korlex-2',
			icon = "__pyalienlifegraphics__/graphics/icons/brain-caged-korlex.png",
			icon_size = 64,
		},
	}
}

------------------MUKMOUX------------------

FUN.autorecipes {
    name = 'rendering-brain-mukmoux-2',
	category = 'slaughterhouse-mukmoux',
	--module_limitations = 'mukmoux',
	subgroup = 'py-alienlife-mukmoux',
	order = 'b',
    mats =
	{
		--brain
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
                    {name='brain', add_amount = 2},
                    {name='cage', amount =1},
				},
			crafting_speed = 15,
			tech = 'metamide5',
			name = 'Extract Mukmoux brains-2',
			icon = "__pyalienlifegraphics__/graphics/icons/mip/brain-04.png",
			icon_size = 64,
		},
		--brain mukmoux rendering
		{
			ingredients =
				{
					{name='caged-mukmoux',remove_item = true},
					{name='brain-caged-mukmoux', amount=1},
				},
			results =
				{
					{name='mukmoux-fat', remove_item = true},
                    {name='brain', add_amount = 2},
				},
			crafting_speed = 15,
			tech = 'metamide5',
			name = 'Extract brains from Improved Mukmouxs-2',
			icon = "__pyalienlifegraphics__/graphics/icons/brain-caged-mukmoux.png",
			icon_size = 64,
		},
	}
}

------------------PHADAI------------------

FUN.autorecipes {
    name = 'rendering-phadai-brain-2',
	category = 'slaughterhouse-phadai',
	--module_limitations = 'phadai',
	subgroup = 'py-alienlife-phadai',
	order = 'b',
    mats =
	{
		--brain
		{
			ingredients =
				{
					{name='caged-phadai', amount=1},
				},
			results =
				{
					{name='bones', remove_item = true},
					{name='skin', remove_item = true},
					{name='mukmoux-fat', remove_item = true},
					{name='meat', remove_item = true},
					{name='guts', remove_item = true},
					{name='pelt', remove_item = true},
					{name='carapace', remove_item = true},
					{name='blood', remove_item = true},
					{name='brain', remove_item = true},
                    {name='brain', add_amount = 2},
                    {name='cage', amount =1},
				},
			crafting_speed = 15,
			tech = 'metamide5',
			name = 'Extract phadai brains-2',
			icon = "__pyalienlifegraphics__/graphics/icons/mip/brain-04.png",
			icon_size = 64,
		},
		--brain phadai rendering
		{
			ingredients =
				{
					{name='caged-phadai',remove_item = true},
					{name='brain-caged-phadai', amount=1},
				},
			results =
				{
					{name='carapace', remove_item = true},
                    {name='brain', add_amount = 2},
				},
			crafting_speed = 15,
			tech = 'metamide5',
			name = 'Extract brains from Improved phadais-2',
			icon = "__pyalienlifegraphics__/graphics/icons/brain-caged-phadai.png",
			icon_size = 64,
		},
	}
}

------------------PHAGNOT------------------

FUN.autorecipes {
    name = 'rendering-brains-phagnot-2',
	category = 'slaughterhouse-phagnot',
	--module_limitations = 'phagnot',
	subgroup = 'py-alienlife-phagnot',
	order = 'b',
    mats =
	{
		--brain
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
					{name='gas-bladder', remove_item = true},
					{name='guts', remove_item = true},
					{name='blood', remove_item = true},
					{name='brain', remove_item = true},
                    {name='brain', add_amount = 2},
                    {name='cage', amount =1},
				},
			crafting_speed = 15,
			tech = 'metamide5',
			name = 'Extract phagnot brains-2',
			icon = "__pyalienlifegraphics__/graphics/icons/mip/brain-04.png",
			icon_size = 64,
		},
		--brain phagnot rendering
		{
			ingredients =
				{
					{name='caged-phagnot',remove_item = true},
					{name='brain-caged-phagnot', amount=1},
				},
			results =
				{
                    {name='brain', add_amount = 2},
				},
			crafting_speed = 15,
			tech = 'metamide5',
			name = 'Extract brains from Improved phagnots-2',
			icon = "__pyalienlifegraphics__/graphics/icons/brain-caged-phagnot.png",
			icon_size = 64,
		},
	}
}


------------------SCRONDRIX------------------

FUN.autorecipes {
    name = 'rendering-brains-scrondrix-2',
	category = 'slaughterhouse-scrondrix',
	--module_limitations = 'scrondrix',
	subgroup = 'py-alienlife-scrondrix',
	order = 'b',
    mats =
	{
		--brain
		{
			ingredients =
				{
					{name='caged-scrondrix', amount=1},
				},
			results =
				{
                    {name='meat', remove_item = true},
					{name='bones', remove_item = true},
					{name='pineal-gland', remove_item = true},
					{name='skin', remove_item = true},
					{name='mukmoux-fat', remove_item = true},
					{name='guts', remove_item = true},
					{name='blood', remove_item = true},
					{name='brain', remove_item = true},
                    {name='brain', add_amount = 2},
                    {name='cage', amount =1},
				},
			crafting_speed = 15,
			tech = 'metamide5',
			name = 'Extract scrondrix brains-2',
			icon = "__pyalienlifegraphics__/graphics/icons/mip/brain-04.png",
			icon_size = 64,
		},
		--brain scrondrix rendering
		{
			ingredients =
				{
					{name='caged-scrondrix',remove_item = true},
					{name='brain-caged-scrondrix', amount=1},
				},
			results =
				{
                    {name='brain', add_amount = 2},
				},
			crafting_speed = 15,
			tech = 'metamide5',
			name = 'Extract brains from Improved scrondrixs-2',
			icon = "__pyalienlifegraphics__/graphics/icons/brain-caged-scrondrix.png",
			icon_size = 64,
		},
	}
}

------------------TRITS------------------

FUN.autorecipes {
    name = 'rendering-brain-trits-2',
	category = 'slaughterhouse-trits',
	--module_limitations = 'trits',
	subgroup = 'py-alienlife-trits',
	order = 'b',
    mats =
	{
		--brain
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
					{name='photophore', remove_item = true},
					{name='guts', remove_item = true},
					{name='blood', remove_item = true},
					{name='brain', remove_item = true},
                    {name='brain', add_amount = 2},
				},
			crafting_speed = 15,
			tech = 'metamide5',
			name = 'Extract Trits brains-2',
			icon = "__pyalienlifegraphics__/graphics/icons/mip/brain-04.png",
			icon_size = 64,
		},
		--brain trits rendering
		{
			ingredients =
				{
					{name='trits',remove_item = true},
					{name='brain-trits', amount=1},
				},
			results =
				{
					{name='mukmoux-fat', remove_item = true},
                    {name='brain', add_amount = 2},
				},
			crafting_speed = 15,
			tech = 'metamide5',
			name = 'Extract brains from Improved Trits-2',
			icon = "__pyalienlifegraphics__/graphics/icons/brain-trits.png",
			icon_size = 64,
		},
	}
}

------------------ULRIC------------------

FUN.autorecipes {
    name = 'rendering-brain-ulric-2',
	category = 'slaughterhouse-ulric',
	--module_limitations = 'ulric',
	subgroup = 'py-alienlife-ulric',
	order = 'b',
    mats =
	{
		--brain
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
                    {name='brain', add_amount = 2},
                    {name='cage', amount =1},
				},
			crafting_speed = 15,
			tech = 'metamide5',
			name = 'Extract Ulric brains-2',
			icon = "__pyalienlifegraphics__/graphics/icons/mip/brain-04.png",
			icon_size = 64,
		},
		--brain ulric rendering
		{
			ingredients =
				{
					{name='caged-ulric',remove_item = true},
					{name='brain-caged-ulric', amount=1},
				},
			results =
				{
                    {name='brain', add_amount = 2},
				},
			crafting_speed = 15,
			tech = 'metamide5',
			name = 'Extract brains from Improved Ulrics-2',
			icon = "__pyalienlifegraphics__/graphics/icons/brain-caged-ulric.png",
			icon_size = 64,
		},
	}
}

------------------VONIX------------------

FUN.autorecipes {
    name = 'rendering-brain-vonix-2',
	category = 'slaughterhouse-vonix',
	--module_limitations = 'vonix',
	subgroup = 'py-alienlife-vonix',
	order = 'b',
    mats =
	{
		--brain
		{
			ingredients =
				{
					{name='vonix', amount=1},
				},
			results =
				{
					{name='meat', remove_item = true},
					{name='venon-gland', remove_item = true},
					{name='skin', remove_item = true},
					{name='mukmoux-fat', remove_item = true},
					{name='guts', remove_item = true},
					{name='arthropod-blood', remove_item = true},
					{name='brain', remove_item = true},
                    {name='brain', add_amount = 2},
				},
			crafting_speed = 15,
			tech = 'metamide5',
			name = 'Extract Vonix brain-2',
			icon = "__pyalienlifegraphics__/graphics/icons/mip/brain-04.png",
			icon_size = 64,
		},
		--brain vonix rendering
		{
			ingredients =
				{
					{name='vonix',remove_item = true},
					{name='brain-vonix', amount=1},
				},
			results =
				{
					{name='mukmoux-fat', remove_item = true},
                    {name='brain', add_amount = 2},

				},
			crafting_speed = 15,
			tech = 'metamide5',
			name = 'Extract brains from Improved Vonixes-2',
			icon = "__pyalienlifegraphics__/graphics/icons/brain-vonix.png",
			icon_size = 64,
		},
	}
}

------------------VRAUKS------------------

FUN.autorecipes {
    name = 'rendering-brain-vrauks-2',
	category = 'slaughterhouse-vrauks',
	--module_limitations = 'vrauks',
	subgroup = 'py-alienlife-vrauks',
	order = 'b',
    mats =
	{
		--brain
		{
			ingredients =
				{
					{name='caged-vrauks', amount=1},
				},
			results =
				{
					{name='meat', remove_item = true},
					{name='chitin', remove_item = true},
					{name='guts', remove_item = true},
					{name='formic-acid', remove_item = true},
					{name='brain', remove_item = true},
                    {name='brain', add_amount = 2},
                    {name='cage', amount =1},
				},
			crafting_speed = 15,
			tech = 'metamide5',
			name = 'Extract Vrauks brains-2',
			icon = "__pyalienlifegraphics__/graphics/icons/mip/brain-04.png",
			icon_size = 64,
		},
		--brain vrauks rendering
		{
			ingredients =
				{
					{name='caged-vrauks',remove_item = true},
					{name='brain-caged-vrauks', amount=1},
				},
			results =
				{
                    {name='brain', add_amount = 2},
				},
			crafting_speed = 15,
			tech = 'metamide5',
			name = 'Extract brains from Improved Vrauks-2',
			icon = "__pyalienlifegraphics__/graphics/icons/brain-caged-vrauks.png",
			icon_size = 64,
		},
	}
}

------------------RENDERING XENOS------------------

FUN.autorecipes {
    name = 'rendering-brains-xenos-2',
	category = 'slaughterhouse-xeno',
	--module_limitations = 'xeno',
	subgroup = 'py-alienlife-xeno',
	order = 'b',
    mats =
	{
		--brain
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
                    {name='brain', add_amount = 2},
                    {name='cage', amount =1},
				},
			crafting_speed = 15,
			tech = 'metamide5',
			name = 'Extract Xeno brains-2',
			icon = "__pyalienlifegraphics__/graphics/icons/mip/brain-04.png",
			icon_size = 64,
		},

		--brain xeno rendering
		{
			ingredients =
				{
					{name='caged-xeno',remove_item = true},
					{name='brain-xeno', amount=1},
				},
			results =
				{
                    {name='sulfuric-acid', remove_item = true},
                    {name='bones', remove_item = true},
					{name='chitin', remove_item = true},
					{name='meat', remove_item = true},
					{name='cage', remove_item = true},
                    {name='brain', remove_item = true},
                    {name='brain', add_amount = 2},
				},
			crafting_speed = 15,
			tech = 'metamide5',
			name = 'Extract brains from Improved Xenos-2',
			icon = "__pyalienlifegraphics__/graphics/icons/brain-xeno.png",
			icon_size = 64,
		},
	}
}

------------------ZIPIR------------------

FUN.autorecipes {
    name = 'rendering-brain-zipir-2',
	category = 'slaughterhouse-zipir',
	--module_limitations = 'zipir',
	subgroup = 'py-alienlife-zipir',
	order = 'b',
    mats =
	{
		--brain
		{
			ingredients =
				{
					{name = 'zipir1', amount=1},
				},
			results =
				{
					{name='meat', remove_item = true},
					{name='skin', remove_item = true},
					{name='mukmoux-fat', remove_item = true},
					{name='guts', remove_item = true},
					{name='arthropod-blood', remove_item = true},
					{name='brain', remove_item = true},
                    {name='brain', add_amount = 2},
				},
			crafting_speed = 15,
			tech = 'metamide5',
			name = 'Extract zipir brain-2',
			icon = "__pyalienlifegraphics__/graphics/icons/mip/brain-04.png",
			icon_size = 64,
		},
		--brain zipir rendering
		{
			ingredients =
				{
					{name = 'zipir1',remove_item = true},
					{name='brain-zipir', amount=1},
				},
			results =
				{
					{name='mukmoux-fat', remove_item = true},
                    {name='brain', add_amount = 2},
				},
			crafting_speed = 15,
			tech = 'metamide5',
			name = 'Extract brains from Improved Zipir-2',
			icon = "__pyalienlifegraphics__/graphics/icons/brain-zipir.png",
			icon_size = 64,
		},
	}
}
