local farm =
{
    seed = "replicator-bioreserve", --the seed being planted
    crop = "ore-bioreserve",     --the 'ore' that is spawned
    recipes =                    --all the recipes that use these seeds to grow the crop
    {
        {
            recipe_name = "bioreserve-super-1", -- recipe name
            crop_output = 1            -- crop yield
        },
        {
            recipe_name = "bioreserve-super-2", -- recipe name
            crop_output = 2            -- crop yield
        },
        {
            recipe_name = "bioreserve-super-3", -- recipe name
            crop_output = 3            -- crop yield
        },
        {
            recipe_name = "bioreserve-super-4", -- recipe name
            crop_output = 4            -- crop yield
        },
        {
            recipe_name = "bioreserve-super-5", -- recipe name
            crop_output = 5            -- crop yield
        },
        {
            recipe_name = "bioreserve-super-6", -- recipe name
            crop_output = 6            -- crop yield
        },
        {
            recipe_name = "bioreserve-super-7", -- recipe name
            crop_output = 7            -- crop yield
        },
    }
}

return farm
