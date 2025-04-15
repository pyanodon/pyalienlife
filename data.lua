--module bonus formula = crafting speed * ( 1 + ( module bounus in decimal * number of modules )
--i.e. 0.01 * ( 1 + ( 15 * 6 )
--module bonus is a whole number do to the size of the bonus amount
require "prototypes/make_unit_melee_ammo_type"
require "prototypes/item-groups"
require "prototypes/recipe-categories"
require "prototypes/fuel-categories"
require "prototypes/module-categories"
require "prototypes/circuit-connector-definitions"

-- Increase empty barrel stack size in order to prevent inserter deadlocks. https://github.com/pyanodon/pybugreports/issues/314
data.raw.item["barrel"].stack_size = 50

--(( Technology ))--
require "prototypes/technologies/xenobiology"
require "prototypes/technologies/kmauts"
require "prototypes/technologies/mycology"
require "prototypes/technologies/microbiology"
require "prototypes/technologies/botany"
require "prototypes/technologies/biotech"
require "prototypes/technologies/genetics"
require "prototypes/technologies/zoology"
require "prototypes/technologies/land-animals"
require "prototypes/technologies/water-animals"
require "prototypes/technologies/water-invertebrates"
--require 'prototypes/technologies/organic-breeding'
--require 'prototypes/technologies/selective-breeding'
--require 'prototypes/technologies/artificial-breeding'
--require 'prototypes/technologies/biased-mutation'
require "prototypes/technologies/molecular-decohesion"
require "prototypes/technologies/ulric"
require "prototypes/technologies/ralesia"
require "prototypes/technologies/mukmoux"
require "prototypes/technologies/tuuphra"
require "prototypes/technologies/arthurian"
require "prototypes/technologies/navens"
require "prototypes/technologies/yotoi"
require "prototypes/technologies/xeno"
--require 'prototypes/technologies/genetic-design'
require "prototypes/technologies/dhilmos"
require "prototypes/technologies/assisted-embryology"
require "prototypes/technologies/scrondrix"
require "prototypes/technologies/pharmacogenomics"
require "prototypes/technologies/growth-hormone"
require "prototypes/technologies/anabolic-rna"
require "prototypes/technologies/antiviral"
require "prototypes/technologies/rennea"
require "prototypes/technologies/mounts"
require "prototypes/technologies/phadai"
require "prototypes/technologies/auog"
require "prototypes/technologies/yaedols"
require "prototypes/technologies/dingrits"
require "prototypes/technologies/vonix"
require "prototypes/technologies/grod"
require "prototypes/technologies/phagnot"
require "prototypes/technologies/bhoddos"
require "prototypes/technologies/immunosupressants"
require "prototypes/technologies/bio-implants"
require "prototypes/technologies/nanochondria"
require "prototypes/technologies/rendering"
--require 'prototypes/technologies/advanced-rendering'
require "prototypes/technologies/bmp"
require "prototypes/technologies/pheromones"
require "prototypes/technologies/cridren"
require "prototypes/technologies/domestication"
--require 'prototypes/technologies/bigger-colon'
--require 'prototypes/technologies/explosive-diarrhea'
require "prototypes/technologies/zipir"
require "prototypes/technologies/fawogae"
require "prototypes/technologies/antitumor"
require "prototypes/technologies/trits"
require "prototypes/technologies/korlex"
require "prototypes/technologies/recombinant-ery"
require "prototypes/technologies/reca"
require "prototypes/technologies/orexigenic"
require "prototypes/technologies/mega-farm"
require "prototypes/technologies/vrauks"
require "prototypes/technologies/energy-drink"
--require 'prototypes/technologies/interactive-cognition'
--require 'prototypes/technologies/exercises'
--require 'prototypes/technologies/osteocyte'
--require 'prototypes/technologies/organ-replication'
--require 'prototypes/technologies/somatic'
--require 'prototypes/technologies/collagen'
--require 'prototypes/technologies/force-feeding'
--require 'prototypes/technologies/bladder'
require "prototypes/technologies/chitin"
--require 'prototypes/technologies/formic'
--require 'prototypes/technologies/party-animal'
--require 'prototypes/technologies/exo-insertion'
--require 'prototypes/technologies/argumented-spikes'
--require 'prototypes/technologies/conarium-stem'
--require 'prototypes/technologies/hydrolase-amplification'
--require 'prototypes/technologies/zootoxins'
--require 'prototypes/technologies/artificial-calcification'
--require 'prototypes/technologies/stochastic-cortex'
require "prototypes/technologies/phytomining"
require "prototypes/technologies/microfilters"
require "prototypes/technologies/organ-printing"
--require 'prototypes/technologies/biopolymer-clusters'
--require 'prototypes/technologies/ctc'
require "prototypes/technologies/cottongut"
require "prototypes/technologies/compost"
require "prototypes/technologies/arqad"
require "prototypes/technologies/cardial-hypopharynx"
require "prototypes/technologies/chromosome-infocrystalization"
--require 'prototypes/technologies/pheromone-transition'
require "prototypes/technologies/laika"
require "prototypes/technologies/pesticides"
require "prototypes/technologies/symbiosis"
require "prototypes/technologies/bioprocessing"
require "prototypes/technologies/simik"
require "prototypes/technologies/fish"
require "prototypes/technologies/guar"
require "prototypes/technologies/moss"
require "prototypes/technologies/wood-processing-4"
require "prototypes/technologies/cottongut-science"
require "prototypes/technologies/py-science-pack"
require "prototypes/technologies/fertilizer"
require "prototypes/technologies/cellulose"
require "prototypes/technologies/starch"
require "prototypes/technologies/silicon-carbide"
require "prototypes/technologies/cobalt"
require "prototypes/technologies/neuro-electronics"
require "prototypes/technologies/biotech-machines"
require "prototypes/technologies/biobattery"
require "prototypes/technologies/seaweed"
require "prototypes/technologies/glass"
require "prototypes/technologies/petri-dish"
require "prototypes/technologies/latex"
require "prototypes/technologies/sap"
require "prototypes/technologies/basic-substrate"
require "prototypes/technologies/soil-washing"

require "prototypes/technologies/sugar"
require "prototypes/technologies/ethanol"
require "prototypes/technologies/ash-separation"
require "prototypes/technologies/soot-separation"
require "prototypes/technologies/crusher"
require "prototypes/technologies/vatbrain"
require "prototypes/technologies/turd-respec"
require "prototypes/technologies/biofluid"

if mods["pyhightech"] then
    require "prototypes/technologies/mining-with-fluid"
    require "prototypes/technologies/electric-mining-drill"
end

if mods["pyalternativeenergy"] then
    require "prototypes/technologies/zungror"
    --require 'prototypes/technologies/xenocognitive'
end

--(( BUILDINGS ))--
require "prototypes/buildings/moss-farm"
require "prototypes/buildings/moss-farm-mk02"
require "prototypes/buildings/moss-farm-mk03"
require "prototypes/buildings/moss-farm-mk04"
require "prototypes/buildings/spore-collector-mk01"
require "prototypes/buildings/spore-collector-mk02"
require "prototypes/buildings/spore-collector-mk03"
require "prototypes/buildings/spore-collector-mk04"
require "prototypes/buildings/fast-wood-forestry"
require "prototypes/buildings/micro-mine-mk01"
require "prototypes/buildings/micro-mine-mk02"
require "prototypes/buildings/micro-mine-mk03"
require "prototypes/buildings/micro-mine-mk04"
require "prototypes/buildings/biofactory-mk01"
require "prototypes/buildings/biofactory-mk02"
require "prototypes/buildings/biofactory-mk03"
require "prototypes/buildings/biofactory-mk04"
require "prototypes/buildings/genlab-mk01"
require "prototypes/buildings/genlab-mk02"
require "prototypes/buildings/genlab-mk03"
require "prototypes/buildings/genlab-mk04"
require "prototypes/buildings/incubator"
require "prototypes/buildings/creature-chamber"
require "prototypes/buildings/vrauks-paddock-mk01"
require "prototypes/buildings/vrauks-paddock-mk02"
require "prototypes/buildings/vrauks-paddock-mk03"
require "prototypes/buildings/vrauks-paddock-mk04"
require "prototypes/buildings/slaughterhouse-mk01"
require "prototypes/buildings/slaughterhouse-mk02"
require "prototypes/buildings/slaughterhouse-mk03"
require "prototypes/buildings/slaughterhouse-mk04"
require "prototypes/buildings/sponge-culture"
require "prototypes/buildings/ulric-corral"
require "prototypes/buildings/ralesia-plantation"
require "prototypes/buildings/tuuphra-plantation-mk01"
require "prototypes/buildings/tuuphra-plantation-mk02"
require "prototypes/buildings/tuuphra-plantation-mk03"
require "prototypes/buildings/tuuphra-plantation-mk04"
require "prototypes/buildings/mukmoux-pasture-mk01"
require "prototypes/buildings/mukmoux-pasture-mk02"
require "prototypes/buildings/mukmoux-pasture-mk03"
require "prototypes/buildings/mukmoux-pasture-mk04"
require "prototypes/buildings/arthurian-pen-mk01"
require "prototypes/buildings/arthurian-pen-mk02"
require "prototypes/buildings/arthurian-pen-mk03"
require "prototypes/buildings/arthurian-pen-mk04"
require "prototypes/buildings/data-array"
require "prototypes/buildings/navens-culture-mk01"
require "prototypes/buildings/navens-culture-mk02"
require "prototypes/buildings/navens-culture-mk03"
require "prototypes/buildings/navens-culture-mk04"
require "prototypes/buildings/yotoi-aloe-orchard-mk01"
require "prototypes/buildings/yotoi-aloe-orchard-mk02"
require "prototypes/buildings/yotoi-aloe-orchard-mk03"
require "prototypes/buildings/yotoi-aloe-orchard-mk04"
require "prototypes/buildings/dhilmos-pool-mk01"
require "prototypes/buildings/dhilmos-pool-mk02"
require "prototypes/buildings/dhilmos-pool-mk03"
require "prototypes/buildings/dhilmos-pool-mk04"
require "prototypes/buildings/scrondrix-pen-mk01"
require "prototypes/buildings/scrondrix-pen-mk02"
require "prototypes/buildings/scrondrix-pen-mk03"
require "prototypes/buildings/scrondrix-pen-mk04"
require "prototypes/buildings/rennea-plantation-mk01"
require "prototypes/buildings/rennea-plantation-mk02"
require "prototypes/buildings/rennea-plantation-mk03"
require "prototypes/buildings/rennea-plantation-mk04"
require "prototypes/buildings/phadai-enclosure-mk01"
require "prototypes/buildings/phadai-enclosure-mk02"
require "prototypes/buildings/phadai-enclosure-mk03"
require "prototypes/buildings/phadai-enclosure-mk04"
require "prototypes/buildings/auog-paddock-mk01"
require "prototypes/buildings/auog-paddock-mk02"
require "prototypes/buildings/auog-paddock-mk03"
require "prototypes/buildings/auog-paddock-mk04"
require "prototypes/buildings/atomizer-mk01"
require "prototypes/buildings/atomizer-mk02"
require "prototypes/buildings/atomizer-mk03"
require "prototypes/buildings/atomizer-mk04"
require "prototypes/buildings/fish-farm"
require "prototypes/buildings/yaedols-culture-mk01"
require "prototypes/buildings/yaedols-culture-mk02"
require "prototypes/buildings/yaedols-culture-mk03"
require "prototypes/buildings/yaedols-culture-mk04"
require "prototypes/buildings/dingrits-pack-mk01"
require "prototypes/buildings/dingrits-pack-mk02"
require "prototypes/buildings/dingrits-pack-mk03"
require "prototypes/buildings/dingrits-pack-mk04"
require "prototypes/buildings/kmauts-enclosure-mk01"
require "prototypes/buildings/kmauts-enclosure-mk02"
require "prototypes/buildings/kmauts-enclosure-mk03"
require "prototypes/buildings/kmauts-enclosure-mk04"
require "prototypes/buildings/vonix-den-mk01"
require "prototypes/buildings/vonix-den-mk02"
require "prototypes/buildings/vonix-den-mk03"
require "prototypes/buildings/vonix-den-mk04"
require "prototypes/buildings/grod-swamp-mk01"
require "prototypes/buildings/grod-swamp-mk02"
require "prototypes/buildings/grod-swamp-mk03"
require "prototypes/buildings/grod-swamp-mk04"
require "prototypes/buildings/phagnot-corral-mk01"
require "prototypes/buildings/phagnot-corral-mk02"
require "prototypes/buildings/phagnot-corral-mk03"
require "prototypes/buildings/phagnot-corral-mk04"
require "prototypes/buildings/bhoddos-culture-mk01"
require "prototypes/buildings/bhoddos-culture-mk02"
require "prototypes/buildings/bhoddos-culture-mk03"
require "prototypes/buildings/bhoddos-culture-mk04"
require "prototypes/buildings/xenopen-mk01"
require "prototypes/buildings/xenopen-mk02"
require "prototypes/buildings/xenopen-mk03"
require "prototypes/buildings/xenopen-mk04"
require "prototypes/buildings/bio-reactor"
require "prototypes/buildings/cridren-enclosure-mk01"
require "prototypes/buildings/cridren-enclosure-mk02"
require "prototypes/buildings/cridren-enclosure-mk03"
require "prototypes/buildings/cridren-enclosure-mk04"
require "prototypes/buildings/zipir-reef-mk01"
require "prototypes/buildings/zipir-reef-mk02"
require "prototypes/buildings/zipir-reef-mk03"
require "prototypes/buildings/zipir-reef-mk04"
require "prototypes/buildings/fawogae-plantation"
require "prototypes/buildings/sap-extractor"
require "prototypes/buildings/xyhiphoe-pool-mk01"
require "prototypes/buildings/xyhiphoe-pool-mk02"
require "prototypes/buildings/xyhiphoe-pool-mk03"
require "prototypes/buildings/xyhiphoe-pool-mk04"
require "prototypes/buildings/trits-reef-mk01"
require "prototypes/buildings/trits-reef-mk02"
require "prototypes/buildings/trits-reef-mk03"
require "prototypes/buildings/trits-reef-mk04"
require "prototypes/buildings/bioprinter"
require "prototypes/buildings/ez-ranch-mk01"
require "prototypes/buildings/ez-ranch-mk02"
require "prototypes/buildings/ez-ranch-mk03"
require "prototypes/buildings/ez-ranch-mk04"
require "prototypes/buildings/auog-generator"
require "prototypes/buildings/dingrit-generator"
require "prototypes/buildings/pyphoon-bay"
require "prototypes/buildings/mega-farm"
require "prototypes/buildings/vat-brain"
require "prototypes/buildings/harvester"
require "prototypes/buildings/flora-collector"
require "prototypes/buildings/ipod"
require "prototypes/buildings/prandium-lab-mk01"
require "prototypes/buildings/prandium-lab-mk02"
require "prototypes/buildings/prandium-lab-mk03"
require "prototypes/buildings/prandium-lab-mk04"
require "prototypes/buildings/research-center-mk01"
require "prototypes/buildings/research-center-mk02"
require "prototypes/buildings/research-center-mk03"
require "prototypes/buildings/research-center-mk04"
require "prototypes/buildings/compost-plant"
require "prototypes/buildings/arqad-hive"
require "prototypes/buildings/simik-den-mk01"
require "prototypes/buildings/simik-den-mk02"
require "prototypes/buildings/simik-den-mk03"
require "prototypes/buildings/simik-den-mk04"
require "prototypes/buildings/reproductive-complex"

if mods["pyhightech"] then
    require "prototypes/buildings/fluid-drill-mk01"
    require "prototypes/buildings/fluid-drill-mk02"
    require "prototypes/buildings/fluid-drill-mk03"
    require "prototypes/buildings/fluid-drill-mk04"
end

if mods["pyalternativeenergy"] then
    require "prototypes/buildings/zungror-lair-mk01"
    require "prototypes/buildings/zungror-lair-mk02"
    require "prototypes/buildings/zungror-lair-mk03"
    require "prototypes/buildings/zungror-lair-mk04"
end

require "prototypes/buildings/py-drive"

--(( FLUIDS ))--
require "prototypes/fluids/zogna-bacteria"
require "prototypes/fluids/blood"
require "prototypes/fluids/syrup-01"
require "prototypes/fluids/a-molasse"
require "prototypes/fluids/b-molasse"
require "prototypes/fluids/sweet-syrup"
require "prototypes/fluids/ethanol"
require "prototypes/fluids/formamide"
require "prototypes/fluids/fetal-serum"
require "prototypes/fluids/artificial-blood"
require "prototypes/fluids/flutec-pp6"
require "prototypes/fluids/decalin"
require "prototypes/fluids/flavonoids"
require "prototypes/fluids/fish-emulsion"
require "prototypes/fluids/fish-hydrolysate"
require "prototypes/fluids/fish-oil"
require "prototypes/fluids/gta"
require "prototypes/fluids/nitrogen-mustard"
require "prototypes/fluids/manure-bacteria"
require "prototypes/fluids/liquid-manure"
require "prototypes/fluids/creamy-latex"
require "prototypes/fluids/formic-acid"
require "prototypes/fluids/subcritical-water"
require "prototypes/fluids/depolymerized-organics"
require "prototypes/fluids/mutant-enzymes"
require "prototypes/fluids/chelator"
require "prototypes/fluids/xenogenic-cells"
require "prototypes/fluids/psc"
require "prototypes/fluids/casein-mixture"
require "prototypes/fluids/casein-pulp-01"
require "prototypes/fluids/casein-pulp-02"
require "prototypes/fluids/milk"
require "prototypes/fluids/autoantigens"
require "prototypes/fluids/wax"
require "prototypes/fluids/arqad-jelly"
require "prototypes/fluids/bee-venom"
require "prototypes/fluids/dda"
require "prototypes/fluids/mcb"
require "prototypes/fluids/bio-oil"
require "prototypes/fluids/chloral"
require "prototypes/fluids/pre-pesticide-01"
require "prototypes/fluids/pre-pesticide-02"
require "prototypes/fluids/ethyl-mercaptan"
require "prototypes/fluids/arqad-honey"
require "prototypes/fluids/simik-blood"

if mods["pyhightech"] then
    require "prototypes/fluids/cadaveric-arum-cum"
    require "prototypes/technologies/cadaveric-arum"
    require "prototypes/fluids/casein-solution"
end

--(( ITEMS ))--
require "prototypes/items/items"
require "prototypes/items/items2"
require "prototypes/items/energy-drink"
require "prototypes/biofluid/guano"

if mods["pyhightech"] then
    require "prototypes/items/pyhightech-items"
end

if mods["pyalternativeenergy"] then
    require "prototypes/items/pyalternativeenergy-items"
end

--Creature
require "prototypes/creatures/caravan"
require "prototypes/creatures/flying-caravan"
require "prototypes/creatures/nuka-caravan"
data.raw.unit["caravan"].affected_by_tiles = false
data.raw.unit["flyavan"].affected_by_tiles = false
data.raw.unit["nukavan"].affected_by_tiles = false
require "prototypes/buildings/outpost"
require "prototypes/buildings/outpost-aerial"
require "prototypes/creatures/digosaurus"
require "prototypes/creatures/thikats"
require "prototypes/creatures/work-o-dile"
require "prototypes/creatures/crawdad"
require "prototypes/creatures/dingrido"
require "prototypes/creatures/mecha-zungror"
require "prototypes/creatures/phadaisus"
require "prototypes/creatures/ocula"
require "prototypes/creatures/ulric-man"

Biofluid = {}
require "scripts.biofluid.biofluid-prototypes"
require "prototypes/biofluid/gobachov"
require "prototypes/biofluid/huzu"
require "prototypes/biofluid/chorkok"
require "prototypes/biofluid/vessel"
require "prototypes/biofluid/bioport"
require "prototypes/biofluid/requester-tank"
require "prototypes/biofluid/provider-tank"

--(( RECIPES ))--
require "prototypes/recipes/recipes"

require "prototypes/recipes/recipes-bioreserve-megafarm"

--antelope
--see pyhightech updates for files

--arqad
require "prototypes/recipes/arqad/recipes-arqad"
require "prototypes/recipes/arqad/recipes-arqad-honey"
require "prototypes/recipes/arqad/recipes-arqad-products"
require "prototypes/recipes/arqad/recipes-arqad-raising"
require "prototypes/recipes/arqad/recipes-arqad-rendering"
require "prototypes/recipes/arqad/recipes-arqad-updates"
require "prototypes/recipes/arqad/recipes-arqad-modules"
require "prototypes/recipes/arqad/recipes-arqad-growth-enhancement"

--arthurian
require "prototypes/recipes/arthurian/recipes-arthurian"
require "prototypes/recipes/arthurian/recipes-arthurian-raising"
require "prototypes/recipes/arthurian/recipes-arthurian-rendering"
require "prototypes/recipes/arthurian/recipes-arthurian-growth-enhancement"
require "prototypes/recipes/arthurian/recipes-arthurian-modules"

--auog
require "prototypes/recipes/auog/recipes-auog"
require "prototypes/recipes/auog/recipes-auog-raising"
require "prototypes/recipes/auog/recipes-auog-rendering"
require "prototypes/recipes/auog/recipes-auog-growth-enhancement"
require "prototypes/recipes/auog/recipes-auog-modules"
require "prototypes/recipes/auog/recipes-auog-products"

--Bhoddos
require "prototypes/recipes/bhoddos/recipes-bhoddos"
require "prototypes/recipes/bhoddos/recipes-bhoddos-raising"
require "prototypes/recipes/bhoddos/recipes-bhoddos-modules"

--Cadaveric-arum
--see pyhightech updates for files

--Cottongut
require "prototypes/recipes/cottongut/recipes-cottongut"
require "prototypes/recipes/cottongut/recipes-cottongut-raising"
require "prototypes/recipes/cottongut/recipes-cottongut-rendering"
require "prototypes/recipes/cottongut/recipes-cottongut-growth-enhancement"
require "prototypes/recipes/cottongut/recipes-cottongut-science"
require "prototypes/recipes/cottongut/recipes-cottongut-modules"

--Cridren
require "prototypes/recipes/cridren/recipes-cridren"
require "prototypes/recipes/cridren/recipes-auto-cridren"

--Dhilmos
require "prototypes/recipes/dhilmos/recipes-dhilmos"
require "prototypes/recipes/dhilmos/recipes-dhilmos-raising"
require "prototypes/recipes/dhilmos/recipes-dhilmos-rendering"
require "prototypes/recipes/dhilmos/recipes-dhilmos-growth-enhancement"
require "prototypes/recipes/dhilmos/recipes-dhilmos-modules"

--Dingrits
require "prototypes/recipes/dingrits/recipes-dingrits"
require "prototypes/recipes/dingrits/recipes-dingrits-raising"
require "prototypes/recipes/dingrits/recipes-dingrits-rendering"
require "prototypes/recipes/dingrits/recipes-dingrits-growth-enhancement"
require "prototypes/recipes/dingrits/recipes-dingrits-modules"

--Fawogae
require "prototypes/recipes/fawogae/recipes-fawogae"
require "prototypes/recipes/fawogae/recipes-auto-fawogae"
require "prototypes/recipes/fawogae/recipes-fawogae-modules"

--Fish
require "prototypes/recipes/fish/recipes-fish"
require "prototypes/recipes/fish/recipes-auto-fish"
require "prototypes/recipes/fish/recipes-fish-rendering"
require "prototypes/recipes/fish/recipes-fish-modules"

--Grod
require "prototypes/recipes/grod/recipes-grod"
require "prototypes/recipes/grod/recipes-auto-grod"
require "prototypes/recipes/grod/recipes-grod-megafarm"
require "prototypes/recipes/grod/recipes-grod-modules"

--guar
require "prototypes/recipes/guar/recipes-guar"
require "prototypes/recipes/guar/recipes-auto-guar"
require "prototypes/recipes/guar/recipes-guar-modules"
--need to disable guar recipes from pyph see pyph-updates

--Kicalk
require "prototypes/buildings/kicalk-plantation"

--Kmauts
require "prototypes/recipes/kmauts/recipes-kmauts"
require "prototypes/recipes/kmauts/recipes-kmauts-raising"
require "prototypes/recipes/kmauts/recipes-kmauts-rendering"
require "prototypes/recipes/kmauts/recipes-kmauts-growth-enhancement"
require "prototypes/recipes/kmauts/recipes-kmauts-modules"

--Korlex
require "prototypes/recipes/korlex/recipes-korlex"
require "prototypes/recipes/korlex/recipes-korlex-raising"
require "prototypes/recipes/korlex/recipes-korlex-rendering"
require "prototypes/recipes/korlex/recipes-korlex-milk"
require "prototypes/recipes/korlex/recipes-korlex-growth-enhancement"
require "prototypes/recipes/korlex/recipes-korlex-modules"

--Moondrop
--see pyhightech updates for files

--moss
require "prototypes/recipes/moss/recipes-moss"
require "prototypes/recipes/moss/recipes-auto-moss"
require "prototypes/recipes/moss/recipes-moss-modules"

--Mukmoux
require "prototypes/recipes/mukmoux/recipes-mukmoux"
require "prototypes/recipes/mukmoux/recipes-mukmoux-raising"
require "prototypes/recipes/mukmoux/recipes-mukmoux-rendering"
require "prototypes/recipes/mukmoux/recipes-mukmoux-growth-enhacement"
require "prototypes/recipes/mukmoux/recipes-mukmoux-modules"
require "prototypes/recipes/mukmoux/recipes-mukmoux-products"

--Navens
require "prototypes/recipes/navens/recipes-navens"
require "prototypes/recipes/navens/recipes-auto-navens"
require "prototypes/recipes/navens/recipes-navens-modules"

--Phadai
require "prototypes/recipes/phadai/recipes-phadai"
require "prototypes/recipes/phadai/recipes-phadai-raising"
require "prototypes/recipes/phadai/recipes-phadai-rendering"
require "prototypes/recipes/phadai/recipes-phadai-products"
require "prototypes/recipes/phadai/recipes-phadai-recharge"
require "prototypes/recipes/phadai/recipes-phadai-growth-enhancement"
require "prototypes/recipes/phadai/recipes-phadai-modules"

--Phagnot
require "prototypes/recipes/phagnot/recipes-phagnot"
require "prototypes/recipes/phagnot/recipes-phagnot-raising"
require "prototypes/recipes/phagnot/recipes-phagnot-rendering"
require "prototypes/recipes/phagnot/recipes-phagnot-growth-enhancement"
require "prototypes/recipes/phagnot/recipes-phagnot-modules"

--Ralesia
require "prototypes/recipes/ralesia/recipes-ralesia"
require "prototypes/recipes/ralesia/recipes-auto-ralesia"
require "prototypes/recipes/ralesia/recipes-ralesia-megafarm"
require "prototypes/recipes/ralesia/recipes-ralesia-modules"

--Rennea
require "prototypes/recipes/rennea/recipes-rennea"
require "prototypes/recipes/rennea/recipes-auto-rennea"
require "prototypes/recipes/rennea/recipes-rennea-megafarm"
require "prototypes/recipes/rennea/recipes-rennea-modules"

--Sap
require "prototypes/recipes/sap/recipes-sap"
require "prototypes/recipes/sap/recipes-sap-modules"

--Scrondrix
require "prototypes/recipes/scrondrix/recipes-scrondrix"
require "prototypes/recipes/scrondrix/recipes-scrondrix-raising"
require "prototypes/recipes/scrondrix/recipes-scrondrix-rendering"
require "prototypes/recipes/scrondrix/recipes-scrondrix-growth-enhancement"
require "prototypes/recipes/scrondrix/recipes-scrondrix-modules"
require "prototypes/recipes/scrondrix/recipes-scrondrix-products"

--Sea-Sponge
require "prototypes/recipes/sea-sponge/recipes-sea-sponge"
require "prototypes/recipes/sea-sponge/recipes-sea-sponge-modules"

--seaweed
require "prototypes/buildings/seaweed-crop"
require "prototypes/recipes/seaweed/recipes-seaweed"
require "prototypes/recipes/seaweed/recipes-seaweed-products"
require "prototypes/recipes/seaweed/recipes-seaweed-modules"

--simik
require "prototypes/recipes/simik/recipes-simik"
require "prototypes/recipes/simik/recipes-simik-raising"
require "prototypes/recipes/simik/recipes-simik-rendering"
if mods.pyalternativeenergy then require "prototypes/recipes/simik/recipes-simik-metals" end
require "prototypes/recipes/simik/recipes-simik-growth-enhancement"
require "prototypes/recipes/simik/recipes-simik-modules"

--Tree
require "prototypes/recipes/tree/recipes-tree"
require "prototypes/recipes/tree/recipes-tree-modules"

--Trits
require "prototypes/recipes/trits/recipes-trits"
require "prototypes/recipes/trits/recipes-trits-raising"
require "prototypes/recipes/trits/recipes-trits-rendering"
require "prototypes/recipes/trits/recipes-trits-growth-enhacement"
require "prototypes/recipes/trits/recipes-trits-modules"

--Tuuphra
require "prototypes/recipes/tuuphra/recipes-tuuphra"
require "prototypes/recipes/tuuphra/recipes-auto-tuuphra"
require "prototypes/recipes/tuuphra/recipes-tuuphra-megafarm"
require "prototypes/recipes/tuuphra/recipes-tuuphra-modules"

--Ulric
require "prototypes/recipes/ulric/recipes-ulric"
require "prototypes/recipes/ulric/recipes-ulric-raising"
require "prototypes/recipes/ulric/recipes-ulric-rendering"
require "prototypes/recipes/ulric/recipes-ulric-growth-enhancement"
require "prototypes/recipes/ulric/recipes-ulric-modules"
require "prototypes/recipes/ulric/recipes-ulric-products"

--Vonix
require "prototypes/recipes/vonix/recipes-vonix"
require "prototypes/recipes/vonix/recipes-vonix-raising"
require "prototypes/recipes/vonix/recipes-vonix-rendering"
require "prototypes/recipes/vonix/recipes-vonix-growth-enchacement"
require "prototypes/recipes/vonix/recipes-vonix-modules"

--vrauks
require "prototypes/recipes/vrauks/recipes-vrauks"
require "prototypes/recipes/vrauks/recipes-vrauks-raising"
require "prototypes/recipes/vrauks/recipes-vrauks-rendering"
require "prototypes/recipes/vrauks/recipes-vrauk-growth-enhacement"
require "prototypes/recipes/vrauks/recipes-vrauk-modules"

--Xeno
require "prototypes/recipes/xeno/recipes-xeno"
require "prototypes/recipes/xeno/recipes-xeno-raising"
require "prototypes/recipes/xeno/recipes-xeno-rendering"
require "prototypes/recipes/xeno/recipes-xeno-growth-enhancement"
require "prototypes/recipes/xeno/recipes-xeno-modules"

--Xyhiphoe
require "prototypes/recipes/xyhiphoe/recipes-xyhiphoe"
require "prototypes/recipes/xyhiphoe/recipes-xyhiphoe-raising"
require "prototypes/recipes/xyhiphoe/recipes-xyhiphoe-rendering"
require "prototypes/recipes/xyhiphoe/recipes-xyhiphoe-growth-enhancement"
require "prototypes/recipes/xyhiphoe/recipes-xyhiphoe-modules"

--Yaedols
require "prototypes/recipes/yaedols/recipes-yaedols"
require "prototypes/recipes/yaedols/recipes-auto-yaedols"
require "prototypes/recipes/yaedols/recipes-yaedols-modules"

--Yotoi
require "prototypes/recipes/yotoi/recipes-yotoi"
require "prototypes/recipes/yotoi/recipes-auto-yotoi"
require "prototypes/recipes/yotoi/recipes-auto-yotoi-fruit"
require "prototypes/recipes/yotoi/recipes-yotoi-megafarm"
require "prototypes/recipes/yotoi/recipes-yotoi-fruit-megafarm"
require "prototypes/recipes/yotoi/recipes-yotoi-modules"

--Zipir
require "prototypes/recipes/zipir/recipes-zipir"
require "prototypes/recipes/zipir/recipes-zipir-raising"
require "prototypes/recipes/zipir/recipes-zipir-rendering"
require "prototypes/recipes/zipir/recipes-zipir-growth-enhancement"
require "prototypes/recipes/zipir/recipes-zipir-modules"

if mods.pyalternativeenergy then
    require "prototypes/recipes/zungror/recipes-zungror"
    require "prototypes/recipes/zungror/recipes-zungror-raising"
    require "prototypes/recipes/zungror/recipes-zungror-rendering"
    require "prototypes/recipes/zungror/recipes-zungror-modules"
    require "prototypes/recipes/zungror/recipes-zungror-growth-enhancement"
end

require "prototypes/recipes/recipes-atomizer"
require "prototypes/recipes/recipes-auto-acessories"
require "prototypes/recipes/recipes-bioprinting"
require "prototypes/recipes/recipes-bladder"
require "prototypes/recipes/recipes-mo"
require "prototypes/recipes/recipes-photomining"
require "prototypes/recipes/recipes-phytoplankton"
require "prototypes/recipes/recipes-recharge"
require "prototypes/recipes/recipes-vat"

--(( ORES ))--
require "prototypes/ores/ralesia"
require "prototypes/ores/rennea"
require "prototypes/ores/tuuphra"
require "prototypes/ores/grod"
require "prototypes/ores/yotoi"
require "prototypes/ores/yotoi-fruit"
require "prototypes/ores/bioreserve"
require "prototypes/ores/nexelit"
if mods.pyhightech then
    require "prototypes/ores/kicalk"
    require "prototypes/ores/arum"
end

--(( BACKGROUND ))--
data.raw["utility-constants"].default.recipe_step_limit = 2000;
data.raw["utility-constants"].default.main_menu_background_image_location = "__pyalienlifegraphics3__/graphics/pyal-wall.jpg"

--sprities
require "prototypes/sprites/sprites"
--require 'prototypes/ores/fake-plants'

data.raw.fluid["bio-oil"].fuel_value = "0.8MJ"
