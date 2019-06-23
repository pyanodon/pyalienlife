--BUILDINDS--
RECIPE('fawogae-plantation'):set_fields {enabled = false}:add_unlock('mycology-mk01')
RECIPE('botanical-nursery'):remove_unlock('coal-processing-1'):add_unlock('botany-mk01')
RECIPE('botanical-nursery-mk02'):remove_unlock('machines-mk02'):add_unlock('botany-mk02')
RECIPE('botanical-nursery-mk03'):remove_unlock('machines-mk03'):add_unlock('botany-mk03')
RECIPE('botanical-nursery-mk04'):remove_unlock('machines-mk04'):add_unlock('botany-mk04')

-----RECIPES-----
RECIPE('fawogae'):set_fields {enabled = false}:add_unlock('mycology-mk01'):add_ingredient({type = "item", name = "fungal-substrate", amount = 1}):add_ingredient({type = "item", name = "fawogae-spore", amount = 1})
RECIPE('log1'):change_category('fwf'):add_ingredient({type = "item", name = "wood-seedling", amount = 3})
RECIPE('log2'):change_category('fwf'):add_ingredient({type = "item", name = "wood-seedling", amount = 3})
RECIPE('log3'):change_category('fwf'):add_ingredient({type = "item", name = "wood-seedling", amount = 3})
RECIPE('log4'):change_category('fwf'):add_ingredient({type = "item", name = "wood-seedling", amount = 3})
RECIPE('log5'):change_category('fwf'):add_ingredient({type = "item", name = "wood-seedling", amount = 3})
RECIPE('log6'):change_category('fwf'):add_ingredient({type = "item", name = "wood-seedling", amount = 3})

----EXCLUSIVE RECIPES----