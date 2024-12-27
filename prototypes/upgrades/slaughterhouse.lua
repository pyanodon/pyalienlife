local pyAE = (data and mods.pyalternativeenergy) or (script and script.active_mods.pyalternativeenergy)
local pySE = (data and mods.pystellarexpedition) or (script and script.active_mods.pystellarexpedition)



local rendering_recipes = {
    "full-render-zipir",
    "full-render-dhilmoss",
    "full-render-xenos",
    "full-render-kor",
    "full-render-auogs",
    "ex-used-auog",
    "full-render-mukmoux",
    "full-render-scrondrixs",
    "full-render-ulrics",
    "full-render-phagnots",
    "full-render-simik",
    "full-render-cottongut",
    "full-render-arthurian",
    "full-render-arqads",
    "full-render-phadais",
    "ex-used-dingrits",
    "full-render-dingrits",
    "full-render-kmauts",
    "full-render-trit",
    "full-render-vonix",
    "full-render-vrauks",
    "full-render-xyhiphoe",
    "full-render-fish",
}
if pyAE then
    table.insert(rendering_recipes, "full-render-num")
    table.insert(rendering_recipes, "full-render-zun")
end
if pySE then
    table.insert(rendering_recipes, "full-render-kakkalakki")
    --table.insert(rendering_recipes, 'full-render-riga')
    --table.insert(rendering_recipes, 'full-render-tuls')
end

if data and not yafc_turd_integration then

    -- PATH 1 -> Recipes with multiple creature giving the sum of both + some bonus
    local g_mixData = {
        { name = "slaughterhouse-path1-brains", main = "brain", body1 = "full-render-arthurian", body2 = "full-render-cottongut", ratio = 1.5},
        { name = "slaughterhouse-path1-lard", main = "mukmoux-fat", body1 = "full-render-mukmoux", body2 = "full-render-trit", ratio = 2},
        { name = "slaughterhouse-path1-blood", main = "blood", body1 = "full-render-ulrics", body2 = "full-render-auogs", ratio = 2},
        { name = "slaughterhouse-path1-meat", main = "meat", body1 = "full-render-kor", body2 = "full-render-auogs", ratio = 2},
        { name = "slaughterhouse-path1-chitin", main = "chitin", body1 = "full-render-dhilmoss", body2 = "full-render-vrauks", ratio = 2},
        { name = "slaughterhouse-path1-arthropod-blood", main = "arthropod-blood", body1 = "full-render-xyhiphoe", body2 = "full-render-zipir", ratio = 2},
        { name = "slaughterhouse-path1-guts", main = "guts", body1 = "full-render-xyhiphoe", body2 = "full-render-fish", ratio = 2},
        { name = "slaughterhouse-path1-skin", main = "skin", body1 = "full-render-cottongut", body2 = "full-render-mukmoux", ratio = 2},
        { name = "slaughterhouse-path1-bones", main = "bones", body1 = "full-render-phagnots", body2 = "full-render-scrondrixs", ratio = 2},
    }

    -- Melding recipes together. The py lib can do it for ingredients but not for results, hence this
    for _,d in ipairs(g_mixData) do
        local r2 = RECIPE(d.body2):copy()
        local recipe = RECIPE(d.body1):copy(function(r) return d.name end)
        recipe.localised_name = recipe.localised_name or {"recipe-name." .. d.name}
 
        for _, ingredient in pairs(r2.ingredients) do
            recipe:add_ingredient(ingredient)
        end
        for _, result in pairs(r2.results) do
            local done = false;
            for _, existing in pairs(recipe.results) do
                if existing.name == result.name and existing.type == result.type then
                    if existing.amount and result.amount then
                        existing.amount = existing.amount + result.amount
                        existing.ignored_by_productivity = (existing.ignored_by_productivity or 0) + (result.ignored_by_productivity or 0)
                        done = true
                        break
                    end
                end
            end
            if false == done then recipe:add_result(result) end
        end
        for _, result in pairs(recipe.results) do
            if (result[1] or result.name) == d.main then
                recipe:multiply_result_amount(d.main, d.ratio)
                break
            end
        end
        data:extend {recipe}
    end

    -- PATH 2 -> Violent slaughtering damages the building when processing. Building runs 10x faster. Make sure you have constant supply of repair packs otherwise the machine will break completely.

    for i = 1, 4 do
        local name = "slaughterhouse-mk0" .. i
        local entity = table.deepcopy(data.raw["assembling-machine"][name])
        entity.localised_name = {"entity-name." .. name}
        entity.localised_description = entity.localised_description or {"entity-description." .. name}
        entity.name = "violent-" .. name
        if i ~= 4 then
            entity.next_upgrade = "violent-slaughterhouse-mk0" .. (i + 1)
        end
        entity.crafting_speed = entity.crafting_speed * 10
        entity.placeable_by = {item = name, count = 1}
        entity.max_health = 400*i
        entity.hidden = true
        entity.hidden_in_factoripedia = true
        entity.production_health_effect = {
            producing = (-0.0005*i),
            not_producing = 0,
        }
        data:extend {entity}
    end

    -- PATH 3 -> Allow vatbrains to effect slaughterhouses. Reduces processing speed of all slaughterhouses. Big Net negative if not using vatbrains, but with them ....

    for i = 1, 4 do
        local name = "slaughterhouse-mk0" .. i
        local entity = table.deepcopy(data.raw["assembling-machine"][name])
        entity.localised_name = {"entity-name." .. name}
        entity.localised_description = entity.localised_description or {"entity-description." .. name}
        entity.name = "smart-" .. name
        if i ~= 4 then
            entity.next_upgrade = "smart-slaughterhouse-mk0" .. (i + 1)
        end
        entity.placeable_by = {item = name, count = 1}
        entity.allowed_module_categories = {"vatbrain", "speed"}
        entity.crafting_speed = entity.crafting_speed * 0.25
        entity.hidden = true
        entity.hidden_in_factoripedia = true
        data:extend {entity}
    end
end

return {
    affected_entities = { -- the entities that should be effected by this tech upgrade
        "slaughterhouse-mk01",
        "slaughterhouse-mk02",
        "slaughterhouse-mk03",
        "slaughterhouse-mk04",
    },
    master_tech = { -- tech that is shown in the tech tree
        name = "slaughterhouse-upgrade",
        icon = "__pyalienlifegraphics3__/graphics/technology/updates/u-slaugterhouse.png",
        icon_size = 128,
        order = "c-a",
        prerequisites = {"laser-turret", "biotech-machines-mk02"},
        unit = {
            count = 500,
            ingredients = {
                {"automation-science-pack", 1},
                {"logistic-science-pack",   1},
                {"military-science-pack",   1},
                {"chemical-science-pack",   1},
            },
            time = 45
        }
    },

    sub_techs = {
        {
            name = "laser-cutting",
            icon = "__pyalienlifegraphics3__/graphics/technology/laser-cutting.png",
            icon_size = 128,
            order = "c-a",
            effects = {
                {recipe = "slaughterhouse-path1-brains", type = "unlock-recipe"},
                {recipe = "slaughterhouse-path1-lard", type = "unlock-recipe"},
                {recipe = "slaughterhouse-path1-blood", type = "unlock-recipe"},
                {recipe = "slaughterhouse-path1-meat", type = "unlock-recipe"},
                {recipe = "slaughterhouse-path1-chitin", type = "unlock-recipe"},
                {recipe = "slaughterhouse-path1-arthropod-blood", type = "unlock-recipe"},
                {recipe = "slaughterhouse-path1-guts", type = "unlock-recipe"},
                {recipe = "slaughterhouse-path1-skin", type = "unlock-recipe"},
                {recipe = "slaughterhouse-path1-bones", type = "unlock-recipe"}
            }
        },
        {
            name = "mercy-killing",
            icon = "__pyalienlifegraphics3__/graphics/technology/mercy-killing.png",
            icon_size = 128,
            order = "c-a",
            effects = {
                {type = "machine-replacement", old = "slaughterhouse-mk01", new = "violent-slaughterhouse-mk01"},
                {type = "machine-replacement", old = "slaughterhouse-mk02", new = "violent-slaughterhouse-mk02"},
                {type = "machine-replacement", old = "slaughterhouse-mk03", new = "violent-slaughterhouse-mk03"},
                {type = "machine-replacement", old = "slaughterhouse-mk04", new = "violent-slaughterhouse-mk04"},
            }
        },
        {
            name = "lard-machine",
            icon = "__pyalienlifegraphics3__/graphics/technology/lard-machine.png",
            icon_size = 128,
            order = "c-a",
            effects = {
                {type = "machine-replacement", old = "slaughterhouse-mk01", new = "smart-slaughterhouse-mk01"},
                {type = "machine-replacement", old = "slaughterhouse-mk02", new = "smart-slaughterhouse-mk02"},
                {type = "machine-replacement", old = "slaughterhouse-mk03", new = "smart-slaughterhouse-mk03"},
                {type = "machine-replacement", old = "slaughterhouse-mk04", new = "smart-slaughterhouse-mk04"},
            }
        }
    }
}
