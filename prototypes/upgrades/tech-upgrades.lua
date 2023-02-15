local tech_upgrades = {
    -- pyAL non-organics
    require('prototypes/upgrades/atomizer'),
    require('prototypes/upgrades/bioprinting'),
    require('prototypes/upgrades/biofactory'),
    require('prototypes/upgrades/bioreactor'),
    require('prototypes/upgrades/compost'),
    require('prototypes/upgrades/creature'),
    require('prototypes/upgrades/data-array'),
    require('prototypes/upgrades/genlab'),
    require('prototypes/upgrades/incubator'),
    require('prototypes/upgrades/micromine'),
    require('prototypes/upgrades/research'),
    require('prototypes/upgrades/slaughterhouse'),

    -- pYAL organics
    require('prototypes/upgrades/auog'),
    require('prototypes/upgrades/arqad'),
    require('prototypes/upgrades/arthurian'),
    require('prototypes/upgrades/bhoddos'),
    require('prototypes/upgrades/cottongut'),
    require('prototypes/upgrades/cridren'),
    require('prototypes/upgrades/dhilmos'),
    require('prototypes/upgrades/dingrits'),
    require('prototypes/upgrades/korlex'),
    require('prototypes/upgrades/fawogae'),
    require('prototypes/upgrades/fish'),
    require('prototypes/upgrades/fwf'),
    require('prototypes/upgrades/grod'),
    require('prototypes/upgrades/kmauts'),
    require('prototypes/upgrades/moss'),
    require('prototypes/upgrades/mukmoux'),
    require('prototypes/upgrades/navens'),
    require('prototypes/upgrades/phadai'),
    require('prototypes/upgrades/phagnot'),
    require('prototypes/upgrades/ralesia'),
    require('prototypes/upgrades/rennea'),
    require('prototypes/upgrades/sap'),
    require('prototypes/upgrades/seaweed'),
    require('prototypes/upgrades/scrondrix'),
    --require('prototypes/upgrades/simik'),    better to use simik metal 1-6
    require('prototypes/upgrades/sponge'),
    require('prototypes/upgrades/trits'),
    require('prototypes/upgrades/tuuphra'),
    require('prototypes/upgrades/ulric'),
    require('prototypes/upgrades/vonix'),
    require('prototypes/upgrades/vrauks'),
    require('prototypes/upgrades/xeno'),
    require('prototypes/upgrades/xyhiphoe'),
    require('prototypes/upgrades/yaedols'),
    require('prototypes/upgrades/yotoi'),
    require('prototypes/upgrades/zipir'),

    -- pyHT organics
    require('prototypes/upgrades/antelope'),
    require('prototypes/upgrades/cadaveric'),
    require('prototypes/upgrades/kicalk'),
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
    table.insert(tech_upgrades, require('prototypes/upgrades/zungror'))
end

if data then
    local FUN = require('__pycoalprocessing__/prototypes/functions/functions')
    for _, tech_upgrade in pairs(tech_upgrades) do
        FUN.tech_upgrade(tech_upgrade)
    end
else
    local indexed_tech_upgrades = {}
    for _, upgrade in pairs(tech_upgrades) do
        local indexed_sub_techs = {}
        for _, sub_tech in pairs(upgrade.sub_techs) do
            indexed_sub_techs[sub_tech.name] = sub_tech
        end
        upgrade.sub_techs = indexed_sub_techs

        indexed_tech_upgrades[upgrade.master_tech.name] = upgrade

        local indexed_affected_entities = {}
        for _, affected_entity in pairs(upgrade.affected_entities) do
            indexed_affected_entities[affected_entity] = true
        end
        upgrade.affected_entities = indexed_affected_entities
    end

    return indexed_tech_upgrades
end
