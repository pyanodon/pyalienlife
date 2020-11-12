local fun = require("prototypes/functions/functions")


------------------PHADAI CARAPACE------------------

fun.autorecipes {
    name = 'rendering-carapace-phadai',
	category = 'slaughterhouse-phadai',
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
	category = 'slaughterhouse-dingrits',
	--module_limitations = 'auog',
	subgroup = 'py-alienlife-dingrits',
	order = 'b',
    mats =
	{
		--pelt
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
                    {name='carapace', amount ='R'},
                    {name='pelt', amount ='R'},
                    {name='dingritspike', amount ='R'},
					{name='blood', amount ='R'},
					{name='brain', amount ='R'},
					{name='cage',amount=1},
					{name='pelt', amount ='+1'},
				},
                crafting_speed = 15,
                tech = 'exo-insertion',
                name = 'Extract dingrits Pelt-1a',
                icon = "__pyalienlifegraphics__/graphics/icons/pelt.png",
                icon_size = 64,
		},
	}
}

------------------DINGRITS SPIKES------------------

fun.autorecipes {
    name = 'rendering-spikes-dingrits',
	category = 'slaughterhouse-dingrits',
	--module_limitations = 'auog',
	subgroup = 'py-alienlife-dingrits',
	order = 'b',
    mats =
	{
		--spikes
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
	category = 'slaughterhouse-scrondrix',
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
	category = 'slaughterhouse-phagnot',
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
			name = 'Extract phagnot Gas bladder-1',
			icon = "__pyalienlifegraphics__/graphics/icons/gas-bladder.png",
			icon_size = 64,
		},
	}
}

------------------VONIX VENON GLAND------------------

fun.autorecipes {
    name = 'rendering-venon-vonix',
	category = 'slaughterhouse-vonix',
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

------------------TRITS PHOTOPHORES------------------

fun.autorecipes {
    name = 'rendering-photophore-trits',
	category = 'slaughterhouse-trits',
	--module_limitations = 'auog',
	subgroup = 'py-alienlife-trits',
	order = 'b',
    mats =
	{
		--photophore
		{
			ingredients =
				{
					{name='trits',amount=1},
				},
			results =
				{
					{name='meat', amount ='R'},
					{name='shell', amount ='R'},
					{name='guts', amount ='R'},
					{name='arthropodblood', amount ='R'},
					{name='photophore', amount =4},
				},
			crafting_speed = 15,
			tech = 'ctc',
			name = 'Extract Trits Photophores-1',
			icon = "__pyalienlifegraphics__/graphics/icons/photophore.png",
			icon_size = 64,
		},
	}
}


------------------XYHIPHOE SHELL------------------

fun.autorecipes {
    name = 'rendering-shell-xyhiphoe',
	category = 'slaughterhouse-xyhiphoe',
	--module_limitations = 'auog',
	subgroup = 'py-alienlife-xyhiphoe',
	order = 'b',
    mats =
	{
		--shell
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
					{name='shell', amount =15},
				},
			crafting_speed = 15,
			tech = 'artificial-calcification',
			name = 'Extract xyhiphoe shell-1',
			icon = "__pyalienlifegraphics__/graphics/icons/shell.png",
			icon_size = 64,
		},
	}
}

------------------CRIDREN CORTEX------------------

RECIPE {
    type = "recipe",
    name = "adrenal-cortex-2",
    category = "slaughterhouse-cridren",
    enabled = false,
    energy_required = 15,
    ingredients = {
        {type = 'item', name = 'cridren', amount = 1}
    },
    results = {
        {type = 'item', name = 'adrenal-cortex', amount = 2}
    },
    main_product = "adrenal-cortex",
}:add_unlock("stochastic-cortex")



------------------SPORES------------------

RECIPE {
    type = 'recipe',
    name = 'navens-spore-2',
    category = 'spore',
    enabled = false,
    energy_required = 5,
    ingredients = {
    },
    results = {
        {type = 'item', name = 'navens-spore', amount = 1, probability = 0.6},
    },
}:add_unlock("microfilters")

RECIPE {
    type = 'recipe',
    name = 'yaedols-spores-2',
    category = 'spore',
    enabled = false,
    energy_required = 5,
    ingredients = {
    },
    results = {
        {type = 'item', name = 'yaedols-spores', amount = 1, probability = 0.6},
    },
}:add_unlock("microfilters")

RECIPE {
    type = 'recipe',
    name = 'bhoddos-spore-2',
    category = 'spore',
    enabled = false,
    energy_required = 5,
    ingredients = {
    },
    results = {
        {type = 'item', name = 'bhoddos-spore', amount = 1, probability = 0.6},
    },
}:add_unlock("microfilters")


------------------SPORES MK03------------------

RECIPE {
    type = 'recipe',
    name = 'navens-spore-3',
    category = 'spore',
    enabled = false,
    energy_required = 5,
    ingredients = {
    },
    results = {
        {type = 'item', name = 'navens-spore', amount = 1, probability = 0.8},
    },
}:add_unlock("microfilters-mk02")

RECIPE {
    type = 'recipe',
    name = 'yaedols-spores-3',
    category = 'spore',
    enabled = false,
    energy_required = 5,
    ingredients = {
    },
    results = {
        {type = 'item', name = 'yaedols-spores', amount = 1, probability = 0.8},
    },
}:add_unlock("microfilters-mk02")

RECIPE {
    type = 'recipe',
    name = 'bhoddos-spore-3',
    category = 'spore',
    enabled = false,
    energy_required = 5,
    ingredients = {
    },
    results = {
        {type = 'item', name = 'bhoddos-spore', amount = 1, probability = 0.8},
    },
}:add_unlock("microfilters-mk02")

------------------MAGNETIC ORGAN------------------

RECIPE {
    type = "recipe",
    name = "magnetic-organ",
    category = "genlab",
    enabled = false,
    energy_required = 40,
    ingredients = {
        {type = 'item', name = 'guts-caged-ulric', amount = 1}
    },
    results = {
		{type = 'item', name = 'magnetic-organ', amount = 1},
		{type = 'item', name = 'cage', amount = 1},
    },
    main_product = "magnetic-organ",
}:add_unlock("antitumor")

------------------Intestinal electrical epithelium------------------

RECIPE {
    type = "recipe",
    name = "intestinal-ee",
    category = "genlab",
    enabled = false,
    energy_required = 40,
    ingredients = {
        {type = 'item', name = 'guts-caged-scrondrix', amount = 1}
    },
    results = {
		{type = 'item', name = 'intestinal-ee', amount = 1},
		{type = 'item', name = 'cage', amount = 1},
    },
    main_product = "intestinal-ee",
}:add_unlock("antitumor")

------------------cognition-osteochain------------------

RECIPE {
    type = "recipe",
    name = "cognition-osteochain",
    category = "genlab",
    enabled = false,
    energy_required = 40,
    ingredients = {
        {type = 'item', name = 'bone-xeno', amount = 1}
    },
    results = {
		{type = 'item', name = 'cognition-osteochain', amount = 1},
    },
    main_product = "cognition-osteochain",
}:add_unlock("bmp")

------------------adaptable-automucosa------------------

RECIPE {
    type = "recipe",
    name = "adaptable-automucosa",
    category = "genlab",
    enabled = false,
    energy_required = 40,
    ingredients = {
        {type = 'item', name = 'skin-zipir', amount = 1}
    },
    results = {
		{type = 'item', name = 'adaptable-automucosa', amount = 1},
    },
    main_product = "adaptable-automucosa",
}:add_unlock("reca")

------------------polynuclear-ganglion------------------

RECIPE {
    type = "recipe",
    name = "polynuclear-ganglion",
    category = "genlab",
    enabled = false,
    energy_required = 40,
    ingredients = {
        {type = 'item', name = 'brain-caged-arthurian', amount = 1}
    },
    results = {
		{type = 'item', name = 'polynuclear-ganglion', amount = 1},
		{type = 'item', name = 'cage', amount = 1},
    },
    main_product = "polynuclear-ganglion",
}:add_unlock("nanochondria")

------------------cryogland------------------

RECIPE {
    type = "recipe",
    name = "cryogland",
    category = "genlab",
    enabled = false,
    energy_required = 40,
    ingredients = {
        {type = 'item', name = 'fat-caged-korlex', amount = 1}
    },
    results = {
		{type = 'item', name = 'cryogland', amount = 1},
		{type = 'item', name = 'cage', amount = 1},
    },
    main_product = "cryogland",
}:add_unlock("orexigenic")

------------------subdermal-chemosnare------------------

RECIPE {
    type = "recipe",
    name = "subdermal-chemosnare",
    category = "genlab",
    enabled = false,
    energy_required = 40,
    ingredients = {
        {type = 'item', name = 'skin-caged-phadai', amount = 1}
    },
    results = {
		{type = 'item', name = 'subdermal-chemosnare', amount = 1},
		{type = 'item', name = 'cage', amount = 1},
    },
    main_product = "subdermal-chemosnare",
}:add_unlock("reca")

------------------snarer-heart------------------

RECIPE {
    type = "recipe",
    name = "snarer-heart",
    category = "genlab",
    enabled = false,
    energy_required = 40,
    ingredients = {
        {type = 'item', name = 'space-dingrit-return', amount = 1}
    },
    results = {
		{type = 'item', name = 'snarer-heart', amount = 10},
    },
    main_product = "snarer-heart",
}:add_unlock("laika")

------------------glandular-myocluster------------------

RECIPE {
    type = "recipe",
    name = "glandular-myocluster",
    category = "genlab",
    enabled = false,
    energy_required = 40,
    ingredients = {
        {type = 'item', name = 'meat-caged-auog', amount = 1}
    },
    results = {
		{type = 'item', name = 'glandular-myocluster', amount = 1},
		{type = 'item', name = 'cage', amount = 1},
    },
    main_product = "glandular-myocluster",
}:add_unlock("anabolic-rna")

------------------autoantigens------------------

RECIPE {
    type = "recipe",
    name = "autoantigens",
    category = "genlab",
    enabled = false,
    energy_required = 40,
    ingredients = {
        {type = 'item', name = 'blood-dhilmos', amount = 1}
    },
    results = {
		{type = 'fluid', name = 'autoantigens', amount = 50},
    },
    main_product = "autoantigens",
}:add_unlock("recombinant-ery")

------------------dimensional-gastricorg------------------

RECIPE {
    type = "recipe",
    name = "dimensional-gastricorg",
    category = "genlab",
    enabled = false,
    energy_required = 40,
    ingredients = {
        {type = 'item', name = 'caged-antelope', amount = 1}
    },
    results = {
		{type = 'item', name = 'dimensional-gastricorg', amount = 1},
		{type = 'item', name = 'cage-antelope', amount = 1},
    },
    main_product = "dimensional-gastricorg",
}:add_unlock("nanochondria")

------------------Sternite-lung------------------

RECIPE {
    type = "recipe",
    name = "sternite-lung",
    category = "genlab",
    enabled = false,
    energy_required = 40,
    ingredients = {
        {type = 'item', name = 'guts-arqad', amount = 1}
    },
    results = {
		{type = 'item', name = 'sternite-lung', amount = 1},
    },
    main_product = "sternite-lung",
}:add_unlock("antitumor")

------------------Hormonal-thoughtorg------------------

RECIPE {
    type = "recipe",
    name = "hormonal",
    category = "genlab",
    enabled = false,
    energy_required = 40,
    ingredients = {
        {type = 'item', name = 'brain-caged-simik', amount = 1}
    },
    results = {
		{type = 'item', name = 'hormonal', amount = 1},
    },
    main_product = "hormonal",
}:add_unlock("nanochondria")

----food----
RECIPE {
    type = 'recipe',
    name = 'auog-food-01b',
    category = 'crafting-with-fluid',
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = 'item', name = 'plastic-bar', amount = 2},
        {type = 'item', name = 'fawogae', amount = 5},
        {type = 'item', name = 'wood', amount = 3},
        {type = 'item', name = 'seaweed', amount = 5},
        {type = 'item', name = 'moss', amount = 5},
        {type = 'fluid', name = 'steam', amount = 100, minimum_temperature = 165}
    },
    results = {
        {type = 'item', name = 'auog-food-01', amount = 3},
    },
}:add_unlock("sawdust")

RECIPE {
    type = 'recipe',
    name = 'auog-food-02b',
    category = 'crafting-with-fluid',
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = 'item', name = 'plastic-bar', amount = 2},
        {type = 'item', name = 'fawogae', amount = 5},
        {type = 'item', name = 'bio-sample', amount = 5},
        {type = 'item', name = 'wood', amount = 3},
        {type = 'item', name = 'ralesias', amount = 5},
        {type = 'item', name = 'casein', amount = 10},
        {type = 'item', name = 'wood-seeds', amount = 1},
        {type = 'item', name = 'ash', amount = 10},
        {type = 'item', name = 'moss', amount = 10},
        {type = 'item', name = 'seaweed', amount = 5},
        {type = 'fluid', name = 'steam', amount = 100, minimum_temperature = 165}
    },
    results = {
        {type = 'item', name = 'auog-food-02', amount = 5},
    },
}:add_unlock("sawdust")

------phadai alcoholic energy drink-----

RECIPE {
    type = "recipe",
    name = "energy-drinkb",
    category = "mixer",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = 'item', name = 'aluminium-plate', amount = 7},
        {type = 'fluid', name = 'ethanol', amount = 50},
        {type = 'fluid', name = 'syrup-01', amount = 25},
        {type = 'fluid', name = 'carbon-dioxide', amount = 100},
    },
    results = {
        {type = 'item', name = 'energy-drink', amount = 7}
    },
    --main_product = "adrenal-cortex",
}:add_unlock("ethanol-boost")