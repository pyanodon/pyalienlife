
--TECHNOLOGY
data.raw.technology['lead-mk02'].prerequisites = {}
data.raw.technology['machines-mk02'].prerequisites = {}--TODO:sort out pyal tech tree issues with pyro
--TECHNOLOGY("lead-mk02")

TECHNOLOGY("aluminium-mk01"):add_pack("py-science-pack-1")
TECHNOLOGY("casting-mk01"):add_pack("py-science-pack-1")
TECHNOLOGY("chromium-mk01"):add_pack("py-science-pack-1")
TECHNOLOGY("coal-mk01"):add_pack("py-science-pack-1")
TECHNOLOGY("coke-mk01"):add_pack("py-science-pack-1")
TECHNOLOGY("hot-air-mk01"):add_pack("py-science-pack-1")
TECHNOLOGY("iron-mk01"):add_pack("py-science-pack-1")
TECHNOLOGY("lead-mk01"):add_pack("py-science-pack-1")
TECHNOLOGY("quartz-mk01"):add_pack("py-science-pack-1")
TECHNOLOGY("nickel-mk01"):add_pack("py-science-pack-1")
TECHNOLOGY("smelters-mk01"):add_pack("py-science-pack-1")
TECHNOLOGY("tin-mk01"):add_pack("py-science-pack-1")
TECHNOLOGY("titanium-mk01"):add_pack("py-science-pack-1")
TECHNOLOGY("zinc-mk01"):add_pack("py-science-pack-1")

TECHNOLOGY("aramid"):add_pack("py-science-pack-2")
TECHNOLOGY("stainless-steel-mk01"):add_pack("py-science-pack-2")
TECHNOLOGY("titanium-mk02"):add_pack("py-science-pack-2")
TECHNOLOGY("uranium-mk01"):add_pack("py-science-pack-2")
TECHNOLOGY("salts"):add_pack("py-science-pack-2")

if not mods["pyalternativeenergy"] then
    TECHNOLOGY("uranium-mk02"):add_pack("py-science-pack-2")
end

--TECHNOLOGY("super-steel-mk01"):add_pack("py-science-pack-3")
--TECHNOLOGY("smelters-mk02"):add_pack("py-science-pack-3")

--BUILDINDS--
RECIPE('plankton-farm'):add_ingredient({type = "item", name = "glass", amount = 30})
RECIPE('ralesia-plantation-mk02'):add_ingredient({type = "item", name = "duralumin", amount = 40}):add_ingredient({type = "item", name = "titanium-plate", amount = 50})
RECIPE('ralesia-plantation-mk03'):add_ingredient({type = "item", name = "stainless-steel", amount = 25}):add_ingredient({type = "item", name = "aluminium-plate", amount = 40})
RECIPE('ralesia-plantation-mk04'):add_ingredient({type = "item", name = "super-steel", amount = 25})

RECIPE("chemical-plant-mk02"):add_ingredient({type = "item", name = "neuroprocessor", amount = 20}):add_ingredient({type = "item", name = "latex", amount = 20})

RECIPE("chemical-plant-mk03"):add_ingredient({type = "item", name = "neuroprocessor", amount = 20}):add_ingredient({type = "item", name = "latex", amount = 20}):add_ingredient({type = "item", name = "ticocr-alloy", amount = 40}):add_ingredient({type = "item", name = "neuromorphic-chip", amount = 40})

RECIPE("chemical-plant-mk04"):add_ingredient({type = "item", name = "metallic-glass", amount = 20})

RECIPE('aluminium-mine'):add_ingredient({type = "item", name = "neuroprocessor", amount = 20}):add_ingredient{type = "item", name = "fluid-drill-mk03", amount = 1}
RECIPE('chromium-mine'):add_ingredient({type = "item", name = "neuroprocessor", amount = 20}):add_ingredient{type = "item", name = "fluid-drill-mk03", amount = 1}
RECIPE('coal-mine'):add_ingredient({type = "item", name = "neuroprocessor", amount = 20}):add_ingredient{type = "item", name = "fluid-drill-mk03", amount = 1}
RECIPE('copper-mine'):add_ingredient({type = "item", name = "neuroprocessor", amount = 20}):add_ingredient{type = "item", name = "fluid-drill-mk03", amount = 1}
RECIPE('iron-mine'):add_ingredient({type = "item", name = "neuroprocessor", amount = 20}):add_ingredient{type = "item", name = "fluid-drill-mk03", amount = 1}
RECIPE('zinc-mine'):add_ingredient({type = "item", name = "neuroprocessor", amount = 20}):add_ingredient{type = "item", name = "fluid-drill-mk03", amount = 1}
RECIPE('uranium-mine'):add_ingredient({type = "item", name = "neuroprocessor", amount = 20}):add_ingredient{type = "item", name = "fluid-drill-mk03", amount = 1}
RECIPE('titanium-mine'):add_ingredient({type = "item", name = "neuroprocessor", amount = 20}):add_ingredient{type = "item", name = "fluid-drill-mk03", amount = 1}
RECIPE('tin-mine'):add_ingredient({type = "item", name = "neuroprocessor", amount = 20}):add_ingredient{type = "item", name = "fluid-drill-mk03", amount = 1}
RECIPE('lead-mine'):add_ingredient({type = "item", name = "neuroprocessor", amount = 20}):add_ingredient{type = "item", name = "fluid-drill-mk03", amount = 1}
RECIPE('nexelit-mine'):add_ingredient({type = "item", name = "neuroprocessor", amount = 20}):add_ingredient{type = "item", name = "fluid-drill-mk03", amount = 1}
RECIPE('quartz-mine'):add_ingredient({type = "item", name = "neuroprocessor", amount = 20}):add_ingredient{type = "item", name = "fluid-drill-mk03", amount = 1}
RECIPE('nickel-mine'):add_ingredient({type = "item", name = "neuroprocessor", amount = 20}):add_ingredient{type = "item", name = "fluid-drill-mk03", amount = 1}
RECIPE('phosphate-mine-02'):add_ingredient({type = "item", name = "neuroprocessor", amount = 20}):add_ingredient{type = "item", name = "fluid-drill-mk03", amount = 1}

RECIPE("bof-mk01"):remove_ingredient("steam-engine"):replace_ingredient("washer", "steel-furnace")
RECIPE("casting-unit-mk01"):replace_ingredient("steam-engine", "steel-furnace")

RECIPE("borax-mine"):add_unlock("glass").enabled = false
RECIPE("glassworks-mk01"):add_unlock("glass").enabled = false
RECIPE("glass-1"):add_unlock("glass").enabled = false
RECIPE("molten-glass"):add_unlock("glass").enabled = false
RECIPE("aluminium-plate-1"):add_unlock("moss-mk01").enabled = false

--TECHNOLOGIES--
-- TECHNOLOGY('aluminium-mk03'):add_pack('py-science-pack-3')
-- TECHNOLOGY('aluminium-mk04'):add_pack('py-science-pack-3')
-- TECHNOLOGY('chromium-mk03'):add_pack('py-science-pack-3')
-- TECHNOLOGY('chromium-mk04'):add_pack('py-science-pack-3')
-- TECHNOLOGY('coal-mk03'):add_pack('py-science-pack-3')
-- TECHNOLOGY('coal-mk04'):add_pack('py-science-pack-3')
-- TECHNOLOGY('coke-mk03'):add_pack('py-science-pack-3')
-- TECHNOLOGY('copper-mk03'):add_pack('py-science-pack-3')
-- TECHNOLOGY('copper-mk04'):add_pack('py-science-pack-3')
-- TECHNOLOGY('gold'):add_pack('py-science-pack-3')
-- TECHNOLOGY('iron-mk03'):add_pack('py-science-pack-3')
-- TECHNOLOGY('iron-mk04'):add_pack('py-science-pack-3')
-- TECHNOLOGY('lead-mk03'):add_pack('py-science-pack-3')
-- TECHNOLOGY('lead-mk04'):add_pack('py-science-pack-3')
-- TECHNOLOGY('machines-mk03'):add_pack('py-science-pack-3')
-- TECHNOLOGY('machines-mk04'):add_pack('py-science-pack-3')
TECHNOLOGY('nexelit-mk03'):add_pack('military-science-pack')
-- TECHNOLOGY('nexelit-mk04'):add_pack('py-science-pack-3')
-- TECHNOLOGY('nickel-mk03'):add_pack('py-science-pack-3')
-- TECHNOLOGY('nickel-mk04'):add_pack('py-science-pack-3')
-- TECHNOLOGY('quartz-mk03'):add_pack('py-science-pack-3')
-- TECHNOLOGY('quartz-mk04'):add_pack('py-science-pack-3')
-- TECHNOLOGY('tin-mk03'):add_pack('py-science-pack-3')
-- TECHNOLOGY('tin-mk04'):add_pack('py-science-pack-3')
-- TECHNOLOGY('titanium-mk03'):add_pack('py-science-pack-3')
-- TECHNOLOGY('titanium-mk04'):add_pack('py-science-pack-3')
-- TECHNOLOGY('uranium-mk03'):add_pack('py-science-pack-3')
-- TECHNOLOGY('uranium-mk04'):add_pack('py-science-pack-3')
-- TECHNOLOGY('zinc-mk03'):add_pack('py-science-pack-3')
-- TECHNOLOGY('zinc-mk04'):add_pack('py-science-pack-3')

--RECIPES--

RECIPE("chemical-plant-mk01"):remove_unlock('filtration'):add_unlock('electric-energy-accumulators')
RECIPE("compressor-mk01"):remove_unlock("nitrogen-mk02")

RECIPE('mukmoux-fat-salt'):remove_unlock('mukmoux')
RECIPE('bonemeal-salt'):remove_unlock('ulric')
RECIPE('fertilizer-2'):remove_unlock('basic-electronics')
RECIPE('molten-stainless-steel'):add_ingredient({type = "item", name = "cobalt-extract", amount = 1})
RECIPE('full-molten-stainless-steel-3'):add_ingredient({type = "item", name = "cobalt-extract", amount = 1})
RECIPE('molten-super-steel'):add_ingredient({type = "item", name = "cobalt-oxide", amount = 1})
RECIPE('full-molten-super-steel-3'):add_ingredient({type = "item", name = "cobalt-oxide", amount = 1})

--RECIPE("centrifuge"):remove_unlock('nuclear-fuel-reprocessing'):add_unlock('basic-electronics')

RECIPE("starch"):add_unlock('starch-mk01')
RECIPE("powdered-ralesia-seeds"):add_unlock('starch-mk01')
RECIPE('starch-2'):add_unlock('starch-mk02')

----EXCLUSIVE RECIPES----

RECIPE {
    type = "recipe",
    name = "fertilizer-5",
    category = "biofactory",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item", name = "bones", amount = 6},
        {type = "item", name = "manure", amount = 10},
        {type = "item", name = "ammonium-chloride", amount = 20},
        {type = 'fluid', name = 'zogna-bacteria', amount = 20},
    },
    results = {
        {type = "item", name = "fertilizer", amount = 15}
    }
}:add_unlock("fertilizer-mk03"):replace_ingredient("manure", "urea")

RECIPE {
    type = 'recipe',
    name = 'hydrogen-chloride-quartz',
    category = 'chemistry',
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = "fluid", name = "chlorine", amount = 100},
        {type = "fluid", name = "hydrogen", amount = 100},
        {type = 'item', name = 'quartz-tube', amount = 1},
        {type = "item", name = "small-lamp", amount = 1}
    },
    results = {
        {type = "fluid", name = "hydrogen-chloride", amount = 100},
        {type = "item", name = "small-lamp", amount = 1, probability = 0.9},
        {type = 'item', name = 'quartz-tube', amount = 1},
    },
    main_product = "hydrogen-chloride",
    icon = "__pyraworesgraphics__/graphics/icons/hydrogen-chloride.png",
    icon_size = 32,
    subgroup = "py-rawores-fluids",
    order = "cab"
}:add_unlock("filtration-mk02")

RECIPE {
    type = "recipe",
    name = "drill-head-6",
    category = "crafting",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item", name = "steel-plate", amount = 4},
        {type = "item", name = "sic", amount = 1},
        {type = "item", name = "titanium-plate", amount = 4},
        {type = "item", name = "niobium-plate", amount = 3},
    },
    results = {
        {type = "item", name = "drill-head", amount = 8}
    }
}:add_unlock("drill-head-mk02")

RECIPE {
    type = "recipe",
    name = "drill-head-7",
    category = "crafting",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item", name = "steel-plate", amount = 8},
        {type = "item", name = "titanium-plate", amount = 4},
        {type = "item", name = "aluminium-plate", amount = 6},
        {type = "item", name = "sic", amount = 1},
    },
    results = {
        {type = "item", name = "drill-head", amount = 7}
    }
}:add_unlock("drill-head-mk02")


RECIPE {
    type = "recipe",
    name = "mold",
    category = "casting",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "fluid", name = "wax", amount = 20},
        {type = "item", name = "green-sic", amount = 2},
    },
    results = {
        {type = "item", name = "mold", amount = 4}
    },
    main_product= "mold",
    subgroup = "py-rawores-casting",
    order = "a"
  }:add_unlock("casting-mk02"):add_ingredient({type = "item", name = "silicon", amount = 5}):add_ingredient({type = "item", name = "clay", amount = 1})

RECIPE('nexelit-mine'):remove_unlock('big-mines').hidden = true
data.raw['resource']['nexelit-rock'].autoplace = nil
data.raw['autoplace-control']['nexelit-rock'] = nil
data.raw.planet.nauvis.map_gen_settings.autoplace_controls["nexelit-rock"] = nil

data.raw.recipe['coal-fawogae'].ingredients[1].amount = 2