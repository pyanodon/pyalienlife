table.insert(data.raw.lab.lab.inputs, "py-science-pack-1")
table.insert(data.raw.lab.lab.inputs, "py-science-pack-2")
table.insert(data.raw.lab.lab.inputs, "py-science-pack-3")
table.insert(data.raw.lab.lab.inputs, "py-science-pack-4")

--TECHNOLOGY('automobilism'):remove_pack('logistic-science-pack'):remove_prereq('logistics-2')
TECHNOLOGY("logistics-2"):add_pack("py-science-pack-2")
TECHNOLOGY("bulk-inserter"):add_pack("py-science-pack-2")
TECHNOLOGY("inserter-capacity-bonus-1"):add_pack("py-science-pack-2")
TECHNOLOGY("inserter-capacity-bonus-2"):add_pack("py-science-pack-2")
TECHNOLOGY("modular-armor"):add_pack("py-science-pack-2")
TECHNOLOGY("solar-panel-equipment"):add_pack("py-science-pack-2")
TECHNOLOGY("speed-module"):add_pack("py-science-pack-2")
TECHNOLOGY("productivity-module"):add_pack("py-science-pack-2")
TECHNOLOGY("efficiency-module"):add_pack("py-science-pack-2")
TECHNOLOGY("diet-beacon"):add_pack("py-science-pack-1"):add_pack("py-science-pack-2")
TECHNOLOGY("advanced-material-processing"):remove_pack("logistic-science-pack"):remove_prereq("logistic-science-pack"):add_pack("py-science-pack-1")
TECHNOLOGY("electric-engine"):add_pack("py-science-pack-2")
TECHNOLOGY("fast-inserter"):add_pack("logistic-science-pack")
TECHNOLOGY("fast-inserter-2"):add_pack("py-science-pack-2")

TECHNOLOGY("night-vision-equipment"):add_prereq("personal-roboport-equipment"):remove_prereq("modular-armor"):add_pack("py-science-pack-2")
TECHNOLOGY("belt-immunity-equipment"):add_prereq("personal-roboport-equipment"):remove_prereq("modular-armor"):add_pack("py-science-pack-2")
TECHNOLOGY("personal-roboport-equipment"):remove_pack("chemical-science-pack"):remove_pack("logistic-science-pack"):add_pack("py-science-pack-1")
TECHNOLOGY("fission-reactor-equipment"):add_pack("py-science-pack-3")
TECHNOLOGY("exoskeleton-equipment"):remove_prereq("electric-engine"):remove_prereq("solar-panel-equipment"):add_prereq("bio-implants"):add_pack("production-science-pack")

TECHNOLOGY("discharge-defense-equipment"):add_pack("py-science-pack-3")
TECHNOLOGY("energy-shield-mk2-equipment"):add_pack("py-science-pack-3")
TECHNOLOGY("personal-laser-defense-equipment"):add_pack("py-science-pack-3")
TECHNOLOGY("energy-shield-equipment"):add_pack("py-science-pack-2")

TECHNOLOGY("fluid-handling"):remove_pack("logistic-science-pack")
TECHNOLOGY("automation-2"):add_pack("py-science-pack-1"):remove_pack("logistic-science-pack"):remove_prereq("logistic-science-pack"):remove_prereq("electronics")
TECHNOLOGY("automation-3"):remove_pack("chemical-science-pack"):remove_pack("production-science-pack"):add_pack("py-science-pack-2"):set_fields {prerequisites = {}}
TECHNOLOGY("fast-inserter"):add_pack("py-science-pack-1")
TECHNOLOGY("heavy-armor"):add_pack("py-science-pack-1")
TECHNOLOGY("logistic-science-pack"):add_pack("py-science-pack-1")
TECHNOLOGY("automated-rail-transportation"):add_pack("py-science-pack-1")
TECHNOLOGY("construction-robotics"):add_pack("py-science-pack-1")
TECHNOLOGY("weapon-shooting-speed-1"):add_pack("py-science-pack-1")
TECHNOLOGY("physical-projectile-damage-1"):add_pack("py-science-pack-1")
TECHNOLOGY("fluid-wagon"):add_pack("py-science-pack-1")
TECHNOLOGY("circuit-network"):remove_pack("logistic-science-pack"):remove_prereq("logistic-science-pack"):add_pack("py-science-pack-1")
TECHNOLOGY("power-armor"):add_pack("py-science-pack-2")
TECHNOLOGY("power-armor-mk2"):add_pack("py-science-pack-2")
TECHNOLOGY("nuclear-fuel-reprocessing"):add_pack("py-science-pack-2")
TECHNOLOGY("production-science-pack"):add_pack("py-science-pack-2"):add_pack("py-science-pack-3")
TECHNOLOGY("utility-science-pack"):add_pack("py-science-pack-3"):add_pack("py-science-pack-4")
TECHNOLOGY("chemical-science-pack"):add_pack("py-science-pack-2")
TECHNOLOGY("worker-robots-speed-1"):add_pack("py-science-pack-2")

TECHNOLOGY("electric-energy-distribution-2"):add_pack("py-science-pack-3")
TECHNOLOGY("speed-module-2"):add_pack("py-science-pack-3")
TECHNOLOGY("productivity-module-2"):add_pack("py-science-pack-3")
TECHNOLOGY("efficiency-module-2"):add_pack("py-science-pack-3")
TECHNOLOGY("power-armor"):add_pack("py-science-pack-3")
--TECHNOLOGY('robotics'):add_pack('py-science-pack-3')
TECHNOLOGY("worker-robots-speed-3"):remove_pack("production-science-pack"):add_pack("py-science-pack-3")
TECHNOLOGY("worker-robots-storage-1"):add_pack("py-science-pack-3")
TECHNOLOGY("low-density-structure"):add_pack("py-science-pack-3")
TECHNOLOGY("rocket-silo"):add_pack("py-science-pack-3")
TECHNOLOGY("rocket-fuel"):add_pack("py-science-pack-3")
TECHNOLOGY("advanced-material-processing-2"):add_pack("py-science-pack-3")
TECHNOLOGY("nuclear-fuel-reprocessing"):add_pack("py-science-pack-3")

if not mods["pyalternativeenergy"] then
    TECHNOLOGY("nuclear-power"):add_pack("py-science-pack-3")
end

TECHNOLOGY("military-2"):remove_pack("logistic-science-pack"):add_pack("py-science-pack-1"):remove_prereq("logistic-science-pack")

TECHNOLOGY("military-4"):add_pack("py-science-pack-4")

TECHNOLOGY("destroyer"):add_pack("py-science-pack-4")

ITEM("raw-fish", "capsule"):set("icon", "__pyalienlifegraphics__/graphics/icons/fish.png")
ITEM("raw-fish", "capsule"):set("icon_size", 32)
RECIPE("power-armor"):add_ingredient {type = "item", name = "pelt", amount = 1}
TECHNOLOGY("atomic-bomb"):remove_prereq("kovarex-enrichment-process"):remove_prereq("military-4"):remove_prereq("rocketry"):add_prereq("domestication-mk02"):add_prereq("uranium-mk03")
RECIPE("atomic-bomb"):add_ingredient {type = "item", name = "titanium-plate", amount = 20}:add_ingredient {type = "item", name = "fuelrod-mk01", amount = 10}:remove_ingredient("yellow-cake"):add_ingredient {type = "item", name = "neuromorphic-chip", amount = 1}
RECIPE("small-electric-pole"):replace_ingredient("wood", "log")

-- RECIPE('automation-science-pack').category = 'research-handcrafting'
RECIPE("logistic-science-pack").category = "research"
RECIPE("logistic-science-pack"):add_ingredient {type = "item", name = "solidified-sarcorus", amount = 1}:add_ingredient {type = "item", name = "animal-sample-01", amount = 2}:remove_ingredient("lab-instrument")
RECIPE("logistic-science-pack"):replace_ingredient("alien-sample01", {type = "item", name = "alien-sample01", amount = 2})
RECIPE("logistic-science-pack"):set_fields {
    results = {
        {type = "item", name = "logistic-science-pack", amount = 12}
    },
    energy_required = 90
}

RECIPE("chemical-science-pack").category = "research"
RECIPE("military-science-pack").category = "research"
RECIPE("production-science-pack").category = "research"
RECIPE("utility-science-pack"):add_ingredient {type = "item", name = "perfect-samples", amount = 1}.category = "research"

ENTITY("beacon"):set_fields {allowed_effects = {"consumption", "speed"}}

RECIPE("car"):add_ingredient("light-armor")

RECIPE("barrel").allow_productivity = false