local noise = require 'noise'
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
            probability_expression = noise.define_noise_function( function(x, y, tile, map)
                -- equiv to: limited_water < 0 and 0 or 1
                local limited_water = noise.clamp(noise.var("wlc_elevation_minimum"), 0, 1)
                -- 0.4% or 1.4%
                return 0.004 + (0.01 * limited_water)
              end),
            order = 'seaweed'
        }
    }
})
