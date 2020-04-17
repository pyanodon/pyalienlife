--module bonus formula = crafting speed * ( 1 + ( module bounus in decimal * number of modules )
--i.e. 0.01 * ( 1 + ( 15 * 6 )
--module bonus is a whole number do to the size of the bonus amount

require("__stdlib__/stdlib/data/data").Util.create_data_globals()

require("prototypes/item-groups")
require("prototypes/recipe-categories")
require("prototypes/fuel-categories")

--(( Technology ))--
require("prototypes/technologies/xenobiology")
require("prototypes/technologies/kmauts")
require("prototypes/technologies/mycology")
require("prototypes/technologies/microbiology")
require("prototypes/technologies/botany")
require("prototypes/technologies/biotech")
require("prototypes/technologies/genetics")
require("prototypes/technologies/zoology")
require("prototypes/technologies/land-animals")
require("prototypes/technologies/water-animals")
require("prototypes/technologies/water-invertebrates")
require("prototypes/technologies/organic-breeding")
require("prototypes/technologies/molecular-decohesion")
require("prototypes/technologies/food")
require("prototypes/technologies/ulric")
require("prototypes/technologies/ralesia")
require("prototypes/technologies/mukmoux")
require("prototypes/technologies/tuuphra")
require("prototypes/technologies/arthurian")
require("prototypes/technologies/navens")
require("prototypes/technologies/yotoi")
require("prototypes/technologies/xeno")
require("prototypes/technologies/genetic-design")
require("prototypes/technologies/dhilmos")
require("prototypes/technologies/assisted-embryology")
require("prototypes/technologies/scrondrix")
require("prototypes/technologies/pharmagenomics")
require("prototypes/technologies/growth-hormone")
require("prototypes/technologies/anabolic-rna")
require("prototypes/technologies/antiviral")
require("prototypes/technologies/rennea")
require("prototypes/technologies/phadai")
require("prototypes/technologies/auog")
require("prototypes/technologies/yaedols")
require("prototypes/technologies/dingrits")
require("prototypes/technologies/vonix")
require("prototypes/technologies/grod")
require("prototypes/technologies/phagnot")
require("prototypes/technologies/bhoddos")
require("prototypes/technologies/immunosupressants")
require("prototypes/technologies/bio-implants")
require("prototypes/technologies/nanochondria")
require("prototypes/technologies/rendering")
require("prototypes/technologies/advanced-rendering")
require("prototypes/technologies/bmp")
require("prototypes/technologies/pheromones")
require("prototypes/technologies/cridren")
require("prototypes/technologies/domestication")
require("prototypes/technologies/bigger-colon")
require("prototypes/technologies/explosive-diarrhea")
require("prototypes/technologies/zipir")
require("prototypes/technologies/fawogae")
require("prototypes/technologies/antitumor")
require("prototypes/technologies/trits")
require('prototypes/technologies/korlex')
require('prototypes/technologies/recombinant-ery')
require('prototypes/technologies/reca')
require('prototypes/technologies/orexigenic')
require('prototypes/technologies/mega-farm')
require('prototypes/technologies/vrauks')
require('prototypes/technologies/energy-drink')
require('prototypes/technologies/interactive-cognition')
require('prototypes/technologies/exercises')
require('prototypes/technologies/osteocyte')
require('prototypes/technologies/organ-replication')
require('prototypes/technologies/somatic')
require('prototypes/technologies/collagen')
require('prototypes/technologies/force-feeding')
require('prototypes/technologies/bladder')
require('prototypes/technologies/chitin')
require('prototypes/technologies/formic')
require('prototypes/technologies/party-animal')
require('prototypes/technologies/exo-insertion')
require('prototypes/technologies/argumented-spikes')
require('prototypes/technologies/conarium-stem')
require('prototypes/technologies/hydrolase-amplification')
require('prototypes/technologies/zootoxins')
require('prototypes/technologies/artificial-calcification')
require('prototypes/technologies/stochastic-cortex')
require('prototypes/technologies/phytomining')
require('prototypes/technologies/microfilters')
require('prototypes/technologies/organ-printing')
require('prototypes/technologies/biopolymer-clusters')
require('prototypes/technologies/ctc')
require('prototypes/technologies/cottongut')
require('prototypes/technologies/compost')

--(( BUILDINGS ))--
require("prototypes/buildings/moss-farm")
require("prototypes/buildings/moss-farm-mk02")
require("prototypes/buildings/moss-farm-mk03")
require("prototypes/buildings/moss-farm-mk04")
require("prototypes/buildings/seaweed-crop-mk01")
require("prototypes/buildings/seaweed-crop-mk02")
require("prototypes/buildings/seaweed-crop-mk03")
require("prototypes/buildings/seaweed-crop-mk04")
require("prototypes/buildings/spore-collector-mk01")
require("prototypes/buildings/spore-collector-mk02")
require("prototypes/buildings/spore-collector-mk03")
require("prototypes/buildings/spore-collector-mk04")
require("prototypes/buildings/fwf-mk01")
require("prototypes/buildings/fwf-mk02")
require("prototypes/buildings/fwf-mk03")
require("prototypes/buildings/fwf-mk04")
require("prototypes/buildings/micro-mine-mk01")
require("prototypes/buildings/micro-mine-mk02")
require("prototypes/buildings/micro-mine-mk03")
require("prototypes/buildings/micro-mine-mk04")
require("prototypes/buildings/biofactory-mk01")
require("prototypes/buildings/biofactory-mk02")
require("prototypes/buildings/biofactory-mk03")
require("prototypes/buildings/biofactory-mk04")
require("prototypes/buildings/genlab-mk01")
require("prototypes/buildings/genlab-mk02")
require("prototypes/buildings/genlab-mk03")
require("prototypes/buildings/genlab-mk04")
require("prototypes/buildings/incubator-mk01")
require("prototypes/buildings/incubator-mk02")
require("prototypes/buildings/incubator-mk03")
require("prototypes/buildings/incubator-mk04")
require("prototypes/buildings/creature-chamber-mk01")
require("prototypes/buildings/creature-chamber-mk02")
require("prototypes/buildings/creature-chamber-mk03")
require("prototypes/buildings/creature-chamber-mk04")
require("prototypes/buildings/vrauks-paddock-mk01")
require("prototypes/buildings/vrauks-paddock-mk02")
require("prototypes/buildings/vrauks-paddock-mk03")
require("prototypes/buildings/vrauks-paddock-mk04")
require("prototypes/buildings/slaughterhouse-mk01")
require("prototypes/buildings/slaughterhouse-mk02")
require("prototypes/buildings/slaughterhouse-mk03")
require("prototypes/buildings/slaughterhouse-mk04")
require("prototypes/buildings/sponge-culture-mk01")
require("prototypes/buildings/sponge-culture-mk02")
require("prototypes/buildings/sponge-culture-mk03")
require("prototypes/buildings/sponge-culture-mk04")
require("prototypes/buildings/ulric-corral-mk01")
require("prototypes/buildings/ulric-corral-mk02")
require("prototypes/buildings/ulric-corral-mk03")
require("prototypes/buildings/ulric-corral-mk04")
require("prototypes/buildings/ralesia-plantation-mk01")
require("prototypes/buildings/ralesia-plantation-mk02")
require("prototypes/buildings/ralesia-plantation-mk03")
require("prototypes/buildings/ralesia-plantation-mk04")
require("prototypes/buildings/tuuphra-plantation-mk01")
require("prototypes/buildings/tuuphra-plantation-mk02")
require("prototypes/buildings/tuuphra-plantation-mk03")
require("prototypes/buildings/tuuphra-plantation-mk04")
require("prototypes/buildings/mukmoux-pasture-mk01")
require("prototypes/buildings/mukmoux-pasture-mk02")
require("prototypes/buildings/mukmoux-pasture-mk03")
require("prototypes/buildings/mukmoux-pasture-mk04")
require("prototypes/buildings/arthurian-pen-mk01")
require("prototypes/buildings/arthurian-pen-mk02")
require("prototypes/buildings/arthurian-pen-mk03")
require("prototypes/buildings/arthurian-pen-mk04")
require("prototypes/buildings/data-array")
require("prototypes/buildings/navens-culture-mk01")
require("prototypes/buildings/navens-culture-mk02")
require("prototypes/buildings/navens-culture-mk03")
require("prototypes/buildings/navens-culture-mk04")
require("prototypes/buildings/yotoi-aloe-orchard-mk01")
require("prototypes/buildings/yotoi-aloe-orchard-mk02")
require("prototypes/buildings/yotoi-aloe-orchard-mk03")
require("prototypes/buildings/yotoi-aloe-orchard-mk04")
require("prototypes/buildings/dhilmos-pool-mk01")
require("prototypes/buildings/dhilmos-pool-mk02")
require("prototypes/buildings/dhilmos-pool-mk03")
require("prototypes/buildings/dhilmos-pool-mk04")
require("prototypes/buildings/scrondrix-pen-mk01")
require("prototypes/buildings/scrondrix-pen-mk02")
require("prototypes/buildings/scrondrix-pen-mk03")
require("prototypes/buildings/scrondrix-pen-mk04")
require("prototypes/buildings/rennea-plantation-mk01")
require("prototypes/buildings/rennea-plantation-mk02")
require("prototypes/buildings/rennea-plantation-mk03")
require("prototypes/buildings/rennea-plantation-mk04")
require("prototypes/buildings/phadai-enclosure-mk01")
require("prototypes/buildings/phadai-enclosure-mk02")
require("prototypes/buildings/phadai-enclosure-mk03")
require("prototypes/buildings/phadai-enclosure-mk04")
require("prototypes/buildings/auog-paddock-mk01")
require("prototypes/buildings/auog-paddock-mk02")
require("prototypes/buildings/auog-paddock-mk03")
require("prototypes/buildings/auog-paddock-mk04")
require("prototypes/buildings/atomizer-mk01")
require("prototypes/buildings/atomizer-mk02")
require("prototypes/buildings/atomizer-mk03")
require("prototypes/buildings/atomizer-mk04")
require("prototypes/buildings/fish-farm-mk01")
require("prototypes/buildings/fish-farm-mk02")
require("prototypes/buildings/fish-farm-mk03")
require("prototypes/buildings/fish-farm-mk04")
require("prototypes/buildings/yaedols-culture-mk01")
require("prototypes/buildings/yaedols-culture-mk02")
require("prototypes/buildings/yaedols-culture-mk03")
require("prototypes/buildings/yaedols-culture-mk04")
require("prototypes/buildings/dingrits-pack-mk01")
require("prototypes/buildings/dingrits-pack-mk02")
require("prototypes/buildings/dingrits-pack-mk03")
require("prototypes/buildings/dingrits-pack-mk04")
require("prototypes/buildings/kmauts-enclosure-mk01")
require("prototypes/buildings/kmauts-enclosure-mk02")
require("prototypes/buildings/kmauts-enclosure-mk03")
require("prototypes/buildings/kmauts-enclosure-mk04")
require("prototypes/buildings/vonix-den-mk01")
require("prototypes/buildings/vonix-den-mk02")
require("prototypes/buildings/vonix-den-mk03")
require("prototypes/buildings/grod-swamp-mk01")
require("prototypes/buildings/grod-swamp-mk02")
require("prototypes/buildings/grod-swamp-mk03")
require("prototypes/buildings/grod-swamp-mk04")
require("prototypes/buildings/phagnot-corral-mk01")
require("prototypes/buildings/phagnot-corral-mk02")
require("prototypes/buildings/phagnot-corral-mk03")
require("prototypes/buildings/phagnot-corral-mk04")
require("prototypes/buildings/bhoddos-culture-mk01")
require("prototypes/buildings/bhoddos-culture-mk02")
require("prototypes/buildings/bhoddos-culture-mk03")
require("prototypes/buildings/bhoddos-culture-mk04")
require("prototypes/buildings/xenopen-mk01")
require("prototypes/buildings/xenopen-mk02")
require("prototypes/buildings/xenopen-mk03")
require("prototypes/buildings/xenopen-mk04")
require("prototypes/buildings/bioreactor-mk01")
require("prototypes/buildings/bioreactor-mk02")
require("prototypes/buildings/bioreactor-mk03")
require("prototypes/buildings/bioreactor-mk04")
require("prototypes/buildings/cridren-enclosure-mk01")
require("prototypes/buildings/cridren-enclosure-mk02")
require("prototypes/buildings/cridren-enclosure-mk03")
require("prototypes/buildings/cridren-enclosure-mk04")
require("prototypes/buildings/zipir-reef-mk01")
require("prototypes/buildings/zipir-reef-mk02")
require("prototypes/buildings/zipir-reef-mk03")
require("prototypes/buildings/zipir-reef-mk04")
require("prototypes/buildings/fawogae-plantation-mk01")
require("prototypes/buildings/sap-extractor-mk01")
require("prototypes/buildings/sap-extractor-mk02")
require("prototypes/buildings/sap-extractor-mk03")
require("prototypes/buildings/sap-extractor-mk04")
require("prototypes/buildings/xyhiphoe-pool-mk01")
require("prototypes/buildings/xyhiphoe-pool-mk02")
require("prototypes/buildings/xyhiphoe-pool-mk03")
require("prototypes/buildings/xyhiphoe-pool-mk04")
require("prototypes/buildings/trits-reef-mk01")
require("prototypes/buildings/trits-reef-mk02")
require("prototypes/buildings/trits-reef-mk03")
require("prototypes/buildings/trits-reef-mk04")
require("prototypes/buildings/bio-printer-mk01")
require("prototypes/buildings/bio-printer-mk02")
require("prototypes/buildings/bio-printer-mk03")
require("prototypes/buildings/bio-printer-mk04")
require("prototypes/buildings/ez-ranch-mk01")
require("prototypes/buildings/ez-ranch-mk02")
require("prototypes/buildings/ez-ranch-mk03")
require("prototypes/buildings/ez-ranch-mk04")
require('prototypes/buildings/outpost')
require('prototypes/buildings/generator-1')
require('prototypes/buildings/generator-2')
require('prototypes/buildings/pyphoon-bay')
require('prototypes/buildings/mega-farm')
require('prototypes/buildings/vat-brain')
require("prototypes/buildings/harvester")
require("prototypes/buildings/collector")
--require("prototypes/buildings/ipod")
require('prototypes/buildings/prandium-lab-mk01')
require('prototypes/buildings/prandium-lab-mk02')
require('prototypes/buildings/prandium-lab-mk03')
require('prototypes/buildings/prandium-lab-mk04')
require('prototypes/buildings/research-center-mk01')
require('prototypes/buildings/research-center-mk02')
require('prototypes/buildings/research-center-mk03')
require('prototypes/buildings/research-center-mk04')
require('prototypes/buildings/compost-plant-mk01')
require('prototypes/buildings/compost-plant-mk02')
require('prototypes/buildings/compost-plant-mk03')
require('prototypes/buildings/compost-plant-mk04')

--Creature
require('prototypes/creatures/caravan')
require('prototypes/creatures/nuka-caravan')
require('prototypes/creatures/dingrido')
require('prototypes/creatures/crawdad')
require('prototypes/creatures/phadaisus')
--require('prototypes/creatures/ocula')
--require('prototypes/creatures/clone-1')

--(( FLUIDS ))--
require("prototypes/fluids/zogna-bacteria")
require("prototypes/fluids/blood")
require("prototypes/fluids/syrup-01")
require("prototypes/fluids/a-molasse")
require("prototypes/fluids/b-molasse")
require("prototypes/fluids/sweet-syrup")
require("prototypes/fluids/ethanol")
require("prototypes/fluids/formamide")
require("prototypes/fluids/fetal-serum")
require("prototypes/fluids/artificial-blood")
require("prototypes/fluids/flutec-pp6")
require("prototypes/fluids/decalin")
require("prototypes/fluids/flavonoids")
require("prototypes/fluids/arthropod-blood")
require("prototypes/fluids/fish-oil")
require("prototypes/fluids/gta")
require("prototypes/fluids/nitrogen-mustard")
require("prototypes/fluids/manure-bacteria")
require("prototypes/fluids/liquid-manure")
require("prototypes/fluids/creamy-latex")
require("prototypes/fluids/formic-acid")
require("prototypes/fluids/subcritical-water")
require("prototypes/fluids/depolymerized-organics")
require("prototypes/fluids/mutant-enzymes")
require("prototypes/fluids/chelator")
require("prototypes/fluids/xenogenic-cells")
require("prototypes/fluids/psc")
require("prototypes/fluids/casein-mixture")
require("prototypes/fluids/casein-pulp-01")
require("prototypes/fluids/casein-pulp-02")
require("prototypes/fluids/casein-solution")
require("prototypes/fluids/milk")
require("prototypes/fluids/autoantigens")

--(( RECIPES ))--
require('prototypes/items/items')
require('prototypes/recipes/recipes')
require('prototypes/recipes/recipes-atomizer')
require('prototypes/recipes/recipes-mo')
require('prototypes/recipes/recipes-crops')
require('prototypes/recipes/recipes-seaweed')
require('prototypes/recipes/recipes-animals')
require('prototypes/recipes/recipes-ulric')
require('prototypes/recipes/recipes-sea-sponge')
require('prototypes/recipes/recipes-ralesia')
require('prototypes/recipes/recipes-mukmoux')
require('prototypes/recipes/recipes-tuuphra')
require('prototypes/recipes/recipes-arthurian')
require('prototypes/recipes/recipes-navens')
require('prototypes/recipes/recipes-yotoi')
require('prototypes/recipes/recipes-dhilmos')
require('prototypes/recipes/recipes-scrondrix')
require('prototypes/recipes/recipes-rennea')
require('prototypes/recipes/recipes-phadai')
require('prototypes/recipes/recipes-auog')
require('prototypes/recipes/recipes-fish')
require('prototypes/recipes/recipes-korlex')
require('prototypes/recipes/recipes-yaedols')
require('prototypes/recipes/recipes-auto-ralesia')
require('prototypes/recipes/recipes-auto-fawogae')
require('prototypes/recipes/recipes-auto-navens')
require('prototypes/recipes/recipes-auto-yaedols')
require('prototypes/recipes/recipes-auto-ulric')
require('prototypes/recipes/recipes-auto-vonix')
require('prototypes/recipes/recipes-auto-mukmoux')
require('prototypes/recipes/recipes-auto-bhoddos')
require('prototypes/recipes/recipes-auto-phagnot')
require('prototypes/recipes/recipes-auto-cridren')
require('prototypes/recipes/recipes-auto-grod')
require('prototypes/recipes/recipes-auto-yotoi')
require('prototypes/recipes/recipes-auto-yotoi-fruit')
require('prototypes/recipes/recipes-auto-arthurian')
require('prototypes/recipes/recipes-auto-auog')
require('prototypes/recipes/recipes-auto-dingrits')
require('prototypes/recipes/recipes-auto-kmauts')
require('prototypes/recipes/recipes-auto-korlex')
require('prototypes/recipes/recipes-korlex-products')
require('prototypes/recipes/recipes-korlex-products-2')
require('prototypes/recipes/recipes-auto-dhilmos')
require('prototypes/recipes/recipes-auto-scrondrix')
require('prototypes/recipes/recipes-auto-phadai')
require('prototypes/recipes/recipes-auto-tuuphra')
require('prototypes/recipes/recipes-auto-rennea')
require('prototypes/recipes/recipes-auog-products')
require('prototypes/recipes/recipes-auog-products-2')
require('prototypes/recipes/recipes-auog-products-3')
require('prototypes/recipes/recipes-ulric-products')
require('prototypes/recipes/recipes-ulric-products-2')
require('prototypes/recipes/recipes-ulric-products-3')
require('prototypes/recipes/recipes-mukmoux-products')
require('prototypes/recipes/recipes-mukmoux-products-2')
require('prototypes/recipes/recipes-mukmoux-products-3')
require('prototypes/recipes/recipes-scrondrix-products')
require('prototypes/recipes/recipes-scrondrix-products-2')
require('prototypes/recipes/recipes-scrondrix-products-3')
require('prototypes/recipes/recipes-dingrits')
require('prototypes/recipes/recipes-kmauts')
require('prototypes/recipes/recipes-vonix')
require('prototypes/recipes/recipes-grod')
require('prototypes/recipes/recipes-phagnot')
require('prototypes/recipes/recipes-phagnot-products')
require('prototypes/recipes/recipes-phagnot-products-2')
require('prototypes/recipes/recipes-phagnot-products-3')
require('prototypes/recipes/recipes-bhoddos')
require('prototypes/recipes/recipes-xeno')
require('prototypes/recipes/recipes-cridren')
require('prototypes/recipes/recipes-zipir')
require('prototypes/recipes/recipes-trits')
require('prototypes/recipes/recipes-xyhiphoe')
require('prototypes/recipes/recipes-recharge')
require('prototypes/recipes/recipes-vat')
require('prototypes/recipes/recipes-phadai-products')
require('prototypes/recipes/recipes-ralesia-megafarm')
require('prototypes/recipes/recipes-rennea-megafarm')
require('prototypes/recipes/recipes-tuuphra-megafarm')
require('prototypes/recipes/recipes-grod-megafarm')
require('prototypes/recipes/recipes-yotoi-megafarm')
require('prototypes/recipes/recipes-yotoi-fruit-megafarm')
require('prototypes/recipes/recipes-bioreserve-megafarm')
require('prototypes/recipes/recipes-auto-zipir')
require('prototypes/recipes/recipes-auto-xyhiphoe')
require('prototypes/recipes/recipes-auto-fish')
require('prototypes/recipes/recipes-auto-trits')
require('prototypes/recipes/recipes-auto-xeno')
require('prototypes/recipes/recipes-auto-vrauks')
require('prototypes/recipes/recipes-auto-brains')
require('prototypes/recipes/recipes-auto-brains-2')
require('prototypes/recipes/recipes-auto-meat-1')
require('prototypes/recipes/recipes-auto-meat-2')
require('prototypes/recipes/recipes-auto-bone-1')
require('prototypes/recipes/recipes-auto-bone-2')
require('prototypes/recipes/recipes-auto-guts-1')
require('prototypes/recipes/recipes-auto-guts-2')
require('prototypes/recipes/recipes-auto-blood-1')
require('prototypes/recipes/recipes-auto-blood-2')
require('prototypes/recipes/recipes-auto-skin-1')
require('prototypes/recipes/recipes-auto-skin-2')
require('prototypes/recipes/recipes-auto-fat-1')
require('prototypes/recipes/recipes-auto-fat-2')
require('prototypes/recipes/recipes-bladder')
require('prototypes/recipes/recipes-auto-acessories')
require('prototypes/recipes/recipes-photomining')
require('prototypes/recipes/recipes-bioprinting')
require('prototypes/recipes/recipes-fawogae')
require('prototypes/recipes/recipes-cottongut')
require('prototypes/recipes/recipes-auto-cottongut')
require('prototypes/recipes/recipes-cottongut-science-red')
require('prototypes/recipes/recipes-cottongut-science-green')
require('prototypes/recipes/recipes-cottongut-science-blue')
require('prototypes/recipes/recipes-cottongut-science-py')


--(( ORES ))--
require('prototypes/ores/ralesia')
require('prototypes/ores/rennea')
require('prototypes/ores/tuuphra')
require('prototypes/ores/grod')
require('prototypes/ores/yotoi')
require('prototypes/ores/yotoi-fruit')
require('prototypes/ores/bioreserve')

data.raw["utility-constants"].default.recipe_step_limit = 2000;

--sprities
require('prototypes/sprites/sprites')
--require('prototypes/ores/fake-plants')

local biomass_convertion =
    {
        ['ralesia'] = {item_amount = 1, biomass_amount = 1},
        ['wood'] = {item_amount = 5, biomass_amount = 15},
        ['cocoon'] = {item_amount = 1, biomass_amount = 1},
        ['bhoddos-spore'] = {item_amount = 10, biomass_amount = 1},
        ['bonemeal'] = {item_amount = 1, biomass_amount = 3},
        ['bones'] = {item_amount = 1, biomass_amount = 3},
        ['brain'] = {item_amount = 1, biomass_amount = 3},
        ['carapace'] = {item_amount = 1, biomass_amount = 5},
        ['casein'] = {item_amount = 1, biomass_amount = 6},
        ['cellulose'] = {item_amount = 1, biomass_amount = 4},
        ['chitin'] = {item_amount = 1, biomass_amount = 5},
        ['chitosan'] = {item_amount = 1, biomass_amount = 8},
        ['fawogae-spore'] = {item_amount = 10, biomass_amount = 1},
        ['fawogae-spore-mk02'] = {item_amount = 1, biomass_amount = 5},
        ['fawogae-spore-mk03'] = {item_amount = 1, biomass_amount = 8},
        ['fawogae-spore-mk04'] = {item_amount = 1, biomass_amount = 10},
        ['fawogae-substrate'] = {item_amount = 1, biomass_amount = 5},
        ['fungal-substrate'] = {item_amount = 1, biomass_amount = 4},
        ['fungal-substrate-02'] = {item_amount = 1, biomass_amount = 5},
        ['fungal-substrate-03'] = {item_amount = 1, biomass_amount = 6},
        ['guts'] = {item_amount = 1, biomass_amount = 3},
        ['hmas'] = {item_amount = 1, biomass_amount = 20},
        ['lignin'] = {item_amount = 1, biomass_amount = 12},
        ['meat'] = {item_amount = 1, biomass_amount = 3},
        ['mukmoux-fat'] = {item_amount = 1, biomass_amount = 3},
        ['nano-cellulose'] = {item_amount = 1, biomass_amount = 10},
        ['navens-spore'] = {item_amount = 10, biomass_amount = 1},
        ['petri-dish'] = {item_amount = 1, biomass_amount = 1},
        ['petri-dish-bacteria'] = {item_amount = 1, biomass_amount = 1},
        ['sporopollenin'] = {item_amount = 1, biomass_amount = 3},
        ['yaedols-spores'] = {item_amount = 10, biomass_amount = 1},
        ['agar'] = {item_amount = 1, biomass_amount = 3},
        ['seeds-extract-01'] = {item_amount = 1, biomass_amount = 5},
        ['sugar'] = {item_amount = 1, biomass_amount = 10},
        ['bedding'] = {item_amount = 1, biomass_amount = 15},
        ['manure'] = {item_amount = 1, biomass_amount = 8},
        ['ag-biomass'] = {item_amount = 1, biomass_amount = 8},
        ['al-biomass'] = {item_amount = 1, biomass_amount = 8},
        ['albumin'] = {item_amount = 1, biomass_amount = 8},
        ['au-biomass'] = {item_amount = 1, biomass_amount = 8},
        ['co-biomass'] = {item_amount = 1, biomass_amount = 8},
        ['cu-biomass'] = {item_amount = 1, biomass_amount = 8},
        ['dried-meat'] = {item_amount = 1, biomass_amount = 8},
        ['fe-biomass'] = {item_amount = 1, biomass_amount = 8},
        ['fertilizer'] = {item_amount = 1, biomass_amount = 15},
        ['nacl-biomass'] = {item_amount = 1, biomass_amount = 8},
        ['nanofibrils'] = {item_amount = 1, biomass_amount = 20},
        ['nb-biomass'] = {item_amount = 1, biomass_amount = 8},
        ['ni-biomass'] = {item_amount = 1, biomass_amount = 8},
        ['pb-biomass'] = {item_amount = 1, biomass_amount = 8},
        ['s-biomass'] = {item_amount = 1, biomass_amount = 8},
        ['skin'] = {item_amount = 1, biomass_amount = 3},
        ['sn-biomass'] = {item_amount = 1, biomass_amount = 8},
        ['ti-biomass'] = {item_amount = 1, biomass_amount = 8},
        ['zn-biomass'] = {item_amount = 1, biomass_amount = 8},
        ['fish-egg'] = {item_amount = 1, biomass_amount = 4},
        ['sea-sponge-sprouts'] = {item_amount = 1, biomass_amount = 10},
        ['blood-caged-ulric'] = {item_amount = 1, biomass_amount = 20},
        ['bone-caged-ulric'] = {item_amount = 1, biomass_amount = 20},
        ['brain-caged-ulric'] = {item_amount = 1, biomass_amount = 20},
        ['fat-caged-ulric'] = {item_amount = 1, biomass_amount = 20},
        ['guts-caged-ulric'] = {item_amount = 1, biomass_amount = 20},
        ['meat-caged-ulric'] = {item_amount = 1, biomass_amount = 20},
        ['skin-caged-ulric'] = {item_amount = 1, biomass_amount = 20},
        ['blood-caged-auog'] = {item_amount = 1, biomass_amount = 30},
        ['bone-caged-auog'] = {item_amount = 1, biomass_amount = 30},
        ['brain-caged-auog'] = {item_amount = 1, biomass_amount = 30},
        ['fat-caged-auog'] = {item_amount = 1, biomass_amount = 30},
        ['guts-caged-auog'] = {item_amount = 1, biomass_amount = 30},
        ['meat-caged-auog'] = {item_amount = 1, biomass_amount = 30},
        ['skin-caged-auog'] = {item_amount = 1, biomass_amount = 30},
        ['caged-auog'] = {item_amount = 1, biomass_amount = 20},
        ['urea'] = {item_amount = 1, biomass_amount = 1},
        ['auog-pup'] = {item_amount = 1, biomass_amount = 15},
        ['blood-caged-mukmoux'] = {item_amount = 1, biomass_amount = 25},
        ['bone-caged-mukmoux'] = {item_amount = 1, biomass_amount = 25},
        ['brain-caged-mukmoux'] = {item_amount = 1, biomass_amount = 25},
        ['fat-caged-mukmoux'] = {item_amount = 1, biomass_amount = 25},
        ['guts-caged-mukmoux'] = {item_amount = 1, biomass_amount = 25},
        ['meat-caged-mukmoux'] = {item_amount = 1, biomass_amount = 25},
        ['skin-caged-mukmoux'] = {item_amount = 1, biomass_amount = 25},
        ['caged-mukmoux'] = {item_amount = 1, biomass_amount = 20},
        ['mukmoux-calf'] = {item_amount = 1, biomass_amount = 10},
        ['blood-caged-vrauks'] = {item_amount = 1, biomass_amount = 20},
        ['brain-caged-vrauks'] = {item_amount = 1, biomass_amount = 20},
        ['caged-vrauks'] = {item_amount = 1, biomass_amount = 20},
        ['chitin-caged-vrauks'] = {item_amount = 1, biomass_amount = 20},
        ['guts-caged-vrauks'] = {item_amount = 1, biomass_amount = 20},
        ['meat-caged-vrauks'] = {item_amount = 1, biomass_amount = 20},
        ['blood-caged-arthurian'] = {item_amount = 1, biomass_amount = 20},
        ['bone-caged-arthurian'] = {item_amount = 1, biomass_amount = 20},
        ['brain-caged-arthurian'] = {item_amount = 1, biomass_amount = 20},
        ['fat-caged-arthurian'] = {item_amount = 1, biomass_amount = 20},
        ['guts-caged-arthurian'] = {item_amount = 1, biomass_amount = 20},
        ['meat-caged-arthurian'] = {item_amount = 1, biomass_amount = 20},
        ['skin-caged-arthurian'] = {item_amount = 1, biomass_amount = 20},
        ['caged-arthurian'] = {item_amount = 1, biomass_amount = 20},
        ['arthurian-egg'] = {item_amount = 1, biomass_amount = 5},
        ['arthurian-pup'] = {item_amount = 1, biomass_amount = 10},
        ['blood-dhilmos'] = {item_amount = 1, biomass_amount = 20},
        ['fat-dhilmos'] = {item_amount = 1, biomass_amount = 20},
        ['guts-dhilmos'] = {item_amount = 1, biomass_amount = 20},
        ['meat-dhilmos'] = {item_amount = 1, biomass_amount = 20},
        ['dhilmos-pup'] = {item_amount = 1, biomass_amount = 10},
        ['dhilmos-egg'] = {item_amount = 1, biomass_amount = 5},
        ['blood-caged-scrondrix'] = {item_amount = 1, biomass_amount = 25},
        ['bone-caged-scrondrix'] = {item_amount = 1, biomass_amount = 25},
        ['brain-caged-scrondrix'] = {item_amount = 1, biomass_amount = 25},
        ['fat-caged-scrondrix'] = {item_amount = 1, biomass_amount = 25},
        ['guts-caged-scrondrix'] = {item_amount = 1, biomass_amount = 25},
        ['meat-caged-scrondrix'] = {item_amount = 1, biomass_amount = 25},
        ['skin-caged-scrondrix'] = {item_amount = 1, biomass_amount = 25},
        ['caged-scrondrix'] = {item_amount = 1, biomass_amount = 25},
        ['pineal-gland'] = {item_amount = 1, biomass_amount = 2},
        ['scrondrix-pup'] = {item_amount = 1, biomass_amount = 15},
        ['blood-caged-phadai'] = {item_amount = 1, biomass_amount = 20},
        ['bone-caged-phadai'] = {item_amount = 1, biomass_amount = 20},
        ['brain-caged-phadai'] = {item_amount = 1, biomass_amount = 20},
        ['fat-caged-phadai'] = {item_amount = 1, biomass_amount = 20},
        ['guts-caged-phadai'] = {item_amount = 1, biomass_amount = 20},
        ['meat-caged-phadai'] = {item_amount = 1, biomass_amount = 20},
        ['skin-caged-phadai'] = {item_amount = 1, biomass_amount = 20},
        ['caged-phadai'] = {item_amount = 1, biomass_amount = 20},
        ['phadai-pup'] = {item_amount = 1, biomass_amount = 15},
        ['blood-caged-dingrits'] = {item_amount = 1, biomass_amount = 15},
        ['bone-caged-dingrits'] = {item_amount = 1, biomass_amount = 15},
        ['brain-caged-dingrits'] = {item_amount = 1, biomass_amount = 15},
        ['fat-caged-dingrits'] = {item_amount = 1, biomass_amount = 15},
        ['guts-caged-dingrits'] = {item_amount = 1, biomass_amount = 15},
        ['meat-caged-dingrits'] = {item_amount = 1, biomass_amount = 15},
        ['caged-dingrits'] = {item_amount = 1, biomass_amount = 15},
        ['charged-dingrit'] = {item_amount = 1, biomass_amount = 20},
        ['dingrits-cub'] = {item_amount = 1, biomass_amount = 10},
        ['dingrit-spike'] = {item_amount = 1, biomass_amount = 3},
        ['fur'] = {item_amount = 1, biomass_amount = 3},
        ['pelt'] = {item_amount = 1, biomass_amount = 4},
        ['blood-caged-kmauts'] = {item_amount = 1, biomass_amount = 20},
        ['brain-caged-kmauts'] = {item_amount = 1, biomass_amount = 20},
        ['fat-caged-kmauts'] = {item_amount = 1, biomass_amount = 20},
        ['guts-caged-kmauts'] = {item_amount = 1, biomass_amount = 20},
        ['meat-caged-kmauts'] = {item_amount = 1, biomass_amount = 20},
        ['caged-kmauts'] = {item_amount = 1, biomass_amount = 20},
        ['kmauts-cub'] = {item_amount = 1, biomass_amount = 10},
        ['serine'] = {item_amount = 1, biomass_amount = 5},
        ['tendon'] = {item_amount = 1, biomass_amount = 5},
        ['blood-vonix'] = {item_amount = 1, biomass_amount = 30},
        ['brain-vonix'] = {item_amount = 1, biomass_amount = 30},
        ['fat-vonix'] = {item_amount = 1, biomass_amount = 30},
        ['guts-vonix'] = {item_amount = 1, biomass_amount = 30},
        ['meat-vonix'] = {item_amount = 1, biomass_amount = 30},
        ['skin-vonix'] = {item_amount = 1, biomass_amount = 30},
        ['venon-gland'] = {item_amount = 1, biomass_amount = 2},
        ['vonix-cub'] = {item_amount = 1, biomass_amount = 15},
        ['vonix-eggs'] = {item_amount = 1, biomass_amount = 5},
        ['blood-caged-phagnot'] = {item_amount = 1, biomass_amount = 15},
        ['bone-caged-phagnot'] = {item_amount = 1, biomass_amount = 15},
        ['brain-caged-phagnot'] = {item_amount = 1, biomass_amount = 15},
        ['guts-caged-phagnot'] = {item_amount = 1, biomass_amount = 15},
        ['meat-caged-phagnot'] = {item_amount = 1, biomass_amount = 15},
        ['skin-caged-phagnot'] = {item_amount = 1, biomass_amount = 15},
        ['caged-phagnot'] = {item_amount = 1, biomass_amount = 15},
        ['phagnot-cub'] = {item_amount = 1, biomass_amount = 10},
        ['phagnot-cub-mk02'] = {item_amount = 1, biomass_amount = 10},
        ['phagnot-cub-mk03'] = {item_amount = 1, biomass_amount = 10},
        ['phagnot-cub-mk04'] = {item_amount = 1, biomass_amount = 10},
        ['gas-bladder'] = {item_amount = 1, biomass_amount = 3},
        ['bone-xeno'] = {item_amount = 1, biomass_amount = 20},
        ['brain-xeno'] = {item_amount = 1, biomass_amount = 20},
        ['chitin-xeno'] = {item_amount = 1, biomass_amount = 20},
        ['meat-xeno'] = {item_amount = 1, biomass_amount = 20},
        ['sulfuric-xeno'] = {item_amount = 1, biomass_amount = 20},
        ['xeno-egg'] = {item_amount = 1, biomass_amount = 5},
        ['blood-zipir'] = {item_amount = 1, biomass_amount = 25},
        ['brain-zipir'] = {item_amount = 1, biomass_amount = 25},
        ['fat-zipir'] = {item_amount = 1, biomass_amount = 25},
        ['guts-zipir'] = {item_amount = 1, biomass_amount = 25},
        ['meat-zipir'] = {item_amount = 1, biomass_amount = 25},
        ['skin-zipir'] = {item_amount = 1, biomass_amount = 25},
        ['zipir-eggs'] = {item_amount = 1, biomass_amount = 5},
        ['zipir-pup'] = {item_amount = 1, biomass_amount = 10},
        ['blood-trits'] = {item_amount = 1, biomass_amount = 35},
        ['brain-trits'] = {item_amount = 1, biomass_amount = 35},
        ['fat-trits'] = {item_amount = 1, biomass_amount = 35},
        ['guts-trits'] = {item_amount = 1, biomass_amount = 35},
        ['meat-trits'] = {item_amount = 1, biomass_amount = 35},
        ['skin-trits'] = {item_amount = 1, biomass_amount = 35},
        ['bone-trits'] = {item_amount = 1, biomass_amount = 35},
        ['trits-pup'] = {item_amount = 1, biomass_amount = 20},
        ['photophore'] = {item_amount = 1, biomass_amount = 5},
        ['blood-xyhiphoe'] = {item_amount = 1, biomass_amount = 10},
        ['meat-xyhiphoe'] = {item_amount = 1, biomass_amount = 10},
        ['guts-xyhiphoe'] = {item_amount = 1, biomass_amount = 10},
        ['shell-xyhiphoe'] = {item_amount = 1, biomass_amount = 10},
        ['shell'] = {item_amount = 1, biomass_amount = 1},
        ['xyhiphoe-cub'] = {item_amount = 1, biomass_amount = 1},
        ['blood-caged-korlex'] = {item_amount = 1, biomass_amount = 10},
        ['bone-caged-korlex'] = {item_amount = 1, biomass_amount = 10},
        ['brain-caged-korlex'] = {item_amount = 1, biomass_amount = 10},
        ['fat-caged-korlex'] = {item_amount = 1, biomass_amount = 10},
        ['guts-caged-korlex'] = {item_amount = 1, biomass_amount = 10},
        ['meat-caged-korlex'] = {item_amount = 1, biomass_amount = 10},
        ['skin-caged-korlex'] = {item_amount = 1, biomass_amount = 10},
        ['caged-korlex'] = {item_amount = 1, biomass_amount = 10},
        ['korlex-pup'] = {item_amount = 1, biomass_amount = 5},
        ['blood-cottongut'] = {item_amount = 5, biomass_amount = 5},
        ['bone-cottongut'] = {item_amount = 5, biomass_amount = 5},
        ['brain-cottongut'] = {item_amount = 5, biomass_amount = 5},
        ['fat-cottongut'] = {item_amount = 5, biomass_amount = 5},
        ['guts-cottongut'] = {item_amount = 5, biomass_amount = 5},
        ['meat-cottongut'] = {item_amount = 5, biomass_amount = 5},
        ['skin-cottongut'] = {item_amount = 5, biomass_amount = 5},
        ['cottongut'] = {item_amount = 10, biomass_amount = 5},
        ['cottongut-pup'] = {item_amount = 10, biomass_amount = 3},
        ['moss'] = {item_amount = 3, biomass_amount = 13},
        ['wood-seedling'] = {item_amount = 1, biomass_amount = 1},
        ['wood-seeds'] = {item_amount = 4, biomass_amount = 30},
        ['seaweed'] = {item_amount = 1, biomass_amount = 2},
        ['ralesia-seeds'] = {item_amount = 1, biomass_amount = 1},
        ['saps'] = {item_amount = 10, biomass_amount = 1},
        ['rennea-seeds'] = {item_amount = 1, biomass_amount = 1},
        ['yotoi-fruit'] = {item_amount = 1, biomass_amount = 3},
        ['yotoi-leaves'] = {item_amount = 1, biomass_amount = 2},
        ['yotoi-seeds'] = {item_amount = 1, biomass_amount = 1},
        ['tuuphra-seeds'] = {item_amount = 1, biomass_amount = 1},
        ['dried-grods'] = {item_amount = 1, biomass_amount = 1},
        ['grod-seeds'] = {item_amount = 1, biomass_amount = 1},
        ['adrenal-cortex'] = {item_amount = 1, biomass_amount = 1},
        ['cridren-seeds'] = {item_amount = 1, biomass_amount = 1},
        ['kicalk-seeds'] = {item_amount = 1, biomass_amount = 6},
        ['kicalk-seeds-mk02'] = {item_amount = 1, biomass_amount = 1},
        ['kicalk-seeds-mk03'] = {item_amount = 1, biomass_amount = 1},
        ['kicalk-seeds-mk04'] = {item_amount = 1, biomass_amount = 1},
        ['cadaveric-arum-seeds'] = {item_amount = 1, biomass_amount = 1},
        ['moondrop-seeds'] = {item_amount = 1, biomass_amount = 1},
        ['kmauts-ration'] = {item_amount = 1, biomass_amount = 5},
        ['arthurian-food-01'] = {item_amount = 1, biomass_amount = 5},
        ['arthurian-food-02'] = {item_amount = 1, biomass_amount = 5},
        ['auog-food-01'] = {item_amount = 1, biomass_amount = 5},
        ['auog-food-02'] = {item_amount = 1, biomass_amount = 5},
        ['cottongut-food-01'] = {item_amount = 1, biomass_amount = 5},
        ['cottongut-food-02'] = {item_amount = 1, biomass_amount = 5},
        ['dhilmos-food-01'] = {item_amount = 1, biomass_amount = 5},
        ['dhilmos-food-02'] = {item_amount = 1, biomass_amount = 5},
        ['mukmoux-food-01'] = {item_amount = 1, biomass_amount = 5},
        ['mukmoux-food-02'] = {item_amount = 1, biomass_amount = 5},
        ['phadai-food-01'] = {item_amount = 1, biomass_amount = 5},
        ['phadai-food-02'] = {item_amount = 1, biomass_amount = 5},
        ['ulric-food-01'] = {item_amount = 1, biomass_amount = 5},
        ['ulric-food-02'] = {item_amount = 1, biomass_amount = 5},
        ['dingrits-food-01'] = {item_amount = 1, biomass_amount = 5},
        ['dingrits-food-02'] = {item_amount = 1, biomass_amount = 5},
        ['fish-food-01'] = {item_amount = 1, biomass_amount = 5},
        ['fish-food-02'] = {item_amount = 1, biomass_amount = 5},
        ['korlex-food-01'] = {item_amount = 1, biomass_amount = 5},
        ['korlex-food-02'] = {item_amount = 1, biomass_amount = 5},
        ['phagnot-food-01'] = {item_amount = 1, biomass_amount = 5},
        ['phagnot-food-02'] = {item_amount = 1, biomass_amount = 5},
        ['vrauks-food-01'] = {item_amount = 1, biomass_amount = 5},
        ['vrauks-food-02'] = {item_amount = 1, biomass_amount = 5},
        ['zipir-food-01'] = {item_amount = 1, biomass_amount = 5},
        ['zipir-food-02'] = {item_amount = 1, biomass_amount = 5},
        ['used-auog'] = {item_amount = 1, biomass_amount = 8},
        ['used-auog-mk02'] = {item_amount = 1, biomass_amount = 10},
        ['used-auog-mk03'] = {item_amount = 1, biomass_amount = 20},
        ['used-auog-mk04'] = {item_amount = 1, biomass_amount = 25},
        ['used-dingrit'] = {item_amount = 1, biomass_amount = 8},
        ['used-dingrit-mk02'] = {item_amount = 1, biomass_amount = 10},
        ['used-dingrit-mk03'] = {item_amount = 1, biomass_amount = 20},
        ['used-dingrit-mk04'] = {item_amount = 1, biomass_amount = 30},
        ['antelope'] = {item_amount = 1, biomass_amount = 12},
        ['auog'] = {item_amount = 1, biomass_amount = 20},
        ['auog-mk02'] = {item_amount = 1, biomass_amount = 20},
        ['auog-mk03'] = {item_amount = 1, biomass_amount = 20},
        ['auog-mk04'] = {item_amount = 1, biomass_amount = 20},
        ['cridren'] = {item_amount = 1, biomass_amount = 40},
        ['arthurian'] = {item_amount = 1, biomass_amount = 10},
        ['arthurian-mk02'] = {item_amount = 1, biomass_amount = 10},
        ['arthurian-mk03'] = {item_amount = 1, biomass_amount = 10},
        ['arthurian-mk04'] = {item_amount = 1, biomass_amount = 10},
        ['bhoddos'] = {item_amount = 1, biomass_amount = 5},
        ['bhoddos-mk02'] = {item_amount = 1, biomass_amount = 5},
        ['bhoddos-mk03'] = {item_amount = 1, biomass_amount = 5},
        ['bhoddos-mk04'] = {item_amount = 1, biomass_amount = 5},
        ['cadaveric-arum'] = {item_amount = 1, biomass_amount = 5},
        ['cadaveric-arum-mk02-a'] = {item_amount = 1, biomass_amount = 5},
        ['cadaveric-arum-mk03-a'] = {item_amount = 1, biomass_amount = 5},
        ['cadaveric-arum-mk04-a'] = {item_amount = 1, biomass_amount = 5},
        ['cottongut-mk01'] = {item_amount = 1, biomass_amount = 5},
        ['cottongut-mk02'] = {item_amount = 1, biomass_amount = 5},
        ['cottongut-mk03'] = {item_amount = 1, biomass_amount = 5},
        ['cottongut-mk04'] = {item_amount = 1, biomass_amount = 5},
        ['dingrits'] = {item_amount = 1, biomass_amount = 20},
        ['dingrits-mk02'] = {item_amount = 1, biomass_amount = 20},
        ['dingrits-mk03'] = {item_amount = 1, biomass_amount = 20},
        ['dingrits-mk04'] = {item_amount = 1, biomass_amount = 20},
        ['dhilmos'] = {item_amount = 1, biomass_amount = 15},
        ['dhilmos-mk02'] = {item_amount = 1, biomass_amount = 15},
        ['dhilmos-mk03'] = {item_amount = 1, biomass_amount = 15},
        ['dhilmos-mk04'] = {item_amount = 1, biomass_amount = 15},
        ['fish'] = {item_amount = 1, biomass_amount = 5},
        ['fish-mk02'] = {item_amount = 1, biomass_amount = 5},
        ['fish-mk03'] = {item_amount = 1, biomass_amount = 5},
        ['fish-mk04'] = {item_amount = 1, biomass_amount = 5},
        ['grod'] = {item_amount = 1, biomass_amount = 5},
        ['grod-mk02'] = {item_amount = 1, biomass_amount = 5},
        ['grod-mk03'] = {item_amount = 1, biomass_amount = 5},
        ['grod-mk04'] = {item_amount = 1, biomass_amount = 5},
        ['kicalk'] = {item_amount = 1, biomass_amount = 6},
        ['kicalk-mk02'] = {item_amount = 1, biomass_amount = 8},
        ['kicalk-mk03'] = {item_amount = 1, biomass_amount = 10},
        ['kicalk-mk04'] = {item_amount = 1, biomass_amount = 12},
        ['kmauts'] = {item_amount = 1, biomass_amount = 10},
        ['kmauts-mk02'] = {item_amount = 1, biomass_amount = 10},
        ['kmauts-mk03'] = {item_amount = 1, biomass_amount = 10},
        ['kmauts-mk04'] = {item_amount = 1, biomass_amount = 10},
        ['korlex'] = {item_amount = 1, biomass_amount = 10},
        ['korlex-mk02'] = {item_amount = 1, biomass_amount = 10},
        ['korlex-mk03'] = {item_amount = 1, biomass_amount = 10},
        ['korlex-mk04'] = {item_amount = 1, biomass_amount = 10},
        ['moondrop-diesel'] = {item_amount = 1, biomass_amount = 1},
        ['moondrop-fueloil'] = {item_amount = 1, biomass_amount = 1},
        ['moondrop-gas'] = {item_amount = 1, biomass_amount = 1},
        ['moondrop-kerosene'] = {item_amount = 1, biomass_amount = 1},
        ['fawogae'] = {item_amount = 2, biomass_amount = 1},
        ['fawogae-mk02'] = {item_amount = 2, biomass_amount = 1},
        ['fawogae-mk03'] = {item_amount = 2, biomass_amount = 1},
        ['fawogae-mk04'] = {item_amount = 2, biomass_amount = 1},
        ['moondrop'] = {item_amount = 5, biomass_amount = 1},
        ['moondrop-mk02'] = {item_amount = 5, biomass_amount = 1},
        ['moondrop-mk03'] = {item_amount = 5, biomass_amount = 1},
        ['moondrop-mk04'] = {item_amount = 5, biomass_amount = 1},
        ['mukmoux'] = {item_amount = 1, biomass_amount = 25},
        ['mukmoux-mk02'] = {item_amount = 1, biomass_amount = 25},
        ['mukmoux-mk03'] = {item_amount = 1, biomass_amount = 25},
        ['mukmoux-mk04'] = {item_amount = 1, biomass_amount = 25},
        ['navens'] = {item_amount = 1, biomass_amount = 10},
        ['navens-mk02'] = {item_amount = 1, biomass_amount = 10},
        ['navens-mk03'] = {item_amount = 1, biomass_amount = 10},
        ['navens-mk04'] = {item_amount = 1, biomass_amount = 10},
        ['phagnot'] = {item_amount = 1, biomass_amount = 12},
        ['phagnot-mk02'] = {item_amount = 1, biomass_amount = 12},
        ['phagnot-mk03'] = {item_amount = 1, biomass_amount = 12},
        ['phagnot-mk04'] = {item_amount = 1, biomass_amount = 12},
        ['phadai'] = {item_amount = 1, biomass_amount = 10},
        ['phadai-mk02'] = {item_amount = 1, biomass_amount = 10},
        ['phadai-mk03'] = {item_amount = 1, biomass_amount = 10},
        ['phadai-mk04'] = {item_amount = 1, biomass_amount = 10},
        ['ralesias'] = {item_amount = 5, biomass_amount = 1},
        ['ralesias-mk02'] = {item_amount = 1, biomass_amount = 1},
        ['ralesias-mk03'] = {item_amount = 1, biomass_amount = 1},
        ['ralesias-mk04'] = {item_amount = 1, biomass_amount = 1},
        ['rennea'] = {item_amount = 5, biomass_amount = 1},
        ['rennea-mk02'] = {item_amount = 1, biomass_amount = 1},
        ['rennea-mk03'] = {item_amount = 1, biomass_amount = 1},
        ['rennea-mk04'] = {item_amount = 1, biomass_amount = 1},
        ['sea-sponge'] = {item_amount = 1, biomass_amount = 5},
        ['sea-sponge-mk02'] = {item_amount = 1, biomass_amount = 5},
        ['sea-sponge-mk03'] = {item_amount = 1, biomass_amount = 5},
        ['sea-sponge-mk04'] = {item_amount = 1, biomass_amount = 5},
        ['scrondrix'] = {item_amount = 1, biomass_amount = 20},
        ['scrondrix-mk02'] = {item_amount = 1, biomass_amount = 20},
        ['scrondrix-mk03'] = {item_amount = 1, biomass_amount = 20},
        ['scrondrix-mk04'] = {item_amount = 1, biomass_amount = 20},
        ['tuuphra'] = {item_amount = 1, biomass_amount = 5},
        ['tuuphra-mk02'] = {item_amount = 1, biomass_amount = 15},
        ['tuuphra-mk03'] = {item_amount = 1, biomass_amount = 20},
        ['tuuphra-mk04'] = {item_amount = 1, biomass_amount = 25},
        ['trits'] = {item_amount = 1, biomass_amount = 30},
        ['trits-mk02'] = {item_amount = 1, biomass_amount = 40},
        ['trits-mk03'] = {item_amount = 1, biomass_amount = 50},
        ['trits-mk04'] = {item_amount = 1, biomass_amount = 60},
        ['ulric'] = {item_amount = 1, biomass_amount = 8},
        ['ulric-mk02'] = {item_amount = 1, biomass_amount = 10},
        ['ulric-mk03'] = {item_amount = 1, biomass_amount = 12},
        ['ulric-mk04'] = {item_amount = 1, biomass_amount = 14},
        ['vonix'] = {item_amount = 1, biomass_amount = 40},
        ['vonix-mk02'] = {item_amount = 1, biomass_amount = 50},
        ['vonix-mk03'] = {item_amount = 1, biomass_amount = 60},
        ['vonix-mk04'] = {item_amount = 1, biomass_amount = 70},
        ['vrauks'] = {item_amount = 1, biomass_amount = 8},
        ['vrauks-mk02'] = {item_amount = 1, biomass_amount = 10},
        ['vrauks-mk03'] = {item_amount = 1, biomass_amount = 12},
        ['vrauks-mk04'] = {item_amount = 1, biomass_amount = 14},
        ['xyhiphoe'] = {item_amount = 1, biomass_amount = 10},
        ['xyhiphoe-mk02'] = {item_amount = 1, biomass_amount = 15},
        ['xyhiphoe-mk03'] = {item_amount = 1, biomass_amount = 20},
        ['xyhiphoe-mk04'] = {item_amount = 1, biomass_amount = 25},
        ['xeno'] = {item_amount = 1, biomass_amount = 10},
        ['xeno-mk02'] = {item_amount = 1, biomass_amount = 20},
        ['xeno-mk03'] = {item_amount = 1, biomass_amount = 30},
        ['xeno-mk04'] = {item_amount = 1, biomass_amount = 40},
        ['yotoi'] = {item_amount = 1, biomass_amount = 15},
        ['yotoi-mk02'] = {item_amount = 1, biomass_amount = 25},
        ['yotoi-mk03'] = {item_amount = 1, biomass_amount = 35},
        ['yotoi-mk04'] = {item_amount = 1, biomass_amount = 45},
        ['yaedols'] = {item_amount = 1, biomass_amount = 10},
        ['yaedols-mk02'] = {item_amount = 1, biomass_amount = 20},
        ['yaedols-mk03'] = {item_amount = 1, biomass_amount = 30},
        ['yaedols-mk04'] = {item_amount = 1, biomass_amount = 40},
        ['zipir1'] = {item_amount = 1, biomass_amount = 20},
        ['zipir2'] = {item_amount = 1, biomass_amount = 30},
        ['zipir3'] = {item_amount = 1, biomass_amount = 40},
        ['zipir4'] = {item_amount = 1, biomass_amount = 50},
        ['log'] = {item_amount = 5, biomass_amount = 30},
        ['dry-ralesia'] = {item_amount = 1, biomass_amount = 1},
        ['ralesia-powder'] = {item_amount = 1, biomass_amount = 1},
        ['raw-fiber'] = {item_amount = 1, biomass_amount = 3},
        ['fiber'] = {item_amount = 1, biomass_amount = 3},
        ['micro-fiber'] = {item_amount = 1, biomass_amount = 4},
        ['myoglobin'] = {item_amount = 1, biomass_amount = 1},
        ['collagen'] = {item_amount = 1, biomass_amount = 5},
        ['blood-meal'] = {item_amount = 1, biomass_amount = 2},
        ['guar'] = {item_amount = 1, biomass_amount = 1},
        ['guar-gum'] = {item_amount = 1, biomass_amount = 1},
        ['guar-seeds'] = {item_amount = 10, biomass_amount = 1},
        ['crawdad'] = {item_amount = 1, biomass_amount = 100},
        ['dingrido'] = {item_amount = 1, biomass_amount = 200},
        ['qaavi'] = {item_amount = 1, biomass_amount = 300},
        ['blood'] = {item_amount = 10, biomass_amount = 5, type = 'fluid'},
        ['tar'] = {item_amount = 20, biomass_amount = 4, type = 'fluid'},
        ['crude-oil'] = {item_amount = 20, biomass_amount = 5, type = 'fluid'},
        ['aromatics'] = {item_amount = 10, biomass_amount = 5, type = 'fluid'},
        ['glycerol'] = {item_amount = 10, biomass_amount = 10, type = 'fluid'},
        ['oleochemicals'] = {item_amount = 10, biomass_amount = 10, type = 'fluid'},
        ['xyhiphoe-blood'] = {item_amount = 10, biomass_amount = 10, type = 'fluid'},
        ['phytoplankton'] = {item_amount = 10, biomass_amount = 30, type = 'fluid'},
        ['a-molasse'] = {item_amount = 10, biomass_amount = 12, type = 'fluid'},
        ['arthropod-blood'] = {item_amount = 10, biomass_amount = 5, type = 'fluid'},
        ['b-molasse'] = {item_amount = 10, biomass_amount = 12, type = 'fluid'},
        ['casein-mixture'] = {item_amount = 10, biomass_amount = 7, type = 'fluid'},
        ['casein-pulp-01'] = {item_amount = 10, biomass_amount = 8, type = 'fluid'},
        ['casein-pulp-02'] = {item_amount = 10, biomass_amount = 9, type = 'fluid'},
        ['casein-solution'] = {item_amount = 10, biomass_amount = 10, type = 'fluid'},
        ['chelator'] = {item_amount = 10, biomass_amount = 12, type = 'fluid'},
        ['depolymerized-organics'] = {item_amount = 10, biomass_amount = 15, type = 'fluid'},
        ['ethanol'] = {item_amount = 10, biomass_amount = 5, type = 'fluid'},
        ['fetal-serum'] = {item_amount = 10, biomass_amount = 4, type = 'fluid'},
        ['fish-oil'] = {item_amount = 10, biomass_amount = 8, type = 'fluid'},
        ['flavonoids'] = {item_amount = 10, biomass_amount = 15, type = 'fluid'},
        ['milk'] = {item_amount = 10, biomass_amount = 5, type = 'fluid'},
        ['psc'] = {item_amount = 5, biomass_amount = 5, type = 'fluid'},
        ['sweet-syrup'] = {item_amount = 10, biomass_amount = 8, type = 'fluid'},
        ['syrup-01'] = {item_amount = 10, biomass_amount = 7, type = 'fluid'},
        ['xenogenic-cells'] = {item_amount = 5, biomass_amount = 4, type = 'fluid'},
        ['creamy-latex'] = {item_amount = 20, biomass_amount = 5, type = 'fluid'},
        ['liquid-manure'] = {item_amount = 10, biomass_amount = 5, type = 'fluid'},
        ['black-liquor'] = {item_amount = 10, biomass_amount = 10, type = 'fluid'},
        ['tall-oil'] = {item_amount = 10, biomass_amount = 8, type = 'fluid'},
        ['raw-ralesia-extract'] = {item_amount = 10, biomass_amount = 5, type = 'fluid'},
        ['ralesia-extract'] = {item_amount = 10, biomass_amount = 5, type = 'fluid'},
        ['condensates'] = {item_amount = 10, biomass_amount = 4, type = 'fluid'},
        ['condensed-distillate'] = {item_amount = 10, biomass_amount = 4, type = 'fluid'},
        ['naphtha'] = {item_amount = 10, biomass_amount = 5, type = 'fluid'},
        ['scrude'] = {item_amount = 10, biomass_amount = 3, type = 'fluid'},
    }

local type

local local_name_type

for i, item in pairs(biomass_convertion) do

--local name = ''

    if item.type == nil or item.type ~= 'fluid' then
        type = 'item'
        local_name_type = 'item'
        --if data.raw.item[i] ~= nil then
           --name = data.raw.item[i].localised_name
        --end
    elseif item.type == 'fluid' then
        type = 'fluid'
        local_name_type = 'fluid'
        --if data.raw.fluid[i] ~= nil then
            --name = data.raw.fluid[i].localised_name
        --end
    end

    if data.raw.item[i] ~= nil or data.raw.fluid[i] ~= nil then
        RECIPE {
            type = 'recipe',
            name = 'biomass-' .. i,
            category = 'compost',
            enabled = false,
			hidden = true,
            energy_required = 3,
            ingredients = {
                {type = type, name = i, amount = item.item_amount},
            },
            results = {
                {type = 'item', name = 'biomass', amount = item.biomass_amount},
            },
            main_product = 'biomass',
            subgroup = 'py-alienlife-compost',
            order = 'z',
            localised_name = {'', 'Compost ' .. item.item_amount .. ' x ', {local_name_type .. '-name.' .. i}}
        }:add_unlock("compost")
    end
end

local fun = require("prototypes/functions/functions")

fun.reprocess_recipes_1()

fun.reprocess_recipes_2()