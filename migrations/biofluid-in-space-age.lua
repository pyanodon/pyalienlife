require "scripts.biofluid.biofluid"

storage.network_positions = nil
storage.biofluid_undergrounds = nil

storage.biofluid_providers = storage.biofluid_providers or {}

for _, network_data in pairs(storage.biofluid_networks or {}) do
    local providers = network_data.providers
    for _, provider in pairs(providers or {}) do
        if provider.valid then
            storage.biofluid_providers[provider.unit_number] = {entity = provider}
        end
    end    
end

Biofluid.built_pipe()
