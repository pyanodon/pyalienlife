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