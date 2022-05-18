RECIPE {
    type = 'recipe',
    name = 'full-render-vrauks',
    category = 'slaughterhouse-vrauks',
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item", name = 'caged-vrauks', amount = 1 }
    },
    results = {
        {type = "item", name = 'meat', amount = 2 },
        {type = "item", name = 'chitin', amount = 1 },
        {type = "item", name = 'guts', amount = 2 },
        {type = "fluid", name = 'formic-acid', amount = 200 },
        {type = "item", name = 'brain', amount = 1 },
        {type = "item", name = 'cage', amount = 1 }
    },
    icon = '__pyalienlifegraphics__/graphics/icons/rendering-vrauks.png',
    icon_size = 64,
    subgroup = 'py-alienlife-vrauks',
    order = 'b'
}:add_unlock("rendering")
