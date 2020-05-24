require("__stdlib__/stdlib/data/data").Util.create_data_globals()
require("__pycoalprocessing__/prototypes/functions/functions")
--local fun = require("prototypes/functions/functions")

if mods["pyfusionenergy"] then
    require("prototypes/updates/pyfusionenergy-updates")
end

if mods["pyrawores"] then
    require("prototypes/updates/pyrawores-updates")
end

if mods["pyhightech"] then
    require("prototypes/technologies/kicalk")
    require("prototypes/technologies/schrodinger-antelope")
    require("prototypes/buildings/antelope-enclosure-mk01")
    require("prototypes/updates/pyhightech-updates")
end

if mods["pycoalprocessing"] then
    require("prototypes/updates/pycoalprocessing-updates")
end

if mods["pypetroleumhandling"] then
    require("prototypes/updates/pypetroleumhandling-updates")
end

--ADAPTATIONS

data.raw.fish.fish.minable.result = 'fish'
--data.raw.fish.fish = nil

data.raw.item.fawogae = nil

for _, recipe in pairs(data.raw.recipe) do
    local r = RECIPE(recipe)
    r:replace_ingredient('py-fertilizer', 'fertilizer')
end

for _, recipe in pairs(data.raw.recipe) do
    local r = RECIPE(recipe)
    r:replace_ingredient('organics', 'biomass')
    r:replace_ingredient('ralesia', 'ralesias')
    r:replace_ingredient('raw-fish', 'fish')
end

for _, recipe in pairs(data.raw.recipe) do
    local r = RECIPE(recipe)
    r:replace_ingredient('xyhiphoe-blood', 'arthropod-blood')
end

--fun.global_item_replacer('fawogae', 'fawogae-mk01')

TECHNOLOGY('fluid-handling'):remove_pack('logistic-science-pack')
TECHNOLOGY('automation-2'):remove_pack('logistic-science-pack')
TECHNOLOGY('exoskeleton-equipment'):remove_prereq('electric-engine'):remove_prereq('solar-panel-equipment'):add_prereq('bio-implants')
TECHNOLOGY('exoskeleton-equipment'):add_pack('production-science-pack')
ITEM("raw-fish", "capsule"):set("icon", "__pyalienlifegraphics__/graphics/icons/fish.png")
ITEM("raw-fish", "capsule"):set("icon_size", 32)
RECIPE('modular-armor'):add_ingredient({type = "item", name = "pelt", amount = 1})
RECIPE('low-density-structure'):add_ingredient({type = "item", name = "metallic-glass", amount = 3}):add_ingredient({type = "item", name = "ticocr-alloy", amount = 2})
RECIPE('rocket-silo'):add_ingredient({type = "item", name = "metallic-glass", amount = 30}):add_ingredient({type = "item", name = "ticocr-alloy", amount = 20})
TECHNOLOGY('atomic-bomb'):remove_pack('utility-science-pack'):remove_pack('production-science-pack'):remove_prereq('rocket-control-unit'):remove_prereq('kovarex-enrichment-process'):remove_prereq('military-4'):remove_prereq('rocketry'):add_prereq('domestication-mk02'):add_prereq('uranium-mk03')
RECIPE('atomic-bomb'):add_ingredient({type = "item", name = "titanium-plate", amount = 20}):add_ingredient({type = "item", name = "fuelrod-mk01", amount = 10}):remove_ingredient("rocket-control-unit"):remove_ingredient("yellow-cake"):add_ingredient({type = "item", name = "neuromorphic-chip", amount = 1})

--RECIPES UPDATES

RECIPE {
    type = 'recipe',
    name = 'concrete-02',
    category = 'advanced-crafting',
    enabled = false,
    energy_required = 8,
    ingredients = {
        {type = 'item', name = 'stone-brick', amount = 5},
        {type = 'fluid', name = 'water', amount = 100},
        {type = 'fluid', name = 'boric-acid', amount = 400},
        {type = 'item', name = 'cellulose', amount = 4},
    },
    results = {
        {type = 'item', name = 'concrete', amount = 20},
    },
    --main_product = "cocoon",
}:add_unlock("biotech-mk02")

table.insert(data.raw.lab.lab.inputs, 'py-science-pack')

--copy`s of combustion recipes with biomass
for _,recipe in pairs(data.raw.recipe) do
    --log('hit')
    if recipe.category == 'combustion' and string.match(recipe.name, 'biomass') == nil then
        --log('hit')
        local recipe_copy = table.deepcopy(recipe)
        local name = recipe_copy.name

        for i, ing in pairs(recipe_copy.ingredients) do
            --log('hit')
            if ing.name == 'coke' then
                ing.name = 'biomass'
                local locale
                local type
                local temp
                for _, ingred in pairs(recipe.ingredients) do
                    if ingred.name ~= 'water' and ingred.name ~= 'coke' then
                        locale = ingred.name
                        type = ingred.type
                    end
                end
                log(serpent.block(recipe.ingredients))
                log(locale)
                for _, result in pairs(recipe.results) do
                    if result.name == "combustion-mixture1" then
                        temp = result.temperature
                    end
                end
                RECIPE {
                    type = "recipe",
                    name = name .. '-biomass',
                    category = "combustion",
                    enabled = false,
                    energy_required = 3,
                    ingredients = recipe_copy.ingredients,
                    results = recipe_copy.results,
                    icon = recipe_copy.icon,
                    icon_size = recipe_copy.icon_size,
                    --main_product = "combustion-mixture1",
                    subgroup = recipe_copy.subgroup,
                    order = recipe_copy.order,
                    localised_name = {'', {type .. '-name.' .. locale}, ' with ',{'item-name.biomass'}, ' to combustion mixture (' .. temp .. '°C)' }
                }
                --log('hit')
                for _, tech in pairs(data.raw.technology) do
                    --log('hit')
                    --log(serpent.block(tech))
                    if tech.effects ~= nil then
                        for _, effect in pairs(tech.effects) do
                            --log('hit')
                            --log(serpent.block(effect))
                            --log(serpent.block(effect.type))
                            --log(serpent.block(effect.recipe))
                            --log(serpent.block(name))
                            if effect.type == 'unlock-recipe' and effect.recipe == name then
                                --log('hit')
                                RECIPE(name .. '-biomass'):add_unlock(tech.name)
                                --log(serpent.block(data.raw.technology[tech.name]))
                                break
                            end
                        end
                    end
                    --break
                end
            end
        end
        --log(serpent.block(data.raw.recipe[name .. '-biomass']))
    end
end
