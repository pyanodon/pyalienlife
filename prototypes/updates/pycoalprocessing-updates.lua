ITEM("automation-science-pack", "tool"):set("icon", "__pyalienlifegraphics3__/graphics/icons/automation-science-pack.png")


TECHNOLOGY("wood-processing"):set_fields {dependencies = {"moss-mk01"}}
TECHNOLOGY("cooling-tower-1"):add_pack("py-science-pack-1")
TECHNOLOGY("energy-1"):add_pack("py-science-pack-1")
TECHNOLOGY("py-burner"):add_pack("py-science-pack-1")
TECHNOLOGY("py-warehouse-research"):add_pack("py-science-pack-1")
TECHNOLOGY("fluid-processing-machines-1"):remove_pack("logistic-science-pack")
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
TECHNOLOGY("advanced-circuit"):add_pack("py-science-pack-2")
TECHNOLOGY("nexelit-mk01"):add_prereq("titanium-mk01"):add_prereq("lead-mk01")
TECHNOLOGY("artillery-2"):add_pack("py-science-pack-3")

if not mods["pyhightech"] then
    TECHNOLOGY("mining-productivity-1"):add_pack("py-science-pack-2")
end

if not mods["pyalternativeenergy"] then
    TECHNOLOGY("energy-3"):add_pack("py-science-pack-2")
end

if data.raw.technology["railway-mk03"] then TECHNOLOGY("railway-mk03"):add_pack("py-science-pack-3") end
TECHNOLOGY("filtration-mk02"):add_pack("py-science-pack-3")
TECHNOLOGY("methanol-processing-2"):add_pack("py-science-pack-3")

TECHNOLOGY("electric-energy-accumulators"):set_fields {prerequisites = {}}:set_fields {dependencies = {}}:add_pack("py-science-pack-1"):remove_pack("logistic-science-pack")

RECIPE("accumulator"):remove_ingredient("battery"):add_ingredient {type = "item", name = "battery", amount = 30}

--BUILDINDS--

RECIPE("borax-mine"):remove_unlock("energy-1").enabled = true
RECIPE("washer"):remove_unlock("energy-1").enabled = true
RECIPE("py-gas-vent"):add_unlock("coal-processing-1").enabled = false
RECIPE("tailings-pond"):add_unlock("coal-processing-1").enabled = false

table.insert(data.raw["assembling-machine"]["wpu"].crafting_categories, "wpu-handcrafting")
table.insert(data.raw["assembling-machine"]["wpu-mk02"].crafting_categories, "wpu-handcrafting")
table.insert(data.raw["assembling-machine"]["wpu-mk03"].crafting_categories, "wpu-handcrafting")
table.insert(data.raw["assembling-machine"]["wpu-mk04"].crafting_categories, "wpu-handcrafting")

data.raw.lab.lab.module_slots = 0
data.raw.lab.lab.allowed_effects = {"consumption", "productivity", "pollution"}
data.raw.lab.lab.allowed_module_categories = {"vatbrain"}

--RECIPES--
RECIPE("ralesia"):remove_unlock("ralesia")
RECIPE("bonemeal"):remove_unlock("ulric")
RECIPE("coal-fawogae"):remove_unlock("coal-processing-1"):add_unlock("fawogae-mk01")

RECIPE("automated-factory-mk01"):remove_unlock("fast-inserter"):add_unlock("automation-2")
RECIPE("botanical-nursery"):remove_unlock("wood-processing"):add_unlock("botany-mk01")
RECIPE("botanical-nursery-mk02"):remove_unlock("machines-mk03"):add_unlock("botany-mk02")
RECIPE("botanical-nursery-mk03"):remove_unlock("machines-mk04"):add_unlock("botany-mk03")
RECIPE("botanical-nursery-mk04"):remove_unlock("machines-mk05"):add_unlock("botany-mk04")
RECIPE("hpf"):remove_unlock("coal-processing-1"):set_fields {enabled = true}
RECIPE("ulric-corral-mk01"):remove_unlock("coal-processing-1")
ITEM("botanical-nursery"):set("icon", "__pyalienlifegraphics__/graphics/icons/botanical-nursery-mk01.png"):set_fields {icon_size = 64,}:subgroup_order("py-alienlife-buildings-mk01", "b")
ITEM("botanical-nursery-mk02"):set("icon", "__pyalienlifegraphics__/graphics/icons/botanical-nursery-mk02.png"):set_fields {icon_size = 64,}:subgroup_order("py-alienlife-buildings-mk02", "b")
ITEM("botanical-nursery-mk03"):set("icon", "__pyalienlifegraphics__/graphics/icons/botanical-nursery-mk03.png"):set_fields {icon_size = 64,}:subgroup_order("py-alienlife-buildings-mk03", "b")
ITEM("botanical-nursery-mk04"):set("icon", "__pyalienlifegraphics__/graphics/icons/botanical-nursery-mk04.png"):set_fields {icon_size = 64,}:subgroup_order("py-alienlife-buildings-mk04", "b")

RECIPE("automated-factory-mk01"):replace_ingredient("fast-inserter", "inserter")

-----RECIPES-----
FLUID("carbon-dioxide"):subgroup_order("py-alienlife-items", "a")
ITEM("ralesia-seeds"):subgroup_order("py-alienlife-ralesia", "a")
ITEM("bonemeal"):subgroup_order("py-alienlife-items", "a")
ITEM("organics"):subgroup_order("py-alienlife-items", "a")
ITEM("mukmoux-fat"):subgroup_order("py-alienlife-items", "a")
ITEM("fawogae-substrate"):subgroup_order("py-alienlife-items", "a")
RECIPE("fawogae"):set_fields {enabled = false}
RECIPE("log1"):add_ingredient {type = "item", name = "wood-seedling", amount = 3}:subgroup_order("py-alienlife-plants", "a").category = "fwf"
RECIPE("log2"):add_ingredient {type = "item", name = "wood-seedling", amount = 3}:subgroup_order("py-alienlife-plants", "a").category = "fwf"
RECIPE("log3"):add_ingredient {type = "item", name = "wood-seedling", amount = 3}:subgroup_order("py-alienlife-plants", "a").category = "fwf"
RECIPE("log4"):add_ingredient {type = "item", name = "wood-seedling", amount = 3}:subgroup_order("py-alienlife-plants", "a").category = "fwf"
RECIPE("log5"):add_ingredient {type = "item", name = "wood-seedling", amount = 3}:subgroup_order("py-alienlife-plants", "a").category = "fwf"
RECIPE("log6"):add_ingredient {type = "item", name = "wood-seedling", amount = 3}:subgroup_order("py-alienlife-plants", "a").category = "fwf"
RECIPE("log-wood"):subgroup_order("py-alienlife-recipes", "a")
RECIPE("fawogae-substrate"):remove_ingredient("fawogae"):add_ingredient {type = "item", name = "petri-dish-bacteria", amount = 2}:add_ingredient {type = "item", name = "cellulose", amount = 3}:replace_ingredient("coke", "moss"):subgroup_order("py-alienlife-recipes", "a")
RECIPE("bio-sample01"):add_ingredient {type = "item", name = "petri-dish-bacteria", amount = 2}:add_ingredient {type = "item", name = "native-flora", amount = 12}
RECIPE("fawogae-substrate"):add_unlock("basic-substrate").enabled = false

RECIPE("wpu"):replace_ingredient("wood", {type = "item", name = "log", amount = 5}):remove_unlock("wood-processing")
RECIPE("log-wood"):remove_unlock("wood-processing"):set_fields {always_show_made_in = true}.category = "wpu-handcrafting"
RECIPE("botanical-nursery"):replace_ingredient("wood", {type = "item", name = "planter-box", amount = 10})

RECIPE("ralesia-seeds"):subgroup_order("py-alienlife-ralesia", "a"):replace_ingredient("ralesia", "ralesia").category = "nursery"
--RECIPE('chemical-science-pack'):add_ingredient({type = "item", name = "alien-sample-02", amount = 1})
RECIPE("filtration-media"):add_ingredient {type = "item", name = "micro-fiber", amount = 2}
RECIPE("flask"):remove_ingredient("wood"):add_ingredient {type = "item", name = "stopper", amount = 4}:remove_ingredient("molten-glass"):add_ingredient {type = "fluid", name = "molten-glass", amount = 100, fluidbox_index = 2}
RECIPE("hotair-flask"):remove_ingredient("wood"):add_ingredient {type = "item", name = "stopper", amount = 4}:remove_ingredient("molten-glass"):add_ingredient {type = "fluid", name = "molten-glass", amount = 100, fluidbox_index = 2}
RECIPE("aromatics-to-plastic"):remove_ingredient("aromatics"):add_ingredient {type = "fluid", name = "aromatics", amount = 50}:remove_ingredient("syngas"):add_ingredient {type = "fluid", name = "syngas", amount = 100}.category = "biofactory"
RECIPE("oil-refinery"):remove_unlock("plastics")
RECIPE("flask"):add_unlock("py-science-pack-mk01").enabled = false

RECIPE("mukmoux-fat"):remove_unlock("mukmoux")
RECIPE("log-organics"):remove_unlock("wood-processing-2"):delete()
RECIPE("organics-from-wood"):remove_unlock("wood-processing"):delete()
RECIPE("soil-separation"):remove_unlock("separation")
RECIPE("ground-sample01"):remove_unlock("logistic-science-pack"):add_unlock("mycology-mk01")
RECIPE("oleochemicals"):remove_unlock("mukmoux"):add_unlock("coal-processing-2")
RECIPE("dedicated-oleochemicals"):remove_unlock("mukmoux"):add_unlock("coal-processing-2")
RECIPE("iron-oxide-smelting"):add_unlock("coal-processing-1").enabled = false
RECIPE("extract-limestone-01"):add_unlock("coal-processing-1").enabled = false
RECIPE("hpf"):add_unlock("coal-processing-1").enabled = false
RECIPE("washer"):add_unlock("soil-washing").enabled = false
RECIPE("muddy-sludge"):add_unlock("soil-washing").enabled = false
RECIPE("soil-washing"):add_unlock("soil-washing").enabled = false

RECIPE("tpa"):replace_ingredient("nichrome", "cobalt-extract"):add_ingredient {type = "item", name = "yotoi-fruit", amount = 1}:add_ingredient {type = "fluid", name = "manure-bacteria", amount = 20}
RECIPE("optical-fiber"):add_ingredient {type = "item", name = "photophore", amount = 1}

RECIPE("automation-science-pack"):clear_ingredients():add_ingredient {type = "item", name = "planter-box", amount = 2}:add_ingredient {type = "item", name = "native-flora", amount = 10}:add_ingredient {type = "item", name = "electronic-circuit", amount = 2}
RECIPE("automation-science-pack"):set_fields {energy_required = 5, results = {{type = "item", name = "automation-science-pack", amount = 1}}}
RECIPE("soil-extractor-mk01"):remove_ingredient("tinned-cable")

RECIPE("py-construction-robot-01"):add_ingredient {type = "fluid", name = "fish-oil", amount = 50}

RECIPE("distilator"):add_unlock("coal-processing-1").enabled = false
RECIPE("coal-gas"):add_unlock("coal-processing-1").enabled = false
RECIPE("coal-gas-from-wood"):add_unlock("coal-processing-1").enabled = false
RECIPE("coal-gas-from-coke"):add_unlock("coal-processing-1").enabled = false
RECIPE("distilled-raw-coal"):add_unlock("coal-processing-1").enabled = false

RECIPE("solid-separator"):remove_unlock("separation"):add_unlock("ash-separation")
RECIPE("ash-separation"):remove_unlock("separation"):add_unlock("ash-separation")
RECIPE("soot-separation"):remove_unlock("separation"):add_unlock("ash-separation")
RECIPE("tailings-classification"):remove_unlock("fluid-processing-machines-1"):add_unlock("separation")


RECIPE("log2"):replace_result("log", "log", 4)
RECIPE("log4"):replace_result("log", "log", 5)
RECIPE("log3"):replace_result("log", "log", 6)
RECIPE("log5"):replace_result("log", "log", 7)
RECIPE("log6"):replace_result("log", "log", 8)

data.raw["recipe-category"]["fawogae"].allowed_module_categories = {"fawogae"}
data.raw["recipe-category"]["fawogae"].modules_required = true
data.raw["recipe-category"]["mukmoux"].allowed_module_categories = {"mukmoux"}
data.raw["recipe-category"]["mukmoux"].modules_required = true
data.raw["recipe-category"]["ralesia"].allowed_module_categories = {"ralesia"}
data.raw["recipe-category"]["ralesia"].modules_required = true
data.raw["recipe-category"]["ulric"].allowed_module_categories = {"ulric"}
data.raw["recipe-category"]["ulric"].modules_required = true
