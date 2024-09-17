local caravan_actions = {
	['outpost'] = {
		'time-passed',
		'store-food',
		'fill-inventory',
		'empty-inventory',
		'item-count',
		'inverse-item-count',
		'circuit-condition'
	},
	['character'] = {
		'time-passed',
		'store-food',
		'fill-inventory',
		'empty-inventory',
		'item-count',
		'inverse-item-count',
		'empty-autotrash'
	},
	['unit'] = {
		'time-passed',
		'store-food',
		'fill-inventory',
		'empty-inventory',
		'item-count',
		'inverse-item-count',
	},
	['cargo-wagon'] = {
		'time-passed',
		'fill-inventory',
		'empty-inventory',
		'item-count',
		'inverse-item-count',
	},
	['electric-pole'] = {
		'time-passed',
		'circuit-condition'
	},
	['default'] = {
		'time-passed'
	}
}

local prototypes = {
	caravan = {
		inventory_size = 30,
		opens_player_inventory = true,
		fuel_size = 1,
		destructible = false,
		outpost = 'outpost',
		favorite_foods = {
			['brain'] = 2,
			['auog-food-01'] = 4,
			['workers-food'] = 10,
			['workers-food-02'] = 30,
			['workers-food-03'] = 50
		},
		actions = caravan_actions,
		camera_zoom = 0.8,
		placeable_by = 'caravan',
		map_tag = {
			type = 'virtual',
			name = 'caravan-map-tag-mk01'
		},
		requeue_required = true,
		pathfinder_flags = {
			cache = false
		}
	},
	flyavan = {
		inventory_size = 90,
		opens_player_inventory = true,
		fuel_size = 2,
		destructible = false,
		outpost = 'outpost-aerial',
		favorite_foods = {
			['workers-food'] = 5,
			['gastrocapacitor'] = 50
		},
		actions = caravan_actions,
		camera_zoom = 0.5,
		placeable_by = 'flyavan',
		map_tag = {
			type = 'virtual',
			name = 'caravan-map-tag-mk02'
		},
		requeue_required = true,
		pathfinder_flags = {
			allow_destroy_friendly_entities = true,
			allow_paths_through_own_entities = true
		}
	},
	nukavan = {
		inventory_size = 10,
		opens_player_inventory = true,
		fuel_size = 1,
		outpost = 'outpost',
		favorite_foods = {
			['brain'] = 2,
			['auog-food-01'] = 4,
			['workers-food'] = 10,
			['workers-food-02'] = 30,
			['workers-food-03'] = 50
		},
		actions = {
			['default'] = {'detonate'}
		},
		placeable_by = 'nukavan',
		map_tag = {
			type = 'virtual',
			name = 'caravan-map-tag-mk03'
		},
		pathfinder_flags = {
			cache = false
		}
	}
}

prototypes['caravan-turd'] = prototypes['caravan']
prototypes['flyavan-turd'] = prototypes['flyavan']
prototypes['nukavan-turd'] = prototypes['nukavan']
prototypes['caravan-turd'].placeable_by = 'caravan-turd'
prototypes['flyavan-turd'].placeable_by = 'flyavan-turd'
prototypes['nukavan-turd'].placeable_by = 'nukavan-turd'

local function get_outpost_inventory(outpost)
	local type = outpost.type
	if type == 'character' then
		return outpost.get_main_inventory()
	elseif type == 'container' then
		return outpost.get_inventory(defines.inventory.chest)
	elseif type == 'cargo-wagon' then
		return outpost.get_inventory(defines.inventory.cargo_wagon)
	elseif prototypes[outpost.name] then
		local caravan_data = storage.caravans[outpost.unit_number]
		return caravan_data.inventory
	end
end

local function transfer_all_items(input_inventory, output_inventory)
	if input_inventory.is_empty() or output_inventory.is_full() then return end
	for item, count in pairs(input_inventory.get_contents()) do
		local stack = {name = item, count = count}
		if output_inventory.can_insert(stack) then
			local inserted_count = output_inventory.insert{name = item, count = count}
			if inserted_count ~= 0 then
				input_inventory.remove{name = item, count = inserted_count}
			end
		end
	end
end

local function transfer_filtered_items(input_inventory, output_inventory, item, goal) -- TODO: make it work with complex items
	local inventory_count = input_inventory.get_item_count(item)

	if inventory_count == goal then
		return true
	elseif inventory_count > goal then
		local inserted_count = output_inventory.insert{name = item, count = inventory_count - goal}
		if inserted_count ~= 0 then input_inventory.remove{name = item, count = inserted_count} end
		return inserted_count == inventory_count - goal
	elseif inventory_count < goal then
		local removed_count = output_inventory.remove{name = item, count = goal - inventory_count}
		if removed_count ~= 0 then
			local inserted_count = input_inventory.insert{name = item, count = removed_count}
			local couldnt_fit = removed_count - inserted_count
			if couldnt_fit ~= 0 then output_inventory.insert{name = item, count = couldnt_fit}; return false end
		end
		return removed_count == goal - inventory_count
	end
end

local function evaluate_signal(entity, signal)
	local result = entity.get_merged_signal(signal)
	if result == 0 and entity.type == 'container' and signal.type == 'item' then
		return entity.get_inventory(defines.inventory.chest).get_item_count(signal.name)
	end
	return result
end

Caravan.actions = {
	['time-passed'] = function(caravan_data, schedule, action)
		if action.timer == 1 then
			action.timer = nil
			return true
		end
		action.timer = action.timer - 1
		return false
	end,

	['store-food'] = function (caravan_data, schedule, action)
		local chest = schedule.entity
		if not chest or not chest.valid then return true end
		local outpost_inventory = get_outpost_inventory(chest)
		if not outpost_inventory then return true end
		local entity = caravan_data.entity
		local fuel = caravan_data.fuel_inventory

		for item, count in pairs(outpost_inventory.get_contents()) do
			if prototypes[entity.name].favorite_foods[item] then
				local inserted_count = fuel.insert{name = item, count = count}
				if inserted_count ~= 0 then outpost_inventory.remove{name = item, count = inserted_count} end
			end
		end

		return true
	end,

	['fill-inventory'] = function(caravan_data, schedule, action)
		local chest = schedule.entity
		if not chest or not chest.valid then return true end
		local outpost_inventory = get_outpost_inventory(chest)
		if not outpost_inventory then return true end
		local inventory = caravan_data.inventory

		transfer_all_items(outpost_inventory, inventory)
		return action.async or  inventory.is_full()
	end,

	['empty-inventory'] = function(caravan_data, schedule, action)
		local chest = schedule.entity
		if not chest or not chest.valid then return true end
		local outpost_inventory = get_outpost_inventory(chest)
		if not outpost_inventory then return true end
		local inventory = caravan_data.inventory

		transfer_all_items(inventory, outpost_inventory)
		return action.async or inventory.is_empty()
	end,

	['empty-autotrash'] = function(caravan_data, schedule, action)
		local character = schedule.entity
		if not character or not character.valid then return true end
		local autotrash_inventory = character.get_inventory(defines.inventory.character_trash)
		if not autotrash_inventory then return true end
		local inventory = caravan_data.inventory

		transfer_all_items(autotrash_inventory, inventory)
		return true
	end,

	['item-count'] = function(caravan_data, schedule, action)
		local chest = schedule.entity
		if not chest or not chest.valid then return false end
		local outpost_inventory = get_outpost_inventory(chest)
		if not outpost_inventory then return false end
		local caravan_inventory = caravan_data.inventory
		local goal = action.item_count
		local item = action.elem_value
		if not goal or not item then return false end
		local result= transfer_filtered_items(caravan_inventory, outpost_inventory, item, goal)
		return action.async or result
	end,

	['inverse-item-count'] = function(caravan_data, schedule, action)
		local chest = schedule.entity
		if not chest or not chest.valid then return false end
		local outpost_inventory = get_outpost_inventory(chest)
		if not outpost_inventory then return false end
		local caravan_inventory = caravan_data.inventory
		local goal = action.item_count
		local item = action.elem_value
		if not goal or not item then return false end
		local  result =transfer_filtered_items(outpost_inventory, caravan_inventory, item, goal)
		return action.async or result
	end,

	['detonate'] = function(caravan_data, schedule, action)
		local entity = caravan_data.entity
		entity.surface.create_entity{
			name = 'atomic-rocket',
			position = entity.position,
			target = entity,
			speed = 1,
			max_range = 0.1
		}
		entity.die('enemy', entity)
		return 'nuke'
	end,

	['circuit-condition'] = function(caravan_data, schedule, action)
		local outpost = schedule.entity
		if not outpost or not outpost.valid then return true end

		local right = action.circuit_condition_right
		local left = action.circuit_condition_left
		if not right or not left then return false end

		return evaluate_signal(outpost, right) == evaluate_signal(outpost, left)
	end
}

Caravan.free_actions = { -- actions that don't use fuel
	['time-passed'] = true,
	['store-food'] = true,
	['detonate'] = true,
	['circuit-condition'] = true
}

return prototypes
