--module bonus formula = crafting speed * ( 1 + ( module bounus in decimal * number of modules )
--i.e. 0.01 * ( 1 + ( 15 * 6 )
--module bonus is a whole number do to the size of the bonus amount

require("__stdlib__/stdlib/data/data").Util.create_data_globals()

require("prototypes/item-groups")
require("prototypes/recipe-categories")
require("prototypes/fuel-categories")
require("prototypes/module-categories")

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
require("prototypes/technologies/selective-breeding")
require("prototypes/technologies/artificial-breeding")
require("prototypes/technologies/biased-mutation")
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
require('prototypes/technologies/arqad')
require('prototypes/technologies/cardial-hypopharynx')
require('prototypes/technologies/chromasome-infocrystalization')
require('prototypes/technologies/pheromone-transition')
require('prototypes/technologies/laika')
--require('prototypes/technologies/space-program')
require('prototypes/technologies/pesticides')
--require('prototypes/technologies/symbiosis')
require('prototypes/technologies/bioprocessing')
require('prototypes/technologies/simik')
require('prototypes/technologies/fish')
require('prototypes/technologies/guar')
require('prototypes/technologies/moss')

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
require('prototypes/buildings/generator-1')
require('prototypes/buildings/generator-2')
require('prototypes/buildings/pyphoon-bay')
require('prototypes/buildings/mega-farm')
require('prototypes/buildings/vat-brain')
require("prototypes/buildings/harvester")
require("prototypes/buildings/collector")
require("prototypes/buildings/ipod")
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
require('prototypes/buildings/arqad-hive-mk01')
require('prototypes/buildings/arqad-hive-mk02')
require('prototypes/buildings/arqad-hive-mk03')
require('prototypes/buildings/arqad-hive-mk04')
require('prototypes/buildings/simik-den-mk01')
require('prototypes/buildings/simik-den-mk02')
require('prototypes/buildings/simik-den-mk03')
require('prototypes/buildings/simik-den-mk04')

--crashed data array
require('prototypes/buildings/crashed-lab-mk01')
if not mods["pyhightech"] then
    require("prototypes/buildings/crashed-assembler-mk01")
end

--((SPACE BUILDINGS))--
--[[
require('prototypes/buildings/space/space-arthurian-pen-mk01')
require('prototypes/buildings/space/space-auog-paddock-mk01')
require('prototypes/buildings/space/space-bhoddos-culture-mk01')
require('prototypes/buildings/space/space-cadavericarum-mk01')
require('prototypes/buildings/space/space-cridren-enclosure-mk01')
require('prototypes/buildings/space/space-dingrits-mk01')
require('prototypes/buildings/space/space-ez-ranch-mk01')
require('prototypes/buildings/space/space-fish-farm-mk01')
require('prototypes/buildings/space/space-fwf-mk01')
require('prototypes/buildings/space/space-grod-swamp-mk01')
require('prototypes/buildings/space/space-kicalk-plantation-mk01')
require('prototypes/buildings/space/space-kmauts-enclosure-mk01')
require('prototypes/buildings/space/space-moss-farm-mk01')
require('prototypes/buildings/space/space-mukmoux-pasture-mk01')
require('prototypes/buildings/space/space-navens-culture-mk01')
require('prototypes/buildings/space/space-phadai-enclosure-mk01')
require('prototypes/buildings/space/space-phagnot-corral-mk01')
require('prototypes/buildings/space/space-prandium-lab-mk01')
require('prototypes/buildings/space/space-ralesia-plantation-mk01')
require('prototypes/buildings/space/space-rennea-plantation-mk01')
require('prototypes/buildings/space/space-sap-extractor-mk01')
require('prototypes/buildings/space/space-scrondrix-pen-mk01')
require('prototypes/buildings/space/space-seaweed-crop-mk01')
require('prototypes/buildings/space/space-sponge-culture-mk01')
require('prototypes/buildings/space/space-trits-reef-mk01')
require('prototypes/buildings/space/space-tuuphra-plantation-mk01')
require('prototypes/buildings/space/space-ulric-corral-mk01')
require('prototypes/buildings/space/space-vonix-den-mk01')
require('prototypes/buildings/space/space-vrauks-paddock-mk01')
require('prototypes/buildings/space/space-xenopen-mk01')
require('prototypes/buildings/space/space-xyhiphoe-pool-mk01')
require('prototypes/buildings/space/space-yaedols-culture-mk01')
require('prototypes/buildings/space/space-yotoi-aloe-orchard-mk01')
require('prototypes/buildings/space/space-zipir-reef-mk01')
]]--
--((ROCKET))--
--require('prototypes/buildings/silo-2')
--require('prototypes/buildings/rocket-mk02')

require('prototypes/buildings/py-drive')

--require('prototypes/buildings/outpost')
--require('prototypes/buildings/outpost-mining')
--require('prototypes/buildings/flyavan-outpost')

--Creature
--require('prototypes/creatures/caravan')
--require('prototypes/creatures/nuka-caravan')
--require('prototypes/creatures/flying-caravan')
require('prototypes/creatures/dingrido')
require('prototypes/creatures/crawdad')
require('prototypes/creatures/phadaisus')
--require('prototypes/creatures/ocula')
--require('prototypes/robots/gobachov')
--require('prototypes/robots/huzu')
--require('prototypes/robots/chorkok')
--require('prototypes/creatures/ulric-man-mining')
--require('prototypes/creatures/ulric-man-attack')
--require('prototypes/creatures/clone-1')
--require('prototypes/creatures/dig-osaurus')

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
require("prototypes/fluids/fish-emulsion")
require("prototypes/fluids/fish-hydrolysate")
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
require('prototypes/fluids/cadaveric-arum-cum')
require('prototypes/fluids/wax')
require('prototypes/fluids/arqad-jelly')
require('prototypes/fluids/bee-venom')
require('prototypes/fluids/dda')
require('prototypes/fluids/mcb')
require('prototypes/fluids/bio-oil')
require('prototypes/fluids/chloral')
require('prototypes/fluids/pre-pesticide-01')
require('prototypes/fluids/pre-pesticide-02')
require('prototypes/fluids/ethyl-mercaptan')
require('prototypes/fluids/arqad-honey')
require('prototypes/fluids/simik-blood')

--(( ITEMS ))--
require('prototypes/items/items')
require('prototypes/items/items2')

--(( RECIPES ))--
require('prototypes/recipes/recipes')

--antelope
require('prototypes/recipes/antelope/recipes-antelope')
require('prototypes/recipes/antelope/recipes-antelope-raising')
require('prototypes/recipes/antelope/recipes-antelope-rendering')

--arqad
require('prototypes/recipes/arqad/recipes-arqad')
require('prototypes/recipes/arqad/recipes-arqad-honey')
require('prototypes/recipes/arqad/recipes-arqad-products')
require('prototypes/recipes/arqad/recipes-arqad-raising')
require('prototypes/recipes/arqad/recipes-arqad-rendering')
require('prototypes/recipes/arqad/recipes-arqad-updates')
require('prototypes/recipes/arqad/recipes-arqad-modules')
require('prototypes/recipes/arqad/recipes-arqad-growth-enhancement')

--arthurian
require('prototypes/recipes/arthurian/recipes-arthurian')
require('prototypes/recipes/arthurian/recipes-arthurian-raising')
require('prototypes/recipes/arthurian/recipes-arthurian-rendering')
require('prototypes/recipes/arthurian/recipes-arthurian-growth-enhancement')
require('prototypes/recipes/arthurian/recipes-arthurian-modules')

--auog
require('prototypes/recipes/auog/recipes-auog')
require('prototypes/recipes/auog/recipes-auog-raising')
require('prototypes/recipes/auog/recipes-auog-rendering')
require('prototypes/recipes/auog/recipes-auog-growth-enhancement')
require('prototypes/recipes/auog/recipes-auog-modules')

--Bhoddos
require('prototypes/recipes/bhoddos/recipes-bhoddos')
require('prototypes/recipes/bhoddos/recipes-bhoddos-raising')
require('prototypes/recipes/bhoddos/recipes-bhoddos-modules')

--Cadaveric-arum
--see pyhightech updates for files

--Cottongut
require('prototypes/recipes/cottongut/recipes-cottongut')
require('prototypes/recipes/cottongut/recipes-cottongut-raising')
require('prototypes/recipes/cottongut/recipes-cottongut-rendering')
require('prototypes/recipes/cottongut/recipes-cottongut-growth-enhancement')
require('prototypes/recipes/cottongut/recipes-cottongut-science')
require('prototypes/recipes/cottongut/recipes-cottongut-modules')

--Cridren
require('prototypes/recipes/cridren/recipes-cridren')
require('prototypes/recipes/cridren/recipes-auto-cridren')

--Dhilmos
require('prototypes/recipes/dhilmos/recipes-dhilmos')
require('prototypes/recipes/dhilmos/recipes-dhilmos-raising')
require('prototypes/recipes/dhilmos/recipes-dhilmos-rendering')
require('prototypes/recipes/dhilmos/recipes-dhilmos-growth-enhancement')

--Dingrits
require('prototypes/recipes/dingrits/recipes-dingrits')
require('prototypes/recipes/dingrits/recipes-dingrits-raising')
require('prototypes/recipes/dingrits/recipes-dingrits-rendering')
require('prototypes/recipes/dingrits/recipes-dingrits-growth-enhancement')

--Fawogae
require('prototypes/recipes/fawogae/recipes-fawogae')
require('prototypes/recipes/fawogae/recipes-auto-fawogae')
require('prototypes/recipes/fawogae/recipes-fawogae-modules')

--Fish
require('prototypes/recipes/fish/recipes-fish')
require('prototypes/recipes/fish/recipes-auto-fish')
require('prototypes/recipes/fish/recipes-fish-rendering')

--Grod
require('prototypes/recipes/grod/recipes-grod')
require('prototypes/recipes/grod/recipes-auto-grod')
require('prototypes/recipes/grod/recipes-grod-megafarm')

--guar
require('prototypes/recipes/guar/recipes-guar')
require('prototypes/recipes/guar/recipes-auto-guar')
--need to disable guar recipes from pyph see pyph-updates

--Kicalk
--see pyhightech updates for files

--Kmauts
require('prototypes/recipes/kmauts/recipes-kmauts')
require('prototypes/recipes/kmauts/recipes-kmauts-raising')
require('prototypes/recipes/kmauts/recipes-kmauts-rendering')
require('prototypes/recipes/kmauts/recipes-kmauts-growth-enhancement')

--Korlex
require('prototypes/recipes/korlex/recipes-korlex')
require('prototypes/recipes/korlex/recipes-korlex-raising')
require('prototypes/recipes/korlex/recipes-korlex-rendering')
require('prototypes/recipes/korlex/recipes-korlex-milk')
require('prototypes/recipes/korlex/recipes-korlex-growth-enhancement')

--Moondrop
--see pyhightech updates for files

--moss
require('prototypes/recipes/moss/recipes-moss')
require('prototypes/recipes/moss/recipes-auto-moss')

--Mukmoux
require('prototypes/recipes/mukmoux/recipes-mukmoux')
require('prototypes/recipes/mukmoux/recipes-mukmoux-raising')
require('prototypes/recipes/mukmoux/recipes-mukmoux-rendering')
require('prototypes/recipes/mukmoux/recipes-mukmoux-growth-enhacement')

--Navens
require('prototypes/recipes/navens/recipes-navens')
require('prototypes/recipes/navens/recipes-auto-navens')

--Phadai
require('prototypes/recipes/phadai/recipes-phadai')
require('prototypes/recipes/phadai/recipes-phadai-raising')
require('prototypes/recipes/phadai/recipes-phadai-rendering')
require('prototypes/recipes/phadai/recipes-phadai-products')
require('prototypes/recipes/phadai/recipes-phadai-recharge')
require('prototypes/recipes/phadai/recipes-phadai-growth-enhancement')

--Phagnot
require('prototypes/recipes/phagnot/recipes-phagnot')
require('prototypes/recipes/phagnot/recipes-phagnot-raising')
require('prototypes/recipes/phagnot/recipes-phagnot-rendering')
require('prototypes/recipes/phagnot/recipes-phagnot-growth-enhancement')
require('prototypes/recipes/phagnot/recipes-phagnot-modules')

--Ralesia
require('prototypes/recipes/ralesia/recipes-ralesia')
require('prototypes/recipes/ralesia/recipes-auto-ralesia')
require('prototypes/recipes/ralesia/recipes-ralesia-megafarm')

--Rennea
require('prototypes/recipes/rennea/recipes-rennea')
require('prototypes/recipes/rennea/recipes-auto-rennea')
require('prototypes/recipes/rennea/recipes-rennea-megafarm')

--Sap
require('prototypes/recipes/sap/recipes-sap')
require('prototypes/recipes/sap/recipes-sap-products')

--Scrondrix
require('prototypes/recipes/scrondrix/recipes-scrondrix')
require('prototypes/recipes/scrondrix/recipes-scrondrix-raising')
require('prototypes/recipes/scrondrix/recipes-scrondrix-rendering')
require('prototypes/recipes/scrondrix/recipes-scrondrix-growth-enhancement')

--Sea-Sponge
require("prototypes/recipes/sea-sponge/recipes-sea-sponge")
require('prototypes/recipes/sea-sponge/recipes-sea-sponge-modules')

--seaweed
require('prototypes/recipes/seaweed/recipes-seaweed')
require('prototypes/recipes/seaweed/recipes-seaweed-products')

--simik
require('prototypes/recipes/simik/recipes-simik')
require('prototypes/recipes/simik/recipes-simik-raising')
require('prototypes/recipes/simik/recipes-simik-rendering')
require('prototypes/recipes/simik/recipes-simik-metals')
require('prototypes/recipes/simik/recipes-simik-growth-enhancement')

--Tree
require('prototypes/recipes/tree/recipes-tree')

--Trits
require('prototypes/recipes/trits/recipes-trits')
require('prototypes/recipes/trits/recipes-trits-raising')
require('prototypes/recipes/trits/recipes-trits-rendering')
require('prototypes/recipes/trits/recipes-trits-growth-enhacement')

--Tuupra
require('prototypes/recipes/tuupra/recipes-tuuphra')
require('prototypes/recipes/tuupra/recipes-auto-tuuphra')
require('prototypes/recipes/tuupra/recipes-tuuphra-megafarm')

--Ulric
require('prototypes/recipes/ulric/recipes-ulric')
require('prototypes/recipes/ulric/recipes-ulric-raising')
require('prototypes/recipes/ulric/recipes-ulric-rendering')
require('prototypes/recipes/ulric/recipes-ulric-growth-enhancement')

--Vonix
require('prototypes/recipes/vonix/recipes-vonix')
require('prototypes/recipes/vonix/recipes-vonix-raising')
require('prototypes/recipes/vonix/recipes-vonix-rendering')
require('prototypes/recipes/vonix/recipes-vonix-growth-enchacement')

--vrauks
require('prototypes/recipes/vrauks/recipes-vrauks')
require('prototypes/recipes/vrauks/recipes-vrauks-raising')
require('prototypes/recipes/vrauks/recipes-vrauks-rendering')
require('prototypes/recipes/vrauks/recipes-vrauk-growth-enhacement')

--Xeno
require('prototypes/recipes/xeno/recipes-xeno')
require('prototypes/recipes/xeno/recipes-xeno-raising')
require('prototypes/recipes/xeno/recipes-xeno-rendering')
require('prototypes/recipes/xeno/recipes-xeno-growth-enhancement')

--Xyhiphoe
require("prototypes/recipes/xyhiphoe/recipes-xyhiphoe")
require("prototypes/recipes/xyhiphoe/recipes-xyhiphoe-raising")
require("prototypes/recipes/xyhiphoe/recipes-xyhiphoe-rendering")
require('prototypes/recipes/xyhiphoe/recipes-xyhiphoe-growth-enhancement')

--Yaedols
require('prototypes/recipes/yaedols/recipes-yaedols')
require('prototypes/recipes/yaedols/recipes-auto-yaedols')

--Yotoi
require('prototypes/recipes/yotoi/recipes-yotoi')
require('prototypes/recipes/yotoi/recipes-auto-yotoi')
require('prototypes/recipes/yotoi/recipes-auto-yotoi-fruit')
require('prototypes/recipes/yotoi/recipes-yotoi-megafarm')
require('prototypes/recipes/yotoi/recipes-yotoi-fruit-megafarm')

--Zipir
require('prototypes/recipes/zipir/recipes-zipir')
require('prototypes/recipes/zipir/recipes-zipir-raising')
require('prototypes/recipes/zipir/recipes-zipir-rendering')
require('prototypes/recipes/zipir/recipes-zipir-growth-enhancement')

require('prototypes/recipes/recipes-atomizer')
require('prototypes/recipes/recipes-auto-acessories')
--require('prototypes/recipes/recipes-auto-blood-1')
--require('prototypes/recipes/recipes-auto-blood-2')
--require('prototypes/recipes/recipes-auto-bone-1')
--require('prototypes/recipes/recipes-auto-bone-2')
--require('prototypes/recipes/recipes-auto-brains')
--require('prototypes/recipes/recipes-auto-brains-2')
--require('prototypes/recipes/recipes-auto-fat-1')
--require('prototypes/recipes/recipes-auto-fat-2')
--require('prototypes/recipes/recipes-auto-guts-1')
--require('prototypes/recipes/recipes-auto-guts-2')
--require('prototypes/recipes/recipes-auto-meat-1')
--require('prototypes/recipes/recipes-auto-meat-2')
--require('prototypes/recipes/recipes-auto-skin-1')
--require('prototypes/recipes/recipes-auto-skin-2')
require('prototypes/recipes/recipes-bioprinting')
require('prototypes/recipes/recipes-bladder')
require('prototypes/recipes/recipes-mo')
require('prototypes/recipes/recipes-photomining')
require('prototypes/recipes/recipes-phytoplankton')
require('prototypes/recipes/recipes-recharge')
--require('prototypes/recipes/recipes-vat')


--gunpowder poo
--require('prototypes/recipes/recipes-vrauk-products')

--(( ORES ))--
require('prototypes/ores/ralesia')
require('prototypes/ores/rennea')
require('prototypes/ores/tuuphra')
require('prototypes/ores/grod')
require('prototypes/ores/yotoi')
require('prototypes/ores/yotoi-fruit')
require('prototypes/ores/bioreserve')


--(( BACKGROUND ))--
data.raw["utility-constants"].default.recipe_step_limit = 2000;
data.raw["utility-constants"].default.main_menu_background_image_location = "__pyalienlifegraphics3__/graphics/pyal-wall.jpg"

--(( TIPS AND TRICKS ))--
require('prototypes/tips-and-tricks')

--sprities
require('prototypes/sprites/sprites')
--require('prototypes/ores/fake-plants')

data.raw.fluid['bio-oil'].fuel_value = '0.8MJ'

local bio_list = require('prototypes/items/biomass-convertion')

local type

local local_name_type

for i, item in pairs(bio_list) do

--local name = ''
--log(i)
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
    --log(serpent.block(data.raw.item[i]))
    local icon
    if type == 'item' and data.raw.item[i] ~= nil then
        if data.raw.item[i].icon ~= nil then
            --log('hit')
            icon = {icon = data.raw.item[i].icon, icon_size = data.raw.item[i].icon_size}
        elseif data.raw.item[i].icons ~= nil then
            --log('hit')
            icon = data.raw.item[i].icons[1]
            if data.raw.item[i].icon_size ~= nil then
                icon.icon_size = data.raw.item[i].icon_size
            elseif data.raw.item[i].icons[1].icon_size ~= nil then
                icon.icon_size = data.raw.item[i].icons[1].icon_size
            end
        end
    elseif type == 'fluid' then
        if data.raw.fluid[i] ~= nil and data.raw.fluid[i].icon ~= nil then
            --log('hit')
            icon = {icon = data.raw.fluid[i].icon, icon_size = data.raw.fluid[i].icon_size}
        elseif data.raw.fluid[i] ~= nil and data.raw.fluid[i].icons ~= nil then
            --log('hit')
            icon = data.raw.fluid[i].icons[1]
        end
    elseif type == 'item' and data.raw.module[i] ~= nil then
        if data.raw.module[i].icon ~= nil then
            --log('hit')
            icon = {icon = data.raw.module[i].icon, icon_size = data.raw.module[i].icon_size}
        elseif data.raw.module[i].icons ~= nil then
            --log('hit')
            if string.match(data.raw.module[i].icons[1].icon, 'over') ~= nil then
                icon = data.raw.module[i].icons[2]
            else
                icon = data.raw.module[i].icons[1]
            end
            if data.raw.module[i].icon_size ~= nil then
                icon.icon_size = data.raw.module[i].icon_size
            elseif data.raw.module[i].icons[1].icon_size ~= nil then
                icon.icon_size = data.raw.module[i].icons[1].icon_size
            end
        end
    end
    if data.raw.item[i] ~= nil or data.raw.fluid[i] ~= nil or data.raw.module[i] ~= nil then
        RECIPE {
            type = 'recipe',
            name = 'biomass-' .. i,
            category = 'compost',
            enabled = false,
			hide_from_player_crafting = true,
            ignore_for_dependencies = true,
            energy_required = 3,
            ingredients = {
                {type = type, name = i, amount = item.item_amount},
            },
            results = {
                {type = 'item', name = 'biomass', amount = item.biomass_amount},
            },
            --main_product = 'biomass',
            icons =
                {
                    icon,
                    {icon = "__pyalienlifegraphics__/graphics/icons/biomass.png", scale = 0.25, shift = {-7.5,-7.5}, icon_size = 64}
                },
            subgroup = 'py-alienlife-compost',
            order = i,
            localised_name = {'', 'Compost ' .. item.item_amount .. ' x ', {local_name_type .. '-name.' .. i}}
        }:add_unlock("compost")
        --log(serpent.block(data.raw.recipe['biomass-' .. i]))
    end
end

--(( Shortcut keys ))--
local recipeselect=
	{
	type = "custom-input",
	name = "tech-upgrades",
	key_sequence = "CONTROL + T",
	consuming = "none"
	}

data:extend{recipeselect}
