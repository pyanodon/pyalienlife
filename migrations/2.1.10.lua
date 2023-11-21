for _, force in pairs(game.forces) do
	if global.turd_bonuses and global.turd_bonuses[force.index] then
		if force.technologies['bhoddos-upgrade'].researched then
			force.technologies['bhoddos-upgrade'].researched = false
			force.technologies['bhoddos-upgrade'].researched = true
		end
		if global.turd_bonuses[force.index]['moondrop-upgrade'] == 'moon' then
			force.technologies['moondrop-upgrade'].researched = false
			force.technologies['moondrop-upgrade'].researched = true			
		end
	end
end

local function exists_and_valid(v) return v and v.valid end

if not global.caravans then return end
local found = false
local new = {}
local migrated = 0

for _, caravan_data in pairs(global.caravans) do
	if caravan_data.is_aerial and script.active_mods.pyalternativeenergy and exists_and_valid(caravan_data.entity) then
		local entity = caravan_data.entity
		local _, player = next(game.connected_players)
		player = player or game.players[1]
		entity.surface.create_entity{
			name = entity.name,
			position = player.position,
			force = entity.force_index,
			player = player,
			create_build_effect_smoke = false,
			raise_built = true
		}
		entity.destroy()
		migrated = migrated + 1
	end

	if caravan_data.is_aerial
	or not caravan_data.unit_number
	or not caravan_data.entity
	or not caravan_data.entity.valid then
		local inventory = caravan_data.inventory
		local fuel_inventory = caravan_data.fuel_inventory
		if exists_and_valid(inventory) then inventory.destroy() end
		if exists_and_valid(fuel_inventory) then fuel_inventory.destroy() end
		goto continue
	end
	new[caravan_data.unit_number] = caravan_data
	found = true
	::continue::
end
global.caravans = new
if found then
	global.caravan_queue = nil
end

if migrated > 0 then
	game.print('Failed to migrate ' .. migrated .. ' aerial turbines into the new system. Since I\'m so nice, I teleported all of them to your position. Make sure to mine them and place them back so they actually work.')
end