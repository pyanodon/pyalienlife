---@diagnostic disable-next-line: assign-type-mismatch
---@class RecipeGUIData
---@field subgroups {[string]: true?}
---@field machines {[data.CraftingMachineName]: true?}
---@field alt_icons {[string]: string?}
local recipe_gui = py.mod_data.recipe_gui

py.assert_type (
    recipe_gui,
    "table",
    "ERROR: pY mod data [recipe_gui] is invalid"
)

py.assert_type (
    recipe_gui.machines,
    "table",
    "ERROR: pY mod data [recipe_gui] has invalid machines"
)

RecipeGUI.permitted_recipes = {}
RecipeGUI.machines = {}

for machine in pairs(recipe_gui.machines) do
    py.assert_type (
        machine,
        "string",
        "ERROR: pY mod data [recipe_gui] has invalid machine"
    )
    py.assert(
        prototypes.entity[machine],
        "ERROR: pY mod data [recipe_gui] has invalid machine"
    )
    py.assert(
        prototypes.entity[machine].crafting_categories,
        "ERROR: pY mod data [recipe_gui] has invalid machine. [%s] is not a CraftingMachine"
    )

    RecipeGUI.machines[machine] = true
    ---@diagnostic disable-next-line: param-type-mismatch
    for category in pairs(prototypes.entity[machine].crafting_categories) do
        RecipeGUI.permitted_recipes[category] = {}
    end
end

RecipeGUI.permitted_recipes.parameters = nil

py.assert_type (
    recipe_gui.subgroups,
    "table",
    "ERROR: pY mod data [recipe_gui] has invalid subgroups"
)

RecipeGUI.subgroups = {}

for subgroup in pairs(recipe_gui.subgroups) do
    py.assert_type (
        subgroup,
        "string",
        "ERROR: pY mod data [recipe_gui] has invalid subgroup"
    )
    -- simple subgroup check
    for g in pairs(prototypes.item_subgroup) do
        if g:find(subgroup, nil, true) then
            RecipeGUI.subgroups[subgroup] = 0
        end
    end
    -- simple recipe check
    if not RecipeGUI.subgroups[subgroup] then
        for r in pairs(prototypes.recipe) do
            if r:find(subgroup, nil, true) then
                RecipeGUI.subgroups[subgroup] = 0
            end
        end
    end
    py.assert (
        RecipeGUI.subgroups[subgroup],
        "ERROR: pY mod data [recipe_gui] could not find item-subgroup or recipe to match provided [%s]",
        subgroup
    )
end

py.assert_type (
    recipe_gui.alt_icons,
    "table",
    "ERROR: pY mod data [recipe_gui] has invalid alt_icons"
)

RecipeGUI.alt_icons = {}

for subgroup, alt in pairs(recipe_gui.alt_icons) do
    py.assert_type (
        subgroup,
        "string",
        "ERROR: pY mod data [recipe_gui] has invalid alt icon subgroup"
    )

    py.assert (
        RecipeGUI.subgroups[subgroup],
        "ERROR: pY mod data [recipe_gui] has invalid alt icon subgroup. [%s] is not a supported subgroup",
        subgroup
    )

    py.assert_type (
        alt,
        "string",
        "ERROR: pY mod data [recipe_gui] has invalid alt icon for [%s]",
        subgroup
    )

    py.assert (
        prototypes.item[alt] or prototypes.fluid[alt] or prototypes.recipe[alt],
        "ERROR: pY mod data [recipe_gui] has invalid alt icon for [%s]. No item, fluid, or recipe found for [%s]",
        subgroup, alt
    )

    RecipeGUI.alt_icons[subgroup] = alt
end

for category in pairs(RecipeGUI.permitted_recipes) do
    for r, recipe in pairs(prototypes.get_recipe_filtered{{filter = "category", category = category}}) do
        for subgroup, count in pairs(RecipeGUI.subgroups) do
            if recipe.subgroup.name:find(subgroup, nil, true) then
                RecipeGUI.permitted_recipes[category][r] = subgroup
                RecipeGUI.subgroups[subgroup] = count + 1
                break
            end
        end
        if not RecipeGUI.permitted_recipes[category][r] then
            -- search by comparing recipe name
            for subgroup, count in pairs(RecipeGUI.subgroups) do
                if recipe.name:find(subgroup, nil, true) then
                    RecipeGUI.permitted_recipes[category][r] = subgroup
                    RecipeGUI.subgroups[subgroup] = count + 1
                    break
                end
            end
        end
        py.assert (
            RecipeGUI.permitted_recipes[category][r],
            "ERROR: pY mod data [recipe_gui] parse category [%s]: Could not find associated recipe selector group for recipe [%s] with subgroup [%s]",
            category, r, recipe.subgroup.name
        )
    end
end

for subgroup, count in pairs(RecipeGUI.subgroups) do
    if count == 0 then
        log(("WARNING: pY mod data [recipe_gui] subgroup [%s] was not used."):format(subgroup))
    end
end
