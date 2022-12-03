local FUN = require("__pycoalprocessing__/prototypes/functions/functions")

------------------RENDERING------------------

local INPUT_AMOUNT = 3

local BASE_MEAT = 3
local BASE_SKIN = 4
local BASE_GUTS = 3
local BASE_BLOOD = 40
local BASE_SPECIAL = 30	-- venom

local IMP_MEAT = 15
local IMP_SKIN = 21
local IMP_GUTS = 18
local IMP_BLOOD = 130
local IMP_SPECIAL = 80

FUN.autorecipes {
    name = 'rendering-arqad',
	category = 'slaughterhouse-arqad',
	subgroup = 'py-alienlife-arqad',
	order = 'b',
	crafting_speed = 30,
    mats =
	{
		{
			ingredients =
				{
					{name = 'arqad', amount = INPUT_AMOUNT}
				},
			results =
				{
					{name = 'meat', amount = BASE_MEAT},
					{name = 'chitin', amount = BASE_SKIN},
					{name = 'guts', amount = BASE_GUTS},
					{name = 'arthropod-blood', amount = BASE_BLOOD},
					{name = 'bee-venom', amount = BASE_SPECIAL}
				},
			crafting_speed = 30,
			tech = 'arqad',
			name = 'full-render-arqads',
			icon = "__pyalienlifegraphics3__/graphics/icons/rendering-arqad.png",
			icon_size = 64,
		},
		{
			ingredients =
				{
					{name = 'arqad', remove_item = true},
					{name = 'guts-arqad', amount = INPUT_AMOUNT},
				},
			results =
				{
					{name = 'guts', amount = IMP_GUTS},
				},
			tech = 'antitumor',
			name = 'ex-gut-arq',
			icon = "__pyalienlifegraphics3__/graphics/icons/guts-arqad.png",
			icon_size = 64,
		},
		{
			ingredients =
				{
					{name = 'guts-arqad', remove_item = true},
					{name = 'meat-arqad', amount = INPUT_AMOUNT},
				},
			results =
				{
					{name = 'guts', amount = BASE_GUTS},
					{name = 'meat', amount = IMP_MEAT},
				},
			tech = 'anabolic-rna',
			name = 'ex-me-arq',
			icon = "__pyalienlifegraphics3__/graphics/icons/meat-arqad.png",
			icon_size = 64,
		},
		{
			ingredients =
				{
					{name = 'meat-arqad', remove_item = true},
					{name = 'chitin-arqad', amount = INPUT_AMOUNT},
				},
			results =
				{
					{name = 'meat', amount = BASE_MEAT},
					{name = 'chitin', amount = IMP_SKIN}
				},
			tech = 'reca',
			name = 'ex-chi-arq',
			icon = "__pyalienlifegraphics3__/graphics/icons/chitin-arqad.png",
			icon_size = 64,
		},
		{
			ingredients =
				{
					{name = 'chitin-arqad', remove_item = true},
					{name = 'blood-arqad', amount = INPUT_AMOUNT},
				},
			results =
				{
					{name = 'chitin', amount = BASE_SKIN},
					{name = 'arthropod-blood', amount = IMP_BLOOD},
					{name = 'bee-venom', amount = IMP_SPECIAL}
				},
			tech = 'recombinant-ery',
			name = 'ex-blo-arq',
			icon = "__pyalienlifegraphics3__/graphics/icons/blood-arqad.png",
			icon_size = 64,
		},
	}
}
