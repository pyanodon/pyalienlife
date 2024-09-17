local lib = require('scripts/turd/bhoddos-lib')
storage.turd_bhoddos = {}

for _, surface in pairs(game.surfaces) do
    for _, force in pairs(lib.forces_with_bhoddos_path_1()) do
        for _, entity in pairs(surface.find_entities_filtered{
            type = 'assembling-machine',
            name = lib.cultures,
            force = force
        }) do
            lib.update_culture_table(entity, 'add')
        end
    end
end
