--TECHNOLOGY--

--BUILDINDS--
RECIPE('plankton-farm'):remove_unlock('vanadium-processing'):add_unlock('microbiology-mk01'):remove_ingredient("niobium-plate"):remove_ingredient("storage-tank"):add_ingredient({type = "item", name = "pipe", amount = 20}):add_ingredient({type = "item", name = "iron-gear-wheel", amount = 25}):subgroup_order('py-alienlife-buildings-others', 'b')
RECIPE('genlab'):remove_unlock('fusion-mk01'):remove_unlock('nano-tech')
RECIPE('bio-reactor'):remove_unlock('helium-processing'):remove_unlock('nano-tech'):add_unlock('genetics-mk01'):replace_ingredient("gasturbinemk02", "gasturbinemk01"):replace_ingredient("super-alloy", "lead-plate"):replace_ingredient("advanced-circuit", "electronic-circuit"):subgroup_order("py-alienlife-buildings-others", "a")
RECIPE('ralesia-plantation-mk03'):add_ingredient({type = "item", name = "super-alloy", amount = 10}):add_ingredient({type = "item", name = "boron-carbide", amount = 20})
RECIPE('ralesia-plantation-mk04'):add_ingredient({type = "item", name = "nbti-alloy", amount = 15}):add_ingredient({type = "item", name = "wall-shield", amount = 8}):add_ingredient({type = "item", name = "science-coating", amount = 1}):add_ingredient({type = "item", name = "control-unit", amount = 5})
RECIPE('xyhiphoe-pool'):remove_unlock('vanadium-processing'):add_unlock('water-invertebrates-mk03'):add_ingredient({type = "item", name = "nexelit-plate", amount = 20}):add_ingredient({type = "item", name = "iron-gear-wheel", amount = 40}):subgroup_order('py-alienlife-buildings-others', 'b')

----RECIPES----
RECIPE('phytoplankton'):remove_unlock('vanadium-processing'):add_unlock('microbiology-mk01'):subgroup_order('py-alienlife-plants', 'b')
RECIPE('log8'):change_category('fwf'):add_ingredient({type = "item", name = "wood-seedling", amount = 3}):subgroup_order("py-alienlife-plants", "a"):remove_unlock('vanadium-processing'):add_unlock('botany-mk02')
RECIPE('log7'):change_category('fwf'):add_ingredient({type = "item", name = "wood-seedling", amount = 3}):subgroup_order("py-alienlife-plants", "a"):remove_unlock('vanadium-processing'):add_unlock('botany-mk02')
RECIPE('zogna-bacteria'):add_ingredient({type = "fluid", name = "pressured-air", amount = 50})
RECIPE('bacteria-1'):remove_unlock('helium-processing'):add_unlock('microbiology-mk02'):subgroup_order('py-alienlife-genetics', 'b')

RECIPE('xyhiphoe-blood'):remove_unlock('vanadium-processing')

----EXCLUSIVE RECIPES----
