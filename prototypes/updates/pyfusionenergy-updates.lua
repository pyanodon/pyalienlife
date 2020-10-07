local fun = require("prototypes/functions/functions")

--TECHNOLOGY--

--BUILDINDS--
RECIPE('plankton-farm'):remove_unlock('vanadium-processing'):add_unlock('microbiology-mk01'):remove_ingredient("niobium-plate"):remove_ingredient("storage-tank"):add_ingredient({type = "item", name = "pipe", amount = 20}):add_ingredient({type = "item", name = "iron-gear-wheel", amount = 25}):subgroup_order('py-alienlife-buildings-mk01', 'p')
RECIPE('plankton-farm-mk02'):add_unlock('microbiology-mk02'):subgroup_order('py-alienlife-buildings-mk02', 'p')
RECIPE('plankton-farm-mk03'):add_unlock('microbiology-mk03'):subgroup_order('py-alienlife-buildings-mk03', 'p')
RECIPE('plankton-farm-mk04'):add_unlock('biotech-mk04'):subgroup_order('py-alienlife-buildings-mk04', 'p')
RECIPE('genlab-mk01'):remove_unlock('fusion-mk01'):remove_unlock('nano-tech')
RECIPE('ralesia-plantation-mk03'):add_ingredient({type = "item", name = "super-alloy", amount = 10}):add_ingredient({type = "item", name = "boron-carbide", amount = 20})
RECIPE('ralesia-plantation-mk04'):add_ingredient({type = "item", name = "nbti-alloy", amount = 15}):add_ingredient({type = "item", name = "wall-shield", amount = 8}):add_ingredient({type = "item", name = "science-coating", amount = 1})
RECIPE('xyhiphoe-pool-mk01'):remove_unlock('vanadium-processing')
RECIPE('xyhiphoe-pool-mk02'):remove_unlock('machines-mk02')
RECIPE('xyhiphoe-pool-mk03'):remove_unlock('machines-mk03')
RECIPE('xyhiphoe-pool-mk04'):remove_unlock('machines-mk04')
RECIPE('bio-reactor'):remove_unlock('helium-processing'):remove_unlock('nano-tech')

----RECIPES----
RECIPE('phytoplankton'):remove_unlock('vanadium-processing'):add_unlock('microbiology-mk01'):subgroup_order('py-alienlife-plants', 'b')
RECIPE('log8'):change_category('fwf'):add_ingredient({type = "item", name = "wood-seedling", amount = 3}):subgroup_order("py-alienlife-plants", "a"):remove_unlock('vanadium-processing'):add_unlock('botany-mk02')
RECIPE('log7'):change_category('fwf'):add_ingredient({type = "item", name = "wood-seedling", amount = 3}):subgroup_order("py-alienlife-plants", "a"):remove_unlock('vanadium-processing'):add_unlock('botany-mk02')
RECIPE('zogna-bacteria'):add_ingredient({type = "fluid", name = "pressured-air", amount = 50})
RECIPE('bacteria-1'):remove_unlock('helium-processing'):add_unlock('microbiology-mk02'):subgroup_order('py-alienlife-genetics', 'b'):add_ingredient({type = "item", name = "petri-dish", amount = 3})
RECIPE('serine'):remove_unlock('helium-processing'):add_unlock('kmauts'):subgroup_order('py-alienlife-kmauts', 'b'):change_category('bio-reactor'):remove_ingredient("kmauts-ration"):add_ingredient({type = "item", name = "tendon", amount = 5}):add_ingredient({type = "fluid", name = "zogna-bacteria", amount = 40})
ITEM('serine'):subgroup_order('py-alienlife-kmauts', 'b')
ITEM('kmauts-ration'):subgroup_order('py-alienlife-food', 'b')
RECIPE('nenbit-matrix'):add_ingredient({type = "item", name = "nano-cellulose", amount = 3})
RECIPE('science-coating'):add_ingredient({type = "item", name = "chitosan", amount = 5})
RECIPE('xyhiphoe-hydrocyclone'):remove_unlock('vanadium-processing'):add_unlock('biotech-mk02')
RECIPE('silver-foam'):remove_unlock('fusion-mk03'):add_unlock('pharmagenomics')
RECIPE('agzn-alloy'):remove_unlock('fusion-mk03'):add_unlock('pharmagenomics')

RECIPE('xyhiphoe-blood'):remove_unlock('vanadium-processing')
RECIPE('vanabins'):remove_ingredient("xyhiphoe-blood"):add_ingredient({type = "fluid", name = "arthropod-blood", amount = 150})
RECIPE('kmauts-enclosure-mk01'):remove_unlock('helium-processing') --substituir por versao pyal
RECIPE('kmauts-enclosure-mk02'):remove_unlock('machines-mk02')
RECIPE('kmauts-enclosure-mk03'):remove_unlock('machines-mk03')
RECIPE('kmauts-enclosure-mk04'):remove_unlock('machines-mk04')
RECIPE('kmauts-ration'):subgroup_order('py-alienlife-food', 'b'):remove_unlock('helium-processing'):add_unlock('food-mk03'):add_ingredient({type = "item", name = "seaweed", amount = 10}):add_ingredient({type = "item", name = "meat", amount = 10}):add_ingredient({type = "item", name = "moss", amount = 10})
:add_ingredient({type = "item", name = "yotoi-seeds", amount = 10})
RECIPE('control-unit'):add_ingredient({type = 'item', name = 'biobattery', amount = 2}):replace_ingredient("advanced-circuit", "processing-unit"):remove_unlock('advanced-mining-facilities'):add_unlock('chitin')
RECIPE('production-science-pack'):add_ingredient({type = "item", name = "alien-enzymes", amount = 1})
RECIPE('super-alloy'):add_ingredient({type = "item", name = "cobalt-oxide", amount = 2})
RECIPE('control-unit'):change_category('research')
RECIPE('sc-unit'):change_category('research')
RECIPE('sc-wire'):change_category('research')


fun.results_replacer("log7", "log", "log",9)
fun.results_replacer("log8", "log", "log",10)

----EXCLUSIVE RECIPES----
