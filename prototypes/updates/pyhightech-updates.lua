----BUILDINDS----
RECIPE('ralesia-plantation-mk03'):add_ingredient({type = "item", name = "biopolymer", amount = 15}):add_ingredient({type = "item", name = "carbon-aerogel", amount = 20})
RECIPE('ralesia-plantation-mk04'):replace_ingredient("control-unit", "intelligent-unit"):add_ingredient({type = "item", name = "superconductor-servomechanims", amount = 5}):add_ingredient({type = "item", name = "nv-center", amount = 2})
RECIPE('auog-paddock'):subgroup_order("py-alienlife-buildings-others", "a")
----RECIPES----
RECIPE('fungal-substrate'):add_ingredient({type = "item", name = "urea", amount = 3})
RECIPE('log7-2'):change_category('fwf'):add_ingredient({type = "item", name = "wood-seedling", amount = 3})
RECIPE('urea'):replace_ingredient("fawogae", "seaweed")

----EXCLUSIVE RECIPES----