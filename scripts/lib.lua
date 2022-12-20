_G.gui_events = {
	[defines.events.on_gui_click] = {},
	[defines.events.on_gui_confirmed] = {},
	[defines.events.on_gui_text_changed] = {},
	[defines.events.on_gui_checked_state_changed] = {},
	[defines.events.on_gui_selection_state_changed] = {},
	[defines.events.on_gui_checked_state_changed] = {},
	[defines.events.on_gui_elem_changed] = {},
	[defines.events.on_gui_value_changed] = {},
	[defines.events.on_gui_location_changed] = {},
	[defines.events.on_gui_selected_tab_changed] = {},
	[defines.events.on_gui_switch_state_changed] = {}
}
function _G.process_gui_event(event)
	if event.element and event.element.valid then
		for pattern, f in pairs(gui_events[event.name]) do
			if event.element.name:match(pattern) then f(event); return end
		end
	end
end

script.on_event(defines.events.on_gui_selection_state_changed, process_gui_event)
script.on_event(defines.events.on_gui_switch_state_changed, process_gui_event)
script.on_event(defines.events.on_gui_value_changed, process_gui_event)
script.on_event(defines.events.on_gui_confirmed, process_gui_event)
script.on_event(defines.events.on_gui_elem_changed, process_gui_event)
script.on_event(defines.events.on_gui_text_changed, process_gui_event)

local basic_item_types = {['item'] = true, ['capsule'] = true, ['gun'] = true, ['rail-planner'] = true, ['module'] = true}
function _G.check_for_basic_item(item)
	local items_with_metadata = global.items_with_metadata
	if not items_with_metadata then
		items_with_metadata = {}
		for item_name, prototype in pairs(game.item_prototypes) do
			if not basic_item_types[prototype.type] then
				items_with_metadata[item_name] = true
			end
		end
		global.items_with_metadata = items_with_metadata
	end
	return not items_with_metadata[item]
end

function _G.transfer_item(input_inv, output_inv, item, count)
	if not item or not count then error('Invalid item') end
	local inserted_count = output_inv.insert{name = item, count = count}
	if inserted_count > 0 then
		input_inv.remove{name = item, count = inserted_count}
	end
	return inserted_count
end

local function shuffle(t)
	local keys = {}
	local n = 0
	for k in pairs(t) do
		n = n + 1
		keys[n] = k
	end

	while n > 1 do
		local k = math.random(n)
		keys[n], keys[k] = keys[k], keys[n]
		n = n - 1
	end

	return keys
end

-- Like normal pairs(), but randomized
function _G.shuffled_pairs(t)
	local shuffled_keys = shuffle(t)
	local i = 0
	return function()
		i = i + 1
		local key = shuffled_keys[i]
		if key then
			return key, t[key]
		end
	end
end