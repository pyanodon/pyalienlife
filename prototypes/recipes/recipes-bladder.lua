local fun = require("prototypes/functions/functions")

RECIPE {
    type = 'recipe',
    name = 'gas-bladder-to-acetylene',
    category = 'gas-separator',
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = 'item', name = 'gas-bladder', amount = 1},
    },
    results = {
        {type = 'fluid', name = 'acetylene', amount = 40}
    }
}:add_unlock('phagnot-mk02'):change_category('gas-refinery')

RECIPE {
    type = 'recipe',
    name = 'gas-bladder-to-rich-gas',
    category = 'gas-separator',
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = 'item', name = 'gas-bladder', amount = 1},
    },
    results = {
        {type = 'fluid', name = 'rich-gas', amount = 30}
    }
}:add_unlock('phagnot-mk03'):change_category('gas-refinery')

RECIPE {
    type = 'recipe',
    name = 'gas-bladder-to-helium',
    category = 'gas-separator',
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = 'item', name = 'gas-bladder', amount = 1},
    },
    results = {
        {type = 'fluid', name = 'helium', amount = 10}
    }
}:add_unlock('phagnot-mk03'):change_category('gas-refinery')

RECIPE {
    type = 'recipe',
    name = 'gas-bladder-to-co2',
    category = 'gas-separator',
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = 'item', name = 'gas-bladder', amount = 1},
    },
    results = {
        {type = 'fluid', name = 'carbon-dioxide', amount = 50}
    }
}:add_unlock('phagnot'):change_category('gas-refinery')

RECIPE {
    type = 'recipe',
    name = 'gas-bladder-to-chlorine',
    category = 'gas-separator',
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = 'item', name = 'gas-bladder', amount = 1},
    },
    results = {
        {type = 'fluid', name = 'chlorine', amount = 30}
    }
}:add_unlock('phagnot-mk03'):change_category('gas-refinery')

RECIPE {
    type = 'recipe',
    name = 'gas-bladder-to-hydrogen',
    category = 'gas-separator',
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = 'item', name = 'gas-bladder', amount = 1},
    },
    results = {
        {type = 'fluid', name = 'hydrogen', amount = 200}
    }
}:add_unlock('phagnot-mk03'):change_category('gas-refinery')