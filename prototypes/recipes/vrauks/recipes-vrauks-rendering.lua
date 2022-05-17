local fun = require("prototypes/functions/functions")

------------------RENDERING------------------
--[[
RECIPE {
	type = "recipe",
    name = 'smashing-vrauks',
	category = 'vrauk-rendering',
	subgroup = 'py-alienlife-vrauks',
	enabled = false,
	order = 'b',
	ingredients =
	{
		{name='vrauks', amount=1},
	},
	results =
	{
		{name='meat', amount = 3},
		{type = "fluid", name='formic-acid', amount =200},
		{name='biomass', amount=4},
	},
	energy_required = 6,
	icon = "__pyalienlifegraphics__/graphics/icons/rendering-vrauks.png",
	icon_size = 64,
	always_show_made_in = true
}
]]--
RECIPE {
    type = 'recipe',
    name = 'full-render-vrauks',
    category = 'slaughterhouse-vrauks',
    subgroup = 'py-alienlife-vrauks',
    enabled = false,
    order = 'ba-a',
    ingredients = {
        {
            name = 'caged-vrauks',
            amount = 1
        }
    },
    results = {
        --[[{
			name='bones', 
			probability = 0.3,
			amount_min = 1,
			amount_max =4
		},]]
        {
            name = 'meat',
            probability = 0.4,
            amount_min = 1,
            amount_max = 2
        },
        {
            name = 'chitin',
            probability = 0.2,
            amount_min = 1,
            amount_max = 1
        },
        --[[{
            name = 'mukmoux-fat',
            probability = 0.3,
            amount_min = 1,
            amount_max = 1
        },]]
        {
            name = 'guts',
            probability = 0.4,
            amount_min = 1,
            amount_max = 2
        },
        {
			type = 'fluid',
            name = 'formic-acid',
            amount = 200
        },
        {
            name = 'cage',
            amount = 1
        },
        {
            name = 'brain',
            probability = 0.4,
            amount_min = 1,
            amount_max = 1
        }
    },
    energy_required = 30,
    icon = "__pyalienlifegraphics__/graphics/icons/rendering-vrauks.png",
    icon_size = 64
}:add_unlock('rendering')

RECIPE {
    type = 'recipe',
    name = 'ex-me-vra',
    category = 'slaughterhouse-vrauks',
    subgroup = 'py-alienlife-vrauks',
    enabled = false,
    order = 'ba-m',
    ingredients = {
        {
            name = 'caged-vrauks',
            amount = 1
        }
    },
    results = {
        {
            name = 'meat',
            amount = 2
        }
    },
    energy_required = 15,
    icon = "__pyalienlifegraphics__/graphics/icons/mip/meat-01.png",
    icon_size = 64
}:add_unlock('advanced-rendering')

RECIPE {
    type = 'recipe',
    name = 'ex-bra-vra',
    category = 'slaughterhouse-vrauks',
    subgroup = 'py-alienlife-vrauks',
    enabled = false,
    order = 'ba-b',
    ingredients = {
        {
            name = 'caged-vrauks',
            amount = 1
        }
    },
    results = {
        {
            name = 'brain',
            amount = 1
        }
    },
    energy_required = 15,
    icon = "__pyalienlifegraphics__/graphics/icons/mip/brain-04.png",
    icon_size = 64
}:add_unlock('advanced-rendering')

RECIPE {
    type = 'recipe',
    name = 'ex-chi-vra',
    category = 'slaughterhouse-vrauks',
    subgroup = 'py-alienlife-vrauks',
    enabled = false,
    order = 'ba-c',
    ingredients = {
        {
            name = 'caged-vrauks',
            amount = 1
        }
    },
    results = {
        {
            name = 'chitin',
            amount = 1
        }
    },
    energy_required = 15,
    icon = "__pyalienlifegraphics__/graphics/icons/chitin.png",
    icon_size = 64
}:add_unlock('advanced-rendering')

RECIPE {
    type = 'recipe',
    name = 'ex-gut-vra',
    category = 'slaughterhouse-vrauks',
    subgroup = 'py-alienlife-vrauks',
    enabled = false,
    order = 'ba-g',
    ingredients = {
        {
            name = 'caged-vrauks',
            amount = 1
        }
    },
    results = {
        {
            name = 'guts',
            amount = 2
        }
    },
    energy_required = 15,
    icon = "__pyalienlifegraphics__/graphics/icons/mip/guts-01.png",
    icon_size = 64
}:add_unlock('advanced-rendering')

RECIPE {
    type = 'recipe',
    name = 'ex-frm-vra',
    category = 'slaughterhouse-vrauks',
    subgroup = 'py-alienlife-vrauks',
    enabled = false,
    order = 'ba-f',
    ingredients = {
        {
            name = 'caged-vrauks',
            amount = 1
        }
    },
    results = {
        {
			type = 'fluid',
            name = 'formic-acid',
            amount = 400
        }
    },
    energy_required = 15,
    icon = "__pyalienlifegraphics__/graphics/icons/formic-acid.png",
    icon_size = 64
}:add_unlock('advanced-rendering')

RECIPE {
    type = 'recipe',
    name = 'ex-bra-imp-vra',
    category = 'slaughterhouse-vrauks',
    subgroup = 'py-alienlife-vrauks',
    enabled = false,
    order = 'bb-b',
    ingredients = {
        {
            name = 'brain-caged-vrauks',
            amount = 1
        }
    },
    results = {
        {
            name = 'brain',
            amount = 4
        }
    },
    energy_required = 15,
    icon = "__pyalienlifegraphics__/graphics/icons/brain-caged-vrauks.png",
    icon_size = 64
}:add_unlock('nanochondria')

RECIPE {
    type = 'recipe',
    name = 'ex-me-imp-vra',
    category = 'slaughterhouse-vrauks',
    subgroup = 'py-alienlife-vrauks',
    enabled = false,
    order = 'bb-m',
    ingredients = {
        {
            name = 'meat-caged-vrauks',
            amount = 1
        }
    },
    results = {
        {
            name = 'meat',
            amount = 10
        }
    },
    energy_required = 15,
    icon = "__pyalienlifegraphics__/graphics/icons/meat-caged-vrauks.png",
    icon_size = 64
}:add_unlock('anabolic-rna')

RECIPE {
    type = 'recipe',
    name = 'ex-gut-imp-vra',
    category = 'slaughterhouse-vrauks',
    subgroup = 'py-alienlife-vrauks',
    enabled = false,
    order = 'bb-g',
    ingredients = {
        {
            name = 'guts-caged-vrauks',
            amount = 1
        }
    },
    results = {
        {
            name = 'guts',
            amount = 11
        }
    },
    energy_required = 15,
    icon = "__pyalienlifegraphics__/graphics/icons/guts-caged-vrauks.png",
    icon_size = 64
}:add_unlock('antitumor')

RECIPE {
    type = 'recipe',
    name = 'ex-chi-imp-vra',
    category = 'slaughterhouse-vrauks',
    subgroup = 'py-alienlife-vrauks',
    enabled = false,
    order = 'bb-c',
    ingredients = {
        {
            name = 'chitin-caged-vrauks',
            amount = 1
        }
    },
    results = {
        {
            name = 'chitin',
            amount = 15
        }
    },
    energy_required = 15,
    icon = "__pyalienlifegraphics__/graphics/icons/chitin-caged-vrauks.png",
    icon_size = 64
}:add_unlock('reca')
