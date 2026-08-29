-- The digosaur_data structure changed in 3.1.3, the easiest way to resolve this is just to invalidate the diggo and let the depot regenerate it.
storage.dig_sites = storage.dig_sites or {}

for _, dig_site in pairs(storage.dig_sites) do
    for _, digosaur_data in pairs(dig_site.active_digosaurs or {}) do
        if digosaur_data.proxy and digosaur_data.proxy.valid then
            digosaur_data.proxy.destroy()
        end

        if digosaur_data.entity and digosaur_data.entity.valid then
            digosaur_data.entity.destroy()
        end
    end

    dig_site.active_digosaurs = {}
end

storage.digosaurs = {}