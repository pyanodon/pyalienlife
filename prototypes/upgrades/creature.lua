local path_1_module_effect = {consumption = 3, speed = -0.1, productivity = 0, type = "module-effects"}
local path_1_effects = {}
local category = "creature-chamber"
local units = {
    "digosaurus",
    "thikat",
    "work-o-dile",
    "caravan",
    "flyavan",
    "nukavan",
}
local path_3_effects = {}
for _, unit_name in pairs(units) do
    path_3_effects[#path_3_effects + 1] = {type = "recipe-replacement", old = unit_name, new = unit_name .. "-turd"}
end
for _, unit_name in pairs(units) do
    path_3_effects[#path_3_effects + 1] = {type = "unlock-recipe", recipe = unit_name .. "-convert-from-base"}
end

if data and not yafc_turd_integration then
    path_1_effects[#path_1_effects + 1] = path_1_module_effect
    local to_add = {}
    for _, recipe in pairs(data.raw.recipe) do
        if recipe.category == category then
            recipe:standardize()
            local dna_samples = {}
            for _, ingredient in pairs(recipe.ingredients or {}) do
                local name = ingredient[1] or ingredient.name
                if name:match("earth%-.+%-sample") or name == "strorix-unknown-sample" then
                    table.insert(dna_samples, ingredient)
                end
            end
            if #dna_samples ~= 0 then
                local replacement = table.deepcopy(recipe)
                replacement.name = replacement.name .. "-earth-sample-turd"
                replacement.enabled = false
                replacement.main_product = replacement.main_product or replacement.results[1].name or replacement.results[1][1]
                for _, sample in pairs(dna_samples) do
                    local amount = sample.amount or sample[2] or 1
                    local name = sample.name or sample[1]
                    if amount >= 5 then
                        replacement:multiply_ingredient_amount(name, 0.1)
                    else
                        replacement:add_result {type = "item", name = name, amount = amount, probability = 0.8, ignored_by_productivity = amount}
                    end
                end
                to_add[#to_add + 1] = replacement
                path_1_effects[#path_1_effects + 1] = {type = "recipe-replacement", old = recipe.name, new = replacement.name}
            end
        end
    end
    data:extend(to_add)

    local arthurians = {
        "arthurian-codex",
        "arthurian-mk02",
        "arthurian-mk03",
        "arthurian-mk04",
    }
    for i, recipe in pairs {
        RECIPE("creature-chamber-mk01"):copy(),
        RECIPE("creature-chamber-mk02"):copy(),
        RECIPE("creature-chamber-mk03"):copy(),
        RECIPE("creature-chamber-mk04"):copy(),
    } do
        recipe.name = recipe.name .. "-arthurian"
        recipe:add_ingredient {type = "item", name = arthurians[i], amount = 1}
        data:extend {recipe}
    end

    for _, unit_name in pairs(units) do
        local unit = table.deepcopy(data.raw.unit[unit_name])
        local recipe = RECIPE(unit_name):copy()
        local item = table.deepcopy(data.raw.item[unit_name] or data.raw["item-with-tags"][unit_name] or data.raw.module[unit_name])
        if not item then error("no item for " .. unit_name) end
        local name = unit_name .. "-turd"

        unit.name = name
        unit.movement_speed = unit.movement_speed * 1.35
        unit.max_health = unit.max_health * 1.35
        unit.distance_per_frame = unit.distance_per_frame * 1.35
        if unit.minable and unit.minable.result then unit.minable.result = name end
        unit.localised_name = unit.localised_name or {"entity-name." .. unit_name}
        unit.localised_description = unit.localised_description or {"?", {"entity-description." .. unit_name}, ""}

        recipe.name = name
        recipe.energy_required = recipe.energy_required * 4
        recipe.results = nil
        recipe.result = name
        recipe.result_count = 1

        item.name = name
        if item.place_result then item.place_result = name end
        item.icons = {
            {icon = item.icon, icon_size = item.icon_size, tint = {1, 1, 0.6}},
        }
        item.icon = nil

        local convert_recipe = {
            type = "recipe",
            name = unit_name .. "-convert-from-base",
            enabled = false,
            category = "crafting",
            energy_required = 0.5,
            ingredients = {{type = "item", name = unit_name, amount = 1}},
            results = {{type = "item", name = name, amount = 1}},
        }

        if unit_name == "caravan" or unit_name == "flyavan" or unit_name == "nukavan" then
            convert_recipe.localised_description = {"recipe-description.will-delete-metadata-warning"}
        end

        data:extend {unit, recipe, item, convert_recipe}
    end
elseif script then
    path_1_effects = function()
        local result = {path_1_module_effect}
        for _, recipe in pairs(prototypes.get_recipe_filtered {{filter = "category", category = category}}) do
            if recipe.name:match(".+%-earth%-sample%-turd") then
                result[#result + 1] = {type = "recipe-replacement", old = recipe.name:gsub("%-earth%-sample%-turd", ""), new = recipe.name}
            end
        end
        return result
    end
end

return {
    affected_entities = { -- the entities that should be effected by this tech upgrade
        "creature-chamber-mk01",
        "creature-chamber-mk02",
        "creature-chamber-mk03",
        "creature-chamber-mk04",
    },
    master_tech = { -- tech that is shown in the tech tree
        name = "creature-chamber-upgrade",
        icon = "__pyalienlifegraphics3__/graphics/technology/updates/u-creature.png",
        icon_size = 128,
        order = "c-a",
        prerequisites = {"domestication"},
        unit = {
            count = 500,
            ingredients = {
                {"automation-science-pack", 1},
                {"py-science-pack-1",       1},
            },
            time = 45
        }
    },
    sub_techs = {
        {
            name = "respiratory",
            icon = "__pyalienlifegraphics3__/graphics/technology/respiratory.png",
            icon_size = 128,
            order = "c-a",
            effects = path_1_effects
        },
        {
            name = "neural-fusion",
            icon = "__pyalienlifegraphics3__/graphics/technology/neural-fusion.png",
            icon_size = 128,
            order = "c-a",
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'recipe-replacement', 'machine-replacement'
                {consumption = 10,            speed = 10,                    productivity = 0,                       type = "module-effects"},
                {type = "unlock-recipe",      recipe = "arthurian-codex",    also_unlocked_by_techs = true},
                {type = "recipe-replacement", old = "creature-chamber-mk01", new = "creature-chamber-mk01-arthurian"},
                {type = "recipe-replacement", old = "creature-chamber-mk02", new = "creature-chamber-mk02-arthurian"},
                {type = "recipe-replacement", old = "creature-chamber-mk03", new = "creature-chamber-mk03-arthurian"},
                {type = "recipe-replacement", old = "creature-chamber-mk04", new = "creature-chamber-mk04-arthurian"},
            }
        },
        {
            name = "cc",
            icon = "__pyalienlifegraphics3__/graphics/technology/cc.png",
            icon_size = 128,
            order = "c-a",
            effects = path_3_effects
        }
    },
    module_category = "creature-chamber",
}
