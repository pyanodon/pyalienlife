--tech: the tech that is required to be researched for the new recipe
--oldrecipe: the recipe that is currently being used
--newrecipe: the recipe that you want set on the machines using the old recipe


local TRlist =
{
    upgrades =
    {
        {
            base_recipe = "auog-manure-1",
            current_lvl = 1,
            upgrade_1 =
            {
                recipe = "auog-manure-1a",
                tech = "bigger-colon",
                unlocked = false,
                level = 2,
            },
            upgrade_2 =
            {
                recipe = "auog-manure-1b",
                tech = "explosive-diarrhea",
                unlocked = false,
                level = 3,
            },
        },
    },
    techs_with_upgrades =
    {
        ["bigger-colon"] = true,
    },
}

return (TRlist)
