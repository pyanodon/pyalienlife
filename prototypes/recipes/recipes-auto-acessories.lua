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
					{name='caged-phadai', amount=1},
				},
			results =
				{
                    {name='bones', remove_item = true},
					{name='meat', remove_item = true},
					{name='skin', remove_item = true},
					{name='mukmoux-fat', remove_item = true},
                    {name='guts', remove_item = true},
                    {name='carapace', remove_item = true},
					{name='blood', remove_item = true},
					{name='brain', remove_item = true},
					{name='cage', amount=1},
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
					{name='caged-dingrits', amount=1},
				},
			results =
				{
                    {name='bones', remove_item = true},
					{name='meat', remove_item = true},
					{name='skin', remove_item = true},
					{name='mukmoux-fat', remove_item = true},
                    {name='guts', remove_item = true},
                    {name='carapace', remove_item = true},
                    {name='pelt', remove_item = true},
                    {name='dingrit-spike', remove_item = true},
					{name='blood', remove_item = true},
					{name='brain', remove_item = true},
					{name='cage', amount=1},
					{name='pelt', add_amount = 1},
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
					{name='caged-dingrits', amount=1},
				},
			results =
				{
                    {name='bones', remove_item = true},
					{name='meat', remove_item = true},
					{name='skin', remove_item = true},
					{name='mukmoux-fat', remove_item = true},
                    {name='guts', remove_item = true},
                    {name='carapace', remove_item = true},
                    {name='pelt', remove_item = true},
                    {name='dingrit-spike', remove_item = true},
					{name='blood', remove_item = true},
					{name='brain', remove_item = true},
					{name='cage', amount=1},
					{name='dingrit-spike', amount =2},
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
					{name='pineal-gland', remove_item = true},
					{name='brain', remove_item = true},
					{name='cage', amount=1},
					{name='pineal-gland', amount =2},
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
					{name='caged-kmauts', amount=1},
				},
			results =
				{
                    {name='bones', remove_item = true},
					{name='meat', remove_item = true},
					{name='tendon', remove_item = true},
					{name='skin', remove_item = true},
					{name='mukmoux-fat', remove_item = true},
					{name='guts', remove_item = true},
					{name='blood', remove_item = true},
					{name='brain', remove_item = true},
					{name='cage', amount=1},
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
					{name='caged-phagnot', amount=1},
				},
			results =
				{
					{name='bones', remove_item = true},
					{name='meat', remove_item = true},
					{name='skin', remove_item = true},
                    {name='guts', remove_item = true},
                    {name='gas-bladder', remove_item = true},
					{name='blood', remove_item = true},
					{name='cage', amount=1},
                    {name='brain', remove_item = true},
                    {name='gas-bladder', amount=2},
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
					{name='vonix', amount=1},
				},
			results =
				{
                    {name='bones', remove_item = true},
					{name='meat', remove_item = true},
					{name='skin', remove_item = true},
					{name='mukmoux-fat', remove_item = true},
					{name='venon-gland', remove_item = true},
					{name='chitin', remove_item = true},
					{name='arthropod-blood', remove_item = true},
					{name='sulfuric-acid', remove_item = true},
					{name='guts', remove_item = true},
					{name='blood', remove_item = true},
					{name='brain', remove_item = true},
					{name='venon-gland', amount =2},
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
					{name='trits', amount=1},
				},
			results =
				{
					{name='meat', remove_item = true},
					{name='shell', remove_item = true},
					{name='guts', remove_item = true},
					{name='arthropod-blood', remove_item = true},
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
					{name='xyhiphoe', amount=1},
				},
			results =
				{
					{name='meat', remove_item = true},
					{name='shell', remove_item = true},
					{name='guts', remove_item = true},
					{name='arthropod-blood', remove_item = true},
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

------------------Geostabilization Tissue------------------

RECIPE {
    type = "recipe",
    name = "geostabilization-tissue",
    category = "genlab",
    enabled = false,
    energy_required = 40,
    ingredients = {
        {type = 'item', name = 'brain-caged-phagnot', amount = 1},
        {type = 'item', name = 'gas-bladder', amount = 5},
    },
    results = {
		{type = 'item', name = 'geostabilization-tissue', amount = 1},
		{type = 'item', name = 'cage', amount = 1},
    },
    main_product = "geostabilization-tissue",
}:add_unlock("nanochondria")

------------------Limno Circulation Cluster-----------------

RECIPE {
    type = "recipe",
    name = "lcc",
    category = "genlab",
    enabled = false,
    energy_required = 40,
    ingredients = {
        {type = 'item', name = 'blood-cottongut', amount = 5},
        {type = 'item', name = 'negasium', amount = 1},
    },
    results = {
		{type = 'item', name = 'lcc', amount = 1},
    },
    main_product = "lcc",
}:add_unlock("recombinant-ery")

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
        {type = 'item', name = 'guts-caged-simik', amount = 1}
    },
    results = {
		{type = 'item', name = 'hormonal', amount = 1},
    },
    main_product = "hormonal",
}:add_unlock("antitumor")

----AUOG food----
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
        {type = 'item', name = 'native-flora', amount = 10},
        {type = 'item', name = "seaweed", amount = 5},
        {type = 'item', name = 'moss', amount = 5},
        {type = 'item', name = 'starch', amount = 4},
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
        {type = 'item', name = 'native-flora', amount = 15},
        {type = 'item', name = 'wood', amount = 3},
        {type = 'item', name = 'ralesias', amount = 5},
        {type = 'item', name = 'casein', amount = 10},
        {type = 'item', name = 'wood-seeds', amount = 1},
        {type = 'item', name = 'ash', amount = 10},
        {type = 'item', name = 'moss', amount = 10},
        {type = 'item', name = 'starch', amount = 4},
        {type = 'item', name = "seaweed", amount = 5},
        {type = 'fluid', name = 'steam', amount = 100, minimum_temperature = 165}
    },
    results = {
        {type = 'item', name = 'auog-food-02', amount = 5},
    },
}:add_unlock("sawdust")

----SIMIK food----
RECIPE {
    type = 'recipe',
    name = 'simik-food-01a',
    category = 'crafting-with-fluid',
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = 'item', name = 'lead-plate', amount = 2},
        {type = 'item', name = 'xyhiphoe', amount = 1},
        {type = 'item', name = 'coal-dust', amount = 10},
        {type = 'item', name = 'uranium-ore', amount = 10},
        {type = 'item', name = 'native-flora', amount = 10},
        {type = 'item', name = 'skin', amount = 10},
        {type = 'item', name = 'albumin', amount = 2},
        {type = 'item', name = 'gravel', amount = 5},
        {type = 'item', name = 'sulfur', amount = 10},
        {type = 'item', name = 'starch', amount = 4},
        {type = 'item', name = 'navens', amount = 1},
        {type = 'fluid', name = 'olefin', amount = 50},
    },
    results = {
        {type = 'item', name = 'simik-food-01', amount = 6},
    },
}:add_unlock("unstable"):add_ingredient({type = "item", name = "cadaveric-arum", amount = 2}):replace_ingredient("gravel", "phosphate-rock")

RECIPE {
    type = 'recipe',
    name = 'simik-food-02a',
    category = 'crafting-with-fluid',
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = 'item', name = 'lead-plate', amount = 2},
        {type = 'item', name = 'xyhiphoe', amount = 1},
        {type = 'item', name = 'albumin', amount = 2},
        {type = 'item', name = 'gravel', amount = 5},
        {type = 'item', name = 'coal-dust', amount = 10},
        {type = 'item', name = 'uranium-ore', amount = 10},
        {type = 'item', name = 'skin', amount = 10},
        {type = 'item', name = 'sulfur', amount = 10},
        {type = 'item', name = 'starch', amount = 4},
        {type = 'item', name = 'navens', amount = 1},
        {type = 'item', name = 'native-flora', amount = 10},
        {type = 'item', name = 'yaedols', amount = 2},
        {type = 'fluid', name = 'olefin', amount = 50},
        {type = 'fluid', name = 'blood', amount = 100},
    },
    results = {
        {type = 'item', name = 'simik-food-02', amount = 10},
    },
}:add_unlock("unstable"):add_ingredient({type = "item", name = "cadaveric-arum", amount = 2}):replace_ingredient("gravel", "phosphate-rock")

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
