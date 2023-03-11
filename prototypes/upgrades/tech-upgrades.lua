local FUN = require('__pycoalprocessing__/prototypes/functions/functions')

local tech_upgrades = {
    -- pyAL non-organics
    --require('prototypes/upgrades/atomizer'),
    require('prototypes/upgrades/bioprinting'),
    require('prototypes/upgrades/biofactory'),
    --require('prototypes/upgrades/compost'),
    --require('prototypes/upgrades/creature'),
    require('prototypes/upgrades/data-array'),
    require('prototypes/upgrades/incubator'),
    require('prototypes/upgrades/micromine'),
    require('prototypes/upgrades/slaughterhouse'),

    -- pYAL organics
    require('prototypes/upgrades/auog'),
    require('prototypes/upgrades/arqad'),
    require('prototypes/upgrades/arthurian'),
    require('prototypes/upgrades/cottongut'),
    require('prototypes/upgrades/dhilmos'),
    require('prototypes/upgrades/dingrits'),
    require('prototypes/upgrades/korlex'),
    require('prototypes/upgrades/fawogae'),
    require('prototypes/upgrades/fwf'),
    require('prototypes/upgrades/grod'),
    require('prototypes/upgrades/moss'),
    require('prototypes/upgrades/navens'),
    require('prototypes/upgrades/phadai'),
    require('prototypes/upgrades/phagnot'),
    require('prototypes/upgrades/sap'),
    require('prototypes/upgrades/seaweed'),
    require('prototypes/upgrades/scrondrix'),
    --require('prototypes/upgrades/simik'),    better to use simik metal 1-6
    require('prototypes/upgrades/sponge'),
    require('prototypes/upgrades/tuuphra'),
    require('prototypes/upgrades/ulric'),
    require('prototypes/upgrades/vonix'),
    require('prototypes/upgrades/vrauks'),
    require('prototypes/upgrades/xyhiphoe'),
    require('prototypes/upgrades/yaedols'),
    require('prototypes/upgrades/zipir'),

    -- pyHT organics
    require('prototypes/upgrades/cadaveric'),
    require('prototypes/upgrades/moondrop'),

    -- simik metals
    require('prototypes/upgrades/simikmetalMK01'),
    require('prototypes/upgrades/simikmetalMK02'),
    require('prototypes/upgrades/simikmetalMK03'),
    require('prototypes/upgrades/simikmetalMK04'),
    require('prototypes/upgrades/simikmetalMK05'),
    require('prototypes/upgrades/simikmetalMK06'),
}

if (data and mods.pyalternativeenergy) or (script and script.active_mods.pyalternativeenergy) then -- is pyAE installed?
    for _, upgrade in pairs{
        'prototypes/upgrades/bioreactor',
        'prototypes/upgrades/zungror',
        'prototypes/upgrades/numal',
        'prototypes/upgrades/xeno',
        'prototypes/upgrades/fish',
        'prototypes/upgrades/guar',
        'prototypes/upgrades/kicalk',
        'prototypes/upgrades/rennea',
        'prototypes/upgrades/antelope',
        'prototypes/upgrades/bhoddos',
        'prototypes/upgrades/genlab',
        'prototypes/upgrades/research',
        'prototypes/upgrades/yotoi',
        'prototypes/upgrades/cridren',
        'prototypes/upgrades/kmauts',
        'prototypes/upgrades/trits',
        'prototypes/upgrades/ralesia',
        'prototypes/upgrades/mukmoux',
    } do
        table.insert(tech_upgrades, require(upgrade))
    end
end

table.sort(tech_upgrades, function(a, b) return a.master_tech.name < b.master_tech.name end)

local recipes_with_turd_description = {}
local function build_tech_upgrade(tech_upgrade)
    local master_tech = tech_upgrade.master_tech
    local effects = master_tech.effects or {}

    for _, tech in pairs(tech_upgrade.sub_techs) do
        data:extend{{
            type = 'sprite',
            name = tech.name,
            filename = tech.icon,
            size = tech.icon_size
        }}

        effects[#effects + 1] = {
            type = 'nothing',
            icon = tech.icon,
            icon_size = tech.icon_size,
            effect_description = {'', '[font=default-semibold][color=255,230,192]', {'technology-name.' .. tech.name}, '[/color][/font]\n', {'technology-description.' .. tech.name}}
        }

        for _, effect in pairs(tech.effects) do
            if effect.type == 'module-effects' then
                local mk1, mk1_module_slots
                if tech_upgrade.affected_entities then
                    mk1 = tech_upgrade.affected_entities[1]
                    mk1 = data.raw.furnace[mk1] or data.raw['assembling-machine'][mk1]
                    mk1_module_slots = mk1.module_specification.module_slots
                end


                if mk1 and mk1.type ~= 'assembling-machine' then
                    effect.pollution = nil
                elseif effect.pollution == 0 then
                    effect.pollution = 0.01 -- prevent use in mines, composter, ect
                end

                local effective_speed
                if tech_upgrade.module_category and tech_upgrade.affected_entities and effect.speed and effect.speed ~= 0 then
                    local desired_mk1_speed = mk1.crafting_speed * (mk1_module_slots + 1)
                    effective_speed = (desired_mk1_speed / mk1.crafting_speed) * effect.speed
                end

                local module = {
                    type = 'module',
                    name = tech.name .. '-module',
                    icon = tech.icon,
                    icon_size = tech.icon_size,
                    scale = 0.5,
                    category = tech_upgrade.module_category or 'speed',
                    tier = 1,
                    flags = {'not-stackable', 'hidden'},
                    subgroup = 'py-alienlife-turd-modules',
                    order = 'z',
                    stack_size = 1,
                    effect = {
                        consumption = {bonus = effect.consumption or 0},
                        speed = {bonus = effective_speed or effect.speed or 0},
                        productivity = {bonus = effect.productivity or 0},
                        pollution = {bonus = -1 * (effect.pollution or 0.01)}
                    },
                    localised_name = {'technology-name.' .. tech.name},
                    localised_description = {'turd.font', {'turd.module'}},
                    not_voidable = true
                }

                if not tech_upgrade.module_category and tech_upgrade.affected_entities then
                    local categories = {}
                    for _, category in pairs(mk1.crafting_categories) do
                        categories[category] = true
                    end

                    module.limitation = {}
                    for _, recipe in pairs(data.raw.recipe) do
                        if categories[recipe.category or 'crafting'] then
                            table.insert(module.limitation, recipe.name)
                        end
                    end
                end

                if effective_speed then
                    local adjusted_speed = effect.speed * 100
                    if adjusted_speed >= 0 then adjusted_speed = '+' .. adjusted_speed end
                    FUN.add_to_description('module', module, {'turd.adjusted-speed', adjusted_speed})
                end

                if tech_upgrade.module_category and effect.speed and effect.speed ~= 0 then
                    for i, entity in pairs(tech_upgrade.affected_entities or {}) do
                        entity = data.raw.furnace[entity] or data.raw['assembling-machine'][entity]
                        local module = table.deepcopy(module)
                        module.name = module.name .. '-mk0' .. i
                        module.tier = i
                        if i ~= 1 and entity.module_specification then
                            local module_slots = entity.module_specification.module_slots
                            local desired_speed = entity.crafting_speed * (module_slots + 1/i) * i
                            module.effect.speed.bonus = (desired_speed / entity.crafting_speed) * effect.speed
                        end
                        data:extend{module}
                    end
                else
                    data:extend{module}
                end
            elseif effect.type == 'unlock-recipe' and not effect.also_unlocked_by_techs and data.raw.recipe[effect.recipe] and not recipes_with_turd_description[effect.recipe] then
                FUN.add_to_description('recipe', data.raw.recipe[effect.recipe], {'turd.font', {'turd.recipe'}})
                recipes_with_turd_description[effect.recipe] = true
            elseif effect.type == 'recipe-replacement' then
                if not data.raw.recipe[effect.new] then error('Invalid recipe replacement: ' .. effect.new) end
                FUN.add_to_description('recipe', data.raw.recipe[effect.new], {'turd.font', {'turd.recipe-replacement'}})
            end
        end
    end

    TECHNOLOGY {
        type = 'technology',
        name = master_tech.name,
        icon = master_tech.icon,
        icon_size = master_tech.icon_size,
        order = master_tech.order,
        prerequisites = master_tech.prerequisites,
        effects = effects,
        unit = master_tech.unit,
        is_turd = true,
        localised_description = {'', {'turd.font', {'turd.tech'}}, '\n', {'turd.tech-2'}}
    }
end

if data then
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
