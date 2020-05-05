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

--data.raw.recipe['cottongut-science-red-seeds'].ingredients = table.deepcopy(data.raw.recipe['automation-science-pack'].ingredients)

--data.raw.recipe['cottongut-science-green-seeds'].ingredients = table.deepcopy(data.raw.recipe['logistic-science-pack'].ingredients)

--data.raw.recipe['cottongut-science-blue-seeds'].ingredients = table.deepcopy(data.raw.recipe['chemical-science-pack'].ingredients)

--data.raw.recipe['cottongut-science-py-seeds'].ingredients = table.deepcopy(data.raw.recipe['py-science-pack'].ingredients)

RECIPE('cottongut-science-red-seeds'):add_ingredient({type = "item", name = "cellulose", amount = 2}):add_ingredient({type = "item", name = "petri-dish", amount = 2})
RECIPE('cottongut-science-green-seeds'):add_ingredient({type = "item", name = "cytostatics", amount = 1}):add_ingredient({type = "item", name = "flask", amount = 3})
RECIPE('cottongut-science-blue-seeds'):add_ingredient({type = "item", name = "nano-cellulose", amount = 1}):add_ingredient({type = "item", name = "adrenal-cortex", amount = 1}):remove_ingredient("optical-fiber"):remove_ingredient("advanced-circuit"):remove_ingredient("stainless-steel"):add_ingredient({type = "item", name = "lab-instrument", amount = 2}):replace_ingredient("nexelit-plate", "stainless-steel")
RECIPE('cottongut-science-py-seeds'):remove_ingredient("flask"):add_ingredient({type = "item", name = "flask", amount = 3}):remove_ingredient("moss"):remove_ingredient("alien-sample01"):add_ingredient({type = "item", name = "navens", amount = 2}):add_ingredient({type = "item", name = "brain", amount = 1}):add_ingredient({type = "item", name = "retrovirus", amount = 1})
