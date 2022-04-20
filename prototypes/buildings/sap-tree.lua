----------------------------------------------------------------
-- From base/prototypes/entity/tree.lua
----------------------------------------------------------------
local starting_area_clearing_radius = 128
local starting_area_clearing_border_width = 64

local starting_area_clearing_peak = {
    influence = -0.25,
    richness_influence = 0,
    distance_optimal = 0,
    distance_range = starting_area_clearing_radius - starting_area_clearing_border_width,
    distance_max_range = starting_area_clearing_radius + starting_area_clearing_border_width,
    distance_top_property_limit = starting_area_clearing_radius -- must be halfway between range and max_range so that influence never becomes positive!
}

local function tree_autoplace2(options)
    local temperature_optimal = options.temperature_optimal
    local temperature_range = options.temperature_range
    local water_optimal = options.water_optimal
    local water_range = options.water_range
    local static_influence = options.static_influence or 0 -- Added to influence
    local tree_noise_influence = options.tree_noise_influence or 1 -- Multiplied by noise
    local richness_base = options.richness_base or 0
    local richness_multiplier = options.richness_multiplier or 1

    static_influence = static_influence - 0.75 -- Less trees everywhere!
    tree_noise_influence = tree_noise_influence * 0.5 -- Less noise everywhere!

    local tree_noise_layer_name = "trees-" .. options.tree_name
    if tree_noise_influence ~= 0 then data:extend{{type = "noise-layer", name = tree_noise_layer_name}} end

    return {
        control = "trees",
        order = "a[tree]-b[forest]",
        max_probability = 0.45,
        random_probability_penalty = 1e-3,
        sharpness = 0.4,
        richness_base = richness_base,
        richness_multiplier = richness_multiplier,
        peaks = {
            {
                -- increase richness everywhere to reduce
                -- large groups of unhealthy trees
                influence = 0,
                richness_influence = 0.75
            },
            {influence = static_influence, richness_influence = -static_influence},
            {
                -- Give each tree type its own noise layer to add some randomness
                -- to the boundaries between types of forests.
                -- This results in more forest coverage overall so has to be countered
                -- with more negative static influence.
                influence = tree_noise_influence * 3 / 4,
                richness_influence = -tree_noise_influence,
                noise_layer = tree_noise_layer_name,
                noise_persistence = 0.8,
                noise_octaves_difference = -0.5
            },
            {
                influence = tree_noise_influence,
                richness_influence = -tree_noise_influence,
                noise_layer = "trees",
                noise_persistence = 0.6,
                noise_octaves_difference = -0.5
            },
            {
                influence = 1,
                richness_influence = 0,
                temperature_optimal = temperature_optimal,
                temperature_range = temperature_range,
                temperature_max_range = temperature_range * 1.5,
                water_optimal = water_optimal,
                water_range = water_range,
                water_max_range = water_range * 1.5
            },
            starting_area_clearing_peak
        }
    }
end

-- static_influence is added
-- tree_noise_influence is multiplied by tree noise, the result of which is added
local function tree_autoplace(
    temperature_optimal,
    temperature_range,
    water_optimal,
    water_range,
    static_influence,
    tree_noise_influence
)
    return tree_autoplace2 {
        temperature_optimal = temperature_optimal,
        temperature_range = temperature_range,
        water_optimal = water_optimal,
        water_range = water_range,
        static_influence = static_influence,
        tree_noise_influence = tree_noise_influence
    }
end

----------------------------------------------------------------
----------------------------------------------------------------


