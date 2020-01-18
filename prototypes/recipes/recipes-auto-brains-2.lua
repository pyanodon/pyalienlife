local fun = require("prototypes/functions/functions")


------------------ARTHURIANS------------------

fun.autorecipes {
    name = 'rendering-brains-arthurians-2',
	category = 'slaughterhouse',
	--module_limitations = 'arthurian',
	subgroup = 'py-alienlife-arthurian',
	order = 'b',
    mats =
	{
		--brain
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
                    {name='brain', amount =5},
                    {name='cage', amount =1},
				},
			crafting_speed = 15,
			tech = 'metamide5',
			name = 'Extract arthurian brains-2',
			icon = "__pyalienlife__/graphics/icons/mip/brain-04.png",
			icon_size = 64,
		},	
		--brain arthurian rendering
		{
			ingredients =
				{
					{name='cagedarthurian',amount='R'},
					{name='braincagedarthurian',amount=1},
				},
			results =
				{
                    {name='brain', amount =6},
				},
			crafting_speed = 15,
			tech = 'metamide5',
			name = 'Extract brains from Improved arthurians-2',
			icon = "__pyalienlife__/graphics/icons/brain-caged-arthurian.png",
			icon_size = 64,
		},
	}
}

------------------AUOGS------------------

fun.autorecipes {
    name = 'rendering-brains-auog-2',
	category = 'slaughterhouse',
	--module_limitations = 'auog',
	subgroup = 'py-alienlife-auog',
	order = 'b',
    mats =
	{

		--brain
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
                    {name='brain', amount =4},
                    {name='cage', amount =1},
				},
			crafting_speed = 15,
			tech = 'metamide5',
			name = 'Extract auog brains-2',
			icon = "__pyalienlife__/graphics/icons/mip/brain-04.png",
			icon_size = 64,
		},	
		--brain auog rendering
		{
			ingredients =
				{
					{name='cagedauog',amount='R'},
					{name='braincagedauog',amount=1},
				},
			results =
				{
					{name='brain', amount =5},
				},
			crafting_speed = 15,
			tech = 'metamide5',
			name = 'Extract brains from Improved auogs-2',
			icon = "__pyalienlife__/graphics/icons/brain-caged-auog.png",
			icon_size = 64,
		},
	}
}

------------------DINGRITS------------------

fun.autorecipes {
    name = 'rendering-brains-dingrits-2',
	category = 'slaughterhouse',
	--module_limitations = 'dingrits',
	subgroup = 'py-alienlife-dingrits',
	order = 'b',
    mats =
	{
		--brain
		{
			ingredients =
				{
					{name='cageddingrits',amount=1},
				},
			results =
				{
					{name='bones', amount ='R'},
					{name='meat', amount ='R'},
					{name='guts', amount ='R'},
					{name='pelt', amount ='R'},
					{name='dingritspike', amount ='R'},
					{name='blood', amount ='R'},
					{name='brain', amount ='R'},
                    {name='brain', amount =4},
                    {name='cage', amount =1},
				},
			crafting_speed = 15,
			tech = 'metamide5',
			name = 'Extract dingrits brains-2',
			icon = "__pyalienlife__/graphics/icons/mip/brain-04.png",
			icon_size = 64,
		},	
		--brain dingrits rendering
		{
			ingredients =
				{
					{name='cageddingrits',amount='R'},
					{name='braincageddingrits',amount=1},
				},
			results =
				{
                    {name='brain', amount =5},
				},
			crafting_speed = 15,
			tech = 'metamide5',
			name = 'Extract brains from Improved dingrits-2',
			icon = "__pyalienlife__/graphics/icons/brain-caged-dingrits.png",
			icon_size = 64,
		},
	}
}

------------------KMAUTS------------------

fun.autorecipes {
    name = 'rendering-brains-kmauts-2',
	category = 'slaughterhouse',
	--module_limitations = 'kmauts',
	subgroup = 'py-alienlife-kmauts',
	order = 'b',
    mats =
	{
		--brain
		{
			ingredients =
				{
					{name='cagedkmauts',amount=1},
				},
			results =
				{
					{name='meat', amount ='R'},
                    {name='guts', amount ='R'},
                    {name='fat', amount ='R'},
					{name='tendon', amount ='R'},
					{name='arthropodblood', amount ='R'},
					{name='brain', amount ='R'},
                    {name='brain', amount =4},
                    {name='cage', amount =1},
				},
			crafting_speed = 15,
			tech = 'metamide5',
			name = 'Extract kmauts brains-2',
			icon = "__pyalienlife__/graphics/icons/mip/brain-04.png",
			icon_size = 64,
		},	
		--brain kmauts rendering
		{
			ingredients =
				{
					{name='cagedkmauts',amount='R'},
					{name='braincagedkmauts',amount=1},
				},
			results =
				{
                    {name='brain', amount =5},
				},
			crafting_speed = 15,
			tech = 'metamide5',
			name = 'Extract brains from Improved kmauts-2',
			icon = "__pyalienlife__/graphics/icons/brain-caged-kmauts.png",
			icon_size = 64,
		},
	}
}

------------------MUKMOUX------------------

fun.autorecipes {
    name = 'rendering-brain-mukmoux-2',
	category = 'slaughterhouse',
	--module_limitations = 'mukmoux',
	subgroup = 'py-alienlife-mukmoux',
	order = 'b',
    mats =
	{
		--brain
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
                    {name='brain', amount =4},
                    {name='cage', amount =1},
				},
			crafting_speed = 15,
			tech = 'metamide5',
			name = 'Extract Mukmoux brains-2',
			icon = "__pyalienlife__/graphics/icons/mip/brain-04.png",
			icon_size = 64,
		},	
		--brain mukmoux rendering
		{
			ingredients =
				{
					{name='cagedmukmoux',amount='R'},
					{name='braincagedmukmoux',amount=1},
				},
			results =
				{
					{name='fat', amount ='R'},
                    {name='brain', amount =5},
				},
			crafting_speed = 15,
			tech = 'metamide5',
			name = 'Extract brains from Improved Mukmouxs-2',
			icon = "__pyalienlife__/graphics/icons/brain-caged-mukmoux.png",
			icon_size = 64,
		},
	}
}

------------------PHADAI------------------

fun.autorecipes {
    name = 'rendering-phadai-brain-2',
	category = 'slaughterhouse',
	--module_limitations = 'phadai',
	subgroup = 'py-alienlife-phadai',
	order = 'b',
    mats =
	{
		--brain
		{
			ingredients =
				{
					{name='cagedphadai',amount=1},
				},
			results =
				{
					{name='bones', amount ='R'},
					{name='skin', amount ='R'},
					{name='fat', amount ='R'},
					{name='meat', amount ='R'},
					{name='guts', amount ='R'},
					{name='pelt', amount ='R'},
					{name='carapace', amount ='R'},
					{name='blood', amount ='R'},
					{name='brain', amount ='R'},
                    {name='brain', amount =4},
                    {name='cage', amount =1},
				},
			crafting_speed = 15,
			tech = 'metamide5',
			name = 'Extract phadai brains-2',
			icon = "__pyalienlife__/graphics/icons/mip/brain-04.png",
			icon_size = 64,
		},	
		--brain phadai rendering
		{
			ingredients =
				{
					{name='cagedphadai',amount='R'},
					{name='braincagedphadai',amount=1},
				},
			results =
				{
					{name='carapace', amount ='R'},
                    {name='brain', amount =5},
				},
			crafting_speed = 15,
			tech = 'metamide5',
			name = 'Extract brains from Improved phadais-2',
			icon = "__pyalienlife__/graphics/icons/brain-caged-phadai.png",
			icon_size = 64,
		},
	}
}

------------------PHAGNOT------------------

fun.autorecipes {
    name = 'rendering-brains-phagnot-2',
	category = 'slaughterhouse',
	--module_limitations = 'phagnot',
	subgroup = 'py-alienlife-phagnot',
	order = 'b',
    mats =
	{
		--brain
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
					{name='gasbladder', amount ='R'},
					{name='guts', amount ='R'},
					{name='blood', amount ='R'},
					{name='brain', amount ='R'},
                    {name='brain', amount =4},
                    {name='cage', amount =1},
				},
			crafting_speed = 15,
			tech = 'metamide5',
			name = 'Extract phagnot brains-2',
			icon = "__pyalienlife__/graphics/icons/mip/brain-04.png",
			icon_size = 64,
		},	
		--brain phagnot rendering
		{
			ingredients =
				{
					{name='cagedphagnot',amount='R'},
					{name='braincagedphagnot',amount=1},
				},
			results =
				{
                    {name='brain', amount =5},
				},
			crafting_speed = 15,
			tech = 'metamide5',
			name = 'Extract brains from Improved phagnots-2',
			icon = "__pyalienlife__/graphics/icons/brain-caged-phagnot.png",
			icon_size = 64,
		},
	}
}


------------------SCRONDRIX------------------

fun.autorecipes {
    name = 'rendering-brains-scrondrix-2',
	category = 'slaughterhouse',
	--module_limitations = 'scrondrix',
	subgroup = 'py-alienlife-scrondrix',
	order = 'b',
    mats =
	{
		--brain
		{
			ingredients =
				{
					{name='cagedscrondrix',amount=1},
				},
			results =
				{
                    {name='meat', amount ='R'},
					{name='bones', amount ='R'},
					{name='pinealgland', amount ='R'},
					{name='skin', amount ='R'},
					{name='fat', amount ='R'},
					{name='guts', amount ='R'},
					{name='blood', amount ='R'},
					{name='brain', amount ='R'},
                    {name='brain', amount =4},
                    {name='cage', amount =1},
				},
			crafting_speed = 15,
			tech = 'metamide5',
			name = 'Extract scrondrix brains-2',
			icon = "__pyalienlife__/graphics/icons/mip/brain-04.png",
			icon_size = 64,
		},
		--brain scrondrix rendering
		{
			ingredients =
				{
					{name='cagedscrondrix',amount='R'},
					{name='braincagedscrondrix',amount=1},
				},
			results =
				{
                    {name='brain', amount =5},
				},
			crafting_speed = 15,
			tech = 'metamide5',
			name = 'Extract brains from Improved scrondrixs-2',
			icon = "__pyalienlife__/graphics/icons/brain-caged-scrondrix.png",
			icon_size = 64,
		},
	}
}

------------------TRITS------------------

fun.autorecipes {
    name = 'rendering-brain-trits-2',
	category = 'slaughterhouse',
	--module_limitations = 'trits',
	subgroup = 'py-alienlife-trits',
	order = 'b',
    mats =
	{
		--brain
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
                    {name='brain', amount =4},
				},
			crafting_speed = 15,
			tech = 'metamide5',
			name = 'Extract Trits brains-2',
			icon = "__pyalienlife__/graphics/icons/mip/brain-04.png",
			icon_size = 64,
		},	
		--brain trits rendering
		{
			ingredients =
				{
					{name='trits',amount='R'},
					{name='braintrits',amount=1},
				},
			results =
				{
					{name='fat', amount ='R'},
                    {name='brain', amount =5},
				},
			crafting_speed = 15,
			tech = 'metamide5',
			name = 'Extract brains from Improved Trits-2',
			icon = "__pyalienlife__/graphics/icons/brain-trits.png",
			icon_size = 64,
		},
	}
}

------------------ULRIC------------------

fun.autorecipes {
    name = 'rendering-brain-ulric-2',
	category = 'slaughterhouse',
	--module_limitations = 'ulric',
	subgroup = 'py-alienlife-ulric',
	order = 'b',
    mats =
	{
		--brain
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
                    {name='brain', amount =4},
                    {name='cage', amount =1},
				},
			crafting_speed = 15,
			tech = 'metamide5',
			name = 'Extract Ulric brains-2',
			icon = "__pyalienlife__/graphics/icons/mip/brain-04.png",
			icon_size = 64,
		},	
		--brain ulric rendering
		{
			ingredients =
				{
					{name='cagedulric',amount='R'},
					{name='braincagedulric',amount=1},
				},
			results =
				{
                    {name='brain', amount =5},
				},
			crafting_speed = 15,
			tech = 'metamide5',
			name = 'Extract brains from Improved Ulrics-2',
			icon = "__pyalienlife__/graphics/icons/brain-caged-ulric.png",
			icon_size = 64,
		},
	}
}

------------------VONIX------------------

fun.autorecipes {
    name = 'rendering-brain-vonix-2',
	category = 'slaughterhouse',
	--module_limitations = 'vonix',
	subgroup = 'py-alienlife-vonix',
	order = 'b',
    mats =
	{
		--brain
		{
			ingredients =
				{
					{name='vonix',amount=1},
				},
			results =
				{
					{name='meat', amount ='R'},
					{name='venongland', amount ='R'},
					{name='skin', amount ='R'},
					{name='fat', amount ='R'},
					{name='guts', amount ='R'},
					{name='arthropodblood', amount ='R'},
					{name='brain', amount ='R'},
                    {name='brain', amount =4},
				},
			crafting_speed = 15,
			tech = 'metamide5',
			name = 'Extract Vonix brain-2',
			icon = "__pyalienlife__/graphics/icons/mip/brain-04.png",
			icon_size = 64,
		},
		--brain vonix rendering
		{
			ingredients =
				{
					{name='vonix',amount='R'},
					{name='brainvonix',amount=1},
				},
			results =
				{
					{name='fat', amount ='R'},
                    {name='brain', amount =5},

				},
			crafting_speed = 15,
			tech = 'metamide5',
			name = 'Extract brains from Improved Vonixes-2',
			icon = "__pyalienlife__/graphics/icons/brain-vonix.png",
			icon_size = 64,
		},
	}
}

------------------VRAUKS------------------

fun.autorecipes {
    name = 'rendering-brain-vrauks-2',
	category = 'slaughterhouse',
	--module_limitations = 'vrauks',
	subgroup = 'py-alienlife-vrauks',
	order = 'b',
    mats =
	{
		--brain
		{
			ingredients =
				{
					{name='cagedvrauks',amount=1},
				},
			results =
				{
					{name='meat', amount ='R'},
					{name='chitin', amount ='R'},
					{name='guts', amount ='R'},
					{name='arthropodblood', amount ='R'},
					{name='brain', amount ='R'},
                    {name='brain', amount =4},
                    {name='cage', amount =1},
				},
			crafting_speed = 15,
			tech = 'metamide5',
			name = 'Extract Vrauks brains-2',
			icon = "__pyalienlife__/graphics/icons/mip/brain-04.png",
			icon_size = 64,
		},	
		--brain vrauks rendering
		{
			ingredients =
				{
					{name='cagedvrauks',amount='R'},
					{name='braincagedvrauks',amount=1},
				},
			results =
				{
                    {name='brain', amount =5},
				},
			crafting_speed = 15,
			tech = 'metamide5',
			name = 'Extract brains from Improved Vrauks-2',
			icon = "__pyalienlife__/graphics/icons/brain-caged-vrauks.png",
			icon_size = 64,
		},
	}
}

------------------RENDERING XENOS------------------

fun.autorecipes {
    name = 'rendering-brains-xenos-2',
	category = 'slaughterhouse',
	--module_limitations = 'xeno',
	subgroup = 'py-alienlife-xeno',
	order = 'b',
    mats =
	{
		--brain
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
                    {name='brain', amount =4},
                    {name='cage', amount =1},
				},
			crafting_speed = 15,
			tech = 'metamide5',
			name = 'Extract Xeno brains-2',
			icon = "__pyalienlife__/graphics/icons/mip/brain-04.png",
			icon_size = 64,
		},	

		--brain xeno rendering
		{
			ingredients =
				{
					{name='cagedxeno',amount='R'},
					{name='brainxeno',amount=1},
				},
			results =
				{
                    {name='sulfuricacid', amount ='R'},
                    {name='bones', amount ='R'},
					{name='chitin', amount ='R'},
					{name='meat', amount ='R'},
					{name='cage', amount ='R'},
                    {name='brain', amount ='R'},
                    {name='brain', amount =5},
				},
			crafting_speed = 15,
			tech = 'metamide5',
			name = 'Extract brains from Improved Xenos-2',
			icon = "__pyalienlife__/graphics/icons/brain-xeno.png",
			icon_size = 64,
		},
	}
}

------------------ZIPIR------------------

fun.autorecipes {
    name = 'rendering-brain-zipir-2',
	category = 'slaughterhouse',
	--module_limitations = 'zipir',
	subgroup = 'py-alienlife-zipir',
	order = 'b',
    mats =
	{
		--brain
		{
			ingredients =
				{
					{name='zipir',amount=1},
				},
			results =
				{
					{name='meat', amount ='R'},
					{name='skin', amount ='R'},
					{name='fat', amount ='R'},
					{name='guts', amount ='R'},
					{name='arthropodblood', amount ='R'},
					{name='brain', amount ='R'},
                    {name='brain', amount =4},
                    {name='cage', amount =1},
				},
			crafting_speed = 15,
			tech = 'metamide5',
			name = 'Extract zipir brain-2',
			icon = "__pyalienlife__/graphics/icons/mip/brain-04.png",
			icon_size = 64,
		},
		--brain zipir rendering
		{
			ingredients =
				{
					{name='zipir',amount='R'},
					{name='brainzipir',amount=1},
				},
			results =
				{
					{name='fat', amount ='R'},
					{name='brain', amount =5},
				},
			crafting_speed = 15,
			tech = 'metamide5',
			name = 'Extract brains from Improved Zipir-2',
			icon = "__pyalienlife__/graphics/icons/brain-zipir.png",
			icon_size = 64,
		},
	}
}