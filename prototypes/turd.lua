local tech_upgrades = {
    require "prototypes/upgrades/biofactory",
    require "prototypes/upgrades/compost",
    require "prototypes/upgrades/creature",
    require "prototypes/upgrades/incubator",
    require "prototypes/upgrades/slaughterhouse",
    require "prototypes/upgrades/arthurian",
    require "prototypes/upgrades/dhilmos",
    require "prototypes/upgrades/dingrits",
    require "prototypes/upgrades/korlex",
    require "prototypes/upgrades/fawogae",
    require "prototypes/upgrades/moss",
    require "prototypes/upgrades/scrondrix",
    require "prototypes/upgrades/vonix",
    require "prototypes/upgrades/yaedols",
}


if (data and mods.pyhightech) or (script and script.active_mods.pyhightech) then -- is pyHT installed?
    for _, upgrade in pairs {
        "prototypes/upgrades/fwf",
        "prototypes/upgrades/cadaveric",
        "prototypes/upgrades/moondrop",
        "prototypes/upgrades/auog",
        "prototypes/upgrades/arqad",
        "prototypes/upgrades/phadai",
        "prototypes/upgrades/phagnot",
        "prototypes/upgrades/sponge",
        "prototypes/upgrades/tuuphra",
        "prototypes/upgrades/ulric",
        "prototypes/upgrades/vrauks",
        "prototypes/upgrades/xyhiphoe",
        "prototypes/upgrades/seaweed",
    } do
        table.insert(tech_upgrades, require(upgrade))
    end
end

if (data and mods.pyalternativeenergy) or (script and script.active_mods.pyalternativeenergy) then -- is pyAE installed?
    for _, upgrade in pairs {
        "prototypes/upgrades/atomizer",
        "prototypes/upgrades/bioreactor",
        "prototypes/upgrades/zungror",
        "prototypes/upgrades/numal",
        "prototypes/upgrades/data-array",
        "prototypes/upgrades/xeno",
        "prototypes/upgrades/fish",
        "prototypes/upgrades/cottongut",
        "prototypes/upgrades/guar",
        "prototypes/upgrades/kicalk",
        "prototypes/upgrades/rennea",
        "prototypes/upgrades/navens",
        "prototypes/upgrades/antelope",
        "prototypes/upgrades/bhoddos",
        "prototypes/upgrades/genlab",
        "prototypes/upgrades/grod",
        "prototypes/upgrades/research",
        "prototypes/upgrades/yotoi",
        "prototypes/upgrades/cridren",
        "prototypes/upgrades/kmauts",
        "prototypes/upgrades/trits",
        "prototypes/upgrades/ralesia",
        "prototypes/upgrades/mukmoux",
        "prototypes/upgrades/simikmetalMK01",
        "prototypes/upgrades/simikmetalMK02",
        "prototypes/upgrades/simikmetalMK03",
        "prototypes/upgrades/simikmetalMK04",
        "prototypes/upgrades/simikmetalMK05",
        "prototypes/upgrades/simikmetalMK06",
        "prototypes/upgrades/sap",
        "prototypes/upgrades/bioprinting",
        "prototypes/upgrades/zipir",
    } do
        table.insert(tech_upgrades, require(upgrade))
    end
end

if (data and mods.pyhightech) or (script and script.active_mods.pyhightech) then -- is pyHT installed?
    for _, upgrade in pairs {
        "prototypes/upgrades/wpu",                                               -- wood processing unit must be executed last as this one adjusts module categories of other turds.
    } do
        table.insert(tech_upgrades, require(upgrade))
    end
end

table.sort(tech_upgrades, function(a, b) return a.master_tech.name < b.master_tech.name end)

local function build_module_effects_turd(tech_upgrade, sub_tech, effect)
    local mk1, mk1_module_slots
    if tech_upgrade.affected_entities then
        local mk1_name = tech_upgrade.affected_entities[1]
        mk1 = data.raw.furnace[mk1_name] or data.raw["assembling-machine"][mk1_name]
        if not mk1 then error("TURD ERROR: No mk1 building found: " .. mk1_name) end
        mk1_module_slots = mk1.module_slots
    end

    local effective_speed

    local is_this_a_speed_module_that_effects_farm_buildings = mk1.crafting_speed ~= 1 and tech_upgrade.module_category and tech_upgrade.affected_entities and effect.speed and effect.speed ~= 0
    if is_this_a_speed_module_that_effects_farm_buildings then
        local desired_mk1_speed = mk1.crafting_speed * (mk1_module_slots + 1)
        effective_speed = (desired_mk1_speed / mk1.crafting_speed) * effect.speed
    end

    local module = {
        type = "module",
        name = sub_tech.name .. "-module",
        icon = sub_tech.icon,
        icon_size = sub_tech.icon_size,
        category = tech_upgrade.module_category or error("TURD ERROR: No module category defined for " .. sub_tech.name),
        tier = 1,
        hidden = true,             -- does this break helmod?
        flags = {"not-stackable"},
        subgroup = "py-alienlife-turd-modules",
        order = "z",
        stack_size = 1,
        effect = {
            consumption = effect.consumption or 0,
            speed = effective_speed or effect.speed or 0,
            productivity = effect.productivity or 0,
            pollution = -1 * (effect.pollution or 0),
            quality = effect.quality or 0
        },
        localised_name = {"technology-name." .. sub_tech.name},
        localised_description = {"turd.font", {"turd.module"}},
        not_voidable = true
    }

    if not data.raw["module-category"][module.category] then
        data:extend {{
            type = "module-category",
            name = module.category
        }}
    end

    if effective_speed then
        local adjusted_speed = effect.speed * 100
        if adjusted_speed >= 0 then adjusted_speed = "+" .. adjusted_speed end
        py.add_to_description("module", module, {"turd.adjusted-speed", tostring(adjusted_speed)})
    end

    if is_this_a_speed_module_that_effects_farm_buildings then
        for i, entity in pairs(tech_upgrade.affected_entities or {}) do
            entity = data.raw.furnace[entity] or data.raw["assembling-machine"][entity]
            local module = table.deepcopy(module)
            module.name = module.name .. "-mk0" .. i
            module.tier = i
            if i ~= 1 and entity.module_slots and entity.module_slots ~= 0 then
                local module_slots = entity.module_slots
                local desired_speed = entity.crafting_speed * (module_slots + 1 / i) * i
                module.effect.speed = (desired_speed / entity.crafting_speed) * effect.speed
            end
            if i ~= 1 then
                module.localised_name = {"", {"technology-name." .. sub_tech.name}, " MK0" .. i}
            end
            data:extend {module}
        end
    else
        data:extend {module}
    end

    -- https://github.com/pyanodon/pybugreports/issues/809
    local crafting_categories = table.invert(mk1.crafting_categories or {})
    if effect.productivity and effect.productivity ~= 0 then
        for _, recipe in pairs(data.raw.recipe) do
            if not recipe.allow_productivity and recipe.category and crafting_categories[recipe.category] then
                recipe.allow_productivity = true
            end
        end
    end
end

local recipes_with_turd_description = {}
local function build_tech_upgrade(tech_upgrade)
    local master_tech = tech_upgrade.master_tech
    local effects = master_tech.effects or {}

    for _, sub_tech in pairs(tech_upgrade.sub_techs) do
        data:extend {{
            type = "sprite",
            name = sub_tech.name,
            filename = sub_tech.icon,
            size = sub_tech.icon_size
        }}

        effects[#effects + 1] = {
            type = "nothing",
            icon = sub_tech.icon,
            icon_size = sub_tech.icon_size,
            effect_description = {
                "",
                "[font=default-semibold][color=255,230,192]",
                {"technology-name." .. sub_tech.name},
                "[/color][/font]\n",
                {"technology-description." .. sub_tech.name}
            }
        }

        for _, effect in pairs(sub_tech.effects) do
            if effect.type == "module-effects" then
                build_module_effects_turd(tech_upgrade, sub_tech, effect)
            elseif effect.type == "unlock-recipe" and not effect.also_unlocked_by_techs and data.raw.recipe[effect.recipe] and not recipes_with_turd_description[effect.recipe] then
                py.add_to_description("recipe", data.raw.recipe[effect.recipe], {"turd.font", {"turd.recipe"}})
                recipes_with_turd_description[effect.recipe] = true
            elseif effect.type == "recipe-replacement" and data.raw.recipe[effect.new] then
                py.add_to_description("recipe", data.raw.recipe[effect.new], {"turd.font", {"turd.recipe-replacement"}})
            end
        end
    end

    TECHNOLOGY {
        type = "technology",
        name = master_tech.name,
        icon = master_tech.icon,
        icon_size = master_tech.icon_size,
        order = master_tech.order,
        prerequisites = master_tech.prerequisites,
        effects = effects,
        unit = master_tech.unit,
        is_turd = true,
        localised_description = {"", {"turd.font", {"turd.tech"}}, "\n", {"turd.tech-2", tostring(#tech_upgrade.sub_techs)}}
    }
end

if data and not yafc_turd_integration then
    for _, tech_upgrade in pairs(tech_upgrades) do build_tech_upgrade(tech_upgrade) end
else
    local indexed_tech_upgrades = {}
    local farm_building_tiers = {}
    for _, upgrade in pairs(tech_upgrades) do
        local indexed_sub_techs = {}
        for _, sub_tech in pairs(upgrade.sub_techs) do
            indexed_sub_techs[sub_tech.name] = sub_tech
        end
        upgrade.sub_techs = indexed_sub_techs

        indexed_tech_upgrades[upgrade.master_tech.name] = upgrade

        local indexed_affected_entities = {}
        for i, affected_entity in pairs(upgrade.affected_entities) do
            indexed_affected_entities[affected_entity] = i
            if upgrade.module_category then farm_building_tiers[affected_entity] = i end
        end
        upgrade.affected_entities = indexed_affected_entities
    end

    return {indexed_tech_upgrades, farm_building_tiers}
end
