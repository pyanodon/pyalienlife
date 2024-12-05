TECHNOLOGY("vanadium-processing"):remove_prereq("xyhiphoe")
TECHNOLOGY("wood-processing-3"):remove_prereq("xyhiphoe")
TECHNOLOGY("boron"):add_pack("py-science-pack-1")
TECHNOLOGY("coated-container"):add_pack("py-science-pack-1"):add_pack("py-science-pack-2"):add_pack("py-science-pack-3")
--TECHNOLOGY("vanadium-processing"):add_pack("py-science-pack-3")

--BUILDINDS--
RECIPE("plankton-farm"):remove_unlock("vanadium-processing"):add_unlock("microbiology-mk01"):remove_ingredient("niobium-plate"):add_ingredient {type = "item", name = "pipe", amount = 20}:add_ingredient {type = "item", name = "small-parts-01", amount = 25}:subgroup_order("py-alienlife-buildings-mk01", "p")
RECIPE("plankton-farm-mk02"):remove_unlock("machines-mk03"):add_unlock("biotech-machines-mk02"):subgroup_order("py-alienlife-buildings-mk02", "p")
RECIPE("plankton-farm-mk03"):remove_unlock("macgines-mk04"):add_unlock("biotech-machines-mk03"):subgroup_order("py-alienlife-buildings-mk03", "p")
RECIPE("plankton-farm-mk04"):remove_unlock("machines-mk05"):add_unlock("biotech-machines-mk04"):subgroup_order("py-alienlife-buildings-mk04", "p")
ITEM("plankton-farm"):subgroup_order("py-alienlife-buildings-mk01", "p")
ITEM("plankton-farm-mk02"):subgroup_order("py-alienlife-buildings-mk02", "p")
ITEM("plankton-farm-mk03"):subgroup_order("py-alienlife-buildings-mk03", "p")
ITEM("plankton-farm-mk04"):subgroup_order("py-alienlife-buildings-mk04", "p")
RECIPE("genlab-mk01"):remove_unlock("ethanolamine"):remove_unlock("nano-tech")
RECIPE("ralesia-plantation-mk03"):add_ingredient {type = "item", name = "super-alloy", amount = 10}:add_ingredient {type = "item", name = "boron-carbide", amount = 20}
RECIPE("ralesia-plantation-mk04"):add_ingredient {type = "item", name = "nbti-alloy", amount = 15}:add_ingredient {type = "item", name = "wall-shield", amount = 8}:add_ingredient {type = "item", name = "science-coating", amount = 1}
RECIPE("xyhiphoe-pool-mk01"):remove_unlock("xyhiphoe")
RECIPE("xyhiphoe-pool-mk02"):remove_unlock("machines-mk02")
RECIPE("xyhiphoe-pool-mk03"):remove_unlock("machines-mk03")
RECIPE("xyhiphoe-pool-mk04"):remove_unlock("machines-mk04")

RECIPE("chemical-plant-mk03"):add_ingredient {type = "item", name = "super-alloy", amount = 10}:add_ingredient {type = "item", name = "boron-carbide", amount = 20}
RECIPE("chemical-plant-mk04"):add_ingredient {type = "item", name = "nbti-alloy", amount = 15}:add_ingredient {type = "item", name = "wall-shield", amount = 8}

----RECIPES----
RECIPE("phytoplankton"):remove_unlock("vanadium-processing"):add_unlock("microbiology-mk01"):subgroup_order("py-alienlife-plants", "b")
RECIPE("log8"):add_ingredient {type = "item", name = "wood-seedling", amount = 3}:subgroup_order("py-alienlife-plants", "a").category = "fwf"
RECIPE("log7"):add_ingredient {type = "item", name = "wood-seedling", amount = 3}:subgroup_order("py-alienlife-plants", "a").category = "fwf"
RECIPE("zogna-bacteria"):add_ingredient {type = "fluid", name = "pressured-air", amount = 50}
RECIPE("bacteria-1"):remove_unlock("ethanolamine"):add_unlock("kmauts"):subgroup_order("py-alienlife-genetics", "b"):add_ingredient {type = "item", name = "petri-dish", amount = 3}
RECIPE("serine"):remove_unlock("helium-processing"):add_unlock("kmauts"):subgroup_order("py-alienlife-kmauts", "b"):add_ingredient {type = "item", name = "tendon", amount = 5}:add_ingredient {type = "fluid", name = "zogna-bacteria", amount = 40}:remove_ingredient("kmauts-ration").category = "bio-reactor"
RECIPE("serine").allow_productivity = true
ITEM("serine"):subgroup_order("py-alienlife-kmauts", "b")
ITEM("kmauts-ration"):subgroup_order("py-alienlife-food", "b")
RECIPE("nenbit-matrix"):add_ingredient {type = "item", name = "nano-cellulose", amount = 3}
RECIPE("science-coating"):add_ingredient {type = "item", name = "chitosan", amount = 5}

RECIPE("steam-heating"):remove_unlock("fusion-mk01"):add_unlock("phytomining")
RECIPE("sc-wire"):add_ingredient {type = "item", name = "agzn-alloy", amount = 1}
RECIPE("bio-reactor-mk01"):remove_unlock("ethanolamine")

RECIPE("wastewater-filtration"):add_unlock("filtration")
RECIPE("arthropod-blood"):remove_unlock("xyhiphoe")
RECIPE("vanabins"):remove_ingredient("arthropod-blood"):add_ingredient {type = "fluid", name = "arthropod-blood", amount = 150}
RECIPE("kmauts-enclosure-mk01"):remove_unlock("helium-processing") --substituir por versao pyal
RECIPE("kmauts-enclosure-mk02"):remove_unlock("machines-mk02")
RECIPE("kmauts-enclosure-mk03"):remove_unlock("machines-mk03")
RECIPE("kmauts-enclosure-mk04"):remove_unlock("machines-mk04")
RECIPE("kmauts-ration"):subgroup_order("py-alienlife-food", "b"):remove_unlock("helium-processing"):add_unlock("kmauts-mk02"):add_ingredient {type = "item", name = "meat", amount = 10}
    :add_ingredient {type = "item", name = "yotoi-seeds", amount = 10}:add_ingredient {type = "item", name = "stone", amount = 10}:replace_ingredient("stone", "seaweed")
    :add_ingredient {type = "item", name = "stone", amount = 10}:replace_ingredient("stone", "moss")
RECIPE("control-unit"):replace_ingredient("advanced-circuit", "processing-unit")
RECIPE("production-science-pack"):add_ingredient {type = "item", name = "alien-enzymes", amount = 1}
RECIPE("super-alloy"):add_ingredient {type = "item", name = "cobalt-oxide", amount = 2}
RECIPE("control-unit").category = "research"
RECIPE("sc-unit").category = "research"
RECIPE("sc-wire").category = "research"


RECIPE("nexelit-matrix"):remove_unlock("nenbit-matrix"):add_unlock("neuro-electronics-mk01")

data.raw["recipe-category"]["xyhiphoe"].allowed_module_categories = {"xyhiphoe"}
data.raw["recipe-category"]["xyhiphoe"].modules_required = true

RECIPE("log7"):replace_result("log", "log", 9)
RECIPE("log8"):replace_result("log", "log", 10)

RECIPE("xyhiphoe-hydrocyclone"):remove_unlock("advanced-mining-facilities"):add_unlock("biotech-mk04")
RECIPE("arthropod-blood-to-organic-solvent"):remove_unlock("biotech-mk03"):add_unlock("biotech-mk02")
