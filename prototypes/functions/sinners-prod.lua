
if settings.startup['prod_for_sinners'].value then
--mk03
data.raw.module['ulric-mk03'].effect.productivity = {bonus = 0.01}
data.raw.module['sea-sponge-mk03'].effect.productivity = {bonus = 0.01}
data.raw.module['ralesias-mk03'].effect.productivity = {bonus = 0.01}
data.raw.module['mukmoux-mk03'].effect.productivity = {bonus = 0.01}
data.raw.module['arthurian-mk03'].effect.productivity = {bonus = 0.01}
data.raw.module['tuuphra-mk03'].effect.productivity = {bonus = 0.01}
data.raw.module['navens-mk03'].effect.productivity = {bonus = 0.01}
data.raw.module['yotoi-mk03'].effect.productivity = {bonus = 0.01}
data.raw.module['dhilmos-mk03'].effect.productivity = {bonus = 0.01}
data.raw.module['scrondrix-mk03'].effect.productivity = {bonus = 0.01}
data.raw.module['rennea-mk03'].effect.productivity = {bonus = 0.01}
data.raw.module['phadai-mk03'].effect.productivity = {bonus = 0.01}
data.raw.module['auog-mk03'].effect.productivity = {bonus = 0.01}
data.raw.module['fish-mk03'].effect.productivity = {bonus = 0.01}
data.raw.module['yaedols-mk03'].effect.productivity = {bonus = 0.01}
data.raw.module['dingrits-mk03'].effect.productivity = {bonus = 0.01}
data.raw.module['kmauts-mk03'].effect.productivity = {bonus = 0.01}
data.raw.module['vonix-mk03'].effect.productivity = {bonus = 0.01}
data.raw.module['grod-mk03'].effect.productivity = {bonus = 0.01}
data.raw.module['phagnot-mk03'].effect.productivity = {bonus = 0.01}
data.raw.module['bhoddos-mk03'].effect.productivity = {bonus = 0.01}
data.raw.module['xeno-mk03'].effect.productivity = {bonus = 0.01}
data.raw.module['trits-mk03'].effect.productivity = {bonus = 0.01}
data.raw.module['kicalk-mk03'].effect.productivity = {bonus = 0.01}
data.raw.module['cadaveric-arum-mk03-a'].effect.productivity = {bonus = 0.01}
data.raw.module['vrauks-mk03'].effect.productivity = {bonus = 0.01}
data.raw.module['xyhiphoe-mk03'].effect.productivity = {bonus = 0.01}
data.raw.module['korlex-mk03'].effect.productivity = {bonus = 0.01}
data.raw.module['fawogae-mk03'].effect.productivity = {bonus = 0.01}
data.raw.module['moondrop-mk03'].effect.productivity = {bonus = 0.01}
data.raw.module['cottongut-mk03'].effect.productivity = {bonus = 0.01}

--mk04
data.raw.module['ulric-mk04'].effect.productivity = {bonus = 0.02}
data.raw.module['sea-sponge-mk04'].effect.productivity = {bonus = 0.02}
data.raw.module['ralesias-mk04'].effect.productivity = {bonus = 0.02}
data.raw.module['mukmoux-mk04'].effect.productivity = {bonus = 0.02}
data.raw.module['arthurian-mk04'].effect.productivity = {bonus = 0.02}
data.raw.module['tuuphra-mk04'].effect.productivity = {bonus = 0.02}
data.raw.module['navens-mk04'].effect.productivity = {bonus = 0.02}
data.raw.module['yotoi-mk04'].effect.productivity = {bonus = 0.02}
data.raw.module['dhilmos-mk04'].effect.productivity = {bonus = 0.02}
data.raw.module['scrondrix-mk04'].effect.productivity = {bonus = 0.02}
data.raw.module['rennea-mk04'].effect.productivity = {bonus = 0.02}
data.raw.module['phadai-mk04'].effect.productivity = {bonus = 0.02}
data.raw.module['auog-mk04'].effect.productivity = {bonus = 0.02}
data.raw.module['fish-mk04'].effect.productivity = {bonus = 0.02}
data.raw.module['yaedols-mk04'].effect.productivity = {bonus = 0.02}
data.raw.module['dingrits-mk04'].effect.productivity = {bonus = 0.02}
data.raw.module['kmauts-mk04'].effect.productivity = {bonus = 0.02}
data.raw.module['vonix-mk04'].effect.productivity = {bonus = 0.02}
data.raw.module['grod-mk04'].effect.productivity = {bonus = 0.02}
data.raw.module['phagnot-mk04'].effect.productivity = {bonus = 0.02}
data.raw.module['bhoddos-mk04'].effect.productivity = {bonus = 0.02}
data.raw.module['xeno-mk04'].effect.productivity = {bonus = 0.02}
data.raw.module['trits-mk04'].effect.productivity = {bonus = 0.02}
data.raw.module['kicalk-mk04'].effect.productivity = {bonus = 0.02}
data.raw.module['cadaveric-arum-mk04-a'].effect.productivity = {bonus = 0.02}
data.raw.module['vrauks-mk04'].effect.productivity = {bonus = 0.02}
data.raw.module['xyhiphoe-mk04'].effect.productivity = {bonus = 0.02}
data.raw.module['korlex-mk04'].effect.productivity = {bonus = 0.02}
data.raw.module['fawogae-mk04'].effect.productivity = {bonus = 0.02}
data.raw.module['moondrop-mk04'].effect.productivity = {bonus = 0.02}
data.raw.module['cottongut-mk04'].effect.productivity = {bonus = 0.02}

  --[[
local mods3 = {}
local mods4 = {}

for m, mod in pairs(data.raw.module) do
    log(mod.name)
    if string.match(mod.name, 'mk03') == 'mk03' then
        local modname = mod.name
        table.insert(mods3, modname)
    end

    if string.match(mod.name, 'mk04') == 'mk04' then
        log(mod.name)
        local modname = mod.name
        table.insert(mods4, modname)
    end

end

log(serpent.block(mods3))

log(serpent.block(mods4))
]]--
end
