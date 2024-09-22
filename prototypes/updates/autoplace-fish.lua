data:extend{{
    type = "noise-expression",
    name = "py_fish",
    -- 0% chance of spawning in starting area (tier == 0)
    -- Using this is equivalent to has_starting_area_placement = false
    expression = "0.002 + (0.01 * clamp(var('wlc_elevation_minimum'), 0, 1))"
}}
data.raw.fish.fish.minable.result = 'fish'
data.raw.fish.fish.autoplace = {
    probability_expression = "py_fish",
    order = 'fish'
}