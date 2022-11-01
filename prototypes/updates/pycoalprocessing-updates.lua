local FUN = require("__pycoalprocessing__/prototypes/functions/functions")

--TECHNOLOGY--
-- TECHNOLOGY('coal-processing-3'):add_pack('py-science-pack-3')
-- TECHNOLOGY('energy-3'):add_pack('py-science-pack-3')
-- TECHNOLOGY('excavation-2'):add_pack('py-science-pack-3')
--TECHNOLOGY('fuel-production'):add_pack('py-science-pack-3')

TECHNOLOGY("wood-processing"):set_fields{dependencies = {"moss-mk01"}}
-- TECHNOLOGY("py-asphalt"):add_pack("py-science-pack-1")
TECHNOLOGY("cooling-tower-1"):add_pack("py-science-pack-1")
TECHNOLOGY("energy-1"):add_pack("py-science-pack-1")
TECHNOLOGY("py-burner"):add_pack("py-science-pack-1")
TECHNOLOGY("py-warehouse-research"):add_pack("py-science-pack-1")
TECHNOLOGY("fluid-processing-machines-1"):add_pack("py-science-pack-1"):remove_pack("logistic-science-pack")
TECHNOLOGY("lab-instrument"):add_pack("py-science-pack-1")
TECHNOLOGY("railway-mk01"):add_pack("py-science-pack-1")
TECHNOLOGY("filtration-mk02"):add_pack("py-science-pack-2")
TECHNOLOGY("mukmoux"):add_pack("py-science-pack-2")
TECHNOLOGY("cooling-tower-2"):add_pack("py-science-pack-2")
TECHNOLOGY("railway-mk02"):add_pack("py-science-pack-2")
TECHNOLOGY("energy-2"):add_pack("py-science-pack-2")
TECHNOLOGY("radars-mk02"):add_pack("py-science-pack-2")
TECHNOLOGY("kevlar"):add_pack("py-science-pack-2")
TECHNOLOGY("fine-electronics"):add_pack("py-science-pack-2")
TECHNOLOGY("advanced-electronics"):add_pack("py-science-pack-2")

if not mods["pyhightech"] then
    TECHNOLOGY("mining-productivity-1"):add_pack("py-science-pack-2")
end

if not mods["pyalternativeenergy"] then
    TECHNOLOGY("energy-3"):add_pack("py-science-pack-2")
end

TECHNOLOGY("railway-mk03"):add_pack("py-science-pack-3")
TECHNOLOGY("filtration-mk02"):add_pack("py-science-pack-3")
TECHNOLOGY("methanol-processing-2"):add_pack("py-science-pack-3")

--BUILDINDS--
ITEM("fawogae-plantation-mk02"):set("icon", "__pyalienlifegraphics__/graphics/icons/fawogae-plantation-mk02.png"):set_fields {icon_size = 64,}:subgroup_order("py-alienlife-buildings-mk02", "d")
ITEM("fawogae-plantation-mk03"):set("icon", "__pyalienlifegraphics__/graphics/icons/fawogae-plantation-mk03.png"):set_fields {icon_size = 64,}:subgroup_order("py-alienlife-buildings-mk03", "d")
ITEM("fawogae-plantation-mk04"):set("icon", "__pyalienlifegraphics__/graphics/icons/fawogae-plantation-mk04.png"):set_fields {icon_size = 64,}:subgroup_order("py-alienlife-buildings-mk04", "d")
RECIPE('fawogae-plantation-mk01'):set_fields {enabled = false}
RECIPE('fawogae-plantation-mk02'):add_unlock('mycology-mk03'):subgroup_order("py-alienlife-buildings-mk02", "b")
data.raw['assembling-machine']['fawogae-plantation-mk02'].crafting_speed = 0.1
data.raw['assembling-machine']['fawogae-plantation-mk02'].module_specification = {module_slots = 45}

RECIPE('fawogae-plantation-mk03'):add_unlock('mycology-mk04'):subgroup_order("py-alienlife-buildings-mk03", "b")
data.raw['assembling-machine']['fawogae-plantation-mk03'].crafting_speed = 0.1
data.raw['assembling-machine']['fawogae-plantation-mk03'].module_specification = {module_slots = 65}

RECIPE('fawogae-plantation-mk04'):add_unlock('mycology-mk05'):subgroup_order("py-alienlife-buildings-mk04", "b")
data.raw['assembling-machine']['fawogae-plantation-mk04'].crafting_speed = 0.1
data.raw['assembling-machine']['fawogae-plantation-mk04'].module_specification = {module_slots = 88}

RECIPE("borax-mine"):remove_unlock('energy-1'):set_fields{enabled = true}
RECIPE("washer"):remove_unlock('energy-1'):set_fields{enabled = true}

RECIPE("py-gas-vent"):add_unlock("coal-processing-1"):set_enabled(false)
RECIPE("tailings-pond"):add_unlock("coal-processing-1"):set_enabled(false)

table.insert(data.raw["assembling-machine"]["wpu"].crafting_categories, "wpu-handcrafting")
table.insert(data.raw["assembling-machine"]["wpu-mk02"].crafting_categories, "wpu-handcrafting")
table.insert(data.raw["assembling-machine"]["wpu-mk03"].crafting_categories, "wpu-handcrafting")
table.insert(data.raw["assembling-machine"]["wpu-mk04"].crafting_categories, "wpu-handcrafting")

--RECIPES--
RECIPE("ralesia"):remove_unlock('ralesia')
RECIPE('bonemeal'):remove_unlock('ulric')
RECIPE('coal-fawogae'):remove_unlock('coal-processing-1'):add_unlock('fawogae-mk01')

RECIPE("automated-factory-mk01"):remove_unlock("fast-inserter"):add_unlock("automation-2")
RECIPE('botanical-nursery'):remove_unlock('wood-processing'):subgroup_order("py-alienlife-buildings-mk01", "b"):add_unlock('botany-mk01')
RECIPE('botanical-nursery-mk02'):remove_unlock('machines-mk02'):add_unlock('botany-mk02'):subgroup_order("py-alienlife-buildings-mk02", "b")
RECIPE('botanical-nursery-mk03'):remove_unlock('machines-mk03'):add_unlock('botany-mk03'):subgroup_order("py-alienlife-buildings-mk03", "b")
RECIPE('botanical-nursery-mk04'):remove_unlock('machines-mk04'):add_unlock('botany-mk04'):subgroup_order("py-alienlife-buildings-mk04", "b")
RECIPE('hpf'):remove_unlock('coal-processing-1'):set_fields {enabled = true}
RECIPE('ralesia-plantation-mk01'):remove_unlock('ralesia')
--RECIPE('ralesia-plantation-mk02'):add_unlock('botany-mk02'):subgroup_order("py-alienlife-buildings-mk02", "e")
--RECIPE('ralesia-plantation-mk03'):add_unlock('botany-mk03'):subgroup_order("py-alienlife-buildings-mk03", "e")
--RECIPE('ralesia-plantation-mk04'):add_unlock('botany-mk04'):subgroup_order("py-alienlife-buildings-mk04", "e")
RECIPE('ulric-corral-mk01'):remove_unlock('coal-processing-1')
RECIPE('mukmoux-pasture'):remove_unlock('mukmoux')
ITEM("botanical-nursery"):set("icon", "__pyalienlifegraphics__/graphics/icons/botanical-nursery-mk01.png"):set_fields {icon_size = 64,}
ITEM("botanical-nursery-mk02"):set("icon", "__pyalienlifegraphics__/graphics/icons/botanical-nursery-mk02.png"):set_fields {icon_size = 64,}
ITEM("botanical-nursery-mk03"):set("icon", "__pyalienlifegraphics__/graphics/icons/botanical-nursery-mk03.png"):set_fields {icon_size = 64,}
ITEM("botanical-nursery-mk04"):set("icon", "__pyalienlifegraphics__/graphics/icons/botanical-nursery-mk04.png"):set_fields {icon_size = 64,}

RECIPE("automated-factory-mk01"):replace_ingredient("fast-inserter", "inserter")

-----RECIPES-----
FLUID('carbon-dioxide'):subgroup_order("py-alienlife-items", "a")
ITEM('ralesia-seeds'):subgroup_order("py-alienlife-ralesia", "a")
ITEM('bonemeal'):subgroup_order("py-alienlife-items", "a")
ITEM('organics'):subgroup_order("py-alienlife-items", "a")
ITEM('mukmoux-fat'):subgroup_order("py-alienlife-items", "a")
ITEM('fawogae-substrate'):subgroup_order("py-alienlife-items", "a")
RECIPE('fawogae'):set_fields {enabled = false}
RECIPE('log1'):change_category('fwf'):add_ingredient({type = "item", name = "wood-seedling", amount = 3}):subgroup_order("py-alienlife-plants", "a")
RECIPE('log2'):change_category('fwf'):add_ingredient({type = "item", name = "wood-seedling", amount = 3}):subgroup_order("py-alienlife-plants", "a")
RECIPE('log3'):change_category('fwf'):add_ingredient({type = "item", name = "wood-seedling", amount = 3}):subgroup_order("py-alienlife-plants", "a")
RECIPE('log4'):change_category('fwf'):add_ingredient({type = "item", name = "wood-seedling", amount = 3}):subgroup_order("py-alienlife-plants", "a")
RECIPE('log5'):change_category('fwf'):add_ingredient({type = "item", name = "wood-seedling", amount = 3}):subgroup_order("py-alienlife-plants", "a")
RECIPE('log6'):change_category('fwf'):add_ingredient({type = "item", name = "wood-seedling", amount = 3}):subgroup_order("py-alienlife-plants", "a")
RECIPE('log-wood'):subgroup_order("py-alienlife-recipes", "a")
RECIPE('fawogae-substrate'):remove_ingredient("fawogae"):add_ingredient({type = "item", name = "petri-dish-bacteria", amount = 2}):add_ingredient({type = "item", name = "cellulose", amount = 3}):replace_ingredient("coke","moss"):subgroup_order("py-alienlife-recipes", "a")
RECIPE('bio-sample01'):add_ingredient({type = "item", name = "petri-dish-bacteria", amount = 2}):add_ingredient({type = "item", name = "native-flora", amount = 12})
RECIPE('fawogae-substrate'):add_unlock("basic-substrate"):set_enabled(false)

RECIPE("wpu"):replace_ingredient("wood", {type = "item", name = "log", amount = "5"}):remove_unlock("wood-processing"):set_enabled(true)
RECIPE("log-wood"):remove_unlock("wood-processing"):set_enabled(true):change_category("wpu-handcrafting"):set_fields{always_show_made_in = true}
RECIPE("botanical-nursery"):replace_ingredient("wood", {type = "item", name = "planter-box", amount = "10"})

RECIPE('ralesia-seeds'):subgroup_order("py-alienlife-ralesia", "a"):change_category('nursery'):replace_ingredient("ralesia","ralesias")
--RECIPE('chemical-science-pack'):add_ingredient({type = "item", name = "alien-sample-02", amount = 1})
RECIPE('filtration-media'):add_ingredient({type = "item", name = "micro-fiber", amount = 2})
RECIPE('flask'):remove_ingredient("wood"):add_ingredient({type = "item", name = "stopper", amount = 4}):remove_ingredient("molten-glass"):add_ingredient({type = "fluid", name = "molten-glass", amount = 100, fluidbox_index = 2})
RECIPE('hotair-flask'):remove_ingredient("wood"):add_ingredient({type = "item", name = "stopper", amount = 4}):remove_ingredient("molten-glass"):add_ingredient({type = "fluid", name = "molten-glass", amount = 100, fluidbox_index = 2})
RECIPE('aromatics-to-plastic'):change_category('biofactory'):remove_ingredient("aromatics"):add_ingredient({type = "fluid", name = "aromatics", amount = 50}):remove_ingredient("syngas"):add_ingredient({type = "fluid", name = "syngas", amount = 100})
RECIPE("oil-refinery"):remove_unlock('plastics')
RECIPE("flask"):add_unlock("py-science-pack-mk01"):set_enabled(false)

RECIPE('mukmoux-fat'):remove_unlock('mukmoux')
RECIPE('log-organics'):remove_unlock('wood-processing-2')
RECIPE('organics-from-wood'):remove_unlock('wood-processing')
RECIPE('soil-separation'):remove_unlock('separation')
RECIPE("ground-sample01"):remove_unlock("logistic-science-pack"):add_unlock("mycology-mk01")
RECIPE("oleochemicals"):remove_unlock("mukmoux"):add_unlock("coal-processing-2")
RECIPE("dedicated-oleochemicals"):remove_unlock("mukmoux"):add_unlock("coal-processing-2")
RECIPE("iron-oxide-smelting"):add_unlock("coal-processing-1"):set_enabled(false)
RECIPE("extract-limestone-01"):add_unlock("coal-processing-1"):set_enabled(false)
RECIPE("hpf"):add_unlock("coal-processing-1"):set_enabled(false)
RECIPE("washer"):add_unlock("soil-washing"):set_enabled(false)
RECIPE("muddy-sludge"):add_unlock("soil-washing"):set_enabled(false)
RECIPE("soil-washing"):add_unlock("soil-washing"):set_enabled(false)

RECIPE("tpa"):replace_ingredient("nichrome", "cobalt-extract"):add_ingredient{type = "item", name = "yotoi-fruit", amount = 1}:add_ingredient{type = "fluid", name = "manure-bacteria", amount = 20}
RECIPE("optical-fiber"):add_ingredient{type = "item", name = "photophore", amount = 1}

RECIPE("automation-science-pack"):clear_ingredients():add_ingredient({type="item", name="planter-box", amount=2}):add_ingredient({type="item", name="native-flora", amount=10}):add_ingredient({type="item", name="electronic-circuit", amount=2})
RECIPE("automation-science-pack"):set_fields{ energy_required = 5, results = {{type = "item", name = "automation-science-pack", amount = 1}} }
RECIPE("soil-extractormk01"):remove_ingredient("tinned-cable")

RECIPE('py-construction-robot-01'):add_ingredient({type = 'fluid', name = 'fish-oil', amount = 50})
RECIPE('py-logistic-robot-01'):add_ingredient({type = 'fluid', name = 'fish-oil', amount = 50})

RECIPE("distilator"):add_unlock("coal-processing-1"):set_enabled(false)
RECIPE("coal-gas"):add_unlock("coal-processing-1"):set_enabled(false)
RECIPE("coal-gas-from-wood"):add_unlock("coal-processing-1"):set_enabled(false)
RECIPE("coal-gas-from-coke"):add_unlock("coal-processing-1"):set_enabled(false)
RECIPE("distilled-raw-coal"):add_unlock("coal-processing-1"):set_enabled(false)

RECIPE("solid-separator"):remove_unlock("separation"):add_unlock("ash-separation")
RECIPE("ash-separation"):remove_unlock("separation"):add_unlock("ash-separation")
RECIPE("soot-separation"):remove_unlock("separation"):add_unlock("ash-separation")

FUN.results_replacer("log2", "log", "log",4)
FUN.results_replacer("log4", "log", "log",5)
FUN.results_replacer("log3", "log", "log",6)
FUN.results_replacer("log5", "log", "log",7)
FUN.results_replacer("log6", "log", "log",8)

data.raw["recipe-category"]["fawogae"].allowed_module_categories = { "fawogae" }
data.raw["recipe-category"]["fawogae"].modules_required = true
data.raw["recipe-category"]["mukmoux"].allowed_module_categories = { "mukmoux" }
data.raw["recipe-category"]["mukmoux"].modules_required = true
data.raw["recipe-category"]["ralesia"].allowed_module_categories = { "ralesia" }
data.raw["recipe-category"]["ralesia"].modules_required = true
data.raw["recipe-category"]["ulric"].allowed_module_categories = { "ulric" }
data.raw["recipe-category"]["ulric"].modules_required = true

data:extend {
    {
        type = "recipe-category",
        name = "rc-mukmoux",
        allowed_module_categories = { "mukmoux" },
    },
    {
        type = "recipe-category",
        name = "rc-ulric",
        allowed_module_categories = { "ulric" },
    },
}