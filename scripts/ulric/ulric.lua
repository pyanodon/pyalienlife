Ulric = {}
Ulric.events = {}

Ulric.transformation_time = 60 * 60 * 10 -- ticks

Ulric.events.on_init = function()
	storage.ulricman_timers = storage.ulricman_timers or {}
end

Ulric.events.used_capsule = function(event)
	if event.item.name ~= 'ulric-infusion' then return end

	local player = game.get_player(event.player_index)
	local cursor_stack = player.cursor_stack
	local character = player.character
	if not character or not character.valid or character.name == 'ulric-man' then
		if cursor_stack then
			if cursor_stack.valid_for_read then
				cursor_stack.count = cursor_stack.count + 1
			else
				cursor_stack.set_stack{name = 'ulric-infusion', count = 1}
			end
		end
		return
	end

	local ulric = player.surface.create_entity{
		name = 'ulric-man',
		force = player.force,
		position = player.position,
		create_build_effect_smoke = false,
		move_stuck_players = false
	}

	Ulric.transfer_character_inventory(character, ulric)
	player.character = ulric
	Caravan.entity_changed_unit_number(character, ulric)
	character.destroy()
	player.play_sound{path = 'ulric-man-transform'}

	storage.ulricman_timers[player.index] = Ulric.transformation_time
end

local update_rate = 397
Ulric.events[update_rate] = function()
	for k, ticks_remaning in pairs(storage.ulricman_timers) do
		ticks_remaning = ticks_remaning - update_rate
		storage.ulricman_timers[k] = ticks_remaning
		if ticks_remaning <= 0 then
			local player = game.get_player(k)
			local ulric = player.character
			if not ulric then goto injection end

			local injection_equipment = ulric.grid and ulric.grid.find('ulric-infusion-equipment')
			if injection_equipment and injection_equipment.energy > injection_equipment.max_energy / 2 then
				local inventory = ulric.get_main_inventory()
				if inventory.get_item_count('ulric-infusion') > 0 then
					inventory.remove{name = 'ulric-infusion', count = 1}
					storage.ulricman_timers[k] = Ulric.transformation_time
					goto injection
				end
			end

			if ulric.name == 'ulric-man' then
				local character = player.surface.create_entity{
					name = 'character',
					force = player.force,
					position = player.position,
					create_build_effect_smoke = false,
					move_stuck_players = false
				}

				Ulric.transfer_character_inventory(ulric, character)
				player.character = character
				Caravan.entity_changed_unit_number(ulric, character)
				ulric.destroy()
				player.play_sound{path = 'ulric-man-untransform'}
			end

			storage.ulricman_timers[k] = nil
		end

		::injection::
	end
end

local inventories = {
	defines.inventory.character_main,
	defines.inventory.god_main,
	defines.inventory.editor_main,
	defines.inventory.character_guns,
	defines.inventory.character_ammo,
	defines.inventory.character_armor,
	defines.inventory.character_vehicle,
	defines.inventory.character_trash,
	defines.inventory.editor_guns,
	defines.inventory.editor_ammo,
	defines.inventory.editor_armor,
}
Ulric.transfer_character_inventory = function(old, new)
	for _, inventory in pairs(inventories) do
		local old_inventory = old.get_inventory(inventory)
		if old_inventory then
			local new_inventory = new.get_inventory(inventory) or new.get_main_inventory()
			for i = 1, #old_inventory do
				local old_stack = old_inventory[i]
				if old_stack.valid_for_read then
					local original_count = old_stack.count
					local inserted_count = new_inventory.insert(old_stack)
					if original_count ~= inserted_count then
						old_stack.count = original_count - inserted_count
						new.surface.spill_item_stack(new.position, old_stack, true, nil, false)
					end
				end
				old_stack.clear()
			end
			if old_inventory.is_filtered() and new_inventory.supports_filters() then
				for i = 1, math.min(#old_inventory, #new_inventory) do
					local filter = old_inventory.get_filter(i)
					if filter then
						new_inventory.set_filter(i, filter)
					end
				end
			end
		end
	end

	if old.cursor_stack and old.cursor_stack.valid_for_read and new.cursor_stack then
		new.cursor_stack.transfer_stack(old.cursor_stack)
	end

	for i = 1, 1000 do -- no way to find the max # of logistic requests. lets just put a high number like 1000 and pray it works
		new.set_personal_logistic_slot(i, old.get_personal_logistic_slot(i))
	end
end