local fun = require("prototypes/functions/functions")

require('prototypes/ores/kicalk')
require('prototypes/technologies/mega-farm-kicalk')
require('prototypes/recipes/recipes-kicalk-megafarm')
require('prototypes/recipes/recipes-kicalk')
require('prototypes/recipes/recipes-auto-kicalk')
require('prototypes/ores/arum')
require('prototypes/technologies/mega-farm-cadaveric-arum')
require('prototypes/technologies/cadaveric-arum')
require('prototypes/recipes/recipes-arum-megafarm')
require('prototypes/recipes/recipes-cadaveric')
require('prototypes/recipes/recipes-auto-cadaveric')
require("prototypes/buildings/cadavericarum-mk01")
require("prototypes/buildings/cadavericarum-mk02")
require("prototypes/buildings/cadavericarum-mk03")
require("prototypes/buildings/cadavericarum-mk04")
require("prototypes/buildings/kicalk-plantation-mk01")
require("prototypes/buildings/kicalk-plantation-mk02")
require("prototypes/buildings/kicalk-plantation-mk03")
require("prototypes/buildings/kicalk-plantation-mk04")
require('prototypes/technologies/moondrop')
require('prototypes/recipes/recipes-moondrop')
require('prototypes/recipes/recipes-auto-moondrop')

--TECHNOLOGY--
TECHNOLOGY('nano-tech'):add_prereq('microbiology-mk03')
--TECHNOLOGY('bio-implants'):add_prereq('nano-tech')
TECHNOLOGY('advanced-electronics'):add_prereq('chitin')
TECHNOLOGY('antitumor'):add_prereq('earnshaw-theorem')
RECIPE('kicalk-plantation'):remove_unlock('coal-processing-1')
RECIPE('cadaveric-arum-mk01'):remove_unlock('basic-electronics')

require('prototypes/recipes/recipes-antelope')
require('prototypes/recipes/recipes-auto-antelope')

----KICALK-----

ITEM {
    type = "item",
    name = "replicator-kicalk",
    icon = "__pyalienlifegraphics__/graphics/icons/replicator-kicalk.png",
	icon_size = 64,
    flags = {},
    subgroup = "py-alienlife-replicators",
    order = "x",
    stack_size = 1
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
    stack_size = 1
}

ITEM {
    type = "item",
    name = "cadaveric-arum-codex",
    icon = "__pyalienlifegraphics__/graphics/icons/cadaveric-arum-codex.png",
	icon_size = 64,
    flags = {},
    subgroup = "py-alienlife-codex",
    order = "x",
    stack_size = 10
}

ITEM('dms'):subgroup_order("py-alienlife-gases", "b")
ITEM('acidgas'):subgroup_order("py-alienlife-gases", "a")
----BUILDINDS----
RECIPE('ralesia-plantation-mk03'):add_ingredient({type = "item", name = "biopolymer", amount = 15}):add_ingredient({type = "item", name = "carbon-aerogel", amount = 20})
RECIPE('ralesia-plantation-mk04'):replace_ingredient("control-unit", "intelligent-unit"):add_ingredient({type = "item", name = "superconductor-servomechanims", amount = 5}):add_ingredient({type = "item", name = "nv-center", amount = 2})
RECIPE('auog-paddock'):set_fields {enabled = false}
RECIPE('zipir'):remove_unlock('basic-electronics')
RECIPE('cadaveric-arum-mk01'):remove_unlock('basic-electronics')
RECIPE('cadaveric-arum-mk02'):remove_unlock('basic-electronics')
RECIPE('cadaveric-arum-mk03'):remove_unlock('basic-electronics')
RECIPE('cadaveric-arum-mk04'):remove_unlock('basic-electronics')
RECIPE('moondrop-greenhouse-mk01'):add_unlock('moondrop-mk01'):subgroup_order("py-alienlife-buildings-mk01", "b")
--ENTITY('moondrop-greenhouse-mk01'):set('crafting_speed', 0.01)
data.raw['assembling-machine']['moondrop-greenhouse-mk01'].crafting_speed = 0.05
data.raw['assembling-machine']['moondrop-greenhouse-mk01'].module_specification.module_slots = 20
data.raw['assembling-machine']['moondrop-greenhouse-mk01'].allowed_effects = {"speed", "productivity"}
RECIPE('moondrop-greenhouse-mk02'):add_unlock('moondrop-mk02'):subgroup_order("py-alienlife-buildings-mk02", "b")
--ENTITY('moondrop-greenhouse-mk02'):set_field('crafting_speed', 0.01)
data.raw['assembling-machine']['moondrop-greenhouse-mk02'].crafting_speed = 0.05
data.raw['assembling-machine']['moondrop-greenhouse-mk02'].module_specification.module_slots = 40
data.raw['assembling-machine']['moondrop-greenhouse-mk02'].allowed_effects = {"speed", "productivity"}
RECIPE('moondrop-greenhouse-mk03'):add_unlock('moondrop-mk03'):subgroup_order("py-alienlife-buildings-mk03", "b")
--ENTITY('moondrop-greenhouse-mk03'):set_field('crafting_speed', 0.01)
data.raw['assembling-machine']['moondrop-greenhouse-mk03'].crafting_speed = 0.05
data.raw['assembling-machine']['moondrop-greenhouse-mk03'].module_specification.module_slots = 60
data.raw['assembling-machine']['moondrop-greenhouse-mk03'].allowed_effects = {"speed", "productivity"}
RECIPE('moondrop-greenhouse-mk04'):add_unlock('moondrop-mk04'):subgroup_order("py-alienlife-buildings-mk04", "b")
--ENTITY('moondrop-greenhouse-mk04'):set_field('crafting_speed', 0.01)
data.raw['assembling-machine']['moondrop-greenhouse-mk04'].crafting_speed = 0.05
data.raw['assembling-machine']['moondrop-greenhouse-mk04'].module_specification.module_slots = 80
data.raw['assembling-machine']['moondrop-greenhouse-mk04'].allowed_effects = {"speed", "productivity"}
RECIPE('harvester'):replace_ingredient("plastic-bar", "biopolymer"):add_ingredient({type = "item", name = "aerogel", amount = 20})

RECIPE('arthurian-pen-mk03'):add_ingredient({type = "item", name = "carbon-nanotube", amount = 15})
RECIPE('atomizer-mk03'):add_ingredient({type = "item", name = "carbon-nanotube", amount = 20}):add_ingredient({type = "item", name = "paramagnetic-material", amount = 20})
RECIPE('auog-paddock-mk03'):add_ingredient({type = "item", name = "phosphate-glass", amount = 40})
RECIPE('bhoddos-culture-mk03'):add_ingredient({type = "item", name = "diamagnetic-material", amount = 20})
RECIPE('biofactory-mk03'):add_ingredient({type = "item", name = "diamagnetic-material", amount = 30}):add_ingredient({type = "item", name = "paramagnetic-material", amount = 20})
RECIPE('bio-reactor-mk03'):add_ingredient({type = "item", name = "heavy-fermion", amount = 20}):add_ingredient({type = "item", name = "superconductor", amount = 10}):add_ingredient({type = "item", name = "phosphate-glass", amount = 50})
RECIPE('cadavericarum-mk03'):add_ingredient({type = "item", name = "heavy-fermion", amount = 15}):add_ingredient({type = "item", name = "superconductor", amount = 10})
RECIPE('creature-chamber-mk03'):add_ingredient({type = "item", name = "biopolymer", amount = 15}):add_ingredient({type = "item", name = "graphene-roll", amount = 20}):add_ingredient({type = "item", name = "carbon-nanotube", amount = 15}):add_ingredient({type = "item", name = "superconductor", amount = 5})
RECIPE('cridren-enclosure-mk03'):add_ingredient({type = "item", name = "carbon-nanotube", amount = 10}):add_ingredient({type = "item", name = "phosphate-glass", amount = 30}):add_ingredient({type = "item", name = "biopolymer", amount = 20})
RECIPE('dhilmos-pool-mk03'):add_ingredient({type = "item", name = "paramagnetic-material", amount = 20}):add_ingredient({type = "item", name = "heavy-fermion", amount = 20})
RECIPE('dingrits-pack-mk03'):add_ingredient({type = "item", name = "phosphate-glass", amount = 50}):add_ingredient({type = "item", name = "biopolymer", amount = 20})
RECIPE('fish-farm-mk03'):add_ingredient({type = "item", name = "graphene-roll", amount = 30}):add_ingredient({type = "item", name = "biopolymer", amount = 15})
RECIPE('fwf-mk03'):add_ingredient({type = "item", name = "superconductor", amount = 10}):add_ingredient({type = "item", name = "phosphate-glass", amount = 40}):add_ingredient({type = "item", name = "paramagnetic-material", amount = 20})
RECIPE('genlab-mk03'):add_ingredient({type = "item", name = "diamagnetic-material", amount = 20})
RECIPE('incubator-mk03'):add_ingredient({type = "item", name = "phosphate-glass", amount = 50}):add_ingredient({type = "item", name = "graphene-roll", amount = 30}):add_ingredient({type = "item", name = "carbon-nanotube", amount = 20})
RECIPE('kmauts-enclosure-mk03'):add_ingredient({type = "item", name = "diamagnetic-material", amount = 30}):add_ingredient({type = "item", name = "heavy-fermion", amount = 15}):add_ingredient({type = "item", name = "carbon-nanotube", amount = 10})
RECIPE('moss-farm-mk03'):add_ingredient({type = "item", name = "heavy-fermion", amount = 5}):add_ingredient({type = "item", name = "superconductor", amount = 10})
RECIPE('mukmoux-pasture-mk03'):add_ingredient({type = "item", name = "paramagnetic-material", amount = 30}):add_ingredient({type = "item", name = "biopolymer", amount = 20})
RECIPE('navens-culture-mk03'):add_ingredient({type = "item", name = "graphene-roll", amount = 50}):add_ingredient({type = "item", name = "diamagnetic-material", amount = 30})
RECIPE('phadai-enclosure-mk03'):add_ingredient({type = "item", name = "heavy-fermion", amount = 15})
RECIPE('phagnot-corral-mk03'):add_ingredient({type = "item", name = "paramagnetic-material", amount = 25}):add_ingredient({type = "item", name = "carbon-nanotube", amount = 20})
RECIPE('ralesia-plantation-mk03'):add_ingredient({type = "item", name = "phosphate-glass", amount = 100}):add_ingredient({type = "item", name = "graphene-roll", amount = 30}):add_ingredient({type = "item", name = "superconductor", amount = 10})
RECIPE('rennea-plantation-mk03'):add_ingredient({type = "item", name = "diamagnetic-material", amount = 20}):add_ingredient({type = "item", name = "carbon-nanotube", amount = 10})
RECIPE('sap-extractor-mk03'):add_ingredient({type = "item", name = "graphene-roll", amount = 30})
RECIPE('scrondrix-pen-mk03'):add_ingredient({type = "item", name = "carbon-nanotube", amount = 30})
RECIPE('slaughterhouse-mk03'):add_ingredient({type = "item", name = "paramagnetic-material", amount = 20}):add_ingredient({type = "item", name = "graphene-roll", amount = 50})
RECIPE('sponge-culture-mk03'):add_ingredient({type = "item", name = "phosphate-glass", amount = 40}):add_ingredient({type = "item", name = "biopolymer", amount = 20})
RECIPE('trits-reef-mk03'):add_ingredient({type = "item", name = "phosphate-glass", amount = 50}):add_ingredient({type = "item", name = "superconductor", amount = 10})
RECIPE('tuuphra-plantation-mk03'):add_ingredient({type = "item", name = "paramagnetic-material", amount = 30}):add_ingredient({type = "item", name = "graphene-roll", amount = 50})
RECIPE('ulric-corral-mk03'):add_ingredient({type = "item", name = "superconductor", amount = 5}):add_ingredient({type = "item", name = "biopolymer", amount = 15})
RECIPE('vonix-den-mk03'):add_ingredient({type = "item", name = "superconductor-servomechanims", amount = 15}):add_ingredient({type = "item", name = "hyperelastic-material", amount = 15})
RECIPE('vrauks-paddock-mk03'):add_ingredient({type = "item", name = "phosphate-glass", amount = 30}):add_ingredient({type = "item", name = "biopolymer", amount = 15})
RECIPE('xenopen-mk03'):add_ingredient({type = "item", name = "superconductor", amount = 5}):add_ingredient({type = "item", name = "phosphate-glass", amount = 50}):add_ingredient({type = "item", name = "heavy-fermion", amount = 15})
RECIPE('yaedols-culture-mk03'):add_ingredient({type = "item", name = "graphene-roll", amount = 50}):add_ingredient({type = "item", name = "superconductor", amount = 10})
RECIPE('yotoi-aloe-orchard-mk03'):add_ingredient({type = "item", name = "graphene-roll", amount = 20}):add_ingredient({type = "item", name = "carbon-nanotube", amount = 15})
RECIPE('zipir-reef-mk03'):add_ingredient({type = "item", name = "carbon-nanotube", amount = 10}):add_ingredient({type = "item", name = "diamagnetic-material", amount = 20})
RECIPE('bio-printer-mk03'):add_ingredient({type = "item", name = "graphene-roll", amount = 30}):add_ingredient({type = "item", name = "biopolymer", amount = 15})
RECIPE('ez-ranch-mk03'):add_ingredient({type = "item", name = "paramagnetic-material", amount = 25}):add_ingredient({type = "item", name = "carbon-nanotube", amount = 20})
RECIPE('research-center-mk03'):add_ingredient({type = "item", name = "phosphate-glass", amount = 40}):add_ingredient({type = "item", name = "biopolymer", amount = 20})
RECIPE('arqad-hive-mk03'):add_ingredient({type = "item", name = "superconductor", amount = 5}):add_ingredient({type = "item", name = "phosphate-glass", amount = 50}):add_ingredient({type = "item", name = "heavy-fermion", amount = 15})



--mk04--
RECIPE('arthurian-pen-mk04'):add_ingredient({type = "item", name = "intelligent-unit", amount = 5}):add_ingredient({type = "item", name = "aerogel", amount = 20}):add_ingredient({type = "item", name = "carbon-aerogel", amount = 10}):add_ingredient({type = "item", name = "quantum-dots", amount = 10})
RECIPE('atomizer-mk04'):add_ingredient({type = "item", name = "nems", amount = 10}):add_ingredient({type = "item", name = "phosphate-glass", amount = 100}):add_ingredient({type = "item", name = "quantum-vortex-storage-system", amount = 10}):replace_ingredient("control-unit", "intelligent-unit")
RECIPE('auog-paddock-mk04'):add_ingredient({type = "item", name = "nems", amount = 10}):add_ingredient({type = "item", name = "re-magnet", amount = 50}):add_ingredient({type = "item", name = "sub-denier-microfiber", amount = 30})
RECIPE('bhoddos-culture-mk04'):add_ingredient({type = "item", name = "hyperelastic-material", amount = 30}):add_ingredient({type = "item", name = "quantum-vortex-storage-system", amount = 10}):add_ingredient({type = "item", name = "intelligent-unit", amount = 10})
RECIPE('biofactory-mk04'):add_ingredient({type = "item", name = "harmonic-absorber", amount = 15}):add_ingredient({type = "item", name = "intelligent-unit", amount = 15}):add_ingredient({type = "item", name = "sub-denier-microfiber", amount = 20})
RECIPE('bio-reactor-mk04'):add_ingredient({type = "item", name = "hyperelastic-material", amount = 30}):add_ingredient({type = "item", name = "nv-center", amount = 10})
RECIPE('cadavericarum-mk04'):add_ingredient({type = "item", name = "hyperelastic-material", amount = 15}):add_ingredient({type = "item", name = "quantum-dots", amount = 5})
RECIPE('creature-chamber-mk04'):add_ingredient({type = "item", name = "re-magnet", amount = 100}):add_ingredient({type = "item", name = "phosphate-glass", amount = 100}):add_ingredient({type = "item", name = "hyperelastic-material", amount = 30})
RECIPE('cridren-enclosure-mk04'):add_ingredient({type = "item", name = "intelligent-unit", amount = 30}):add_ingredient({type = "item", name = "nems", amount = 10}):add_ingredient({type = "item", name = "phosphate-glass", amount = 100})
RECIPE('dhilmos-pool-mk04'):add_ingredient({type = "item", name = "phosphate-glass", amount = 100}):add_ingredient({type = "item", name = "carbon-aerogel", amount = 20}):add_ingredient({type = "item", name = "aerogel", amount = 30})
RECIPE('dingrits-pack-mk04'):add_ingredient({type = "item", name = "intelligent-unit", amount = 10}):add_ingredient({type = "item", name = "re-magnet", amount = 100}):add_ingredient({type = "item", name = "phosphate-glass", amount = 100})
RECIPE('fish-farm-mk04'):add_ingredient({type = "item", name = "phosphate-glass", amount = 100})
RECIPE('fwf-mk04'):add_ingredient({type = "item", name = "intelligent-unit", amount = 30}):add_ingredient({type = "item", name = "quantum-vortex-storage-system", amount = 10}):add_ingredient({type = "item", name = "phosphate-glass", amount = 100})
RECIPE('genlab-mk04'):add_ingredient({type = "item", name = "nv-center", amount = 10})
RECIPE('grods-swamp-mk04'):add_ingredient({type = "item", name = "quantum-vortex-storage-system", amount = 10}):add_ingredient({type = "item", name = "aerogel", amount = 100})
RECIPE('incubator-mk04'):add_ingredient({type = "item", name = "re-magnet", amount = 80})
RECIPE('kicalk-plantation-mk04'):add_ingredient({type = "item", name = "aerogel", amount = 15}):add_ingredient({type = "item", name = "quantum-dots", amount = 10})
RECIPE('kmauts-enclosure-mk04'):add_ingredient({type = "item", name = "sub-denier-microfiber", amount = 50})
RECIPE('micro-mine-mk04'):add_ingredient({type = "item", name = "hyperelastic-material", amount = 30}):add_ingredient({type = "item", name = "phosphate-glass", amount = 100})
RECIPE('moss-farm-mk04'):add_ingredient({type = "item", name = "aerogel", amount = 40}):add_ingredient({type = "item", name = "quantum-vortex-storage-system", amount = 10})
RECIPE('mukmoux-pasture-mk04'):add_ingredient({type = "item", name = "carbon-aerogel", amount = 30}):add_ingredient({type = "item", name = "phosphate-glass", amount = 100})
RECIPE('navens-culture-mk04'):add_ingredient({type = "item", name = "quantum-dots", amount = 10}):add_ingredient({type = "item", name = "superconductor-servomechanims", amount = 15})
RECIPE('phadai-enclosure-mk04'):add_ingredient({type = "item", name = "nems", amount = 20})
RECIPE('phagnot-corral-mk04'):add_ingredient({type = "item", name = "superconductor-servomechanims", amount = 10}):add_ingredient({type = "item", name = "harmonic-absorber", amount = 15})
RECIPE('rennea-plantation-mk04'):add_ingredient({type = "item", name = "sub-denier-microfiber", amount = 30}):add_ingredient({type = "item", name = "re-magnet", amount = 100}):add_ingredient({type = "item", name = "nems", amount = 10})
RECIPE('sap-extractor-mk04'):add_ingredient({type = "item", name = "re-magnet", amount = 100}):add_ingredient({type = "item", name = "aerogel", amount = 70})
RECIPE('scrondrix-pen-mk04'):add_ingredient({type = "item", name = "harmonic-absorber", amount = 30}):add_ingredient({type = "item", name = "sub-denier-microfiber", amount = 50})
RECIPE('seaweed-crop-mk04'):add_ingredient({type = "item", name = "carbon-aerogel", amount = 50}):add_ingredient({type = "item", name = "re-magnet", amount = 100})
RECIPE('slaughterhouse-mk04'):add_ingredient({type = "item", name = "nems", amount = 20}):add_ingredient({type = "item", name = "sub-denier-microfiber", amount = 60})
RECIPE('sponge-culture-mk04'):add_ingredient({type = "item", name = "intelligent-unit", amount = 50}):add_ingredient({type = "item", name = "superconductor-servomechanims", amount = 20})
RECIPE('spore-collector-mk04'):add_ingredient({type = "item", name = "harmonic-absorber", amount = 20})
RECIPE('trits-reef-mk04'):add_ingredient({type = "item", name = "re-magnet", amount = 100}):add_ingredient({type = "item", name = "phosphate-glass", amount = 100}):add_ingredient({type = "item", name = "harmonic-absorber", amount = 30})
RECIPE('tuuphra-plantation-mk04'):add_ingredient({type = "item", name = "aerogel", amount = 100}):add_ingredient({type = "item", name = "nems", amount = 10}):add_ingredient({type = "item", name = "superconductor-servomechanims", amount = 5})
RECIPE('ulric-corral-mk04'):add_ingredient({type = "item", name = "carbon-aerogel", amount = 30})
RECIPE('vrauks-paddock-mk04'):add_ingredient({type = "item", name = "superconductor-servomechanims", amount = 20})
RECIPE('xenopen-mk04'):add_ingredient({type = "item", name = "carbon-aerogel", amount = 50}):add_ingredient({type = "item", name = "intelligent-unit", amount = 30})
RECIPE('yaedols-culture-mk04'):add_ingredient({type = "item", name = "phosphate-glass", amount = 100}):add_ingredient({type = "item", name = "hyperelastic-material", amount = 30})
RECIPE('yotoi-aloe-orchard-mk04'):add_ingredient({type = "item", name = "aerogel", amount = 40}):add_ingredient({type = "item", name = "harmonic-absorber", amount = 30})
RECIPE('zipir-reef-mk04'):add_ingredient({type = "item", name = "hyperelastic-material", amount = 50})
RECIPE('bio-printer-mk04'):add_ingredient({type = "item", name = "harmonic-absorber", amount = 20}):add_ingredient({type = "item", name = "hyperelastic-material", amount = 50}):add_ingredient({type = "item", name = "intelligent-unit", amount = 15})
RECIPE('ez-ranch-mk04'):add_ingredient({type = "item", name = "intelligent-unit", amount = 30}):add_ingredient({type = "item", name = "quantum-vortex-storage-system", amount = 10}):add_ingredient({type = "item", name = "phosphate-glass", amount = 100})
RECIPE('mega-farm'):add_ingredient({type = "item", name = "superconductor-servomechanims", amount = 10}):add_ingredient({type = "item", name = "harmonic-absorber", amount = 30}):add_ingredient({type = "item", name = "intelligent-unit", amount = 50})
RECIPE('research-center-mk04'):add_ingredient({type = "item", name = "quantum-vortex-storage-system", amount = 10}):add_ingredient({type = "item", name = "aerogel", amount = 100}):add_ingredient({type = "item", name = "intelligent-unit", amount = 50})
RECIPE('arqad-hive-mk04'):add_ingredient({type = "item", name = "phosphate-glass", amount = 100}):add_ingredient({type = "item", name = "hyperelastic-material", amount = 30})




RECIPE('pydrive'):add_ingredient({type = "item", name = "graphene-roll", amount = 50}):add_ingredient({type = "item", name = "superconductor", amount = 10}):add_ingredient({type = "item", name = "hyperelastic-material", amount = 30})

----RECIPES----
RECIPE('fungal-substrate'):add_ingredient({type = "item", name = "urea", amount = 3})
RECIPE('alien-sample-03'):replace_ingredient("plastic-bar", "graphene-roll")
RECIPE('log7-2'):change_category('fwf'):add_ingredient({type = "item", name = "wood-seedling", amount = 3}):subgroup_order("py-alienlife-plants", "a"):remove_unlock('basic-electronics'):add_unlock('botany-mk02')
--RECIPE('urea'):replace_ingredient("fawogae", "seaweed"):subgroup_order("py-alienlife-items", "a")
RECIPE('bonemeal2'):remove_unlock('advanced-electronics'):subgroup_order("py-alienlife-items", "a")
RECIPE('bonemeal3'):remove_unlock('advanced-electronics'):subgroup_order("py-alienlife-items", "a")
RECIPE('bonemeal4'):remove_unlock('advanced-electronics'):subgroup_order("py-alienlife-items", "a")
RECIPE('cobalt-extract'):replace_ingredient("sulfuric-acid", "cyanic-acid")
RECIPE('neuroprocessor'):replace_ingredient("electronic-circuit", "pcb2"):add_ingredient({type = "item", name = "resistor1", amount = 5}):add_ingredient({type = "item", name = "capacitor1", amount = 5}):add_ingredient({type = "item", name = "inductor1", amount = 10})
RECIPE('empty-neuromorphic-chip'):add_ingredient({type = "item", name = "bakelite", amount = 5}):add_ingredient({type = "item", name = "micro-fiber", amount = 4}):add_ingredient({type = "item", name = "capacitor2", amount = 5}):add_ingredient({type = "item", name = "melamine", amount = 10}):add_ingredient({type = "item", name = "paramagnetic-material", amount = 2}):add_ingredient({type = "item", name = "nylon-parts", amount = 10})--:add_ingredient({type = "item", name = "diamagnetic-material", amount = 4})
RECIPE('formamide'):replace_ingredient("nitrogen", "ammonia"):change_category('fbreactor')
RECIPE('bacteria-2'):subgroup_order("py-alienlife-genetics", "a"):remove_unlock('nano-tech'):add_unlock('microbiology-mk03'):add_ingredient({type = "item", name = "petri-dish", amount = 3}):add_ingredient({type = "item", name = "nexelit-plate", amount = 2}):add_ingredient({type = "item", name = "flask", amount = 5}):add_ingredient({type = "item", name = "chitin", amount = 5})
RECIPE('rendering'):remove_unlock('basic-electronics')
RECIPE('crco-alloy'):remove_ingredient("tailings-dust"):add_ingredient({type = "item", name = "cobalt-nx", amount = 2})
RECIPE('raw-fiber'):remove_unlock('basic-electronics')
RECIPE('raw-fiber3'):remove_unlock('basic-electronics')
RECIPE('raw-fiber2'):remove_unlock('basic-electronics'):set_fields {enabled = false}
RECIPE('raw-fiber4'):remove_unlock('basic-electronics'):set_fields {enabled = false}
RECIPE('dms'):subgroup_order("py-alienlife-cadaveric", "a"):remove_unlock('basic-electronics')
RECIPE('cobalt-fluoride'):replace_ingredient("chromium", "reo")
RECIPE('micro-fiber'):remove_unlock('nano-tech'):add_unlock('botany-mk02')
RECIPE('epoxy'):remove_unlock('advanced-electronics'):add_unlock('basic-electronics')
RECIPE('bisphenol-a'):remove_unlock('advanced-electronics'):add_unlock('basic-electronics')
RECIPE('ech'):remove_unlock('advanced-electronics'):add_unlock('basic-electronics')
RECIPE('alien-sample-02'):add_ingredient({type = "item", name = "micro-fiber", amount = 5})
RECIPE('resveratrol'):change_category('pulp')
RECIPE('dhilmos-pool-mk01'):replace_ingredient("glass", "phosphate-glass"):replace_ingredient("plastic-bar", "biopolymer"):add_ingredient({type = "item", name = "aerogel", amount = 5})
RECIPE('dhilmos-codex'):replace_ingredient("glass", "phosphate-glass")
RECIPE('fertilizer-1'):change_category('fbreactor')
RECIPE('fertilizer-3'):change_category('fbreactor')
RECIPE('fertilizer-4'):change_category('fbreactor')
RECIPE('fish-food-02'):remove_ingredient("blood"):add_ingredient({type = "item", name = "blood-meal", amount = 5})
RECIPE('dingrits-codex'):replace_ingredient("glass", "phosphate-glass")
RECIPE('scrondrix-codex'):replace_ingredient("glass", "phosphate-glass")
RECIPE('antelope-codex'):replace_ingredient("glass", "phosphate-glass")
RECIPE('nanochondria'):add_ingredient({type = "item", name = "paramagnetic-material", amount = 1}):add_ingredient({type = "item", name = "diamagnetic-material", amount = 1})
RECIPE('quantum-vortex-storage-system'):add_ingredient({type = "item", name = "strangelets", amount = 2})
RECIPE('nv-center'):add_ingredient({type = "item", name = "strangelets", amount = 2})
RECIPE('space-science-pack'):add_ingredient({type = "item", name = "strangelets", amount = 5}):add_ingredient({type = "item", name = "yellow-cake", amount = 2})
RECIPE('yag-laser-module'):add_ingredient({type = "item", name = "nanofibrils", amount = 3}):add_ingredient({type = "item", name = "cobalt-fluoride", amount = 3})
RECIPE('parametric-oscilator'):add_ingredient({type = "item", name = "nanofibrils", amount = 3}):change_category('research')
RECIPE('superconductor-servomechanims'):change_category('research')
RECIPE('superconductor'):add_ingredient({type = "item", name = "bio-battery", amount = 2}):change_category('research')
RECIPE('sc-unit'):add_ingredient({type = "item", name = "re-magnet", amount = 2})
RECIPE('harmonic-absorber'):change_category('research')
RECIPE('diamagnetic-material'):change_category('research')--:remove_unlock('earnshaw-theorem'):add_unlock('pharmagenomics')
RECIPE('paramagnetic-material'):change_category('research'):remove_unlock('nano-tech'):add_unlock('pharmagenomics')
RECIPE('myoglobin'):change_category('genlab')

RECIPE('zipir-carcass'):remove_unlock('basic-electronics')
RECIPE('capacitor-core'):add_ingredient({type = "item", name = "nano-cellulose", amount = 2})
RECIPE('fawogae2'):remove_unlock('advanced-electronics')
RECIPE('fiber'):remove_unlock('basic-electronics')
--RECIPE('urea'):change_category('vrauks'):subgroup_order("py-alienlife-auog", "a")
ITEM('urea'):subgroup_order("py-alienlife-auog", "a")
RECIPE('waste-water-urea'):subgroup_order("py-alienlife-recipes", "a"):remove_unlock('basic-electronics'):add_unlock('water-animals-mk01')
RECIPE('ammonia-urea'):subgroup_order("py-alienlife-recipes", "a"):remove_unlock('oil-processing'):add_unlock('biotech-mk02')
RECIPE('urea2'):remove_unlock('coal-processing-1')
RECIPE('urea'):set_fields {enabled = false}
RECIPE('mukmoux-fat2'):remove_unlock('advanced-electronics')
RECIPE('mukmoux-fat3'):remove_unlock('advanced-electronics')
RECIPE('fertilizer'):remove_unlock('basic-electronics')
RECIPE('advanced-circuit'):add_ingredient({type = 'item', name = 'battery', amount = 5})
RECIPE('fault-current-inductor'):replace_ingredient("battery", "biobattery")
RECIPE('pcb3-2'):replace_ingredient("battery", "biobattery")
RECIPE('pcb4'):add_ingredient({type = 'item', name = 'biobattery', amount = 5})
RECIPE('biobattery'):replace_ingredient("nexelit-plate", "lithium-niobate"):replace_ingredient("cobalt-nx", "crco-alloy"):replace_ingredient("glass", "glass-fiber")
RECIPE('nxag-matrix'):add_ingredient({type = 'item', name = 'chitosan', amount = 2})
RECIPE('processor-core'):add_ingredient({type = 'item', name = 'chitosan', amount = 2})
RECIPE('kondo-core'):add_ingredient({type = 'item', name = 'nanofibrils', amount = 3})
RECIPE('biobattery'):add_ingredient({type = "item", name = "re-magnet", amount = 10}):add_ingredient({type = "item", name = "nylon", amount = 5})
RECIPE('space-science-pack'):add_ingredient({type = "item", name = "antimatter", amount = 1})
RECIPE('bose-einstein-superfluid'):add_ingredient({type = "fluid", name = "deuterium", amount = 10})
if mods['pyhightech'] then
	data.raw.item['dried-meat'] = nil
    RECIPE('dried-meat'):remove_unlock('advanced-rendering'):change_category('smelting')
end


fun.results_replacer("dhilmos-sex-01", "dirty-water", "waste-water")

fun.results_replacer("fertilizer", "py-fertilizer", "fertilizer")
fun.results_replacer("log7-2", "log", "log",8)

fun.results_replacer("rennea-mk02-seed-seperation", "light-oil", "tall-oil")
fun.results_replacer("rennea-mk03-seed-seperation", "light-oil", "tall-oil")
fun.results_replacer("rennea-mk04-seed-seperation", "light-oil", "tall-oil")
fun.results_replacer("rennea-mk02-seed-seperation", "tar", "black-liquour")
fun.results_replacer("rennea-mk03-seed-seperation", "tar", "black-liquour")
fun.results_replacer("rennea-mk04-seed-seperation", "tar", "black-liquour")


RECIPE('methane'):add_unlock('coal-processing-1')
RECIPE('methane'):add_ingredient('moondrop-seeds')
RECIPE('methane-py-fertilizer'):add_unlock('moondrop-mk01')
RECIPE('methane-py-fertilizer'):add_ingredient('moondrop-seeds')
RECIPE('methane-co2'):add_unlock('moondrop-mk01')
RECIPE('methane-co2'):add_ingredient('moondrop-seeds')

----EXCLUSIVE RECIPES----

RECIPE {
    type = 'recipe',
    name = 'fiber-b',
    category = 'centrifuging',
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = 'item', name = 'raw-fiber', amount = 5}
    },
    results = {
        {type = 'item', name = 'fiber', amount = 2},
        {type = 'item', name = 'biomass', amount = 3}
    },
    main_product = 'fiber'
}:add_unlock('basic-electronics')


RECIPE {
    type = 'recipe',
    name = 'seaweed-8',
    category = 'seaweed',
    enabled = false,
    energy_required = 55,
    ingredients = {
        {type = 'fluid', name = 'water-saline', amount = 100},
        {type = 'fluid', name = 'slacked-lime', amount = 100},
        {type = 'item', name = 'iron-ore-dust', amount = 1},
        {type = 'item', name = 'fertilizer', amount = 1},
    },
    results = {
        {type = 'item', name = 'seaweed', amount = 100},
    },
}:add_unlock("botany-mk04")

table.insert(data.raw.module['seaweed'].limitation, 'seaweed-8')
table.insert(data.raw.module['seaweed-mk02'].limitation, 'seaweed-8')
table.insert(data.raw.module['seaweed-mk03'].limitation, 'seaweed-8')
table.insert(data.raw.module['seaweed-mk04'].limitation, 'seaweed-8')

RECIPE {
    type = "recipe",
    name = "phytoplankton-2",
    category = "plankton",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "fluid", name = "flue-gas", amount = 100},
        {type = "fluid", name = "water", amount = 500},
        {type = 'item', name = 'fertilizer', amount = 3},
    },
    results = {
        {type = "fluid", name = "phytoplankton", amount = 20}
    },
    main_product = "phytoplankton",
    subgroup = 'py-alienlife-plants',
    order = 'b'
}:add_unlock("microbiology-mk03")

RECIPE {
    type = 'recipe',
    name = 'moss-5',
    category = 'moss',
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = 'fluid', name = 'water', amount = 100},
        {type = 'fluid', name = 'carbon-dioxide', amount = 100},
        {type = 'item', name = 'limestone', amount = 3},
        {type = 'item', name = 'coarse', amount = 5},
        {type = 'item', name = 'fertilizer', amount = 3},
    },
    results = {
        {type = 'item', name = 'moss', amount = 25},
    },
    icon = '__pyalienlifegraphics__/graphics/icons/moss.png',
    icon_size = 32,
    subgroup = 'py-alienlife-plants',
    order = 'a'
}:add_unlock("botany-mk04")

--scrondrix

RECIPE {
    type = 'recipe',
    name = 'bones-to-phosphate',
    category = 'atomizer',
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = 'item', name = 'bones', amount = 10},
    },
    results = {
        {type = 'item', name = 'phosphate-rock', amount = 5},
    },
    --main_product = "cocoon",
}:add_unlock("molecular-decohesion-mk02")

RECIPE {
    type = 'recipe',
    name = 'carapace-to-re',
    category = 'atomizer',
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = 'item', name = 'carapace', amount = 5},
    },
    results = {
        {type = 'item', name = 'rare-earth-ore', amount = 20},
    },
    --main_product = "cocoon",
}:add_unlock("molecular-decohesion-mk03")

RECIPE {
    type = 'recipe',
    name = 'meat-to-cyanic',
    category = 'atomizer',
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = 'item', name = 'meat', amount = 10},
    },
    results = {
        {type = 'fluid', name = 'cyanic-acid', amount = 50},
    },
    --main_product = "cocoon",
}:add_unlock("molecular-decohesion-mk02")

RECIPE {
    type = 'recipe',
    name = 'kicalk-to-iron',
    category = 'atomizer',
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = 'item', name = 'kicalk-seeds', amount = 5},
    },
    results = {
        {type = 'item', name = 'iron-ore', amount = 20},
    },
    --main_product = "cocoon",
}:add_unlock("molecular-decohesion-mk03")

RECIPE {
    type = 'recipe',
    name = 'cadaveric-to-sulfur',
    category = 'atomizer',
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = 'item', name = 'cadaveric-arum', amount = 1},
    },
    results = {
        {type = 'item', name = 'sulfur', amount = 10},
    },
    --main_product = "cocoon",
}:add_unlock("molecular-decohesion-mk03")

RECIPE {
    type = 'recipe',
    name = 'cadaveric-to-copper',
    category = 'atomizer',
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = 'item', name = 'cadaveric-arum', amount = 1},
    },
    results = {
        {type = 'item', name = 'copper-ore', amount = 10},
    },
    --main_product = "cocoon",
}:add_unlock("molecular-decohesion-mk03")

RECIPE {
    type = 'recipe',
    name = 'blood-to-urea',
    category = 'atomizer',
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = 'fluid', name = 'blood', amount = 100},
    },
    results = {
        {type = 'item', name = 'urea', amount = 10},
    },
    --main_product = "cocoon",
}:add_unlock("molecular-decohesion")

RECIPE {
    type = 'recipe',
    name = 'ethylene-from-fruit',
    category = 'bio-reactor',
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = 'item', name = 'yotoi-fruit', amount = 10},
    },
    results = {
        {type = 'fluid', name = 'ethylene', amount = 50}
    }
}:add_unlock('biotech-mk02')

RECIPE {
    type = 'recipe',
    name = 'fiber-01',
    category = 'wpu',
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = 'item', name = 'wood', amount = 10},
    },
    results = {
        {type = 'item', name = 'raw-fiber', amount = 2}
    }
}:add_unlock('kicalk')

RECIPE {
    type = 'recipe',
    name = 'phenol-02',
    category = 'distilator',
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = 'item', name = 'lignin', amount = 5},
    },
    results = {
        {type = 'item', name = 'phenol', amount = 5},
    },
}:add_unlock("biotech-mk02")

RECIPE {
    type = 'recipe',
    name = 'filtration-media-4',
    category = 'crafting',
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item", name = "pure-sand", amount = 30},
        {type = "item", name = "active-carbon", amount = 3},
        {type = "item", name = "gravel", amount = 25},
        {type = 'item', name = 'cellulose', amount = 5},
        {type = 'item', name = 'sub-denier-microfiber', amount = 1},
    },
    results = {
        {type = 'item', name = 'filtration-media', amount = 10},
    },
}:add_unlock("nano-tech")

RECIPE {
    type = 'recipe',
    name = 'urea-from-liquid-manure',
    category = 'bio-reactor',
    enabled = false,
    energy_required = 8,
    ingredients = {
        {type = 'fluid', name = 'liquid-manure', amount = 100},
        {type = 'fluid', name = 'zogna-bacteria', amount = 10},
    },
    results = {
        {type = 'item', name = 'urea', amount = 30},
    },
    --main_product = "cocoon",
}:add_unlock("biotech-mk01")

RECIPE {
    type = 'recipe',
    name = 'yotoi-fiber',
    category = 'pulp',
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = 'item', name = 'yotoi-leaves', amount = 5},
     },
    results = {
        {type = 'item', name = 'raw-fiber', amount = 3},
    },
}:add_unlock("yotoi")

RECIPE {
    type = 'recipe',
    name = 'kicalk-fiber',
    category = 'wpu',
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = 'item', name = 'kicalk', amount = 1},
     },
    results = {
        {type = 'item', name = 'raw-fiber', amount = 5},
    },
}:add_unlock("kicalk")

RECIPE {
    type = "recipe",
    name = "cellulose-01",
    category = "pulp",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = 'item', name = 'raw-fiber', amount = 8},
        {type = 'item', name = 'sodium-hydroxide', amount = 3},
    },
    results = {
        {type = 'item', name = 'cellulose', amount = 5}
    },
}:add_unlock("kicalk")

RECIPE {
    type = 'recipe',
    name = 'methane-from-liquid-manure',
    category = 'bio-reactor',
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = 'fluid', name = 'liquid-manure', amount = 100},
        {type = 'fluid', name = 'bacteria-1', amount = 10},
    },
    results = {
        {type = 'fluid', name = 'methane', amount = 150},
    },
    --main_product = "cocoon",
}:add_unlock("kmauts")


--------------------------ralesia mega farm----------------

RECIPE {
    type = 'recipe',
    name = 'ralesia-super-8',
    category = 'ralesia-farm',
    enabled = false,
    energy_required = 80,
    ingredients = {
        {type = 'item', name = 'soil', amount = 1000},
        {type = 'item', name = 'urea', amount = 300},
        {type = 'item', name = 'fertilizer', amount = 100},
        {type = 'fluid', name = 'water', amount = 3000},
        {type = 'fluid', name = 'syngas', amount = 1500},
    },
    results = {
        {type = 'item', name = 'ralesias', amount = 1},
    },
}:add_unlock("mega-farm-ralesia")

RECIPE {
    type = 'recipe',
    name = 'ralesia-super-9',
    category = 'ralesia-farm',
    enabled = false,
    energy_required = 80,
    ingredients = {
        {type = 'item', name = 'soil', amount = 1000},
        {type = 'item', name = 'urea', amount = 300},
        {type = 'item', name = 'blood-meal', amount = 100},
        {type = 'item', name = 'fertilizer', amount = 100},
        {type = 'fluid', name = 'water', amount = 3000},
        {type = 'fluid', name = 'syngas', amount = 1500},
    },
    results = {
        {type = 'item', name = 'ralesias', amount = 1},
    },
}:add_unlock("mega-farm-ralesia")

--------------------------rennea mega farm----------------

RECIPE {
    type = 'recipe',
    name = 'rennea-super-8',
    category = 'rennea-farm',
    enabled = false,
    energy_required = 100,
    ingredients = {
        {type = 'item', name = 'soil', amount = 1000},
        {type = 'fluid', name = 'water', amount = 3000},
        {type = 'item', name = 'coarse', amount = 100},
        {type = 'item', name = 'urea', amount = 300},
        {type = 'item', name = 'fertilizer', amount = 100},
    },
    results = {
        {type = 'item', name = 'rennea', amount = 1},
    },
}:add_unlock("mega-farm-rennea")

RECIPE {
    type = 'recipe',
    name = 'rennea-super-9',
    category = 'rennea-farm',
    enabled = false,
    energy_required = 100,
    ingredients = {
        {type = 'item', name = 'soil', amount = 1000},
        {type = 'fluid', name = 'water', amount = 3000},
        {type = 'item', name = 'coarse', amount = 100},
        {type = 'item', name = 'urea', amount = 300},
        {type = 'item', name = 'blood-meal', amount = 100},
        {type = 'item', name = 'fertilizer', amount = 100},
    },
    results = {
        {type = 'item', name = 'rennea', amount = 1},
    },
}:add_unlock("mega-farm-rennea")

--------------------------tuuphra mega farm----------------

RECIPE {
    type = 'recipe',
    name = 'tuuphra-super-8',
    category = 'tuuphra-farm',
    enabled = false,
    energy_required = 100,
    ingredients = {
        {type = 'item', name = 'soil', amount = 1000},
        {type = 'fluid', name = 'water', amount = 3000},
        {type = 'fluid', name = 'nitrogen', amount = 1500},
        {type = 'item', name = 'coarse', amount = 100},
        {type = 'item', name = 'urea', amount = 300},
        {type = 'item', name = 'fertilizer', amount = 100},
    },
    results = {
        {type = 'item', name = 'tuuphra', amount = 1},
    },
}:add_unlock("mega-farm-tuuphra")

RECIPE {
    type = 'recipe',
    name = 'tuuphra-super-9',
    category = 'tuuphra-farm',
    enabled = false,
    energy_required = 100,
    ingredients = {
        {type = 'item', name = 'soil', amount = 1000},
        {type = 'fluid', name = 'water', amount = 3000},
        {type = 'fluid', name = 'nitrogen', amount = 1500},
        {type = 'item', name = 'coarse', amount = 100},
        {type = 'item', name = 'urea', amount = 300},
        {type = 'item', name = 'blood-meal', amount = 100},
        {type = 'item', name = 'fertilizer', amount = 100},
    },
    results = {
        {type = 'item', name = 'tuuphra', amount = 1},
    },
}:add_unlock("mega-farm-tuuphra")

--------------------------grod mega farm----------------

RECIPE {
    type = 'recipe',
    name = 'grod-super-9',
    category = 'grod-farm',
    enabled = false,
    energy_required = 100,
    ingredients = {
        {type = 'item', name = 'soil', amount = 1000},
        {type = 'fluid', name = 'water', amount = 10000},
        {type = 'fluid', name = 'slacked-lime', amount = 1000},
        {type = 'item', name = 'limestone', amount = 150},
        {type = 'item', name = 'urea', amount = 300},
        {type = 'item', name = 'blood-meal', amount = 100},
        {type = 'item', name = 'fertilizer', amount = 100},
    },
    results = {
        {type = 'item', name = 'grod', amount = 1},
    },
}:add_unlock("mega-farm-grod")

--------------------------yotoi mega farm----------------

RECIPE {
    type = 'recipe',
    name = 'yotoi-super-9',
    category = 'yotoi-farm',
    enabled = false,
    energy_required = 100,
    ingredients = {
        {type = 'item', name = 'sand', amount = 1000},
        {type = 'fluid', name = 'water', amount = 10000},
        {type = 'fluid', name = 'carbon-dioxide', amount = 6000},
        {type = 'item', name = 'limestone', amount = 150},
        {type = 'item', name = 'lignin', amount = 200},
        {type = 'item', name = 'biomass', amount = 300},
        {type = 'item', name = 'urea', amount = 300},
        {type = 'item', name = 'blood-meal', amount = 100},
        {type = 'item', name = 'fertilizer', amount = 100},
    },
    results = {
        {type = 'item', name = 'yotoi', amount = 1},
    },
}:add_unlock("mega-farm-yotoi")

--------------------------yotoi fruit mega farm----------------

RECIPE {
    type = 'recipe',
    name = 'yotoi-fruit-super-9',
    category = 'yotoi-farm',
    enabled = false,
    energy_required = 100,
    ingredients = {
        {type = 'item', name = 'sand', amount = 1000},
        {type = 'fluid', name = 'water', amount = 10000},
        {type = 'fluid', name = 'carbon-dioxide', amount = 6000},
        {type = 'item', name = 'limestone', amount = 150},
        {type = 'item', name = 'lignin', amount = 200},
        {type = 'item', name = 'biomass', amount = 300},
        {type = 'item', name = 'urea', amount = 300},
        {type = 'item', name = 'blood-meal', amount = 100},
        {type = 'item', name = 'fertilizer', amount = 100},
    },
    results = {
        {type = 'item', name = 'yotoi-fruit', amount = 1},
    },
}:add_unlock("mega-farm-yotoi")


RECIPE {
    type = 'recipe',
    name = 'chithin-to-phosphate',
    category = 'atomizer',
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = 'item', name = 'chitin', amount = 1},
    },
    results = {
        {type = 'item', name = 'phosphate-rock', amount = 7},
    },
    --main_product = "cocoon",
}:add_unlock("molecular-decohesion-mk02")

RECIPE {
    type = 'recipe',
    name = 'meat-to-phosphate',
    category = 'atomizer',
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = 'item', name = 'meat', amount = 13},
    },
    results = {
        {type = 'item', name = 'phosphate-rock', amount = 3},
    },
    --main_product = "cocoon",
}:add_unlock("molecular-decohesion")

RECIPE {
    type = 'recipe',
    name = 'fish-to-phosphate',
    category = 'atomizer',
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = 'item', name = 'fish', amount = 10},
    },
    results = {
        {type = 'item', name = 'phosphate-rock', amount = 1},
    },
    --main_product = "cocoon",
}:add_unlock("molecular-decohesion-mk02")

RECIPE {
    type = 'recipe',
    name = 'wood-seeds-to-phosphate',
    category = 'atomizer',
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = 'item', name = 'wood-seeds', amount = 20},
    },
    results = {
        {type = 'item', name = 'phosphate-rock', amount = 2},
    },
    --main_product = "cocoon",
}:add_unlock("molecular-decohesion")

RECIPE {
    type = 'recipe',
    name = 'rennea-to-phosphate',
    category = 'atomizer',
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = 'item', name = 'rennea-seeds', amount = 10},
    },
    results = {
        {type = 'item', name = 'phosphate-rock', amount = 3},
    },
    --main_product = "cocoon",
}:add_unlock("molecular-decohesion-mk03")

RECIPE {
    type = 'recipe',
    name = 'gas-bladder-to-methane',
    category = 'gas-separator',
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = 'item', name = 'gas-bladder', amount = 1},
    },
    results = {
        {type = 'fluid', name = 'methane', amount = 50}
    }
}:add_unlock('phagnot-mk02'):change_category('gas-refinery')

RECIPE {
    type = 'recipe',
    name = 'gas-bladder-to-ammonia',
    category = 'gas-separator',
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = 'item', name = 'gas-bladder', amount = 1},
    },
    results = {
        {type = 'fluid', name = 'ammonia', amount = 40}
    }
}:add_unlock('phagnot-mk02'):change_category('gas-refinery')

RECIPE {
    type = 'recipe',
    name = 'gas-bladder-to-propene',
    category = 'gas-separator',
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = 'item', name = 'gas-bladder', amount = 1},
    },
    results = {
        {type = 'fluid', name = 'propene', amount = 35}
    }
}:add_unlock('phagnot-mk02'):change_category('gas-refinery')

RECIPE {
    type = 'recipe',
    name = 'gas-bladder-to-ethylene',
    category = 'gas-separator',
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = 'item', name = 'gas-bladder', amount = 1},
    },
    results = {
        {type = 'fluid', name = 'ethylene', amount = 30}
    }
}:add_unlock('phagnot-mk02'):change_category('gas-refinery')

RECIPE {
    type = 'recipe',
    name = 'biopolymer-2',
    category = 'bio-reactor',
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = 'item', name = 'silver-foam', amount = 1},
        {type = 'item', name = 'urea', amount = 10},
        {type = 'item', name = 'sporopollenin', amount = 3},
        {type = 'fluid', name = 'bacteria-2', amount = 25},
        {type = 'fluid', name = 'fish-oil', amount = 50}
    },
    results = {
        {type = 'item', name = 'biopolymer', amount = 5}
    }
}:add_unlock('nano-tech')

RECIPE {
    type = "recipe",
    name = "phenol-3",
    category = "biofactory",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = 'item', name = 'sporopollenin', amount = 5},
        {type = 'fluid', name = 'boric-acid', amount = 300},
    },
    results = {
        {type = 'item', name = 'phenol', amount = 6},
    },
    --main_product = "b-molasse",
}:add_unlock("mycology-mk03")

RECIPE {
    type = 'recipe',
    name = 'recombinant-ery-2',
    category = 'genlab',
    enabled = false,
    energy_required = 13,
    ingredients = {
        {type = 'item', name = 'adam42-gen', amount = 1},
        {type = 'item', name = 'cysteine', amount = 1},
        {type = 'item', name = 'alien-enzymes', amount = 1},
        {type = 'item', name = 'guts', amount = 15},
        {type = 'item', name = 'mukmoux-fat', amount = 30},
        {type = 'item', name = 'lab-instrument', amount = 10},
        {type = 'fluid', name = 'gta', amount = 50},
        {type = 'item', name = 'myoglobin', amount = 3},
        {type = 'item', name = 'flask', amount = 20},
        {type = 'item', name = 'mmp', amount = 1},
    },
    results = {
        {type = 'item', name = 'recombinant-ery', amount = 450},
    },
}:add_unlock("recombinant-ery")

RECIPE {
    type = 'recipe',
    name = 'nanofibrils-2',
    category = 'nmf',
    enabled = false,
    energy_required = 20,
    ingredients = {
        {type = 'item', name = 'collagen', amount = 5},
        {type = 'item', name = 'chitosan', amount = 5},
    },
    results = {
        {type = 'item', name = 'nanofibrils', amount = 3},
    },
}:add_unlock("chitin")

RECIPE {
    type = 'recipe',
    name = 'kicalk-to-chelator',
    category = 'biofactory',
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = 'item', name = 'kicalk', amount = 1},
    },
    results = {
        {type = 'fluid', name = 'chelator', amount = 50},
    },
}:add_unlock("phytomining-mk02")

RECIPE {
    type = 'recipe',
    name = 'cadaveric-pb',
    category = 'arum',
    enabled = false,
    energy_required = 100,
    ingredients = {
        {type = 'fluid', name = 'dirty-water', amount = 200},
        {type = 'item', name = 'cadaveric-arum', amount = 1},
    },
    results = {
        {type = 'item', name = 's-biomass', amount = 10},
        {type = 'fluid', name = 'waste-water', amount = 50},
    },
    main_product = "s-biomass",
    icon = '__pyalienlifegraphics__/graphics/icons/s-biomass.png',
    icon_size = 64,
}:add_unlock("phytomining")

RECIPE {
    type = 'recipe',
    name = 'cadaveric-pb-2',
    category = 'arum',
    enabled = false,
    energy_required = 60,
    ingredients = {
        {type = 'fluid', name = 'dirty-water', amount = 200},
        {type = 'item', name = 'cadaveric-arum', amount = 1},
        {type = 'fluid', name = 'chelator', amount = 50},
    },
    results = {
        {type = 'item', name = 's-biomass', amount = 20},
        {type = 'fluid', name = 'waste-water', amount = 80},
    },
    main_product = "s-biomass",
    icon = '__pyalienlifegraphics__/graphics/icons/s-biomass.png',
    icon_size = 64,
}:add_unlock("phytomining-mk02")

RECIPE {
    type = 'recipe',
    name = 'cadaveric-pb-3',
    category = 'arum',
    enabled = false,
    energy_required = 40,
    ingredients = {
        {type = 'fluid', name = 'dirty-water', amount = 200},
        {type = 'item', name = 'hmas', amount = 1},
        {type = 'item', name = 'cadaveric-arum', amount = 1},
        {type = 'fluid', name = 'chelator', amount = 50},
    },
    results = {
        {type = 'item', name = 's-biomass', amount = 60},
        {type = 'fluid', name = 'waste-water', amount = 100},
    },
    main_product = "s-biomass",
    icon = '__pyalienlifegraphics__/graphics/icons/s-biomass.png',
    icon_size = 64,
}:add_unlock("phytomining-mk03")

RECIPE {
    type = 'recipe',
    name = 'kicalk-zn',
    category = 'kicalk',
    enabled = false,
    energy_required = 100,
    ingredients = {
        {type = 'fluid', name = 'dirty-water', amount = 200},
        {type = 'item', name = 'kicalk', amount = 1},
    },
    results = {
        {type = 'item', name = 'zn-biomass', amount = 10},
        {type = 'fluid', name = 'waste-water', amount = 50},
    },
    main_product = "zn-biomass",
    icon = '__pyalienlifegraphics__/graphics/icons/zn-biomass.png',
    icon_size = 64,
}:add_unlock("phytomining-mk02")

RECIPE {
    type = 'recipe',
    name = 'kicalk-zn-2',
    category = 'kicalk',
    enabled = false,
    energy_required = 60,
    ingredients = {
        {type = 'fluid', name = 'dirty-water', amount = 200},
        {type = 'item', name = 'kicalk', amount = 1},
        {type = 'fluid', name = 'chelator', amount = 50},
    },
    results = {
        {type = 'item', name = 'zn-biomass', amount = 20},
        {type = 'fluid', name = 'waste-water', amount = 80},
    },
    main_product = "zn-biomass",
    icon = '__pyalienlifegraphics__/graphics/icons/zn-biomass.png',
    icon_size = 64,
}:add_unlock("phytomining-mk02")

RECIPE {
    type = 'recipe',
    name = 'kicalk-zn-3',
    category = 'kicalk',
    enabled = false,
    energy_required = 40,
    ingredients = {
        {type = 'fluid', name = 'dirty-water', amount = 200},
        {type = 'item', name = 'kicalk', amount = 1},
        {type = 'item', name = 'hmas', amount = 1},
        {type = 'fluid', name = 'chelator', amount = 50},
    },
    results = {
        {type = 'item', name = 'zn-biomass', amount = 80},
        {type = 'fluid', name = 'waste-water', amount = 100},
    },
    main_product = "zn-biomass",
    icon = '__pyalienlifegraphics__/graphics/icons/zn-biomass.png',
    icon_size = 64,
}:add_unlock("phytomining-mk03")

-------BIOMASS EXTRACTION----------------------------------

RECIPE {
    type = 'recipe',
    name = 's-biomass-extraction',
    category = 'desulfurization',
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = 'item', name = 's-biomass', amount = 10},
        {type = 'fluid', name = 'steam', amount = 100, temperature = 165},
    },
    results = {
        {type = 'item', name = 'sulfur', amount = 10},
        {type = 'item', name = 'biomass', amount = 5},
    },
    main_product = "sulfur",
    icon = '__base__/graphics/icons/sulfur.png',
    icon_size = 64,
}:add_unlock("phytomining"):change_category('pulp')


RECIPE {
    type = 'recipe',
    name = 'casein-melamine',
    category = 'fbreactor',
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = 'item', name = 'casein', amount = 5},
        {type = 'fluid', name = 'cyanic-acid', amount = 50},
    },
    results = {
        {type = 'item', name = 'melamine', amount = 10},
    },
    --main_product = "casein-pulp-01",
}:add_unlock("korlex-mk02")

----------MILK FIBER--------------------

RECIPE {
    type = 'recipe',
    name = 'casein-solution',
    category = 'mixer',
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = 'item', name = 'casein', amount = 5},
        {type = 'item', name = 'sodium-hydroxide', amount = 5},
        {type = 'fluid', name = 'water', amount = 500},
    },
    results = {
        {type = 'fluid', name = 'casein-solution', amount = 50},
    },
    --main_product = "casein-pulp-01",
}:add_unlock("energy-drink")

RECIPE {
    type = 'recipe',
    name = 'raw-fiber-casein',
    category = 'biofactory',
    enabled = false,
    energy_required = 20,
    ingredients = {
        {type = 'fluid', name = 'sulfuric-acid', amount = 30},
        {type = 'fluid', name = 'methanal', amount = 100},
        {type = 'item', name = 'sugar', amount = 5},
        {type = 'item', name = 'kicalk', amount = 1},
        {type = 'fluid', name = 'casein-solution', amount = 50},
    },
    results = {
        {type = 'item', name = 'raw-fiber', amount = 40},
    },
    --main_product = "casein-pulp-01",
}:add_unlock("energy-drink")

RECIPE {
    type = 'recipe',
    name = 'casein-mixture-01',
    category = 'mixer',
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = 'fluid', name = 'milk', amount = 50},
        {type = 'fluid', name = 'acetic-acid', amount = 50},
    },
    results = {
        {type = 'fluid', name = 'casein-mixture', amount = 50},
        {type = 'fluid', name = 'waste-water', amount = 50},
    },
    main_product = "casein-mixture",
}:add_unlock("korlex")

RECIPE('rennea-mk02-breeding'):replace_ingredient("sulfuric-acid-barrel", "phosphoric-acid-barrel")

RECIPE('rennea-mk03-breeding'):replace_ingredient("sulfuric-acid-barrel", "phosphoric-acid-barrel")

RECIPE('rennea-mk04-breeding'):replace_ingredient("sulfuric-acid-barrel", "phosphoric-acid-barrel")