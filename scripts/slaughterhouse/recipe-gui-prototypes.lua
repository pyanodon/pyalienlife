---@diagnostic disable: unnecessary-assert, undefined-field, assign-type-mismatch

---@class RecipeGUIData
---@field subgroups {[string]: true?}
---@field machines {[data.CraftingMachineName]: true?}
---@field alt_icons {[string]: string?}
local recipe_gui = py.mod_data.recipe_gui

local assert = function(value, str, param1, param2, param3, param4)
    if value then return end
    error (str:format(param1, param2, param3, param4), 0)
end

local type_assert = function(value, vtype, str, param1, param2, param3, param4)
    assert (value and type(value) == vtype, (str .. " Expected " .. vtype .. ", found " .. type(value) .. "."):format(param1, param2, param3, param4))
end

type_assert (
    recipe_gui,
    "table",
    "ERROR: pY mod data [recipe_gui] not found."
)

type_assert (
    recipe_gui.machines,
    "table",
    "ERROR: pY mod data [recipe_gui] has invalid machines."
)

RecipeGUI.permitted_recipes = {}
RecipeGUI.machines = {}

for machine in pairs(recipe_gui.machines) do
    type_assert (
        machine,
        "string",
        "ERROR: pY mod data [recipe_gui] has invalid machine."
    )
    assert(
        prototypes.entity[machine],
        "ERROR: pY mod data [recipe_gui] has invalid machine."
    )
    assert(
        prototypes.entity[machine].crafting_categories,
        "ERROR: pY mod data [recipe_gui] has invalid machines. [%s] is missing field crafting_categories"
    )

    RecipeGUI.machines[machine] = true
    for category in pairs(prototypes.entity[machine].crafting_categories) do
      RecipeGUI.permitted_recipes[category] = {}
    end
end

RecipeGUI.permitted_recipes.parameters = nil

type_assert (
    recipe_gui.subgroups,
    "table",
    "ERROR: pY mod data [recipe_gui] has invalid subgroups."
)

RecipeGUI.subgroups = {}

for subgroup in pairs(recipe_gui.subgroups) do
    type_assert (
        subgroup,
        "string",
        "ERROR: pY mod data [recipe_gui] has invalid subgroup."
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
    assert (
        RecipeGUI.subgroups[subgroup],
        "ERROR: pY mod data [recipe_gui] could not find item-subgroup or recipe to match provided [%s].",
        subgroup
    )
end

type_assert (
    recipe_gui.alt_icons,
    "table",
    "ERROR: pY mod data [recipe_gui] has invalid alt_icons."
)

RecipeGUI.alt_icons = {}

for subgroup, alt in pairs(recipe_gui.alt_icons) do
    type_assert (
        subgroup,
        "string",
        "ERROR: pY mod data [recipe_gui] has invalid alt icon subgroup."
    )

    assert (
        RecipeGUI.subgroups[subgroup],
        "ERROR: pY mod data [recipe_gui] has invalid alt icon subgroup. [%s] is not a supported subgroup.",
        subgroup
    )

    type_assert (
        alt,
        "string",
        "ERROR: pY mod data [recipe_gui] has invalid alt icon for [%s].",
        subgroup
    )

    assert (
        prototypes.item[alt] or prototypes.fluid[alt] or prototypes.recipe[alt],
        "ERROR: pY mod data [recipe_gui] has invalid alt icon for [%s]. No item, fluid, or recipe found for [%s].",
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
        if not RecipeGUI.permitted_recipes[category][r] then
            error("ERROR: pY mod data [recipe_gui] parse category [" .. category .. "]: Could not find associated recipe selector group for recipe: " .. r .. " with subgroup: " .. recipe.subgroup.name, 0)
        end
    end
end

for subgroup, count in pairs(RecipeGUI.subgroups) do
    if count == 0 then
        error("ERROR: pY mod data [recipe_gui] subgroup [" .. subgroup .. "] was not used.\n", 0)
    end
end
