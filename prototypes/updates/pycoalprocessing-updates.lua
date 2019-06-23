--BUILDINDS--
RECIPE('fawogae-plantation'):set_fields {enabled = false}:add_unlock('mycology-mk01')

-----RECIPES-----
RECIPE('fawogae'):set_fields {enabled = false}:add_unlock('mycology-mk01'):add_ingredient({type = "item", name = "fungal-substrate", amount = 1}):add_ingredient({type = "item", name = "fawogae-spore", amount = 1})

----EXCLUSIVE RECIPES----