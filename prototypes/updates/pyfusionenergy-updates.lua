--TECHNOLOGY--

--BUILDINDS--
RECIPE('plankton-farm'):remove_unlock('vanadium-processing'):add_unlock('microbiology-mk01'):remove_ingredient("niobium-plate","storage-tank"):add_ingredient({type = "item", name = "pipe", amount = 20}):add_ingredient({type = "item", name = "iron-gear-wheel", amount = 25}):subgroup_order('py-alienlife-buildings-others', 'b')
RECIPE('genlab'):remove_unlock('fusion-mk01'):remove_unlock('nano-tech')
----RECIPES----
RECIPE('phytoplankton'):remove_unlock('vanadium-processing'):add_unlock('microbiology-mk01'):subgroup_order('py-alienlife-plants', 'b')
RECIPE('log8'):change_category('fwf'):add_ingredient({type = "item", name = "wood-seedling", amount = 3})
----EXCLUSIVE RECIPES----
