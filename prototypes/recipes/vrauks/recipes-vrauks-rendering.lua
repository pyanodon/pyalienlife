RECIPE {
    type = 'recipe',
    name = 'full-render-vrauks',
    category = 'slaughterhouse-vrauks',
    enabled = false,
    energy_required = 10,
    ingredients = {
        { name = 'caged-vrauks', amount = 1 }
    },
    results = {
        { name = 'meat', amount = 2 },
        { name = 'chitin', amount = 1 },
        { name = 'guts', amount = 2 },
        { name = 'formic-acid', amount = 200 },
        { name = 'brain', amount = 1 },
        { name = 'cage', amount = 1 }
    },
    icon = '__pyalienlifegraphics__/graphics/icons/rendering-vrauks.png',
    icon_size = 64,
    subgroup = 'py-alienlife-vrauks',
    order = 'b'
}:add_unlock("rendering")
