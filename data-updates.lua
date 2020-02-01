require("__stdlib__/stdlib/data/data").Util.create_data_globals()
local FUN = require("__pycoalprocessing__/prototypes/functions/functions")

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

for _, recipe in pairs(data.raw.recipe) do
    local r = RECIPE(recipe)
    r:replace_ingredient('py-fertilizer', 'fertilizer')
end

for _, recipe in pairs(data.raw.recipe) do
    local r = RECIPE(recipe)
    r:replace_ingredient('organics', 'biomass')
    r:replace_ingredient('raw-fish', 'fish')
end

for _, recipe in pairs(data.raw.recipe) do
    local r = RECIPE(recipe)
    r:replace_ingredient('xyhiphoe-blood', 'arthropod-blood')
end

TECHNOLOGY('fluid-handling'):remove_pack('logistic-science-pack')
TECHNOLOGY('automation-2'):remove_pack('logistic-science-pack')
TECHNOLOGY('exoskeleton-equipment'):remove_prereq('electric-engine'):remove_prereq('solar-panel-equipment'):add_prereq('bio-implants')
TECHNOLOGY('exoskeleton-equipment'):add_pack('production-science-pack')
ITEM("raw-fish", "capsule"):set("icon", "__pyalienlifegraphics__/graphics/icons/fish.png")
ITEM("raw-fish", "capsule"):set("icon_size", 32)
RECIPE('modular-armor'):add_ingredient({type = "item", name = "pelt", amount = 1})

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
        {type = 'fluid', name = 'boric-acid', amount = 50},
        {type = 'item', name = 'cellulose', amount = 4},
    },
    results = {
        {type = 'item', name = 'concrete', amount = 20},
    },
    --main_product = "cocoon",
}:add_unlock("biotech-mk02")
