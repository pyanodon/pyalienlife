--(( Technology ))--
require "prototypes/technologies/mega-farm-kicalk"
require "prototypes/technologies/mega-farm-cadaveric-arum"
require "prototypes/technologies/moondrop"

TECHNOLOGY("epoxy"):remove_pack("chemical-science-pack")
TECHNOLOGY("fertilizer"):set_fields {enabled = false, hidden = true}
TECHNOLOGY("py-asphalt"):add_pack("py-science-pack-1")
TECHNOLOGY("separation"):add_pack("py-science-pack-1")
TECHNOLOGY("fertilizer-mk03"):remove_pack("chemical-science-pack")
TECHNOLOGY("starch-mk02"):remove_pack("chemical-science-pack")
TECHNOLOGY("ethylene"):add_pack("py-science-pack-2")
TECHNOLOGY("semiconductor-doping"):add_pack("py-science-pack-2")
TECHNOLOGY("integrated-circuits-1"):add_pack("py-science-pack-2")
TECHNOLOGY("basic-electronics"):add_pack("py-science-pack-2")
TECHNOLOGY("semiconductor-doping-mk02"):add_pack("py-science-pack-3")
TECHNOLOGY("integrated-circuits-2"):add_pack("py-science-pack-3")
TECHNOLOGY("advanced-circuit"):add_pack("py-science-pack-3")

--(( BUILDINGS ))--
require "prototypes/buildings/cadavericarum-mk01"
require "prototypes/buildings/cadavericarum-mk02"
require "prototypes/buildings/cadavericarum-mk03"
require "prototypes/buildings/cadavericarum-mk04"
require "__pyhightech__/prototypes/buildings/moondrop-greenhouse-mk02"
require "__pyhightech__/prototypes/buildings/moondrop-greenhouse-mk03"
require "__pyhightech__/prototypes/buildings/moondrop-greenhouse-mk04"

--(( RECIPES ))--

--antelope
require "prototypes/recipes/antelope/recipes-antelope"
require "prototypes/recipes/antelope/recipes-antelope-raising"
require "prototypes/recipes/antelope/recipes-antelope-rendering"
--require 'prototypes/recipes/antelope/recipes-antelope-modules'

--Cadaveric-arum
require "prototypes/recipes/cadaveric-arum/recipes-cadaveric"
require "prototypes/recipes/cadaveric-arum/recipes-auto-cadaveric"
require "prototypes/recipes/cadaveric-arum/recipes-arum-megafarm"
require "prototypes/recipes/cadaveric-arum/recipes-arum-modules"

--kilcalk
require "prototypes/recipes/kicalk/recipes-kicalk-megafarm"
require "prototypes/recipes/kicalk/recipes-kicalk"
require "prototypes/recipes/kicalk/recipes-auto-kicalk"
require "prototypes/recipes/kicalk/recipes-kicalk-modules"

--Moondrop
require "prototypes/recipes/moondrop/recipes-moondrop"
require "prototypes/recipes/moondrop/recipes-auto-moondrop"
require "prototypes/recipes/moondrop/recipes-moondrop-modules"
--require 'prototypes/recipes/moondrop/recipes-moondrop-copper' TODO: SETUP TURD FARM TECHS AGAIN

data.raw["recipe-category"]["arum"].allowed_module_categories = {"arum"}
data.raw["recipe-category"]["arum"].modules_required = true
data.raw["recipe-category"]["moon"].allowed_module_categories = {"moondrop"}
data.raw["recipe-category"]["moon"].modules_required = true


TECHNOLOGY("melamine"):remove_pack("logistic-science-pack"):add_pack("py-science-pack-1")
TECHNOLOGY("fiberboard"):remove_pack("logistic-science-pack"):add_pack("py-science-pack-1")
TECHNOLOGY("integrated-circuits-2"):add_pack("py-science-pack-2")
TECHNOLOGY("energy-shield-mk2-equipment"):add_pack("py-science-pack-2")
TECHNOLOGY("battery-mk2-equipment"):add_pack("py-science-pack-2")
TECHNOLOGY("personal-laser-defense-equipment"):add_pack("py-science-pack-2")
TECHNOLOGY("discharge-defense-equipment"):add_pack("py-science-pack-2")
TECHNOLOGY("speed-module-2"):add_pack("py-science-pack-2")
TECHNOLOGY("productivity-module-2"):add_pack("py-science-pack-2")
TECHNOLOGY("efficiency-module-2"):add_pack("py-science-pack-2")
TECHNOLOGY("nylon"):add_pack("py-science-pack-2")
TECHNOLOGY("phenol"):add_pack("py-science-pack-2")
TECHNOLOGY("epoxy"):add_pack("py-science-pack-2")
TECHNOLOGY("rayon"):add_pack("py-science-pack-2")
TECHNOLOGY("nitrobenzene"):add_pack("py-science-pack-2")

if not mods["pyalternativeenergy"] then
    TECHNOLOGY("battery"):add_pack("py-science-pack-2")
    --TECHNOLOGY('electric-energy-accumulators'):add_pack('py-science-pack-2')
end

--(( ORES ))--
require "prototypes/ores/kicalk"
require "prototypes/ores/arum"

--(( MODIFICATIONS ))--
--TECHNOLOGY--
TECHNOLOGY("nano-tech"):add_prereq("microbiology-mk03")
--TECHNOLOGY('bio-implants'):add_prereq('nano-tech')
TECHNOLOGY("advanced-circuit"):add_prereq("chitin")
TECHNOLOGY("antitumor"):add_prereq("earnshaw-theorem")
-- TECHNOLOGY('advanced-circuit'):add_pack('py-science-pack-3')
-- TECHNOLOGY('aerogel'):add_pack('py-science-pack-3')
-- TECHNOLOGY('earnshaw-theorem'):add_pack('py-science-pack-3')
-- TECHNOLOGY('graphene'):add_pack('py-science-pack-3')
-- TECHNOLOGY('nano-tech'):add_pack('py-science-pack-3')
-- TECHNOLOGY('penrose'):add_pack('py-science-pack-3')
-- TECHNOLOGY('quantum'):add_pack('py-science-pack-3')

TECHNOLOGY("electronics"):set_fields {dependencies = {"sap-mk01"}}

if not mods["omnimatter"] then
    TECHNOLOGY("syngas"):set_fields {dependencies = {"electronics"}}
end

--RECIPES--
RECIPE("kicalk-plantation"):remove_unlock("kicalk")
RECIPE("cadaveric-arum-mk01"):remove_unlock("basic-electronics")

--adjusting win condition to need q computer

RECIPE("fiberboard"):set_fields {results = {
    {type = "item",  name = "fiberboard",   amount = 4},
    {type = "fluid", name = "tall-oil",     amount = 15},
    {type = "fluid", name = "black-liquor", amount = 10}
}}

--remove space science from satellite
data.raw.item["satellite"].rocket_launch_products = {{
    type = "item",
    name = "destabilized-toxirus",
    amount = 6
}}
data.raw.item["satellite"].weight = 200e3

RECIPE("satellite"):add_ingredient {type = "item", name = "cottongut", amount = 150}
RECIPE("satellite"):add_ingredient {type = "item", name = "antimatter", amount = 3}

RECIPE("space-science-pack"):add_ingredient {type = "item", name = "destabilized-toxirus", amount = 1}:add_ingredient {type = "item", name = "strangelets", amount = 5}

RECIPE("automation-science-pack"):replace_ingredient("electronic-circuit", "small-parts-01")

RECIPE("offshore-pump"):replace_ingredient("electronic-circuit", "inductor1")
RECIPE("lab"):replace_ingredient("electronic-circuit", "inductor1")
RECIPE("assembling-machine-1"):replace_ingredient("electronic-circuit", "inductor1")
RECIPE("soil-extractor-mk01"):replace_ingredient("electronic-circuit", "inductor1")
RECIPE("distilator"):replace_ingredient("electronic-circuit", "inductor1")
RECIPE("electronics-factory-mk01"):replace_ingredient("electric-mining-drill", "fluid-drill-mk01")
RECIPE("hpf"):replace_ingredient("electronic-circuit", "inductor1")
RECIPE("glassworks-mk01"):replace_ingredient("electronic-circuit", "inductor1")
RECIPE("borax-mine"):replace_ingredient("electronic-circuit", "inductor1"):replace_ingredient("electric-mining-drill", "fluid-drill-mk01")
RECIPE("gasifier"):replace_ingredient("electronic-circuit", "inductor1")
RECIPE("chipshooter-mk01"):replace_ingredient("inserter", "burner-inserter")
RECIPE("tar-processing-unit"):replace_ingredient("electronic-circuit", "inductor1")
RECIPE("moondrop-codex"):replace_ingredient("electronic-circuit", "inductor1"):remove_ingredient("small-lamp")
RECIPE("botanical-nursery"):replace_ingredient("electronic-circuit", "inductor1"):replace_ingredient("electric-mining-drill", "fluid-drill-mk01")
RECIPE("washer"):replace_ingredient("electronic-circuit", "inductor1")
RECIPE("micro-mine-mk01"):replace_ingredient("electronic-circuit", "inductor1"):replace_ingredient("electric-mining-drill", "fluid-drill-mk01"):replace_ingredient("inserter", "burner-inserter")
RECIPE("fwf-mk01"):replace_ingredient("electronic-circuit", "inductor1")
RECIPE("moss-farm-mk01"):replace_ingredient("electronic-circuit", "inductor1")
RECIPE("seaweed-crop-mk01"):replace_ingredient("electronic-circuit", "inductor1")
RECIPE("sap-extractor-mk01"):replace_ingredient("electronic-circuit", "inductor1"):replace_ingredient("inserter", "burner-inserter")
RECIPE("repair-pack"):replace_ingredient("electronic-circuit", "inductor1")
RECIPE("electric-mining-drill"):add_unlock("electric-mining-drill").enabled = false
RECIPE("flora-collector-mk01"):replace_ingredient("electronic-circuit", "inductor1")
RECIPE("eaf-mk01"):replace_ingredient("electric-mining-drill", "fluid-drill-mk01")
RECIPE("impact-crusher-mk01"):replace_ingredient("electric-mining-drill", "fluid-drill-mk01")
RECIPE("hydroclassifier-mk01"):replace_ingredient("electric-mining-drill", "fluid-drill-mk01")
RECIPE("automated-screener-mk01"):replace_ingredient("electric-mining-drill", "fluid-drill-mk01")
RECIPE("salt-mine"):replace_ingredient("electric-mining-drill", "fluid-drill-mk01")
RECIPE("tin-plate-1"):add_unlock("mining-with-fluid").enabled = false
RECIPE("tinned-cable"):add_unlock("mining-with-fluid").enabled = false
RECIPE("aluminium-plate-1"):remove_unlock("moss-mk01"):add_unlock("mining-with-fluid")
RECIPE("bio-sample01"):add_ingredient {type = "item", name = "urea", amount = 5}
RECIPE("inserter"):add_unlock("logistics").enabled = false
RECIPE("underground-belt"):remove_unlock("logistics").enabled = true
RECIPE("long-handed-inserter"):remove_unlock("automation"):add_unlock("rubber"):add_ingredient {type = "item", name = "belt", amount = 1}
RECIPE("electronics-factory-mk01"):replace_ingredient("fbreactor-mk01", "distilator"):remove_unlock("electronics"):add_unlock("ceramic")
RECIPE("inductor1"):remove_unlock("electronics"):add_unlock("ceramic")
RECIPE("pulp-mill-mk01"):replace_ingredient("fbreactor-mk01", "distilator")
RECIPE("pcb-factory-mk01"):replace_ingredient("fbreactor-mk01", "electronics-factory-mk01")
RECIPE("fbreactor-mk01"):remove_unlock("electronics"):add_unlock("melamine")
RECIPE("solid-separator"):replace_ingredient("electronic-circuit", "inductor1")

RECIPE("perfect-samples"):add_ingredient {type = "item", name = "dimensional-gastricorg", amount = 1}

RECIPE("simik-mk03"):add_ingredient {type = "item", name = "strangelets", amount = 1}
RECIPE("simik-mk04r"):add_ingredient {type = "item", name = "destabilized-toxirus", amount = 1}

RECIPE("battery-mk01"):replace_ingredient("plastic-bar", "melamine"):replace_ingredient("formic-acid", "cyanic-acid"):replace_ingredient("coke", {type = "item", name = "graphite", amount = 3})
-- Vanilla mining drill for non-fluid ores only
data.raw["mining-drill"]["electric-mining-drill"].input_fluid_box = nil

-- Change resource category for ores with fluid
for _, ore in pairs(data.raw.resource) do
    if (ore.category or "basic-solid") == "basic-solid" and ore.minable and ore.minable.required_fluid then
        -- log('Changing category for ore ' .. ore.name)
        ore.category = "basic-with-fluid"
    end
end

RECIPE {
    type = "recipe",
    name = "inductor1-2",
    category = "crafting",
    enabled = false,
    energy_required = 0.5,
    ingredients = {
        {type = "item", name = "iron-stick",   amount = 1},
        {type = "item", name = "copper-cable", amount = 8}
    },
    results = {
        {type = "item", name = "inductor1", amount = 1}
    },
    main_product = "inductor1"
}:add_unlock("steam-power")

----KICALK-----

ITEM {
    type = "item",
    name = "replicator-kicalk",
    icon = "__pyalienlifegraphics__/graphics/icons/replicator-kicalk.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-alienlife-replicators",
    order = "x",
    stack_size = 1,
    weight = 1,
    send_to_orbit_mode = "automated"
}

----CADAVERIC ARUM-----

ITEM {
    type = "item",
    name = "replicator-cadaveric-arum",
    icon = "__pyalienlifegraphics__/graphics/icons/replicator-cadaveric-arum.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-alienlife-replicators",
    order = "x",
    stack_size = 1,
    weight = 1,
    send_to_orbit_mode = "automated"
}

ITEM {
    type = "item",
    name = "cadaveric-arum-codex",
    icon = "__pyalienlifegraphics__/graphics/icons/cadaveric-arum-codex.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-alienlife-codex",
    order = "x",
    stack_size = 100
}

FLUID("dms"):subgroup_order("py-alienlife-gases", "b")
FLUID("acidgas"):subgroup_order("py-alienlife-gases", "a")
----BUILDINDS----

RECIPE("bio-reactor-mk01"):remove_ingredient("advanced-circuit"):remove_unlock("cottongut-science-mk01"):add_unlock("melamine")
RECIPE("ralesia-plantation-mk03"):add_ingredient {type = "item", name = "biopolymer", amount = 15}:add_ingredient {type = "item", name = "carbon-aerogel", amount = 20}
RECIPE("ralesia-plantation-mk04"):replace_ingredient("control-unit", "intelligent-unit"):add_ingredient {type = "item", name = "superconductor-servomechanims", amount = 5}:add_ingredient {type = "item", name = "nv-center", amount = 2}
RECIPE("auog-paddock"):set_fields {enabled = false}
RECIPE("zipir"):remove_unlock("basic-electronics")
RECIPE("cadaveric-arum-mk01"):remove_unlock("basic-electronics")
RECIPE("cadaveric-arum-mk02"):remove_unlock("basic-electronics")
RECIPE("cadaveric-arum-mk03"):remove_unlock("basic-electronics")
RECIPE("cadaveric-arum-mk04"):remove_unlock("basic-electronics")

local FULL_CRAFTING_SPEED = 1 -- crafting speed when full of mk01 modules
ITEM("moondrop-greenhouse-mk01"):subgroup_order("py-alienlife-farm-buildings-mk01", "b")
data.raw["assembling-machine"]["moondrop-greenhouse-mk01"].module_slots = 16
data.raw["assembling-machine"]["moondrop-greenhouse-mk01"].crafting_speed = py.farm_speed(16, FULL_CRAFTING_SPEED)

RECIPE("moondrop-greenhouse-mk02"):add_unlock("botany-mk02")
ITEM("moondrop-greenhouse-mk02"):subgroup_order("py-alienlife-farm-buildings-mk02", "b")
data.raw["assembling-machine"]["moondrop-greenhouse-mk02"].module_slots = 32
data.raw["assembling-machine"]["moondrop-greenhouse-mk02"].crafting_speed = py.farm_speed_derived(32, "moondrop-greenhouse-mk01")

RECIPE("moondrop-greenhouse-mk03"):add_unlock("botany-mk03")
ITEM("moondrop-greenhouse-mk03"):subgroup_order("py-alienlife-farm-buildings-mk03", "b")
data.raw["assembling-machine"]["moondrop-greenhouse-mk03"].module_slots = 48
data.raw["assembling-machine"]["moondrop-greenhouse-mk03"].crafting_speed = py.farm_speed_derived(48, "moondrop-greenhouse-mk01")

RECIPE("moondrop-greenhouse-mk04"):add_unlock("botany-mk04")
ITEM("moondrop-greenhouse-mk04"):subgroup_order("py-alienlife-farm-buildings-mk04", "b")
data.raw["assembling-machine"]["moondrop-greenhouse-mk04"].module_slots = 64
data.raw["assembling-machine"]["moondrop-greenhouse-mk04"].crafting_speed = py.farm_speed_derived(64, "moondrop-greenhouse-mk01")

RECIPE("harvester"):add_ingredient {type = "item", name = "aerogel", amount = 20} --:replace_ingredient('plastic-bar', 'biopolymer')
RECIPE("harmonic-absorber"):add_ingredient {type = "item", name = "negasium", amount = 1}
RECIPE("hyperelastic-material"):add_ingredient {type = "item", name = "hyaline", amount = 1}
RECIPE("arthurian-pen-mk03"):add_ingredient {type = "item", name = "carbon-nanotube", amount = 15}
RECIPE("atomizer-mk03"):add_ingredient {type = "item", name = "carbon-nanotube", amount = 20}:add_ingredient {type = "item", name = "paramagnetic-material", amount = 20}
RECIPE("auog-paddock-mk03"):add_ingredient {type = "item", name = "phosphate-glass", amount = 40}
RECIPE("bhoddos-culture-mk03"):add_ingredient {type = "item", name = "carbon-nanotube", amount = 20}
RECIPE("biofactory-mk03"):add_ingredient {type = "item", name = "paramagnetic-material", amount = 20}
RECIPE("bio-reactor-mk03"):add_ingredient {type = "item", name = "heavy-fermion", amount = 20}:add_ingredient {type = "item", name = "superconductor", amount = 10}:add_ingredient {type = "item", name = "phosphate-glass", amount = 50}
RECIPE("cadaveric-arum-mk03"):add_ingredient {type = "item", name = "heavy-fermion", amount = 15}:add_ingredient {type = "item", name = "superconductor", amount = 10}
RECIPE("creature-chamber-mk03"):add_ingredient {type = "item", name = "biopolymer", amount = 15}:add_ingredient {type = "item", name = "graphene-roll", amount = 20}:add_ingredient {type = "item", name = "carbon-nanotube", amount = 15}:add_ingredient {type = "item", name = "superconductor", amount = 5}
RECIPE("cridren-enclosure-mk03"):add_ingredient {type = "item", name = "carbon-nanotube", amount = 10}:add_ingredient {type = "item", name = "phosphate-glass", amount = 30}:add_ingredient {type = "item", name = "biopolymer", amount = 20}
RECIPE("dhilmos-pool-mk03"):add_ingredient {type = "item", name = "paramagnetic-material", amount = 20}:add_ingredient {type = "item", name = "heavy-fermion", amount = 20}
RECIPE("dingrits-pack-mk03"):add_ingredient {type = "item", name = "phosphate-glass", amount = 50}:add_ingredient {type = "item", name = "biopolymer", amount = 20}
RECIPE("fish-farm-mk03"):add_ingredient {type = "item", name = "graphene-roll", amount = 30}:add_ingredient {type = "item", name = "biopolymer", amount = 15}
RECIPE("fwf-mk03"):add_ingredient {type = "item", name = "superconductor", amount = 10}:add_ingredient {type = "item", name = "phosphate-glass", amount = 40}:add_ingredient {type = "item", name = "paramagnetic-material", amount = 20}
RECIPE("rc-mk03"):add_ingredient {type = "item", name = "graphene-roll", amount = 30}:add_ingredient {type = "item", name = "biopolymer", amount = 30}
RECIPE("incubator-mk03"):add_ingredient {type = "item", name = "phosphate-glass", amount = 50}:add_ingredient {type = "item", name = "graphene-roll", amount = 30}:add_ingredient {type = "item", name = "carbon-nanotube", amount = 20}
RECIPE("kmauts-enclosure-mk03"):add_ingredient {type = "item", name = "heavy-fermion", amount = 15}:add_ingredient {type = "item", name = "carbon-nanotube", amount = 10}
RECIPE("moss-farm-mk03"):add_ingredient {type = "item", name = "heavy-fermion", amount = 5}:add_ingredient {type = "item", name = "superconductor", amount = 10}
RECIPE("mukmoux-pasture-mk03"):add_ingredient {type = "item", name = "paramagnetic-material", amount = 30}:add_ingredient {type = "item", name = "biopolymer", amount = 20}
RECIPE("navens-culture-mk03"):add_ingredient {type = "item", name = "graphene-roll", amount = 50}:add_ingredient {type = "item", name = "carbon-nanotube", amount = 30}
RECIPE("phadai-enclosure-mk03"):add_ingredient {type = "item", name = "heavy-fermion", amount = 15}
RECIPE("phagnot-corral-mk03"):add_ingredient {type = "item", name = "paramagnetic-material", amount = 25}:add_ingredient {type = "item", name = "carbon-nanotube", amount = 20}
RECIPE("ralesia-plantation-mk03"):add_ingredient {type = "item", name = "phosphate-glass", amount = 100}:add_ingredient {type = "item", name = "graphene-roll", amount = 30}:add_ingredient {type = "item", name = "superconductor", amount = 10}
RECIPE("rennea-plantation-mk03"):add_ingredient {type = "item", name = "carbon-nanotube", amount = 10}
RECIPE("sap-extractor-mk03"):add_ingredient {type = "item", name = "graphene-roll", amount = 30}
RECIPE("scrondrix-pen-mk03"):add_ingredient {type = "item", name = "carbon-nanotube", amount = 30}
RECIPE("slaughterhouse-mk03"):add_ingredient {type = "item", name = "paramagnetic-material", amount = 20}:add_ingredient {type = "item", name = "graphene-roll", amount = 50}
RECIPE("sponge-culture-mk03"):add_ingredient {type = "item", name = "phosphate-glass", amount = 40}
RECIPE("trits-reef-mk03"):add_ingredient {type = "item", name = "phosphate-glass", amount = 50}:add_ingredient {type = "item", name = "superconductor", amount = 10}
RECIPE("tuuphra-plantation-mk03"):add_ingredient {type = "item", name = "paramagnetic-material", amount = 30}:add_ingredient {type = "item", name = "graphene-roll", amount = 50}
RECIPE("ulric-corral-mk03"):add_ingredient {type = "item", name = "superconductor", amount = 5}:add_ingredient {type = "item", name = "biopolymer", amount = 15}
RECIPE("vonix-den-mk03"):add_ingredient {type = "item", name = "superconductor-servomechanims", amount = 15}:add_ingredient {type = "item", name = "hyperelastic-material", amount = 15}
RECIPE("vrauks-paddock-mk03"):add_ingredient {type = "item", name = "phosphate-glass", amount = 30}:add_ingredient {type = "item", name = "biopolymer", amount = 15}
RECIPE("xenopen-mk03"):add_ingredient {type = "item", name = "superconductor", amount = 5}:add_ingredient {type = "item", name = "phosphate-glass", amount = 50}:add_ingredient {type = "item", name = "heavy-fermion", amount = 15}
RECIPE("yaedols-culture-mk03"):add_ingredient {type = "item", name = "graphene-roll", amount = 50}:add_ingredient {type = "item", name = "superconductor", amount = 10}
RECIPE("yotoi-aloe-orchard-mk03"):add_ingredient {type = "item", name = "graphene-roll", amount = 20}:add_ingredient {type = "item", name = "carbon-nanotube", amount = 15}
RECIPE("zipir-reef-mk03"):add_ingredient {type = "item", name = "carbon-nanotube", amount = 10}
RECIPE("bio-printer-mk03"):add_ingredient {type = "item", name = "graphene-roll", amount = 30}:add_ingredient {type = "item", name = "biopolymer", amount = 15}
RECIPE("ez-ranch-mk03"):add_ingredient {type = "item", name = "paramagnetic-material", amount = 25}:add_ingredient {type = "item", name = "carbon-nanotube", amount = 20}
RECIPE("research-center-mk03"):add_ingredient {type = "item", name = "phosphate-glass", amount = 40}:add_ingredient {type = "item", name = "biopolymer", amount = 20}
RECIPE("arqad-hive-mk03"):add_ingredient {type = "item", name = "superconductor", amount = 5}:add_ingredient {type = "item", name = "phosphate-glass", amount = 50}:add_ingredient {type = "item", name = "heavy-fermion", amount = 15}
RECIPE("simik-den-mk03"):add_ingredient {type = "item", name = "heavy-fermion", amount = 5}:add_ingredient {type = "item", name = "superconductor", amount = 10}
RECIPE("chemical-plant-mk03"):add_ingredient {type = "item", name = "superconductor", amount = 5}:add_ingredient {type = "item", name = "phosphate-glass", amount = 50}:add_ingredient {type = "item", name = "heavy-fermion", amount = 15}
RECIPE("flora-collector-mk03"):add_ingredient {type = "item", name = "superconductor", amount = 6}:add_ingredient {type = "item", name = "phosphate-glass", amount = 30}:add_ingredient {type = "item", name = "heavy-fermion", amount = 15}

--mk04--
RECIPE("arthurian-pen-mk04"):add_ingredient {type = "item", name = "intelligent-unit", amount = 5}:add_ingredient {type = "item", name = "aerogel", amount = 20}:add_ingredient {type = "item", name = "carbon-aerogel", amount = 10}:add_ingredient {type = "item", name = "quantum-dots", amount = 10}
RECIPE("atomizer-mk04"):add_ingredient {type = "item", name = "nems", amount = 10}:add_ingredient {type = "item", name = "phosphate-glass", amount = 100}:add_ingredient {type = "item", name = "quantum-vortex-storage-system", amount = 10}:replace_ingredient("control-unit", "intelligent-unit")
RECIPE("auog-paddock-mk04"):add_ingredient {type = "item", name = "nems", amount = 10}:add_ingredient {type = "item", name = "re-magnet", amount = 50}:add_ingredient {type = "item", name = "sub-denier-microfiber", amount = 30}
RECIPE("bhoddos-culture-mk04"):add_ingredient {type = "item", name = "hyperelastic-material", amount = 30}:add_ingredient {type = "item", name = "quantum-vortex-storage-system", amount = 10}:add_ingredient {type = "item", name = "intelligent-unit", amount = 10}
RECIPE("biofactory-mk04"):add_ingredient {type = "item", name = "harmonic-absorber", amount = 15}:add_ingredient {type = "item", name = "intelligent-unit", amount = 15}:add_ingredient {type = "item", name = "sub-denier-microfiber", amount = 20}
RECIPE("bio-reactor-mk04"):add_ingredient {type = "item", name = "hyperelastic-material", amount = 30}:add_ingredient {type = "item", name = "nv-center", amount = 10}
RECIPE("cadaveric-arum-mk04"):add_ingredient {type = "item", name = "hyperelastic-material", amount = 15}:add_ingredient {type = "item", name = "quantum-dots", amount = 5}
RECIPE("creature-chamber-mk04"):add_ingredient {type = "item", name = "re-magnet", amount = 100}:add_ingredient {type = "item", name = "phosphate-glass", amount = 100}:add_ingredient {type = "item", name = "hyperelastic-material", amount = 30}
RECIPE("cridren-enclosure-mk04"):add_ingredient {type = "item", name = "intelligent-unit", amount = 30}:add_ingredient {type = "item", name = "nems", amount = 10}:add_ingredient {type = "item", name = "phosphate-glass", amount = 100}
RECIPE("dhilmos-pool-mk04"):add_ingredient {type = "item", name = "phosphate-glass", amount = 100}:add_ingredient {type = "item", name = "carbon-aerogel", amount = 20}:add_ingredient {type = "item", name = "aerogel", amount = 30}
RECIPE("dingrits-pack-mk04"):add_ingredient {type = "item", name = "intelligent-unit", amount = 10}:add_ingredient {type = "item", name = "re-magnet", amount = 100}:add_ingredient {type = "item", name = "phosphate-glass", amount = 100}
RECIPE("fish-farm-mk04"):add_ingredient {type = "item", name = "phosphate-glass", amount = 100}
RECIPE("fwf-mk04"):add_ingredient {type = "item", name = "intelligent-unit", amount = 30}:add_ingredient {type = "item", name = "quantum-vortex-storage-system", amount = 10}:add_ingredient {type = "item", name = "phosphate-glass", amount = 100}
RECIPE("genlab-mk04"):add_ingredient {type = "item", name = "nv-center", amount = 10}
RECIPE("grods-swamp-mk04"):add_ingredient {type = "item", name = "quantum-vortex-storage-system", amount = 10}:add_ingredient {type = "item", name = "aerogel", amount = 100}
RECIPE("incubator-mk04"):add_ingredient {type = "item", name = "re-magnet", amount = 80}
RECIPE("kicalk-plantation-mk04"):add_ingredient {type = "item", name = "aerogel", amount = 15}:add_ingredient {type = "item", name = "quantum-dots", amount = 10}
RECIPE("kmauts-enclosure-mk04"):add_ingredient {type = "item", name = "sub-denier-microfiber", amount = 50}
RECIPE("micro-mine-mk04"):add_ingredient {type = "item", name = "hyperelastic-material", amount = 30}:add_ingredient {type = "item", name = "phosphate-glass", amount = 100}
RECIPE("moss-farm-mk04"):add_ingredient {type = "item", name = "aerogel", amount = 40}:add_ingredient {type = "item", name = "quantum-vortex-storage-system", amount = 10}
RECIPE("mukmoux-pasture-mk04"):add_ingredient {type = "item", name = "carbon-aerogel", amount = 30}:add_ingredient {type = "item", name = "phosphate-glass", amount = 100}
RECIPE("navens-culture-mk04"):add_ingredient {type = "item", name = "quantum-dots", amount = 10}:add_ingredient {type = "item", name = "superconductor-servomechanims", amount = 15}
RECIPE("phadai-enclosure-mk04"):add_ingredient {type = "item", name = "nems", amount = 20}
RECIPE("phagnot-corral-mk04"):add_ingredient {type = "item", name = "superconductor-servomechanims", amount = 10}:add_ingredient {type = "item", name = "harmonic-absorber", amount = 15}
RECIPE("rennea-plantation-mk04"):add_ingredient {type = "item", name = "sub-denier-microfiber", amount = 30}:add_ingredient {type = "item", name = "re-magnet", amount = 100}:add_ingredient {type = "item", name = "nems", amount = 10}
RECIPE("sap-extractor-mk04"):add_ingredient {type = "item", name = "re-magnet", amount = 100}:add_ingredient {type = "item", name = "aerogel", amount = 70}
RECIPE("scrondrix-pen-mk04"):add_ingredient {type = "item", name = "harmonic-absorber", amount = 30}:add_ingredient {type = "item", name = "sub-denier-microfiber", amount = 50}
RECIPE("seaweed-crop-mk04"):add_ingredient {type = "item", name = "carbon-aerogel", amount = 50}:add_ingredient {type = "item", name = "re-magnet", amount = 100}
RECIPE("slaughterhouse-mk04"):add_ingredient {type = "item", name = "nems", amount = 20}:add_ingredient {type = "item", name = "sub-denier-microfiber", amount = 60}
RECIPE("sponge-culture-mk04"):add_ingredient {type = "item", name = "intelligent-unit", amount = 50}:add_ingredient {type = "item", name = "superconductor-servomechanims", amount = 20}
RECIPE("spore-collector-mk04"):add_ingredient {type = "item", name = "harmonic-absorber", amount = 20}
RECIPE("trits-reef-mk04"):add_ingredient {type = "item", name = "re-magnet", amount = 100}:add_ingredient {type = "item", name = "phosphate-glass", amount = 100}:add_ingredient {type = "item", name = "harmonic-absorber", amount = 30}
RECIPE("tuuphra-plantation-mk04"):add_ingredient {type = "item", name = "aerogel", amount = 100}:add_ingredient {type = "item", name = "nems", amount = 10}:add_ingredient {type = "item", name = "superconductor-servomechanims", amount = 5}
RECIPE("ulric-corral-mk04"):add_ingredient {type = "item", name = "carbon-aerogel", amount = 30}
RECIPE("vrauks-paddock-mk04"):add_ingredient {type = "item", name = "superconductor-servomechanims", amount = 20}
RECIPE("xenopen-mk04"):add_ingredient {type = "item", name = "carbon-aerogel", amount = 50}:add_ingredient {type = "item", name = "intelligent-unit", amount = 30}
RECIPE("yaedols-culture-mk04"):add_ingredient {type = "item", name = "phosphate-glass", amount = 100}:add_ingredient {type = "item", name = "hyperelastic-material", amount = 30}
RECIPE("yotoi-aloe-orchard-mk04"):add_ingredient {type = "item", name = "aerogel", amount = 40}:add_ingredient {type = "item", name = "harmonic-absorber", amount = 30}
RECIPE("zipir-reef-mk04"):add_ingredient {type = "item", name = "hyperelastic-material", amount = 50}
RECIPE("bio-printer-mk04"):add_ingredient {type = "item", name = "harmonic-absorber", amount = 20}:add_ingredient {type = "item", name = "hyperelastic-material", amount = 50}:add_ingredient {type = "item", name = "intelligent-unit", amount = 15}
RECIPE("ez-ranch-mk04"):add_ingredient {type = "item", name = "intelligent-unit", amount = 30}:add_ingredient {type = "item", name = "quantum-vortex-storage-system", amount = 10}:add_ingredient {type = "item", name = "phosphate-glass", amount = 100}
RECIPE("research-center-mk04"):add_ingredient {type = "item", name = "quantum-vortex-storage-system", amount = 10}:add_ingredient {type = "item", name = "aerogel", amount = 100}:add_ingredient {type = "item", name = "intelligent-unit", amount = 50}
RECIPE("arqad-hive-mk04"):add_ingredient {type = "item", name = "phosphate-glass", amount = 100}:add_ingredient {type = "item", name = "hyperelastic-material", amount = 30}
RECIPE("simik-den-mk04"):add_ingredient {type = "item", name = "intelligent-unit", amount = 50}:add_ingredient {type = "item", name = "superconductor-servomechanims", amount = 20}
RECIPE("chemical-plant-mk04"):add_ingredient {type = "item", name = "superconductor-servomechanims", amount = 10}:add_ingredient {type = "item", name = "harmonic-absorber", amount = 30}:add_ingredient {type = "item", name = "intelligent-unit", amount = 50}
RECIPE("flora-collector-mk04"):add_ingredient {type = "item", name = "harmonic-absorber", amount = 8}:add_ingredient {type = "item", name = "hyperelastic-material", amount = 10}:add_ingredient {type = "item", name = "intelligent-unit", amount = 2}
RECIPE("rc-mk04"):add_ingredient {type = "item", name = "intelligent-unit", amount = 20}:add_ingredient {type = "item", name = "hyperelastic-material", amount = 50}:add_ingredient {type = "item", name = "phosphate-glass", amount = 150}



RECIPE("simik-den-mk02"):add_ingredient {type = "item", name = "re-tin", amount = 10}:add_ingredient {type = "item", name = "cooling-system", amount = 10}
RECIPE("pydrive"):replace_ingredient("processing-unit", "intelligent-unit"):add_ingredient {type = "item", name = "superconductor-servomechanims", amount = 20}:add_ingredient {type = "item", name = "strangelets", amount = 10}

----RECIPES----
RECIPE("fungal-substrate-02"):add_ingredient {type = "item", name = "urea", amount = 3}
RECIPE("alien-sample-03"):replace_ingredient("plastic-bar", "graphene-roll")
RECIPE("log7-2"):add_ingredient {type = "item", name = "wood-seedling", amount = 3}:subgroup_order("py-alienlife-plants", "a"):add_unlock("wood-processing-3").category = "fwf"
--RECIPE('urea'):replace_ingredient('fawogae', 'seaweed'):subgroup_order('py-alienlife-items', 'a')
RECIPE("bonemeal2"):remove_unlock("advanced-circuit"):subgroup_order("py-alienlife-items", "a")
RECIPE("bonemeal3"):remove_unlock("advanced-circuit"):subgroup_order("py-alienlife-items", "a")
RECIPE("bonemeal4"):remove_unlock("advanced-circuit"):subgroup_order("py-alienlife-items", "a")
RECIPE("cobalt-extract"):replace_ingredient("sulfuric-acid", "cyanic-acid")
RECIPE("neuroprocessor"):replace_ingredient("electronic-circuit", "pcb2"):add_ingredient {type = "item", name = "resistor1", amount = 5}:add_ingredient {type = "item", name = "capacitor1", amount = 5}:add_ingredient {type = "item", name = "inductor1", amount = 10}
RECIPE("empty-neuromorphic-chip"):add_ingredient {type = "item", name = "bakelite", amount = 5}:add_ingredient {type = "item", name = "micro-fiber", amount = 4}:add_ingredient {type = "item", name = "capacitor2", amount = 5}:add_ingredient {type = "item", name = "melamine", amount = 10}:add_ingredient {type = "item", name = "paramagnetic-material", amount = 2}:add_ingredient {type = "item", name = "nylon-parts", amount = 10} --:add_ingredient({type = 'item', name = 'diamagnetic-material', amount = 4})
RECIPE("formamide"):replace_ingredient("nitrogen", "ammonia").category = "fbreactor"
RECIPE("bacteria-2"):remove_unlock("biopolymer"):add_unlock("microbiology-mk04"):add_ingredient {type = "item", name = "petri-dish", amount = 3}:add_ingredient {type = "item", name = "nexelit-plate", amount = 2}:add_ingredient {type = "item", name = "flask", amount = 5}:add_ingredient {type = "item", name = "chitin", amount = 5}
RECIPE("rendering"):remove_unlock("basic-electronics")
RECIPE("crco-alloy"):remove_ingredient("tailings-dust"):add_ingredient {type = "item", name = "cobalt-nx", amount = 2}
RECIPE("hotair-crco-alloy"):remove_ingredient("tailings-dust"):add_ingredient {type = "item", name = "cobalt-nx", amount = 2}
RECIPE("raw-fiber"):remove_unlock("fertilizer"):set_fields {enabled = false}
RECIPE("raw-fiber2"):remove_unlock("basic-electronics"):set_fields {enabled = false}
--RECIPE('raw-fiber3'):remove_unlock('basic-electronics'):set_fields {enabled = false}
RECIPE("raw-fiber4"):remove_unlock("kicalk"):set_fields {enabled = false}
RECIPE("dms"):subgroup_order("py-alienlife-cadaveric", "a"):remove_unlock("basic-electronics")
RECIPE("cobalt-fluoride"):replace_ingredient("chromium", "reo")
RECIPE("micro-fiber"):remove_unlock("microfibers"):add_unlock("filtration")
RECIPE("alien-sample-02"):add_ingredient {type = "item", name = "micro-fiber", amount = 5}
RECIPE("resveratrol").category = "pulp"
RECIPE("dhilmos-pool-mk01"):replace_ingredient("glass", "phosphate-glass"):add_ingredient {type = "item", name = "aerogel", amount = 5}
RECIPE("dhilmos-codex"):replace_ingredient("glass", "phosphate-glass")
RECIPE("fertilizer-1").category = "fbreactor"
RECIPE("fertilizer-3").category = "fbreactor"
RECIPE("fertilizer-4").category = "fbreactor"
RECIPE("fertilizer-fish-1").category = "fbreactor"
RECIPE("fertilizer-fish-2").category = "fbreactor"
RECIPE("fertilizer-fish-3").category = "fbreactor"
RECIPE("fish-food-02"):remove_ingredient("blood"):add_ingredient {type = "item", name = "blood-meal", amount = 5}
RECIPE("dingrits-codex"):replace_ingredient("glass", "phosphate-glass")
RECIPE("scrondrix-codex"):replace_ingredient("glass", "phosphate-glass")
RECIPE("antelope-codex"):replace_ingredient("glass", "phosphate-glass")
RECIPE("nanochondria"):add_ingredient {type = "item", name = "paramagnetic-material", amount = 1}:add_ingredient {type = "item", name = "diamagnetic-material", amount = 1}
RECIPE("quantum-vortex-storage-system"):add_ingredient {type = "item", name = "strangelets", amount = 2}
RECIPE("nv-center"):add_ingredient {type = "item", name = "strangelets", amount = 2}
RECIPE("space-science-pack"):add_ingredient {type = "item", name = "yellow-cake", amount = 2}:add_ingredient {type = "item", name = "intelligent-unit", amount = 6}
RECIPE("yag-laser-module"):add_ingredient {type = "item", name = "nanofibrils", amount = 3}:add_ingredient {type = "item", name = "cobalt-fluoride", amount = 3}
RECIPE("parametric-oscilator"):add_ingredient {type = "item", name = "nanofibrils", amount = 3}.category = "research"
RECIPE("superconductor-servomechanims").category = "research"
RECIPE("superconductor"):add_ingredient {type = "item", name = "biobattery", amount = 2}.category = "research"
RECIPE("sc-unit"):add_ingredient {type = "item", name = "re-magnet", amount = 12}
RECIPE("harmonic-absorber").category = "research"
RECIPE("diamagnetic-material").category = "research" --:remove_unlock('earnshaw-theorem'):add_unlock('pharmacogenomics')
RECIPE("paramagnetic-material").category = "research"
RECIPE("myoglobin").category = "genlab"

RECIPE("zipir-carcass"):remove_unlock("basic-electronics")
RECIPE("capacitor-core"):add_ingredient {type = "item", name = "nano-cellulose", amount = 2}
RECIPE("fawogae2"):remove_unlock("advanced-circuit")
--RECIPE('fiber'):remove_unlock('basic-electronics')
--RECIPE('urea').category = 'vrauks'):subgroup_order('py-alienlife-auog', 'a'
ITEM("urea"):subgroup_order("py-alienlife-auog", "a")
ITEM("mosfet"):subgroup_order("py-hightech-tier-2", "f")
RECIPE("waste-water-urea"):subgroup_order("py-alienlife-recipes", "a"):remove_unlock("fluid-separation"):add_unlock("water-invertebrates-mk01")
RECIPE("ammonia-urea"):subgroup_order("py-alienlife-recipes", "a"):remove_unlock("basic-electronics"):add_unlock("biotech-mk02")
RECIPE("urea2"):remove_unlock("auog-2")
RECIPE("urea"):set_fields {enabled = false}
RECIPE("mukmoux-fat2"):remove_unlock("advanced-circuit")
RECIPE("mukmoux-fat3"):remove_unlock("advanced-circuit")
RECIPE("fertilizer"):remove_unlock("basic-electronics")
RECIPE("advanced-circuit"):add_ingredient {type = "item", name = "battery", amount = 5}:add_ingredient {type = "item", name = "mosfet", amount = 5}
RECIPE("processing-unit"):add_ingredient {type = "item", name = "mosfet", amount = 10}:add_ingredient {type = "item", name = "neuromorphic-chip", amount = 1}
RECIPE("fault-current-inductor"):replace_ingredient("battery", "biobattery")
--RECIPE('pcb3-2'):replace_ingredient('battery', 'biobattery')
RECIPE("pcb4"):add_ingredient {type = "item", name = "biobattery", amount = 5}
RECIPE("biobattery"):replace_ingredient("nexelit-plate", "lithium-niobate"):replace_ingredient("cobalt-nx", "crco-alloy"):replace_ingredient("glass", "glass-fiber")
RECIPE("nxag-matrix"):add_ingredient {type = "item", name = "chitosan", amount = 2}
RECIPE("processor-core"):add_ingredient {type = "item", name = "chitosan", amount = 2}
RECIPE("kondo-core"):add_ingredient {type = "item", name = "nanofibrils", amount = 3}
RECIPE("biobattery"):add_ingredient {type = "item", name = "re-magnet", amount = 10}:add_ingredient {type = "item", name = "nylon", amount = 5}
RECIPE("bose-einstein-superfluid"):add_ingredient {type = "fluid", name = "deuterium", amount = 10}
RECIPE("green-sic"):add_ingredient {type = "item", name = "graphite", amount = 3}
RECIPE("pesticide-mk02"):add_ingredient {type = "fluid", name = "carbon-sulfide", amount = 50}
RECIPE("pre-pesticide-01"):add_ingredient {type = "item", name = "phenol", amount = 10}
RECIPE("ethyl-mercaptan"):replace_ingredient("nitrogen", "phosphorous-acid")
RECIPE("liquid-manure"):remove_unlock("cottongut-science-mk01"):add_unlock("melamine")
RECIPE("lithium-chloride"):remove_unlock("earnshaw-theorem"):add_unlock("biobattery")
RECIPE("lithium-niobate"):remove_unlock("parametric-oscilator"):add_unlock("biobattery")
RECIPE("py-science-pack-4"):replace_ingredient("plastic-bar", "biopolymer")
RECIPE("cumene"):remove_unlock("phenol"):add_unlock("light-oil-mk03")
RECIPE("cumene-distilation"):remove_unlock("phenol"):add_unlock("light-oil-mk03")

RECIPE("dry-ralesia"):remove_unlock("zno-nanoparticles"):add_unlock("ralesia-mk03")
RECIPE("ralesia-powder"):remove_unlock("zno-nanoparticles"):add_unlock("ralesia-mk03")
RECIPE("raw-ralesia-extract"):remove_unlock("zno-nanoparticles"):add_unlock("ralesia-mk03")
RECIPE("ralesia-extract"):remove_unlock("zno-nanoparticles"):add_unlock("ralesia-mk03")

RECIPE("simik-food-01"):add_ingredient {type = "item", name = "cadaveric-arum", amount = 2}
RECIPE("simik-food-02"):add_ingredient {type = "item", name = "cadaveric-arum", amount = 2}
RECIPE("simik-food-01a"):replace_ingredient("gravel", "phosphate-rock")
RECIPE("simik-food-02a"):replace_ingredient("gravel", "phosphate-rock")

RECIPE("centrifuge"):add_unlock("filtration")
RECIPE("stone-wool"):add_unlock("zipir")
RECIPE("stone-wool2"):add_unlock("zipir")
RECIPE("agzn-alloy"):remove_unlock("alloys-mk04"):add_unlock("alloys-mk03")

RECIPE("log7-2"):replace_result("log", "log", 8)

RECIPE("rennea-mk02-seed-seperation"):replace_result("light-oil", "tall-oil")
RECIPE("rennea-mk03-seed-seperation"):replace_result("light-oil", "tall-oil")
RECIPE("rennea-mk04-seed-seperation"):replace_result("light-oil", "tall-oil")
RECIPE("rennea-mk02-seed-seperation"):replace_result("tar", "black-liquor")
RECIPE("rennea-mk03-seed-seperation"):replace_result("tar", "black-liquor")
RECIPE("rennea-mk04-seed-seperation"):replace_result("tar", "black-liquor")

RECIPE("methane-py-fertilizer"):add_unlock("moondrop-mk02")
RECIPE("methane-py-fertilizer"):add_ingredient("moondrop-seeds")
RECIPE("methane-co2"):add_ingredient("moondrop-seeds")

RECIPE("plastic-from-casein"):add_ingredient {type = "fluid", name = "methanal", amount = 100}:remove_unlock("korlex"):add_unlock("plastics-mk02")
RECIPE("charcoal-briquette"):replace_ingredient("raw-fiber", "fiber")
RECIPE("yotoi-fruit-mk02"):replace_ingredient("nitrogen", "cold-clean-air")

RECIPE("fiber"):remove_unlock("kicalk-2"):add_unlock("filtration")

TECHNOLOGY("paramagnetic-material"):remove_pack("production-science-pack"):remove_prereq("production-science-pack")
TECHNOLOGY("aerogel"):remove_pack("production-science-pack"):remove_prereq("production-science-pack")

--need to remove all production sci from all techs leading to biobatteries
--[[
TECHNOLOGY('parametric-oscilator'):remove_pack('production-science-pack')
TECHNOLOGY('re-magnet'):remove_pack('production-science-pack'):remove_prereq('production-science-pack')
TECHNOLOGY('integrated-circuits-3'):remove_pack('production-science-pack')
TECHNOLOGY('microfibers'):remove_pack('production-science-pack')
TECHNOLOGY('biopolymer'):remove_pack('production-science-pack')
TECHNOLOGY('collagen'):remove_pack('production-science-pack'):remove_prereq('production-science-pack')
TECHNOLOGY('zno-nanoparticles'):remove_pack('production-science-pack')
TECHNOLOGY('earnshaw-theorem'):remove_pack('production-science-pack')
TECHNOLOGY('superconductor'):remove_pack('production-science-pack')
]] --

RECIPE("brain-cartridge-03"):add_ingredient {type = "item", name = "rayon", amount = 1}:add_ingredient {type = "item", name = "phosphate-glass", amount = 2}

----EXCLUSIVE RECIPES----

RECIPE {
    type = "recipe",
    name = "phytoplankton-2",
    category = "plankton",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "fluid", name = "flue-gas",   amount = 100, fluidbox_index = 1},
        {type = "fluid", name = "water",      amount = 500, fluidbox_index = 2},
        {type = "item",  name = "fertilizer", amount = 3},
    },
    results = {
        {type = "fluid", name = "phytoplankton", amount = 20}
    },
    main_product = "phytoplankton",
    subgroup = "py-alienlife-plants",
    order = "b"
}:add_unlock("microbiology-mk04")

--scrondrix

RECIPE {
    type = "recipe",
    name = "bones-to-phosphate",
    category = "atomizer",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item", name = "bones", amount = 10},
    },
    results = {
        {type = "item", name = "phosphate-rock", amount = 5},
    },
    --main_product = 'cocoon',
}:add_unlock("molecular-decohesion-mk03")

RECIPE {
    type = "recipe",
    name = "carapace-to-re",
    category = "atomizer",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item", name = "carapace", amount = 5},
    },
    results = {
        {type = "item", name = "rare-earth-ore", amount = 20},
    },
    --main_product = 'cocoon',
}:add_unlock("molecular-decohesion-mk03")

RECIPE {
    type = "recipe",
    name = "meat-to-cyanic",
    category = "atomizer",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item", name = "meat", amount = 10},
    },
    results = {
        {type = "fluid", name = "cyanic-acid", amount = 50},
    },
    --main_product = 'cocoon',
}:add_unlock("molecular-decohesion-mk02")

RECIPE {
    type = "recipe",
    name = "kicalk-to-iron",
    category = "atomizer",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item", name = "kicalk-seeds", amount = 5},
    },
    results = {
        {type = "item", name = "iron-ore", amount = 20},
    },
    --main_product = 'cocoon',
}:add_unlock("molecular-decohesion-mk03")

RECIPE {
    type = "recipe",
    name = "cadaveric-to-sulfur",
    category = "atomizer",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item", name = "cadaveric-arum", amount = 1},
    },
    results = {
        {type = "item", name = "sulfur", amount = 5},
    },
    --main_product = 'cocoon',
}:add_unlock("molecular-decohesion-mk03")

RECIPE {
    type = "recipe",
    name = "cadaveric-to-copper",
    category = "atomizer",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item", name = "cadaveric-arum", amount = 1},
    },
    results = {
        {type = "item", name = "copper-ore", amount = 10},
    },
    --main_product = 'cocoon',
}:add_unlock("molecular-decohesion-mk03")

RECIPE {
    type = "recipe",
    name = "blood-to-urea",
    category = "atomizer",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "fluid", name = "blood", amount = 100},
    },
    results = {
        {type = "item", name = "urea", amount = 10},
    },
    --main_product = 'cocoon',
}:add_unlock("molecular-decohesion-mk02")

RECIPE {
    type = "recipe",
    name = "ethylene-from-fruit",
    category = "bio-reactor",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item", name = "yotoi-fruit", amount = 10},
    },
    results = {
        {type = "fluid", name = "ethylene", amount = 50}
    }
}:add_unlock("ethylene")

RECIPE {
    type = "recipe",
    name = "phenol-02",
    category = "distilator",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item", name = "lignin", amount = 5},
    },
    results = {
        {type = "item", name = "phenol", amount = 5},
    },
}:add_unlock("phenol")

RECIPE {
    type = "recipe",
    name = "filtration-media-4",
    category = "crafting",
    enabled = false,
    energy_required = 15,
    ingredients = {
        {type = "item", name = "pure-sand",             amount = 30},
        {type = "item", name = "active-carbon",         amount = 10},
        {type = "item", name = "gravel",                amount = 25},
        {type = "item", name = "cellulose",             amount = 25},
        {type = "item", name = "sub-denier-microfiber", amount = 3},
    },
    results = {
        {type = "item", name = "filtration-media", amount = 100},
    },
}:add_unlock("microfibers")

RECIPE {
    type = "recipe",
    name = "urea-from-liquid-manure",
    category = "bio-reactor",
    enabled = false,
    energy_required = 8,
    ingredients = {
        {type = "fluid", name = "liquid-manure",  amount = 100},
        {type = "fluid", name = "zogna-bacteria", amount = 10},
    },
    results = {
        {type = "item", name = "urea", amount = 30},
    },
    --main_product = 'cocoon',
}:add_unlock("melamine")

RECIPE {
    type = "recipe",
    name = "kicalk-fiber",
    category = "wpu",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item", name = "kicalk", amount = 1},
    },
    results = {
        {type = "item", name = "raw-fiber", amount = 5},
    },
}:add_unlock("kicalk")

RECIPE {
    type = "recipe",
    name = "cellulose-01",
    category = "pulp",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item", name = "raw-fiber",        amount = 8},
        {type = "item", name = "sodium-hydroxide", amount = 3},
    },
    results = {
        {type = "item", name = "cellulose", amount = 5}
    },
}:add_unlock("cellulose-mk03")

RECIPE {
    type = "recipe",
    name = "methane-from-liquid-manure",
    category = "bio-reactor",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "fluid", name = "liquid-manure", amount = 100},
        {type = "fluid", name = "bacteria-1",    amount = 10},
    },
    results = {
        {type = "fluid", name = "methane", amount = 150},
    },
    --main_product = 'cocoon',
}:add_unlock("kmauts")

local tile_count = 529
--------------------------ralesia mega farm----------------

RECIPE {
    type = "recipe",
    name = "ralesia-super-8",
    category = "ralesia-farm",
    enabled = false,
    energy_required = 80,
    ingredients = {
        {type = "item",  name = "soil",       amount = 1000},
        {type = "item",  name = "urea",       amount = 300},
        {type = "item",  name = "fertilizer", amount = 100},
        {type = "fluid", name = "water",      amount = 3000},
        {type = "fluid", name = "syngas",     amount = 1500},
    },
    results = {
        {type = "item", name = "ralesia", amount = tile_count * 8},
    },
}:add_unlock("mega-farm-ralesia")

RECIPE {
    type = "recipe",
    name = "ralesia-super-9",
    category = "ralesia-farm",
    enabled = false,
    energy_required = 80,
    ingredients = {
        {type = "item",  name = "soil",       amount = 1000},
        {type = "item",  name = "urea",       amount = 300},
        {type = "item",  name = "blood-meal", amount = 100},
        {type = "item",  name = "fertilizer", amount = 100},
        {type = "fluid", name = "water",      amount = 3000},
        {type = "fluid", name = "syngas",     amount = 1500},
    },
    results = {
        {type = "item", name = "ralesia", amount = tile_count * 9},
    },
}:add_unlock("mega-farm-ralesia")

--------------------------rennea mega farm----------------

RECIPE {
    type = "recipe",
    name = "rennea-super-8",
    category = "rennea-farm",
    enabled = false,
    energy_required = 100,
    ingredients = {
        {type = "item",  name = "soil",       amount = 1000},
        {type = "fluid", name = "water",      amount = 3000},
        {type = "item",  name = "coarse",     amount = 100},
        {type = "item",  name = "urea",       amount = 300},
        {type = "item",  name = "fertilizer", amount = 100},
    },
    results = {
        {type = "item", name = "rennea", amount = tile_count * 8},
    },
}:add_unlock("mega-farm-rennea")

RECIPE {
    type = "recipe",
    name = "rennea-super-9",
    category = "rennea-farm",
    enabled = false,
    energy_required = 100,
    ingredients = {
        {type = "item",  name = "soil",       amount = 1000},
        {type = "fluid", name = "water",      amount = 3000},
        {type = "item",  name = "coarse",     amount = 100},
        {type = "item",  name = "urea",       amount = 300},
        {type = "item",  name = "blood-meal", amount = 100},
        {type = "item",  name = "fertilizer", amount = 100},
    },
    results = {
        {type = "item", name = "rennea", amount = tile_count * 9},
    },
}:add_unlock("mega-farm-rennea")

--------------------------tuuphra mega farm----------------

RECIPE {
    type = "recipe",
    name = "tuuphra-super-8",
    category = "tuuphra-farm",
    enabled = false,
    energy_required = 100,
    ingredients = {
        {type = "item",  name = "soil",       amount = 1000},
        {type = "fluid", name = "water",      amount = 3000},
        {type = "fluid", name = "nitrogen",   amount = 1500},
        {type = "item",  name = "coarse",     amount = 100},
        {type = "item",  name = "urea",       amount = 300},
        {type = "item",  name = "fertilizer", amount = 100},
    },
    results = {
        {type = "item", name = "tuuphra", amount = tile_count * 8},
    },
}:add_unlock("mega-farm-tuuphra")

RECIPE {
    type = "recipe",
    name = "tuuphra-super-9",
    category = "tuuphra-farm",
    enabled = false,
    energy_required = 100,
    ingredients = {
        {type = "item",  name = "soil",       amount = 1000},
        {type = "fluid", name = "water",      amount = 3000},
        {type = "fluid", name = "nitrogen",   amount = 1500},
        {type = "item",  name = "coarse",     amount = 100},
        {type = "item",  name = "urea",       amount = 300},
        {type = "item",  name = "blood-meal", amount = 100},
        {type = "item",  name = "fertilizer", amount = 100},
    },
    results = {
        {type = "item", name = "tuuphra", amount = tile_count * 9},
    },
}:add_unlock("mega-farm-tuuphra")

--------------------------grod mega farm----------------

RECIPE {
    type = "recipe",
    name = "grod-super-9",
    category = "grod-farm",
    enabled = false,
    energy_required = 100,
    ingredients = {
        {type = "item",  name = "soil",         amount = 1000},
        {type = "fluid", name = "water",        amount = 10000},
        {type = "fluid", name = "slacked-lime", amount = 1000},
        {type = "item",  name = "limestone",    amount = 150},
        {type = "item",  name = "urea",         amount = 300},
        {type = "item",  name = "blood-meal",   amount = 100},
        {type = "item",  name = "fertilizer",   amount = 100},
    },
    results = {
        {type = "item", name = "grod", amount = tile_count * 9},
    },
}:add_unlock("mega-farm-grod")

--------------------------yotoi mega farm----------------

RECIPE {
    type = "recipe",
    name = "yotoi-super-9",
    category = "yotoi-farm",
    enabled = false,
    energy_required = 100,
    ingredients = {
        {type = "item",  name = "sand",           amount = 1000},
        {type = "fluid", name = "water",          amount = 10000},
        {type = "fluid", name = "carbon-dioxide", amount = 6000},
        {type = "item",  name = "limestone",      amount = 150},
        {type = "item",  name = "lignin",         amount = 200},
        {type = "item",  name = "native-flora",   amount = 300},
        {type = "item",  name = "urea",           amount = 300},
        {type = "item",  name = "blood-meal",     amount = 100},
        {type = "item",  name = "fertilizer",     amount = 100},
    },
    results = {
        {type = "item", name = "yotoi", amount = tile_count * 9},
    },
}:add_unlock("mega-farm-yotoi")

--------------------------yotoi fruit mega farm----------------

RECIPE {
    type = "recipe",
    name = "yotoi-fruit-super-9",
    category = "yotoi-farm",
    subgroup = "py-alienlife-yotoi-fruit-smartfarm",
    enabled = false,
    energy_required = 100,
    ingredients = {
        {type = "item",  name = "sand",           amount = 1000},
        {type = "fluid", name = "water",          amount = 10000},
        {type = "fluid", name = "carbon-dioxide", amount = 6000},
        {type = "item",  name = "limestone",      amount = 150},
        {type = "item",  name = "lignin",         amount = 200},
        {type = "item",  name = "native-flora",   amount = 300},
        {type = "item",  name = "urea",           amount = 300},
        {type = "item",  name = "blood-meal",     amount = 100},
        {type = "item",  name = "fertilizer",     amount = 100},
    },
    results = {
        {type = "item", name = "yotoi-fruit", amount = tile_count * 9},
    },
}:add_unlock("mega-farm-yotoi")


RECIPE {
    type = "recipe",
    name = "chithin-to-phosphate",
    category = "atomizer",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item", name = "chitin", amount = 1},
    },
    results = {
        {type = "item", name = "phosphate-rock", amount = 7},
    },
    --main_product = 'cocoon',
}:add_unlock("molecular-decohesion-mk03")

RECIPE {
    type = "recipe",
    name = "meat-to-phosphate",
    category = "atomizer",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item", name = "meat", amount = 13},
    },
    results = {
        {type = "item", name = "phosphate-rock", amount = 3},
    },
    --main_product = 'cocoon',
}:add_unlock("molecular-decohesion-mk02")

RECIPE {
    type = "recipe",
    name = "fish-to-phosphate",
    category = "atomizer",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item", name = "fish", amount = 10},
    },
    results = {
        {type = "item", name = "phosphate-rock", amount = 1},
    },
    --main_product = 'cocoon',
}:add_unlock("molecular-decohesion-mk03")

RECIPE {
    type = "recipe",
    name = "wood-seeds-to-phosphate",
    category = "atomizer",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item", name = "wood-seeds", amount = 20},
    },
    results = {
        {type = "item", name = "phosphate-rock", amount = 2},
    },
    --main_product = 'cocoon',
}:add_unlock("molecular-decohesion-mk02")

RECIPE {
    type = "recipe",
    name = "rennea-to-phosphate",
    category = "atomizer",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item", name = "rennea-seeds", amount = 10},
    },
    results = {
        {type = "item", name = "phosphate-rock", amount = 3},
    },
    --main_product = 'cocoon',
}:add_unlock("molecular-decohesion-mk04")

RECIPE {
    type = "recipe",
    name = "gas-bladder-to-methane",
    category = "gas-separator",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item", name = "gas-bladder", amount = 1},
    },
    results = {
        {type = "fluid", name = "methane", amount = 50}
    }
}:add_unlock("phagnot-mk02").category = "gas-refinery"

RECIPE {
    type = "recipe",
    name = "gas-bladder-to-ammonia",
    category = "gas-separator",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item", name = "gas-bladder", amount = 1},
    },
    results = {
        {type = "fluid", name = "ammonia", amount = 40}
    }
}:add_unlock("phagnot-mk02").category = "gas-refinery"

RECIPE {
    type = "recipe",
    name = "gas-bladder-to-propene",
    category = "gas-separator",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item", name = "gas-bladder", amount = 1},
    },
    results = {
        {type = "fluid", name = "propene", amount = 35}
    }
}:add_unlock("phagnot-mk02").category = "gas-refinery"

RECIPE {
    type = "recipe",
    name = "gas-bladder-to-ethylene",
    category = "gas-separator",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item", name = "gas-bladder", amount = 1},
    },
    results = {
        {type = "fluid", name = "ethylene", amount = 30}
    }
}:add_unlock("phagnot-mk03").category = "gas-refinery"

RECIPE {
    type = "recipe",
    name = "biopolymer-2",
    category = "bio-reactor",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item",  name = "silver-foam",   amount = 1},
        {type = "item",  name = "urea",          amount = 10},
        {type = "item",  name = "sporopollenin", amount = 3},
        {type = "fluid", name = "bacteria-2",    amount = 25},
        {type = "fluid", name = "fish-oil",      amount = 50}
    },
    results = {
        {type = "item", name = "biopolymer", amount = 5}
    }
}:add_unlock("biopolymer")

RECIPE {
    type = "recipe",
    name = "phenol-3",
    category = "biofactory",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item",  name = "sporopollenin", amount = 5},
        {type = "fluid", name = "boric-acid",    amount = 300},
    },
    results = {
        {type = "item", name = "phenol", amount = 6},
    },
    --main_product = 'b-molasse',
}:add_unlock("phenol")

RECIPE {
    type = "recipe",
    name = "recombinant-ery-2",
    category = "genlab",
    enabled = false,
    energy_required = 120,
    ingredients = {
        {type = "item",  name = "adam42-gen",         amount = 1},
        {type = "item",  name = "cysteine",           amount = 1},
        {type = "item",  name = "alien-enzymes",      amount = 1},
        {type = "item",  name = "denatured-seismite", amount = 2},
        {type = "item",  name = "paragen",            amount = 5},
        {type = "item",  name = "guts",               amount = 15},
        {type = "item",  name = "mukmoux-fat",        amount = 30},
        {type = "item",  name = "lab-instrument",     amount = 10},
        {type = "fluid", name = "gta",                amount = 50},
        {type = "item",  name = "myoglobin",          amount = 1},
        {type = "item",  name = "flask",              amount = 20},
        {type = "item",  name = "mmp",                amount = 1},
    },
    results = {
        {type = "item", name = "recombinant-ery", amount = 280},
    },
}:add_unlock("recombinant-ery")

RECIPE {
    type = "recipe",
    name = "nanofibrils-2",
    category = "nmf",
    enabled = false,
    energy_required = 20,
    ingredients = {
        {type = "item", name = "collagen", amount = 5},
        {type = "item", name = "chitosan", amount = 5},
    },
    results = {
        {type = "item", name = "nanofibrils", amount = 3},
    },
}:add_unlock("chitin")

RECIPE {
    type = "recipe",
    name = "kicalk-to-chelator",
    category = "biofactory",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item",  name = "kicalk",        amount = 1},
        {type = "fluid", name = "oleochemicals", amount = 50},
    },
    results = {
        {type = "fluid", name = "chelator", amount = 50},
    },
}:add_unlock("phytomining-mk02")

RECIPE {
    type = "recipe",
    name = "cadaveric-pb",
    category = "arum",
    enabled = false,
    energy_required = 100,
    ingredients = {
        {type = "fluid", name = "dirty-water-light", amount = 200, fluidbox_index = 2},
        {type = "item",  name = "cadaveric-arum",    amount = 1},
    },
    results = {
        {type = "item",  name = "s-biomass",   amount = 10},
        {type = "fluid", name = "waste-water", amount = 50},
    },
    main_product = "s-biomass",
    icon = "__pyalienlifegraphics__/graphics/icons/s-biomass.png",
    icon_size = 64,
}:add_unlock("phytomining")

RECIPE {
    type = "recipe",
    name = "cadaveric-pb-2",
    category = "arum",
    enabled = false,
    energy_required = 60,
    ingredients = {
        {type = "fluid", name = "dirty-water-light", amount = 200, fluidbox_index = 2},
        {type = "item",  name = "cadaveric-arum",    amount = 1},
        {type = "fluid", name = "chelator",          amount = 50,  fluidbox_index = 3},
    },
    results = {
        {type = "item",  name = "s-biomass",   amount = 20},
        {type = "fluid", name = "waste-water", amount = 80},
    },
    main_product = "s-biomass",
    icon = "__pyalienlifegraphics__/graphics/icons/s-biomass.png",
    icon_size = 64,
}:add_unlock("phytomining-mk02")

RECIPE {
    type = "recipe",
    name = "cadaveric-pb-3",
    category = "arum",
    enabled = false,
    energy_required = 40,
    ingredients = {
        {type = "fluid", name = "dirty-water-light", amount = 200, fluidbox_index = 2},
        {type = "item",  name = "hmas",              amount = 1},
        {type = "item",  name = "cadaveric-arum",    amount = 1},
        {type = "fluid", name = "chelator",          amount = 50,  fluidbox_index = 3},
    },
    results = {
        {type = "item",  name = "s-biomass",   amount = 60},
        {type = "fluid", name = "waste-water", amount = 100},
    },
    main_product = "s-biomass",
    icon = "__pyalienlifegraphics__/graphics/icons/s-biomass.png",
    icon_size = 64,
}:add_unlock("phytomining-mk03")

RECIPE {
    type = "recipe",
    name = "kicalk-zn",
    category = "kicalk",
    enabled = false,
    energy_required = 100,
    ingredients = {
        {type = "fluid", name = "dirty-water-light", amount = 200, fluidbox_index = 1},
        {type = "item",  name = "kicalk",            amount = 1},
    },
    results = {
        {type = "item",  name = "zn-biomass",  amount = 10},
        {type = "fluid", name = "waste-water", amount = 50},
    },
    main_product = "zn-biomass",
    icon = "__pyalienlifegraphics__/graphics/icons/zn-biomass.png",
    icon_size = 64,
}:add_unlock("phytomining-mk02")

RECIPE {
    type = "recipe",
    name = "kicalk-zn-2",
    category = "kicalk",
    enabled = false,
    energy_required = 60,
    ingredients = {
        {type = "fluid", name = "dirty-water-light", amount = 200, fluidbox_index = 1},
        {type = "item",  name = "kicalk",            amount = 1},
        {type = "fluid", name = "chelator",          amount = 50,  fluidbox_index = 2},
    },
    results = {
        {type = "item",  name = "zn-biomass",  amount = 20},
        {type = "fluid", name = "waste-water", amount = 80},
    },
    main_product = "zn-biomass",
    icon = "__pyalienlifegraphics__/graphics/icons/zn-biomass.png",
    icon_size = 64,
}:add_unlock("phytomining-mk02")

RECIPE {
    type = "recipe",
    name = "kicalk-zn-3",
    category = "kicalk",
    enabled = false,
    energy_required = 40,
    ingredients = {
        {type = "fluid", name = "dirty-water-light", amount = 200, fluidbox_index = 1},
        {type = "item",  name = "kicalk",            amount = 1},
        {type = "item",  name = "hmas",              amount = 1},
        {type = "fluid", name = "chelator",          amount = 50,  fluidbox_index = 2},
    },
    results = {
        {type = "item",  name = "zn-biomass",  amount = 80},
        {type = "fluid", name = "waste-water", amount = 100},
    },
    main_product = "zn-biomass",
    icon = "__pyalienlifegraphics__/graphics/icons/zn-biomass.png",
    icon_size = 64,
}:add_unlock("phytomining-mk03")

-------BIOMASS EXTRACTION----------------------------------

RECIPE {
    type = "recipe",
    name = "s-biomass-extraction",
    category = "desulfurization",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item",  name = "s-biomass", amount = 10},
        {type = "fluid", name = "steam",     amount = 100},
    },
    results = {
        {type = "item", name = "sulfur",  amount = 10},
        {type = "item", name = "biomass", amount = 5},
    },
    main_product = "sulfur",
    icon = "__base__/graphics/icons/sulfur.png",
    icon_size = 64,
}:add_unlock("phytomining").category = "pulp"


RECIPE {
    type = "recipe",
    name = "casein-melamine",
    category = "fbreactor",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item",  name = "casein",      amount = 5},
        {type = "fluid", name = "cyanic-acid", amount = 50},
    },
    results = {
        {type = "item", name = "melamine", amount = 10},
    },
    --main_product = 'casein-pulp-01',
}:add_unlock("korlex-mk02")

----------MILK FIBER--------------------

RECIPE {
    type = "recipe",
    name = "casein-solution",
    category = "mixer",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item",  name = "casein",           amount = 5},
        {type = "item",  name = "sodium-hydroxide", amount = 5},
        {type = "fluid", name = "water",            amount = 500},
    },
    results = {
        {type = "fluid", name = "casein-solution", amount = 50},
    },
    --main_product = 'casein-pulp-01',
}:add_unlock("biotech-mk03")

RECIPE {
    type = "recipe",
    name = "raw-fiber-casein",
    category = "biofactory",
    enabled = false,
    energy_required = 20,
    ingredients = {
        {type = "fluid", name = "sulfuric-acid",   amount = 30},
        {type = "fluid", name = "methanal",        amount = 100},
        {type = "item",  name = "sugar",           amount = 5},
        {type = "item",  name = "kicalk",          amount = 1},
        {type = "fluid", name = "casein-solution", amount = 50},
    },
    results = {
        {type = "item", name = "raw-fiber", amount = 40},
    },
    allow_productivity = true,
    --main_product = 'casein-pulp-01',
}:add_unlock("biotech-mk03")

RECIPE {
    type = "recipe",
    name = "casein-mixture-01",
    category = "mixer",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "fluid", name = "milk",        amount = 50},
        {type = "fluid", name = "acetic-acid", amount = 50},
    },
    results = {
        {type = "fluid", name = "casein-mixture", amount = 50},
        {type = "fluid", name = "waste-water",    amount = 50},
    },
    main_product = "casein-mixture",
}:add_unlock("korlex")

RECIPE {
    type = "recipe",
    name = "ethyl-mercaptan-2",
    category = "mixer",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item",  name = "chromium", amount = 2},
        {type = "fluid", name = "ethylene", amount = 100},
        {type = "fluid", name = "acidgas",  amount = 100},
    },
    results = {
        {type = "fluid", name = "ethyl-mercaptan", amount = 200},
    },
    --main_product = 'mcb',
}:add_unlock("pesticides-mk02")

RECIPE {
    type = "recipe",
    name = "nisi",
    category = "chemical",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "fluid", name = "vacuum",         amount = 300},
        {type = "item",  name = "nickel-plate",   amount = 1},
        {type = "item",  name = "silicon",        amount = 2},
        {type = "item",  name = "cobalt-extract", amount = 2},
    },
    results = {
        {type = "item", name = "nisi",           amount = 1},
        {type = "item", name = "cobalt-extract", amount = 2, probability = 0.5, ignored_by_productivity = 2},
    },
    main_product = "nisi",
}:add_unlock("basic-electronics").category = "gas-separator"

RECIPE {
    type = "recipe",
    name = "mosfet",
    category = "electronic",
    enabled = false,
    energy_required = 6,
    ingredients = {
        {type = "fluid", name = "al-pulp-01",      amount = 15},
        {type = "fluid", name = "sulfuric-acid",   amount = 100},
        {type = "item",  name = "aluminium-plate", amount = 1},
        {type = "item",  name = "reo",             amount = 5},
        {type = "item",  name = "sic",             amount = 3},
        {type = "item",  name = "plastic-bar",     amount = 3},
        {type = "item",  name = "nisi",            amount = 2},
        {type = "item",  name = "heavy-n",         amount = 4},
        {type = "item",  name = "light-n",         amount = 4},
        {type = "item",  name = "p-dope",          amount = 4},
    },
    results = {
        {type = "item", name = "mosfet", amount = 4},
    },
    --main_product = 'chloral',
}:add_unlock("basic-electronics")

RECIPE {
    type = "recipe",
    name = "cooling-system",
    category = "electronic",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item",  name = "stainless-steel", amount = 2},
        {type = "item",  name = "nexelit-plate",   amount = 4},
        {type = "item",  name = "duralumin",       amount = 3},
        {type = "item",  name = "solder",          amount = 2},
        {type = "item",  name = "graphene-roll",   amount = 1},
        {type = "fluid", name = "sulfuric-acid",   amount = 100},
        {type = "fluid", name = "liquid-nitrogen", amount = 50},
        {type = "item",  name = "nylon-parts",     amount = 5},
        {type = "item",  name = "small-parts-02",  amount = 3},
        {type = "item",  name = "chitosan",        amount = 1},
        {type = "item",  name = "science-coating", amount = 1},
        {type = "item",  name = "kevlar",          amount = 1},
    },
    results = {
        {type = "item", name = "cooling-system", amount = 1},
    },
    --main_product = 'chloral',
}:add_unlock("advanced-circuit")

-- RECIPE {
--     type = 'recipe',
--     name = 'starch-3',
--     category = 'pulp',
--     enabled = false,
--     energy_required = 3,
--     ingredients = {
--         {type = 'item', name = 'guar-seeds', amount = 100}
--     },
--     results = {
--         {type = 'item', name = 'starch', amount = 3},
--         {type = 'item', name = 'biomass', amount = 5},
--     },
--     main_product= 'starch',
--     icon = '__pyraworesgraphics__/graphics/icons/starch.png',
--     icon_size = 64,
--     subgroup = 'py-rawores-recipes',
--     order = 'j'
-- }:add_unlock('starch-mk01'):add_ingredient({type = 'item', name = 'fiberboard', amount = 1})

RECIPE {
    type = "recipe",
    name = "starch-4",
    category = "pulp",
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = "item", name = "guar-seeds",     amount = 100},
        {type = "item", name = "sodium-sulfate", amount = 1},
    },
    results = {
        {type = "item", name = "starch",  amount = 10},
        {type = "item", name = "biomass", amount = 5},
    },
    main_product = "starch",
    icon = "__pyraworesgraphics__/graphics/icons/starch.png",
    icon_size = 64,
    subgroup = "py-rawores-recipes",
    order = "j"
}:add_unlock("starch-mk02"):add_ingredient {type = "item", name = "fiberboard", amount = 1}

ITEM {
    type = "item",
    name = "cooling-system",
    icon = "__pyalienlifegraphics__/graphics/icons/cooling-system.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-hightech-tier-3",
    order = "a",
    stack_size = 100
}

RECIPE("processing-unit"):add_ingredient {type = "item", name = "cooling-system", amount = 1}
RECIPE("intelligent-unit"):add_ingredient {type = "item", name = "cooling-system", amount = 2}
RECIPE("var-josephson-junction"):add_ingredient {type = "item", name = "cooling-system", amount = 1}
RECIPE("pi-josephson-junction"):add_ingredient {type = "item", name = "cooling-system", amount = 1}

RECIPE("rennea-mk02-breeding"):replace_ingredient("sulfuric-acid-barrel", "phosphoric-acid-barrel")

RECIPE("rennea-mk03-breeding"):replace_ingredient("sulfuric-acid-barrel", "phosphoric-acid-barrel")

RECIPE("rennea-mk04-breeding"):replace_ingredient("sulfuric-acid-barrel", "phosphoric-acid-barrel")


local arqad_filled =
{
    "arqad-filled-comb-1",
    "arqad-filled-comb-2",
    "arqad-filled-comb-3",
    "arqad-filled-comb-4",
    "arqad-filled-comb-5",
    "arqad-filled-comb-6",
    "arqad-filled-comb-7",
    "arqad-filled-comb-1a",
    "arqad-filled-comb-2a",
    "arqad-filled-comb-3a",
    "arqad-filled-comb-4a",
    "arqad-filled-comb-5a",
    "arqad-filled-comb-6a",
    "arqad-filled-comb-7a",
    "arqad-filled-comb-1b",
    "arqad-filled-comb-2b",
    "arqad-filled-comb-3b",
    "arqad-filled-comb-4b",
    "arqad-filled-comb-5b",
    "arqad-filled-comb-6b",
    "arqad-filled-comb-7b",
}

for _, recipe in pairs(arqad_filled) do
    if RECIPE[recipe] then RECIPE[recipe]:replace_ingredient("crude-oil-barrel", "tall-oil-barrel") end
end

RECIPE("biofilm-pyht"):replace_result("biofilm", "biofilm", 75)

data.raw.recipe.biofilm.energy_required = 10
RECIPE("biofilm"):replace_result("biofilm", "biofilm", 10)

RECIPE {
    type = "recipe",
    name = "starch-3",
    category = "biofactory",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "fluid", name = "formic-acid",    amount = 100},
        {type = "item",  name = "enzyme-pks",     amount = 1},
        {type = "item",  name = "moondrop-seeds", amount = 80},
        {type = "item",  name = "fiberboard",     amount = 2},
    },
    results = {
        {type = "item", name = "starch", amount = 20}
    }
}:add_unlock("starch-mk03")

data.raw["assembling-machine"]["kicalk-plantation"] = nil
data.raw["item"]["kicalk-plantation"] = nil
data.raw["recipe"]["kicalk-plantation"] = nil
data.raw["assembling-machine"]["auog-paddock"] = nil
data.raw["item"]["auog-paddock"] = nil
data.raw["recipe"]["auog-paddock"] = nil
data.raw["assembling-machine"]["zipir"] = nil
data.raw["item"]["zipir"] = nil
data.raw["recipe"]["zipir"] = nil
data.raw["assembling-machine"]["mukmoux-pasture"] = nil
data.raw["item"]["mukmoux-pasture"] = nil
data.raw["recipe"]["mukmoux-pasture"] = nil
data.raw["recipe"]["ralesia"] = nil

data.raw["recipe"]["fertilizer-2"].results = {{"fertilizer", 15}}
RECIPE("fertilizer-2"):add_unlock("biofluid-mk01"):add_ingredient {type = "item", name = "guano", amount = 2}:add_ingredient_amount("ammonium-chloride", -18)

py.allow_productivity {"cellulose-01"}

data.raw.recipe["blood-meal"].ingredients = {
    {type = "fluid", name = "blood",      amount = 100},
    {type = "item",  name = "fiberboard", amount = 1}
}

RECIPE("utility-science-pack"):remove_ingredient("kevlar"):add_ingredient {type = "item", name = "snarer-heart", amount = 1}
