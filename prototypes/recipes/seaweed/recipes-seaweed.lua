--------------------------SEA WEED-----------------------
data:extend({
    {
        type = 'tree',
        name = 'seaweed',
        icon = '__pyalienlifegraphics__/graphics/icons/seaweed.png',
        icon_size = 64,
        flags = {'placeable-neutral', 'not-on-map'},
        minable = {mining_time = 0.4, result = 'seaweed', count = 2},
        max_health = 20,
        subgroup = 'creatures',
        order = 'b-a',
        collision_box = {{-0.75, -0.75}, {0.75, 0.75}},
        selection_box = {{-0.5, -0.3}, {0.5, 0.3}},
        collision_mask = {"ground-tile", "colliding-with-tiles-only"},
        pictures = {
            {
                filename = '__pyalienlifegraphics2__/graphics/icons/seaweed-water-01.png',
                priority = 'extra-high',
                blend_mode = 'additive-soft',
                width = 32,
                height = 32
            },
            {
                filename = '__pyalienlifegraphics2__/graphics/icons/seaweed-water-02.png',
                priority = 'extra-high',
                blend_mode = 'additive-soft',
                width = 32,
                height = 32
            },
            {
                filename = '__pyalienlifegraphics2__/graphics/icons/seaweed-water-02.png',
                priority = 'extra-high',
                blend_mode = 'additive-soft',
                width = 32,
                height = 32
            },
            {
                filename = '__pyalienlifegraphics2__/graphics/icons/seaweed-water-02.png',
                priority = 'extra-high',
                blend_mode = 'additive-soft',
                width = 32,
                height = 32
            }
        },
        autoplace = {
            influence = 0.0007,
            min_influence = 0.0001,
            max_influence = 0.01,
            order = 'seaweed'
        }
    }
})

-- Secondary Upgrade Recipes--
-- SUR--
-- WIP--

-- mk02--
-- DONE--

RECIPE{
    type = 'recipe',
    name = 'seaweed-mk02',
    category = 'seaweed',
    enabled = true,
    energy_required = 25,
    ingredients = {
        {type = 'fluid', name = 'water', amount = 200}, {type = 'item', name = 'molybdenum-oxide', amount = 5},
        {type = 'item', name = 'fertilizer', amount = 1}, {type = 'item', name = 'seaweed', amount = 5}
    },
    results = {{type = 'item', name = 'seaweed-mk02', amount = 1}}
}:add_unlock('selective-breeding')
