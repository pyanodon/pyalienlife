local fun = require("prototypes/functions/functions")




------------------ARTHURIANS------------------

fun.autorecipes {
    name = 'rendering-brains-arthurians',
	category = 'slaughterhouse-arthurian',
	--module_limitations = 'arthurian',
	subgroup = 'py-alienlife-arthurian',
	order = 'b',
    mats =
	{
		{
			ingredients =
				{
					{name='cagedarthurian',amount=1},
				},
			results =
				{
					{name='bones', probability = 0.3,amount_min =1,amount_max =2},
					{name='meat', probability = 0.4,amount_min =1,amount_max =3},
					{name='skin', probability = 0.4,amount_min =1,amount_max =4},
					{name='fat', probability = 0.2,amount_min =1,amount_max =1},
					{name='guts', probability = 0.4,amount_min =1,amount_max =2},
					{name='blood', amount =20},
					{name='cage',amount=1},
					{name='brain', probability = 0.6,amount_min =1,amount_max =3},
				},
			crafting_speed = 30,
			tech = 'interactive-cognition',
			name = 'Full Render arthuriansb',
			icon = "__pyalienlifegraphics__/graphics/icons/rendering-arthurian.png",
			icon_size = 64,
		},
		--brain
		{
			ingredients =
				{
					--{name='cagedarthurian',amount=1},
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
					{name='brain', amount =3},
				},
			crafting_speed = 15,
			tech = 'interactive-cognition',
			name = 'Extract arthurian brainsb',
			icon = "__pyalienlifegraphics__/graphics/icons/mip/brain-04.png",
			icon_size = 64,
		},
	}
}

------------------AUOGS------------------

fun.autorecipes {
    name = 'rendering-brains-auog',
	category = 'slaughterhouse-auog',
	--module_limitations = 'auog',
	subgroup = 'py-alienlife-auog',
	order = 'b',
    mats =
	{
		{
			ingredients =
				{
					{name='cagedauog',amount=1},
				},
			results =
				{
					{name='bones', probability = 0.3,amount_min =1,amount_max =4},
					{name='meat', probability = 0.4,amount_min =2,amount_max =5},
					{name='skin', probability = 0.3,amount_min =1,amount_max =2},
					{name='fat', probability = 0.3,amount_min =1,amount_max =1},
					{name='guts', probability = 0.4,amount_min =1,amount_max =1},
					{name='blood', amount =50},
					{name='cage',amount=1},
					{name='brain', probability = 0.4,amount_min =1,amount_max =2},
				},
			crafting_speed = 30,
			tech = 'interactive-cognition',
			name = 'Full Render auogsb',
			icon = "__pyalienlifegraphics__/graphics/icons/rendering-auog.png",
			icon_size = 64,
		},
		--brain
		{
			ingredients =
				{
					--{name='cagedauog',amount=1},
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
					{name='brain', amount =2},
				},
			crafting_speed = 15,
			tech = 'interactive-cognition',
			name = 'Extract auog brainsb',
			icon = "__pyalienlifegraphics__/graphics/icons/mip/brain-04.png",
			icon_size = 64,
		},
	}
}

------------------DINGRITS------------------

fun.autorecipes {
    name = 'rendering-brains-dingrits',
	category = 'slaughterhouse-dingrits',
	--module_limitations = 'dingrits',
	subgroup = 'py-alienlife-dingrits',
	order = 'b',
    mats =
	{
		{
			ingredients =
				{
					{name='cageddingrits',amount=1},
				},
			results =
				{
					{name='bones', probability = 0.3,amount_min =1,amount_max =2},
					{name='meat', probability = 0.3,amount_min =1,amount_max =3},
                    {name='guts', probability = 0.3,amount_min =1,amount_max =3},
					{name='pelt', probability = 0.1,amount_min =1,amount_max =1},
					{name='dingritspike', probability = 0.1,amount_min =1,amount_max =1},
					{name='blood', amount =20},
					{name='cage',amount=1},
					{name='brain', probability = 0.3,amount_min =1,amount_max =2},
				},
			crafting_speed = 30,
			tech = 'interactive-cognition',
			name = 'Full Render dingritsb',
			icon = "__pyalienlifegraphics__/graphics/icons/rendering-dingrits.png",
			icon_size = 64,
		},
		--brain
		{
			ingredients =
				{
					--{name='cageddingrits',amount=1},
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
					{name='brain', amount =2},
				},
			crafting_speed = 15,
			tech = 'interactive-cognition',
			name = 'Extract dingrits brainsb',
			icon = "__pyalienlifegraphics__/graphics/icons/mip/brain-04.png",
			icon_size = 64,
		},
	}
}

------------------KMAUTS------------------

fun.autorecipes {
    name = 'rendering-brains-kmauts',
	category = 'slaughterhouse-kmauts',
	--module_limitations = 'kmauts',
	subgroup = 'py-alienlife-kmauts',
	order = 'b',
    mats =
	{
		{
			ingredients =
				{
					{name='cagedkmauts',amount=1},
				},
			results =
				{
					{name='meat', probability = 0.3,amount_min =1,amount_max =2},
                    {name='guts', probability = 0.3,amount_min =1,amount_max =2},
                    {name='fat', probability = 0.2,amount_min =1,amount_max =2},
					{name='tendon', probability = 0.3,amount_min =1,amount_max =1},
					{name='arthropodblood', amount =10},
					{name='cage',amount=1},
					{name='brain', probability = 0.3,amount_min =1,amount_max =2},
				},
			crafting_speed = 30,
			tech = 'interactive-cognition',
			name = 'Full Render kmautsb',
			icon = "__pyalienlifegraphics__/graphics/icons/rendering-kmauts.png",
			icon_size = 64,
		},
		--brain
		{
			ingredients =
				{
					--{name='cagedkmauts',amount=1},
				},
			results =
				{
					{name='meat', amount ='R'},
                    {name='guts', amount ='R'},
                    {name='fat', amount ='R'},
					{name='tendon', amount ='R'},
					{name='arthropodblood', amount ='R'},
					{name='brain', amount ='R'},
					{name='brain', amount =2},
				},
			crafting_speed = 15,
			tech = 'interactive-cognition',
			name = 'Extract kmauts brainsb',
			icon = "__pyalienlifegraphics__/graphics/icons/mip/brain-04.png",
			icon_size = 64,
		},
	}
}

------------------KORLEX------------------

fun.autorecipes {
    name = 'rendering-brains-korlex',
	category = 'slaughterhouse-korlex',
	--module_limitations = 'arthurian',
	subgroup = 'py-alienlife-korlex',
	order = 'b',
    mats =
	{
		{
			ingredients =
				{
					{name='cagedkorlex',amount=1},
				},
			results =
				{
					{name='bones', probability = 0.3,amount_min =1,amount_max =2},
					{name='meat', probability = 0.4,amount_min =1,amount_max =3},
					{name='skin', probability = 0.4,amount_min =1,amount_max =4},
					{name='fat', probability = 0.2,amount_min =1,amount_max =1},
					{name='guts', probability = 0.4,amount_min =1,amount_max =2},
					{name='blood', amount =20},
					{name='cage',amount=1},
					{name='brain', probability = 0.6,amount_min =1,amount_max =2},
				},
			crafting_speed = 30,
			tech = 'interactive-cognition',
			name = 'Full Render Korlexb',
			icon = "__pyalienlifegraphics__/graphics/icons/rendering-korlex.png",
			icon_size = 64,
		},
		--brain
		{
			ingredients =
				{
					--{name='cagedkorlex',amount=1},
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
					{name='brain', amount =2},
				},
			crafting_speed = 15,
			tech = 'interactive-cognition',
			name = 'Extract Korlex brainb',
			icon = "__pyalienlifegraphics__/graphics/icons/mip/brain-04.png",
			icon_size = 64,
		},
	}
}

------------------MUKMOUX------------------

fun.autorecipes {
    name = 'rendering-brain-mukmoux',
	category = 'slaughterhouse-mukmoux',
	--module_limitations = 'mukmoux',
	subgroup = 'py-alienlife-mukmoux',
	order = 'b',
    mats =
	{
		{
			ingredients =
				{
					{name='cagedmukmoux',amount=1},
				},
			results =
				{
					{name='bones', probability = 0.4,amount_min =1,amount_max =2},
					{name='meat', probability = 0.4,amount_min =1,amount_max =4},
					{name='skin', probability = 0.4,amount_min =1,amount_max =4},
					{name='fat', probability = 0.4,amount_min =1,amount_max =3},
					{name='guts', probability = 0.4,amount_min =1,amount_max =4},
					{name='blood', amount =50},
					{name='cage',amount=1},
					{name='brain', probability = 0.4,amount_min =1,amount_max =2},
				},
			crafting_speed = 30,
			tech = 'interactive-cognition',
			name = 'Full Render Mukmouxsb',
			icon = "__pyalienlifegraphics__/graphics/icons/rendering-mukmoux.png",
			icon_size = 64,
		},
		--brain
		{
			ingredients =
				{
					--{name='cagedmukmoux',amount=1},
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
					{name='brain', amount =2},
				},
			crafting_speed = 15,
			tech = 'interactive-cognition',
			name = 'Extract Mukmoux brainsb',
			icon = "__pyalienlifegraphics__/graphics/icons/mip/brain-04.png",
			icon_size = 64,
		},
	}
}

------------------PHADAI------------------

fun.autorecipes {
    name = 'rendering-phadai-brain',
	category = 'slaughterhouse-phadai',
	--module_limitations = 'phadai',
	subgroup = 'py-alienlife-phadai',
	order = 'b',
    mats =
	{
		{
			ingredients =
				{
					{name='cagedphadai',amount=1},
				},
			results =
				{
					{name='bones', probability = 0.3,amount_min =1,amount_max =3},
					{name='meat', probability = 0.3,amount_min =1,amount_max =1},
                    {name='guts', probability = 0.3,amount_min =1,amount_max =3},
                    {name='fat', probability = 0.1,amount_min =1,amount_max =1},
                    {name='skin', probability = 0.1,amount_min =1,amount_max =1},
					{name='carapace', probability = 0.3,amount_min =1,amount_max =1},
					{name='blood', amount =30},
					{name='cage',amount=1},
					{name='brain', probability = 0.5,amount_min =1,amount_max =2},
				},
			crafting_speed = 30,
			tech = 'interactive-cognition',
			name = 'Full Render phadaisb',
			icon = "__pyalienlifegraphics__/graphics/icons/rendering-phadai.png",
			icon_size = 64,
		},
		--brain
		{
			ingredients =
				{
					--{name='cagedphadai',amount=1},
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
					{name='brain', amount =2},
				},
			crafting_speed = 15,
			tech = 'interactive-cognition',
			name = 'Extract phadai brainsb',
			icon = "__pyalienlifegraphics__/graphics/icons/mip/brain-04.png",
			icon_size = 64,
		},
	}
}

------------------PHAGNOT------------------

fun.autorecipes {
    name = 'rendering-brains-phagnot',
	category = 'slaughterhouse-phagnot',
	--module_limitations = 'phagnot',
	subgroup = 'py-alienlife-phagnot',
	order = 'b',
    mats =
	{
		{
			ingredients =
				{
					{name='cagedphagnot',amount=1},
				},
			results =
				{
					{name='bones', probability = 0.5,amount_min =1,amount_max =6},
					{name='meat', probability = 0.1,amount_min =1,amount_max =2},
					{name='skin', probability = 0.2,amount_min =1,amount_max =1},
                    {name='guts', probability = 0.3,amount_min =1,amount_max =1},
                    {name='gasbladder', probability = 0.4,amount_min =1,amount_max =1},
					{name='blood', amount =20},
					{name='cage',amount=1},
					{name='brain', probability = 0.4,amount_min =1,amount_max =2},
				},
			crafting_speed = 30,
			tech = 'interactive-cognition',
			name = 'Full Render phagnotsb',
			icon = "__pyalienlifegraphics__/graphics/icons/rendering-phagnot.png",
			icon_size = 64,
		},
		--brain
		{
			ingredients =
				{
					--{name='cagedphagnot',amount=1},
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
					{name='brain', amount =2},
				},
			crafting_speed = 15,
			tech = 'interactive-cognition',
			name = 'Extract phagnot brainsb',
			icon = "__pyalienlifegraphics__/graphics/icons/mip/brain-04.png",
			icon_size = 64,
		},
	}
}


------------------SCRONDRIX------------------

fun.autorecipes {
    name = 'rendering-brains-scrondrix',
	category = 'slaughterhouse-scrondrix',
	--module_limitations = 'scrondrix',
	subgroup = 'py-alienlife-scrondrix',
	order = 'b',
    mats =
	{
		{
			ingredients =
				{
					{name='cagedscrondrix',amount=1},
				},
			results =
				{
					{name='bones', probability = 0.5,amount_min =1,amount_max =2},
					{name='meat', probability = 0.5,amount_min =1,amount_max =3},
					{name='skin', probability = 0.4,amount_min =1,amount_max =1},
					{name='fat', probability = 0.4,amount_min =1,amount_max =2},
					{name='guts', probability = 0.5,amount_min =1,amount_max =2},
					{name='blood', amount =60},
					{name='pinealgland', probability = 0.4,amount_min =1,amount_max =1},
					{name='cage',amount=1},
					{name='brain', probability = 0.5,amount_min =1,amount_max =2},
				},
			crafting_speed = 30,
			tech = 'interactive-cognition',
			name = 'Full Render scrondrixsb',
			icon = "__pyalienlifegraphics__/graphics/icons/rendering-scrondrix.png",
			icon_size = 64,
		},
		--brain
		{
			ingredients =
				{
					--{name='cagedscrondrix',amount=1},
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
					{name='brain', amount =2},
				},
			crafting_speed = 15,
			tech = 'interactive-cognition',
			name = 'Extract scrondrix brainsb',
			icon = "__pyalienlifegraphics__/graphics/icons/mip/brain-04.png",
			icon_size = 64,
		},
	}
}

------------------TRITS------------------

fun.autorecipes {
    name = 'rendering-brain-trits',
	category = 'slaughterhouse-trits',
	--module_limitations = 'trits',
	subgroup = 'py-alienlife-trits',
	order = 'b',
    mats =
	{
		{
			ingredients =
				{
					{name='trits',amount=1},
				},
			results =
				{
					{name='bones', probability = 0.3,amount_min =1,amount_max =4},
					{name='meat', probability = 0.4,amount_min =1,amount_max =4},
					{name='skin', probability = 0.4,amount_min =1,amount_max =3},
					{name='fat', probability = 0.4,amount_min =2,amount_max =5},
					{name='guts', probability = 0.4,amount_min =1,amount_max =4},
					{name='blood', amount =60},
					--{name='cage',amount=1},
					{name='brain', probability = 0.4,amount_min =1,amount_max =2},
				},
			crafting_speed = 30,
			tech = 'interactive-cognition',
			name = 'Full Render Tritsb',
			icon = "__pyalienlifegraphics__/graphics/icons/rendering-trits.png",
			icon_size = 64,
		},
		--brain
		{
			ingredients =
				{
					--{name='trits',amount=1},
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
					{name='brain', amount =2},
				},
			crafting_speed = 15,
			tech = 'interactive-cognition',
			name = 'Extract Trits brainsb',
			icon = "__pyalienlifegraphics__/graphics/icons/mip/brain-04.png",
			icon_size = 64,
		},
	}
}

------------------ULRIC------------------

fun.autorecipes {
    name = 'rendering-brain-ulric',
	category = 'slaughterhouse-ulric',
	--module_limitations = 'ulric',
	subgroup = 'py-alienlife-ulric',
	order = 'b',
    mats =
	{
		{
			ingredients =
				{
					{name='cagedulric',amount=1},
				},
			results =
				{
					{name='bones', probability = 0.4,amount_min =1,amount_max =3},
					{name='meat', probability = 0.4,amount_min =1,amount_max =3},
					{name='skin', probability = 0.2,amount_min =1,amount_max =1},
					{name='fat', probability = 0.3,amount_min =1,amount_max =1},
					{name='guts', probability = 0.4,amount_min =1,amount_max =1},
					{name='blood', amount =50},
					{name='cage',amount=1},
					{name='brain', probability = 0.4,amount_min =1,amount_max =2},
				},
			crafting_speed = 30,
			tech = 'interactive-cognition',
			name = 'Full Render Ulricsb',
			icon = "__pyalienlifegraphics__/graphics/icons/rendering-ulric.png",
			icon_size = 64,
		},
		--brain
		{
			ingredients =
				{
					--{name='cagedulric',amount=1},
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
					{name='brain', amount =2},
				},
			crafting_speed = 15,
			tech = 'interactive-cognition',
			name = 'Extract Ulric brainsb',
			icon = "__pyalienlifegraphics__/graphics/icons/mip/brain-04.png",
			icon_size = 64,
		},
	}
}

------------------VONIX------------------

fun.autorecipes {
    name = 'rendering-brain-vonix',
	category = 'slaughterhouse-vonix',
	--module_limitations = 'vonix',
	subgroup = 'py-alienlife-vonix',
	order = 'b',
    mats =
	{
		{
			ingredients =
				{
					{name='vonix',amount=1},
				},
			results =
				{
					--{name='bones', probability = 0.5,amount_min =1,amount_max =2},
					{name='meat', probability = 0.5,amount_min =1,amount_max =6},
					{name='skin', probability = 0.4,amount_min =1,amount_max =4},
					{name='fat', probability = 0.5,amount_min =1,amount_max =5},
					{name='guts', probability = 0.4,amount_min =1,amount_max =6},
					{name='arthropodblood', amount =80},
					{name='venongland', probability = 0.2,amount_min =1,amount_max =1},
					{name='brain', probability = 0.3,amount_min =1,amount_max =2},
				},
			crafting_speed = 30,
			tech = 'interactive-cognition',
			name = 'Full Render Vonixb',
			icon = "__pyalienlifegraphics__/graphics/icons/rendering-vonix.png",
			icon_size = 64,
		},
		--brain
		{
			ingredients =
				{
					--{name='vonix',amount=1},
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
					{name='brain', amount =2},
				},
			crafting_speed = 15,
			tech = 'interactive-cognition',
			name = 'Extract Vonix brainb',
			icon = "__pyalienlifegraphics__/graphics/icons/mip/brain-04.png",
			icon_size = 64,
		},
	}
}

------------------VRAUKS------------------

fun.autorecipes {
    name = 'rendering-brain-vrauks',
	category = 'slaughterhouse-vrauks',
	--module_limitations = 'vrauks',
	subgroup = 'py-alienlife-vrauks',
	order = 'b',
    mats =
	{
		{
			ingredients =
				{
					{name='cagedvrauks',amount=1},
				},
			results =
				{
					--{name='bones', probability = 0.3,amount_min =1,amount_max =4},
					{name='meat', probability = 0.4,amount_min =1,amount_max =2},
					{name='chitin', probability = 0.3,amount_min =1,amount_max =1},
					--{name='fat', probability = 0.3,amount_min =1,amount_max =1},
					{name='guts', probability = 0.4,amount_min =1,amount_max =2},
					{name='formicacid', amount =200},
					{name='cage',amount=1},
					{name='brain', probability = 0.4,amount_min =1,amount_max =2},
				},
			crafting_speed = 30,
			tech = 'interactive-cognition',
			name = 'Full Render Vrauksb',
			icon = "__pyalienlifegraphics__/graphics/icons/rendering-vrauks.png",
			icon_size = 64,
		},
		--brain
		{
			ingredients =
				{
					--{name='cagedvrauks',amount=1},
				},
			results =
				{
					{name='meat', amount ='R'},
					{name='chitin', amount ='R'},
					{name='guts', amount ='R'},
					{name='formicacid', amount ='R'},
					{name='brain', amount ='R'},
					{name='brain', amount =2},
				},
			crafting_speed = 15,
			tech = 'interactive-cognition',
			name = 'Extract Vrauks brainsb',
			icon = "__pyalienlifegraphics__/graphics/icons/mip/brain-04.png",
			icon_size = 64,
		},
	}
}

------------------RENDERING XENOS------------------

fun.autorecipes {
    name = 'rendering-brains-xenos',
	category = 'slaughterhouse-xeno',
	--module_limitations = 'xeno',
	subgroup = 'py-alienlife-xeno',
	order = 'b',
    mats =
	{
		{
			ingredients =
				{
					{name='cagedxeno',amount=1},
				},
			results =
				{
					{name='bones', probability = 0.45,amount_min =1,amount_max =3},
					{name='meat', probability = 0.4,amount_min =1,amount_max =3},
					{name='chitin', probability = 0.4,amount_min =1,amount_max =4},
					--{name='fat', probability = 0.2,amount_min =1,amount_max =1},
					--{name='guts', probability = 0.4,amount_min =1,amount_max =2},
					{name='sulfuricacid', amount =60},
					{name='cage',amount=1},
					{name='brain', probability = 0.5,amount_min =1,amount_max =2},
				},
			crafting_speed = 30,
			tech = 'interactive-cognition',
			name = 'Full Render Xenosb',
			icon = "__pyalienlifegraphics__/graphics/icons/rendering-xeno.png",
			icon_size = 64,
		},
		--brain
		{
			ingredients =
				{
					--{name='cagedxeno',amount=1},
				},
			results =
				{
					{name='bones', amount ='R'},
					{name='chitin', amount ='R'},
					{name='sulfuricacid', amount ='R'},
                    {name='meat', amount ='R'},
                    {name='brain', amount ='R'},
					{name='brain', amount =2},
				},
			crafting_speed = 15,
			tech = 'interactive-cognition',
			name = 'Extract Xeno brainsb',
			icon = "__pyalienlifegraphics__/graphics/icons/mip/brain-04.png",
			icon_size = 64,
		},
	}
}

------------------ZIPIR------------------

fun.autorecipes {
    name = 'rendering-brain-zipir',
	category = 'slaughterhouse-zipir',
	--module_limitations = 'zipir',
	subgroup = 'py-alienlife-zipir',
	order = 'b',
    mats =
	{
		{
			ingredients =
				{
					{name='zipir',amount=1},
				},
			results =
				{
					--{name='bones', probability = 0.5,amount_min =1,amount_max =2},
					{name='meat', probability = 0.4,amount_min =1,amount_max =4},
					{name='skin', probability = 0.5,amount_min =1,amount_max =6},
					{name='fat', probability = 0.4,amount_min =1,amount_max =3},
					{name='guts', probability = 0.4,amount_min =1,amount_max =4},
					{name='arthropodblood', amount =50},
					{name='brain', probability = 0.3,amount_min =1,amount_max =2},
				},
			crafting_speed = 30,
			tech = 'interactive-cognition',
			name = 'Full Render zipirb',
			icon = "__pyalienlifegraphics__/graphics/icons/rendering-zipir.png",
			icon_size = 64,
		},
		--brain
		{
			ingredients =
				{
					--{name='zipir',amount=1},
				},
			results =
				{
					{name='meat', amount ='R'},
					{name='skin', amount ='R'},
					{name='fat', amount ='R'},
					{name='guts', amount ='R'},
					{name='arthropodblood', amount ='R'},
					{name='brain', amount ='R'},
					{name='brain', amount =2},
				},
			crafting_speed = 15,
			tech = 'interactive-cognition',
			name = 'Extract zipir brainb',
			icon = "__pyalienlifegraphics__/graphics/icons/mip/brain-04.png",
			icon_size = 64,
		},
	}
}