RECIPE {
    type = 'recipe',
    name = 'ralesia-super-1',
    category = 'ralesia-farm',
    enabled = false,
    energy_required = 80,
    ingredients = {
        {type = 'item', name = 'soil', amount = 1000},
        {type = 'fluid', name = 'water', amount = 3000},
        {type = 'fluid', name = 'hydrogen', amount = 2000},
        {type = 'item', name = 'stone', amount = 100},
    },
    results = {
        {type = 'item', name = 'ralesias', amount = 1},
    },
}:add_unlock("mega-farm-ralesia")