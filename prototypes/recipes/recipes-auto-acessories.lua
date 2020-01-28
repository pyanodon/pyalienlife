local fun = require("prototypes/functions/functions")


------------------PHADAI CARAPACE------------------

fun.autorecipes {
    name = 'rendering-carapace-phadai',
	category = 'slaughterhouse',
	--module_limitations = 'auog',
	subgroup = 'py-alienlife-phadai',
	order = 'b',
    mats =
	{
		--carapace
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
                    {name='carapace', amount ='R'},
					{name='blood', amount ='R'},
					{name='brain', amount ='R'},
					{name='cage',amount=1},
					{name='carapace', amount =3},
				},
                crafting_speed = 15,
                tech = 'party-animal',
                name = 'Extract phadai Carapace-1',
                icon = "__pyalienlifegraphics__/graphics/icons/carapace.png",
                icon_size = 64,
		},	
	}
}

------------------DINGRITS PELT------------------

fun.autorecipes {
    name = 'rendering-pelt-dingrits',
	category = 'slaughterhouse',
	--module_limitations = 'auog',
	subgroup = 'py-alienlife-dingrits',
	order = 'b',
    mats =
	{
		--pelt
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
                    {name='carapace', amount ='R'},
                    {name='pelt', amount ='R'},
                    {name='dingritspike', amount ='R'},
					{name='blood', amount ='R'},
					{name='brain', amount ='R'},
					{name='cage',amount=1},
					{name='pelt', amount =2},
				},
                crafting_speed = 15,
                tech = 'exo-insertion',
                name = 'Extract dingrits Pelt-1',
                icon = "__pyalienlifegraphics__/graphics/icons/pelt.png",
                icon_size = 64,
		},	
	}
}

------------------DINGRITS SPIKES------------------

fun.autorecipes {
    name = 'rendering-spikes-dingrits',
	category = 'slaughterhouse',
	--module_limitations = 'auog',
	subgroup = 'py-alienlife-dingrits',
	order = 'b',
    mats =
	{
		--spikes
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
                    {name='carapace', amount ='R'},
                    {name='pelt', amount ='R'},
                    {name='dingritspike', amount ='R'},
					{name='blood', amount ='R'},
					{name='brain', amount ='R'},
					{name='cage',amount=1},
					{name='dingritspike', amount =2},
				},
                crafting_speed = 15,
                tech = 'argumented-spikes',
                name = 'Extract dingrits Spikes-1',
                icon = "__pyalienlifegraphics__/graphics/icons/dingrit-spike.png",
                icon_size = 64,
		},	
	}
}

------------------SCRONDRIX PINEAL------------------

fun.autorecipes {
    name = 'rendering-pineal-scrondrix',
	category = 'slaughterhouse',
	--module_limitations = 'auog',
	subgroup = 'py-alienlife-scrondrix',
	order = 'b',
    mats =
	{
		--pineal
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
					{name='pinealgland', amount ='R'},
					{name='brain', amount ='R'},
					{name='cage',amount=1},
					{name='pinealgland', amount =2},
				},
                crafting_speed = 15,
                tech = 'conarium-stem',
				name = 'Extract scrondrix Pineal Gland-1',
				icon = "__pyalienlifegraphics__/graphics/icons/pineal-gland.png",
				icon_size = 64,
		},	
	}
}

------------------KMAUTS TENDONS------------------

fun.autorecipes {
    name = 'rendering-tendon-kmauts',
	category = 'slaughterhouse',
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
					{name='tendon', amount ='R'},
					{name='skin', amount ='R'},
					{name='fat', amount ='R'},
					{name='guts', amount ='R'},
					{name='blood', amount ='R'},
					{name='brain', amount ='R'},
					{name='cage',amount=1},
					{name='tendon', amount =3},
				},
                crafting_speed = 15,
                tech = 'hydrolase-amplification',
				name = 'Extract kmauts tendons-1',
				icon = "__pyalienlifegraphics__/graphics/icons/tendon.png",
				icon_size = 64,
		},	
	}
}

------------------PHAGNOT BLADDER------------------

fun.autorecipes {
    name = 'rendering-bladder-phagnot',
	category = 'slaughterhouse',
	--module_limitations = 'auog',
	subgroup = 'py-alienlife-phagnot',
	order = 'b',
    mats =
	{
		--gas-bladder
		{
			ingredients =
				{
					{name='cagedphagnot',amount=1},
				},
			results =
				{
					{name='bones', amount='R'},
					{name='meat', amount='R'},
					{name='skin', amount='R'},
                    {name='guts', amount='R'},
                    {name='gasbladder', amount='R'},
					{name='blood', amount='R'},
					{name='cage',amount=1},
                    {name='brain', amount='R'},
                    {name='gasbladder', amount=2},
				},
			crafting_speed = 15,
			tech = 'bladder',
			name = 'Extract phagnot Gas bladder-2',
			icon = "__pyalienlifegraphics__/graphics/icons/gas-bladder.png",
			icon_size = 64,
		},
	}
}

------------------VONIX VENON GLAND------------------

fun.autorecipes {
    name = 'rendering-venon-vonix',
	category = 'slaughterhouse',
	--module_limitations = 'auog',
	subgroup = 'py-alienlife-vonix',
	order = 'b',
    mats =
	{
		--venon
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
					{name='venongland', amount ='R'},
					{name='chitin', amount ='R'},
					{name='arthropodblood', amount ='R'},
					{name='sulfuricacid', amount ='R'},
					{name='guts', amount ='R'},
					{name='blood', amount ='R'},
					{name='brain', amount ='R'},
					{name='venongland', amount =2},
				},
                crafting_speed = 15,
                tech = 'zootoxins',
				name = 'Extract Vonix´s Venom Gland-1',
				icon = "__pyalienlifegraphics__/graphics/icons/venon-gland.png",
				icon_size = 64,
		},	
	}
}
