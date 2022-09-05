local FUN = require("__pycoalprocessing__/prototypes/functions/functions")

------------------RENDERING------------------

local INPUT_AMOUNT = 1

local BASE_BONES = 3
local BASE_MEAT = 4
local BASE_SKIN = 4		-- chitin
local BASE_BLOOD = 80	-- sulfuric-acid
local BASE_BRAIN = 1

local IMP_BONES = 11
local IMP_MEAT = 10
local IMP_SKIN = 23
local IMP_BLOOD = 200
local IMP_BRAIN = 4


FUN.autorecipes {
    name = 'rendering-xeno',
	category = 'slaughterhouse-xeno',
	--module_limitations = 'xeno',
	subgroup = 'py-alienlife-xeno',
	order = 'b',
    mats =
	{
		{
			ingredients =
				{
					{name='caged-xeno', amount = INPUT_AMOUNT},
				},
			results =
				{
					{name='bones', amount = BASE_BONES},
					{name='meat', amount = BASE_MEAT},
					{name='chitin', amount = BASE_SKIN},
					{name='sulfuric-acid', amount = BASE_BLOOD},
					{name='cage', amount = INPUT_AMOUNT},
					{name='brain', amount = BASE_BRAIN},
				},
			crafting_speed = 30,
			tech = 'xeno',
			name = 'full-render-xenos',
			icon = "__pyalienlifegraphics__/graphics/icons/rendering-xeno.png",
			icon_size = 64,
		},
		--brain xeno rendering
		{
			ingredients =
				{
					{name='caged-xeno',remove_item = true},
					{name='brain-xeno', amount = INPUT_AMOUNT},
				},
			results =
				{
					{name='brain', amount = IMP_BRAIN},
				},
			tech = 'nanochondria',
			name = 'ex-bra-xeno',
			icon = "__pyalienlifegraphics__/graphics/icons/brain-xeno.png",
			icon_size = 64,
		},
		--bone xeno rendering
		{
			ingredients =
				{
					{name='brain-xeno',remove_item = true},
					{name='bone-xeno', amount = INPUT_AMOUNT},
				},
			results =
				{
					{name='brain', amount = BASE_BRAIN},
					{name='bones', amount = IMP_BONES},
				},
			tech = 'bmp',
			name = 'ex-bon-xeno',
			icon = "__pyalienlifegraphics__/graphics/icons/bone-xeno.png",
			icon_size = 64,
		},
		--sulfuric acid xeno rendering
		{
			ingredients =
				{
					{name='bone-xeno',remove_item = true},
					{name='sulfuric-xeno', amount=1},
				},
			results =
				{
					{name='bones', amount = BASE_BONES},
					{name='sulfuric-acid', amount = IMP_BLOOD},
				},
			tech = 'recombinant-ery',
			name = 'ex-blo-xeno',
			icon = "__pyalienlifegraphics__/graphics/icons/sulfuric-xeno.png",
			icon_size = 64,
		},
		--skin xeno rendering
		{
			ingredients =
				{
					{name='sulfuric-xeno',remove_item = true},
					{name='chitin-xeno', amount=1},
				},
			results =
				{
					{name='sulfuric-acid', amount = BASE_BLOOD},
					{name='chitin', amount = IMP_SKIN},
				},
			tech = 'reca',
			name = 'ex-chi-xeno',
			icon = "__pyalienlifegraphics__/graphics/icons/chitin-xeno.png",
			icon_size = 64,
		},
		--meat xeno rendering
		{
			ingredients =
				{
					{name='chitin-xeno',remove_item = true},
					{name='meat-xeno', amount=1},
				},
			results =
				{
					{name='chitin', amount = BASE_SKIN},
					{name='meat', amount = IMP_MEAT},
				},
			tech = 'anabolic-rna',
			name = 'ex-me-xeno',
			icon = "__pyalienlifegraphics__/graphics/icons/meat-xeno.png",
			icon_size = 64,
		},
	}
}
