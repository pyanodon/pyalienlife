local noise = require("noise")
data.raw.fish.fish.minable.result = 'fish'
data.raw.fish.fish.autoplace = {
    probability_expression = noise.define_noise_function( function(x, y, tile, map)
        -- equiv to: limited_water < 0 and 0 or 1
        local limited_water = noise.clamp(noise.var("wlc_elevation_minimum"), 0, 1)
        -- 0.2% or 1.2%
        return 0.002 + (0.01 * limited_water)
      end),
    order = 'fish'
}