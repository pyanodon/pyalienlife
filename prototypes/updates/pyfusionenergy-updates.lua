--TECHNOLOGY--

--BUILDINDS--
RECIPE('plankton-farm'):remove_unlock('vanadium-processing'):add_unlock('microbiology-mk01'):remove_ingredient("niobium-plate","storage-tank"):add_ingredient({type = "item", name = "pipe", amount = 20}):add_ingredient({type = "item", name = "iron-gear-wheel", amount = 25}):subgroup_order('py-alienlife-buildings', 'b')
----RECIPES----
RECIPE('phytoplankton'):remove_unlock('vanadium-processing'):add_unlock('microbiology-mk01'):subgroup_order('py-alienlife-plants', 'b')
----EXCLUSIVE RECIPES----
