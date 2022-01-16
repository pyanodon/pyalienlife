local fun = require("prototypes/functions/functions")

--TECHNOLOGY--
TECHNOLOGY('coal-processing-3'):add_pack('py-science-pack-2')
TECHNOLOGY('energy-3'):add_pack('py-science-pack-2')
TECHNOLOGY('excavation-2'):add_pack('py-science-pack-2')
--TECHNOLOGY('fuel-production'):add_pack('py-science-pack-2')

--BUILDINDS--
ITEM("fawogae-plantation-mk02"):set("icon", "__pyalienlifegraphics__/graphics/icons/fawogae-plantation-mk02.png"):set_fields {icon_size = 64,}:subgroup_order("py-alienlife-buildings-mk02", "d")
ITEM("fawogae-plantation-mk03"):set("icon", "__pyalienlifegraphics__/graphics/icons/fawogae-plantation-mk03.png"):set_fields {icon_size = 64,}:subgroup_order("py-alienlife-buildings-mk03", "d")
ITEM("fawogae-plantation-mk04"):set("icon", "__pyalienlifegraphics__/graphics/icons/fawogae-plantation-mk04.png"):set_fields {icon_size = 64,}:subgroup_order("py-alienlife-buildings-mk04", "d")
RECIPE('fawogae-plantation-mk01'):set_fields {enabled = false}
RECIPE('fawogae-plantation-mk02'):add_unlock('mycology-mk02'):subgroup_order("py-alienlife-buildings-mk02", "b")
data.raw['assembling-machine']['fawogae-plantation-mk02'].crafting_speed = 0.1
data.raw['assembling-machine']['fawogae-plantation-mk02'].module_specification = {module_slots = 45}

RECIPE('fawogae-plantation-mk03'):add_unlock('mycology-mk03'):subgroup_order("py-alienlife-buildings-mk03", "b")
data.raw['assembling-machine']['fawogae-plantation-mk03'].crafting_speed = 0.1
data.raw['assembling-machine']['fawogae-plantation-mk03'].module_specification = {module_slots = 65}

RECIPE('fawogae-plantation-mk04'):add_unlock('mycology-mk04'):subgroup_order("py-alienlife-buildings-mk04", "b")
data.raw['assembling-machine']['fawogae-plantation-mk04'].crafting_speed = 0.1
data.raw['assembling-machine']['fawogae-plantation-mk04'].module_specification = {module_slots = 88}

RECIPE("borax-mine"):remove_unlock('energy-1'):set_fields{enabled = true}
RECIPE("washer"):remove_unlock('energy-1'):set_fields{enabled = true}

--RECIPES--
RECIPE("ralesia"):remove_unlock('ralesia')
RECIPE('bonemeal'):remove_unlock('ulric')

RECIPE('botanical-nursery'):remove_unlock('coal-processing-1'):subgroup_order("py-alienlife-buildings-mk01", "b"):set_fields {enabled = true}--:add_unlock('botany-mk01')
RECIPE('botanical-nursery-mk02'):remove_unlock('machines-mk02'):add_unlock('botany-mk02'):subgroup_order("py-alienlife-buildings-mk02", "b")
RECIPE('botanical-nursery-mk03'):remove_unlock('machines-mk03'):add_unlock('botany-mk03'):subgroup_order("py-alienlife-buildings-mk03", "b")
RECIPE('botanical-nursery-mk04'):remove_unlock('machines-mk04'):add_unlock('botany-mk04'):subgroup_order("py-alienlife-buildings-mk04", "b")
RECIPE('hpf'):remove_unlock('coal-processing-1'):set_fields {enabled = true}
RECIPE('ralesia-plantation-mk01'):remove_unlock('coal-processing-1')
--RECIPE('ralesia-plantation-mk02'):add_unlock('botany-mk02'):subgroup_order("py-alienlife-buildings-mk02", "e")
--RECIPE('ralesia-plantation-mk03'):add_unlock('botany-mk03'):subgroup_order("py-alienlife-buildings-mk03", "e")
--RECIPE('ralesia-plantation-mk04'):add_unlock('botany-mk04'):subgroup_order("py-alienlife-buildings-mk04", "e")
RECIPE('ulric-corral-mk01'):remove_unlock('coal-processing-1')
RECIPE('mukmoux-pasture'):remove_unlock('coal-processing-2')
ITEM("botanical-nursery"):set("icon", "__pyalienlifegraphics__/graphics/icons/botanical-nursery-mk01.png"):set_fields {icon_size = 64,}
ITEM("botanical-nursery-mk02"):set("icon", "__pyalienlifegraphics__/graphics/icons/botanical-nursery-mk02.png"):set_fields {icon_size = 64,}
ITEM("botanical-nursery-mk03"):set("icon", "__pyalienlifegraphics__/graphics/icons/botanical-nursery-mk03.png"):set_fields {icon_size = 64,}
ITEM("botanical-nursery-mk04"):set("icon", "__pyalienlifegraphics__/graphics/icons/botanical-nursery-mk04.png"):set_fields {icon_size = 64,}

-----RECIPES-----
FLUID('carbon-dioxide'):subgroup_order("py-alienlife-items", "a")
ITEM('ralesia-seeds'):subgroup_order("py-alienlife-ralesia", "a")
ITEM('bonemeal'):subgroup_order("py-alienlife-items", "a")
ITEM('organics'):subgroup_order("py-alienlife-items", "a")
ITEM('mukmoux-fat'):subgroup_order("py-alienlife-items", "a")
ITEM('fawogae-substrate'):subgroup_order("py-alienlife-items", "a")
RECIPE('fawogae'):set_fields {enabled = false}
RECIPE('log1'):change_category('fwf'):add_ingredient({type = "item", name = "wood-seedling", amount = 3}):subgroup_order("py-alienlife-plants", "a"):remove_unlock('coal-processing-1'):add_unlock('botany-mk01')
RECIPE('log2'):change_category('fwf'):add_ingredient({type = "item", name = "wood-seedling", amount = 3}):subgroup_order("py-alienlife-plants", "a"):remove_unlock('coal-processing-1'):add_unlock('botany-mk01')
RECIPE('log3'):change_category('fwf'):add_ingredient({type = "item", name = "wood-seedling", amount = 3}):subgroup_order("py-alienlife-plants", "a"):remove_unlock('coal-processing-1'):add_unlock('botany-mk01')
RECIPE('log4'):change_category('fwf'):add_ingredient({type = "item", name = "wood-seedling", amount = 3}):subgroup_order("py-alienlife-plants", "a"):remove_unlock('coal-processing-2'):add_unlock('botany-mk02')
RECIPE('log5'):change_category('fwf'):add_ingredient({type = "item", name = "wood-seedling", amount = 3}):subgroup_order("py-alienlife-plants", "a"):remove_unlock('coal-processing-2'):add_unlock('botany-mk02')
RECIPE('log6'):change_category('fwf'):add_ingredient({type = "item", name = "wood-seedling", amount = 3}):subgroup_order("py-alienlife-plants", "a"):remove_unlock('coal-processing-2'):add_unlock('botany-mk02')
RECIPE('log-wood'):subgroup_order("py-alienlife-recipes", "a"):remove_unlock('coal-processing-1'):add_unlock('botany-mk01')
RECIPE('fawogae-substrate'):remove_ingredient("fawogae"):add_ingredient({type = "item", name = "petri-dish-bacteria", amount = 2}):add_ingredient({type = "item", name = "cellulose", amount = 3}):replace_ingredient("coke","moss"):subgroup_order("py-alienlife-recipes", "a")
RECIPE('bio-sample01'):add_ingredient({type = "item", name = "petri-dish-bacteria", amount = 2}):add_ingredient({type = "item", name = "native-flora", amount = 12})

RECIPE('ralesia-seeds'):subgroup_order("py-alienlife-ralesia", "a"):change_category('nursery'):replace_ingredient("ralesia","ralesias")
RECIPE('chemical-science-pack'):add_ingredient({type = "item", name = "alien-sample-02", amount = 1})
RECIPE('filtration-media'):add_ingredient({type = "item", name = "micro-fiber", amount = 2})
RECIPE('flask'):remove_ingredient("wood"):add_ingredient({type = "item", name = "stopper", amount = 4}):remove_ingredient("molten-glass"):add_ingredient({type = "fluid", name = "molten-glass", amount = 100})
RECIPE('aromatics-to-plastic'):change_category('biofactory'):remove_ingredient("aromatics"):add_ingredient({type = "fluid", name = "aromatics", amount = 50}):remove_ingredient("syngas"):add_ingredient({type = "fluid", name = "syngas", amount = 100})

RECIPE('mukmoux-fat'):remove_unlock('coal-processing-2')
RECIPE('log-organics'):remove_unlock('coal-processing-2')
RECIPE('organics-from-wood'):remove_unlock('coal-processing-2')
RECIPE('soil-separation'):remove_unlock('separation')

fun.results_replacer("log2", "log", "log",4)
fun.results_replacer("log4", "log", "log",5)
fun.results_replacer("log3", "log", "log",6)
fun.results_replacer("log5", "log", "log",7)
fun.results_replacer("log6", "log", "log",8)

----EXCLUSIVE RECIPES----

RECIPE {
    type = "recipe",
    name = "soil-separation-2",
    category = "solid-separator",
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = "item", name = "soil", amount = 20}
    },
    results = {
        {type = "item", name = "sand", amount = 13},
        {type = "item", name = "coarse", amount = 3},
        {type = "item", name = "limestone", amount = 2},
        {type = "item", name = "biomass", amount = 3}
    },
    main_product = "sand",
    icon = "__pycoalprocessinggraphics__/graphics/icons/soil-separation.png",
    icon_size = 32,
    subgroup = "py-items-class",
    order = "e"
}:add_unlock("separation")
