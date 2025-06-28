local caravan_prototypes = require "caravan-prototypes"
require "caravan-gui-shared"

---Given a action index in a caravan GUI, returns the GUI style and sprite for the corresponding button.
---@param caravan_data Caravan
---@param action_list_type CaravanActionListType
---@param schedule_id int?
---@param action_id int?
---@param interrupt_name string?
local function generate_button_status(caravan_data, action_list_type, schedule_id, action_id, interrupt_name)
    assert(action_list_type)
    local style = "train_schedule_action_button"
    local sprite = "utility/play"

    if action_list_type == Caravan.action_list_types.standard_schedule then
        if caravan_data.schedule_id == schedule_id and (not action_id or action_id == caravan_data.action_id) then
            style = "py_clicked_train_schedule_action_button"
            sprite = "utility/stop"
        end
    elseif action_list_type == Caravan.action_list_types.interrupt_targets then
        local schedule = caravan_data.schedule[caravan_data.schedule_id]
        if schedule and schedule.temporary and schedule.temporary.interrupt_name == interrupt_name then
            if schedule.temporary.schedule_id == schedule_id then
                if not action_id or action_id == caravan_data.action_id then
                    style = "py_clicked_train_schedule_action_button"
                    sprite = "utility/stop"
                end
            end
        end
    end
    if schedule_id then
        local interrupt = storage.interrupts[interrupt_name] 
        local schedule = interrupt and interrupt.schedule[schedule_id] or caravan_data.schedule[schedule_id]
        if schedule and schedule.entity and (not schedule.entity.valid or schedule.entity.surface ~= caravan_data.entity.surface) then
            sprite = "utility/close_fat"
        end
    end
    
    return style, sprite
end

---Given a schedule index in a caravan GUI, returns the GUI style and tooltip for the corresponding schedule label
---@param caravan_data Caravan
---@param action_list_type CaravanActionListType
---@param schedule_id int
---@param interrupt_name string?
local function generate_schedule_label_status(caravan_data, action_list_type, schedule_id, interrupt_name)
    assert(action_list_type)
    local style
    local tooltip = nil
    local schedule

    if action_list_type == Caravan.action_list_types.standard_schedule then
        schedule = caravan_data.schedule[schedule_id]
    elseif action_list_type == Caravan.action_list_types.interrupt_targets then
        schedule = storage.interrupts[interrupt_name].schedule[schedule_id]
    end
    if schedule then
        if schedule.entity and (not schedule.entity.valid or schedule.entity.surface ~= caravan_data.entity.surface) then
            style = "train_schedule_unavailable_stop_label"
            tooltip = {"caravan-gui.destination-unavailable"}
        else
            style = schedule.temporary and "black_squashable_label" or "clickable_squashable_label"
        end
    end
    
    return style, tooltip
end

function Caravan.update_interrupt_gui_button_status(caravan_data)
    local action_list_type = Caravan.action_list_types.interrupt_targets
    for _, player in pairs(game.connected_players) do
        local interrupt_gui = Caravan.get_interrupt_gui(player)
        if interrupt_gui and interrupt_gui.tags.unit_number == caravan_data.unit_number then
            local targets_gui = interrupt_gui.window_frame.targets_scroll_pane_frame.targets_scroll_pane
            local tags = targets_gui.py_add_outpost.tags
            targets_gui.clear()
            local interrupt_name = interrupt_gui.tags.interrupt_name
            local interrupt_data = storage.interrupts[interrupt_name]
            assert(interrupt_data, "Missing interrupt_data " .. interrupt_name)
            Caravan.build_schedule_list_gui(targets_gui, caravan_data, interrupt_data)
            targets_gui.add {type = "button", name = "py_add_outpost", tags = tags, style = "train_schedule_add_station_button", caption = {"caravan-gui.add-outpost"}}
        end
    end
end

-- TODO: refactor parameters
---@param gui LuaGuiElement
---@param actions CaravanAction[]
---@param caravan_data Caravan
---@param i integer?
---@param interrupt_name string
function Caravan.build_action_list_gui(gui, actions, caravan_data, i, interrupt_name)
    local unit_number = caravan_data.unit_number
    gui.tags.action_list_type = gui.tags.action_list_type or Caravan.action_list_types.interrupt_targets -- https://github.com/pyanodon/pybugreports/issues/909 REMOVE IN PYSEX
    local action_list_type = gui.tags.action_list_type --[[@as CaravanActionListType]]
    assert(action_list_type)
    for j, action in ipairs(actions) do
        local tags = {unit_number = unit_number, action_list_type = action_list_type, schedule_id = i, action_id = j, interrupt_name = interrupt_name}

        local action_frame = gui.add {type = "frame", style = "train_schedule_condition_frame"}
        action_frame.style.height = 36
        action_frame.style.right_padding = 12
        action_frame.style.left_margin = 32

        -- Factorio mod gui is overcomplicated, hardcoded values is the only solution i found that actually works
        if action_list_type == Caravan.action_list_types.standard_schedule or action_list_type == Caravan.action_list_types.interrupt_targets then
            action_frame.style.width = 392 - 28
        else
            action_frame.style.width = 392
        end

        if action_list_type ~= Caravan.action_list_types.interrupt_condition then
            local playbutton = action_frame.add {type = "sprite-button", name = "py_action_play", tags = tags}
            playbutton.style, playbutton.sprite = generate_button_status(caravan_data, action_list_type, i, j, interrupt_name)
        end

        local label = action_frame.add {type = "label", style = "squashable_label_with_left_padding", caption = action.localised_name}
        local empty = action_frame.add {type = "empty-widget", style = "py_empty_widget"}
        empty.style.horizontally_stretchable = true

        if action.type == "time-passed" then
            local textfield = action_frame.add {type = "textfield", name = "py_time_passed_text", style = "py_compact_slider_value_textfield", text = tostring(action.wait_time or 5), tags = tags}
            textfield.numeric = true
            textfield.allow_decimal = false
            textfield.allow_negative = false
            action_frame.add {type = "label", caption = "s"}.style.left_margin = -5
        elseif action.type == "load-caravan" or action.type == "unload-caravan" or action.type == "load-target" or action.type == "unload-target" then
            local itemselect = action_frame.add {
                type = "choose-elem-button", name = "py_item_value", style = "train_schedule_item_select_button",
                tags = tags, elem_type = "item", elem_filters = filters
            }
            itemselect.elem_value = action.elem_value
            action_frame.add {type = "label", caption = "="}

            local textfield = action_frame.add {
                type = "textfield",
                name = "py_item_count",
                style = "py_compact_slider_value_textfield",
                tags = tags,
                text = tostring(action.item_count or 0),
                lose_focus_on_confirm = true,
            }
            textfield.style.left_padding = 0
            textfield.style.right_padding = 0
            textfield.numeric = true
            textfield.allow_decimal = false
            textfield.allow_negative = false
        elseif action.type == "circuit-condition" then
            local circuit_condition_left = action_frame.add {
                type = "choose-elem-button", name = "py_circuit_condition_left", style = "train_schedule_item_select_button",
                tags = tags, elem_type = "signal"
            }
            circuit_condition_left.elem_value = action.circuit_condition_left

            local selected_index = action.operator or 3
            action_frame.add {
                type = "drop-down", items = {">", "<", "=", "≥", "≤", "≠"}, selected_index = selected_index, style = "train_schedule_circuit_condition_comparator_dropdown",
                name = "py_caravan_condition_operator", tags = tags,
            }

            local circuit_condition_right = action_frame.add {
                type = "choose-elem-button", name = "py_circuit_condition_right", style = "train_schedule_item_select_button",
                tags = tags, elem_type = "signal"
            }
            circuit_condition_right.elem_value = action.circuit_condition_right
        elseif action.type == "circuit-condition-static" then
            -- whoops, migration fail. https://github.com/pyanodon/pybugreports/issues/880
            if type(action.circuit_condition_left) == "number" then
                action.circuit_condition_left, action.circuit_condition_right = action.circuit_condition_right, action.circuit_condition_left
            end

            local circuit_condition_left = action_frame.add {
                type = "choose-elem-button", name = "py_circuit_condition_left", style = "train_schedule_item_select_button",
                tags = tags, elem_type = "signal"
            }
            circuit_condition_left.elem_value = action.circuit_condition_left

            local selected_index = action.operator or 3
            action_frame.add {
                type = "drop-down", items = {">", "<", "=", "≥", "≤", "≠"}, selected_index = selected_index, style = "train_schedule_circuit_condition_comparator_dropdown",
                name = "py_caravan_condition_operator", tags = tags,
            }

            local value = action_frame.add {type = "textfield", name = "py_value_condition_right", style = "py_compact_slider_value_textfield", tags = tags, text = action.circuit_condition_right}
            value.numeric = true
            value.allow_decimal = false
            value.allow_negative = true
        elseif action.type == "food-count" or action.type == "caravan-item-count" or action.type == "target-item-count" then
            local filters
            if action.type == "food-count" then filters = {{filter = "name", name = Caravan.foods.all}} end
            local itemselect = action_frame.add {
                type = "choose-elem-button", name = "py_item_value", style = "train_schedule_item_select_button",
                tags = tags, elem_type = "item",
                elem_filters = filters
            }
            itemselect.elem_value = action.elem_value

            local selected_index = action.operator or 3
            action_frame.add {
                type = "drop-down", items = {">", "<", "=", "≥", "≤", "≠"}, selected_index = selected_index, style = "train_schedule_circuit_condition_comparator_dropdown",
                name = "py_caravan_condition_operator", tags = tags,
            }

            local value = action_frame.add {type = "textfield", name = "py_value_condition_right", style = "py_compact_slider_value_textfield", tags = tags, text = action.circuit_condition_right}
            value.numeric = true
            value.allow_decimal = false
            value.allow_negative = true
        elseif action.type == "store-specific-food" then
            local itemselect = action_frame.add {
                type = "choose-elem-button", name = "py_item_value", style = "train_schedule_item_select_button",
                tags = tags, elem_type = "item",
                elem_filters = {{filter = "name", name = Caravan.foods.all}}
            }
            itemselect.elem_value = action.elem_value
            action_frame.add {type = "label", caption = "≥"}

            local textfield = action_frame.add {
                type = "textfield",
                name = "py_food_count",
                style = "py_compact_slider_value_textfield",
                tags = tags,
                text = tostring(action.item_count or 0),
                lose_focus_on_confirm = true,
            }
            textfield.style.left_padding = 0
            textfield.style.right_padding = 0
            textfield.numeric = true
            textfield.allow_decimal = false
            textfield.allow_negative = false
        elseif action.type == "at-outpost" or action.type == "not-at-outpost" then
            action_frame.add {type = "sprite-button", name = "py_add_outpost", tags = tags, index = 1, style = "train_schedule_action_button", sprite = "utility/rename_icon"}

            local locale_key = "caravan-actions." .. action.type .. "2"
            local entity = action.entity
            if entity and entity.valid then
                label.caption = {locale_key, {"caravan-gui.entity-position", entity.localised_name, entity.position.x, entity.position.y}}
            else
                label.caption = {locale_key, {"caravan-gui.not-specified"}}
            end
        end

        if action.type == "fill-inventory" or action.type == "empty-inventory" or action.type == "store-food" or action.type == "store-specific-food"
            or action.type == "load-caravan" or action.type == "unload-caravan" or action.type == "load-target" or action.type == "unload-target" then
            action_frame.add {
                type = "checkbox",
                name = "py_blocking_caravan",
                state = not action.async,
                tooltip = {"caravan-gui.wait"},
                tags = tags
            }
        end

        tags.up = true
        action_frame.add {
            type = "sprite-button", name = "py_shuffle_schedule_1", style = "py_schedule_move_button", tags = tags,
            sprite = "up-white", hovered_sprite = "up-black", clicked_sprite = "up-black"
        }
        tags.up = false
        action_frame.add {
            type = "sprite-button", name = "py_shuffle_schedule_2", style = "py_schedule_move_button", tags = tags,
            sprite = "down-white", hovered_sprite = "down-black", clicked_sprite = "down-black"
        }
        tags.up = nil
        action_frame.add {
            type = "sprite-button", name = "py_delete_schedule", style = "py_schedule_move_button", tags = tags,
            sprite = "utility/close", hovered_sprite = "utility/close_black", clicked_sprite = "utility/close_black"
        }
    end
end

---@param gui LuaGuiElement
---@param caravan_data Caravan
---@param interrupt_data table?
function Caravan.build_schedule_list_gui(gui, caravan_data, interrupt_data)
    local unit_number = caravan_data.unit_number
    local prototype = caravan_prototypes[caravan_data.entity.name]
    if interrupt_data then assert(interrupt_data.schedule) end
    local schedule = interrupt_data and interrupt_data.schedule or caravan_data.schedule
    local action_list_type = gui.tags.action_list_type

    local tags = {unit_number = unit_number, action_list_type = action_list_type}
    if interrupt_data then
        tags.action_list_type = Caravan.action_list_types.interrupt_targets
        tags.interrupt_name = interrupt_data.name
    else
        tags.action_list_type = Caravan.action_list_types.standard_schedule
    end

    for i, schedule in ipairs(schedule) do
        tags.schedule_id = i

        local schedule_flow = gui.add {type = "flow", direction = "vertical", tags = {action_list_type = action_list_type}}
        schedule_flow.style.horizontal_align = "right"
        schedule_flow.style.vertically_stretchable = false

        local style = schedule.temporary and "train_schedule_temporary_station_frame" or "train_schedule_station_frame"
        local schedule_frame = schedule_flow.add {type = "frame", style = style}
        schedule_frame.style.horizontally_stretchable = true
        schedule_frame.style.vertically_stretchable = true
        schedule_frame.style.height = 36
        schedule_frame.style.right_padding = 12

        local playbutton = schedule_frame.add {type = "sprite-button", name = "py_schedule_play", tags = tags}
        ---@diagnostic disable-next-line: param-type-mismatch
        playbutton.style, playbutton.sprite = generate_button_status(caravan_data, tags.action_list_type, i, nil, tags.interrupt_name)
        local label = schedule_frame.add {type = "label", name = "py_outpost_name", tags = tags, caption = schedule.localised_name}
        label.style, label.tooltip = generate_schedule_label_status(caravan_data, tags.action_list_type, i, tags.interrupt_name)

        style = schedule.temporary and "py_schedule_temporary_move_button" or "py_schedule_move_button"
        schedule_frame.add {type = "empty-widget", style = "py_empty_widget", tags = tags}

        if schedule.temporary then
            tags.up = true
            schedule_frame.add {
                type = "sprite-button", name = "py_shuffle_schedule_1", style = style, tags = tags,
                sprite = "up-black"
            }
            tags.up = false
            schedule_frame.add {
                type = "sprite-button", name = "py_shuffle_schedule_2", style = style, tags = tags,
                sprite = "down-black"
            }
            tags.up = nil
            schedule_frame.add {
                type = "sprite-button", name = "py_delete_schedule", style = style, tags = tags,
                sprite = "utility/close_black"
            }
        else
            tags.up = true
            schedule_frame.add {
                type = "sprite-button", name = "py_shuffle_schedule_1", style = style, tags = tags,
                sprite = "up-white", hovered_sprite = "up-black", clicked_sprite = "up-black"
            }
            tags.up = false
            schedule_frame.add {
                type = "sprite-button", name = "py_shuffle_schedule_2", style = style, tags = tags,
                sprite = "down-white", hovered_sprite = "down-black", clicked_sprite = "down-black"
            }
            tags.up = nil
            schedule_frame.add {
                type = "sprite-button", name = "py_delete_schedule", style = style, tags = tags,
                sprite = "utility/close", hovered_sprite = "utility/close_black", clicked_sprite = "utility/close_black"
            }
        end

        Caravan.build_action_list_gui(schedule_flow, schedule.actions, caravan_data, i, tags.interrupt_name)

        local entity = schedule.entity --[[@as LuaEntity]]
        local valid_actions = Caravan.get_valid_actions_for_entity(caravan_data, entity)
        valid_actions = table.map(table.invert(valid_actions), function(v) return {"caravan-actions." .. v, v} end)
        local py_add_action = schedule_flow.add {type = "drop-down", name = "py_add_action", items = valid_actions, tags = tags}
        -- py_add_action.style.width = 363
        py_add_action.style.height = 36
        py_add_action.style.horizontally_stretchable = true
        py_add_action.style.right_padding = 12
        py_add_action.style.left_margin = 32
    end
end

---Creates the GUI pane for the caravan's schedule. Tries to lossely follow the vanilla train schedule GUI.
---@param gui LuaGuiElement
---@param caravan_data Caravan
function Caravan.build_schedule_gui(gui, caravan_data)
    Caravan.build_schedule_list_gui(gui, caravan_data)
    gui.add {type = "button", name = "py_add_outpost", style = "train_schedule_add_station_button", caption = {"caravan-gui.add-outpost"}}

    --- Main interrupts gui. TODO: separate into its own function
    local interrupt_flow = gui.add {type = "flow", direction = "vertical"}
    interrupt_flow.style.horizontal_align = "right"
    interrupt_flow.style.vertically_stretchable = false
    interrupt_flow.style.right_margin = -12

    local interrupt_frame = interrupt_flow.add {type = "frame", style = "train_schedule_station_frame"}
    interrupt_frame.style.horizontally_stretchable = true
    interrupt_frame.style.vertically_stretchable = true
    interrupt_frame.style.height = 36

    interrupt_frame.add {type = "label", style = "subheader_semibold_label", caption = {"gui-interrupts.interrupt-header"}, tooltip = {"caravan-gui.interrupt-header-tooltip"}}

    for i, interrupt_name in pairs(caravan_data.interrupts) do
        local tags = {
            unit_number = caravan_data.unit_number,
            action_list_type = Caravan.action_list_types.interrupt_schedule,
            schedule_id = i,
            interrupt_name = interrupt_name
        }

        local action_frame = gui.add {type = "frame", style = "train_schedule_condition_frame"}
        action_frame.style.horizontally_stretchable = true
        action_frame.style.vertically_stretchable = true
        action_frame.style.height = 36
        action_frame.style.right_padding = 12
        -- action_frame.style.right_margin = -12
        action_frame.style.width = 0

        local playbutton = action_frame.add {type = "sprite-button", name = "py_interrupt_play", tags = tags, style = "train_schedule_action_button", sprite = "utility/play"}
        action_frame.add {type = "label", style = "squashable_label_with_left_padding", caption = interrupt_name}
        action_frame.add {type = "empty-widget", style = "py_empty_widget"}

        action_frame.add {
            type = "sprite-button", name = "py_edit_interrupt_button", style = "train_schedule_action_button",
            tags = tags,
            sprite = "utility/rename_icon",
        }

        tags.up = true
        action_frame.add {
            type = "sprite-button", name = "py_shuffle_schedule_1", style = "py_schedule_move_button",
            tags = tags,
            sprite = "up-white", hovered_sprite = "up-black", clicked_sprite = "up-black"
        }
        tags.up = false
        action_frame.add {
            type = "sprite-button", name = "py_shuffle_schedule_2", style = "py_schedule_move_button", tags = tags,
            sprite = "down-white", hovered_sprite = "down-black", clicked_sprite = "down-black"
        }
        tags.up = nil

        action_frame.add {
            type = "sprite-button", name = "py_delete_schedule", style = "py_schedule_move_button", tags = tags,
            sprite = "utility/close", hovered_sprite = "utility/close_black", clicked_sprite = "utility/close_black"
        }
    end

    gui.add {type = "button", name = "py_add_interrupt_button", style = "train_schedule_add_station_button", caption = {"gui-train.add-interrupt"}}
end

---Creates a caravan GUI. The caravan GUI consists of a lua inventory, a camera, a fuel inventory, and a schedule pane.
---@param player LuaPlayer
---@param entity LuaEntity
---@param from_remote_manager? boolean Is this GUI opened from the py codex? If so, hide the inventory so that the player cannot teleport items.
function Caravan.build_gui(player, entity, from_remote_manager)
    local caravan_data = storage.caravans[entity.unit_number]
    local prototype = caravan_prototypes[entity.name]

    local main_frame
    if from_remote_manager then
        player.opened = nil
        main_frame = player.gui.screen.add {type = "frame", name = "caravan_gui", caption = caravan_data.entity.localised_name, direction = "vertical"}
        main_frame.auto_center = true
        player.opened = main_frame
    else
        player.opened = caravan_data.inventory
        if player.gui.relative.caravan_gui then
            player.gui.relative.caravan_gui.destroy()
        end
        main_frame = player.gui.relative.add {
            type = "frame", name = "caravan_gui", caption = caravan_data.entity.localised_name, direction = "vertical",
            anchor = {
                gui = defines.relative_gui_type.script_inventory_gui,
                position = defines.relative_gui_position.right
            },
        }
    end
    main_frame.style.width = 448
    main_frame.style.minimal_height = 700
    main_frame.tags = {unit_number = entity.unit_number}

    local content_frame = main_frame.add {type = "frame", name = "content_frame", direction = "vertical", style = "inside_shallow_frame_with_padding"}
    content_frame.style.vertically_stretchable = true
    local content_flow = content_frame.add {type = "flow", name = "content_flow", direction = "vertical"}
    content_flow.style.vertical_spacing = 8
    content_flow.style.margin = {-4, 0, -4, 0}
    content_flow.style.vertical_align = "center"

    local caption_frame = content_flow.add {type = "frame", name = "caption_frame", direction = "horizontal", style = "subheader_frame"}
    caption_frame.style.height = 36
    caption_frame.style.horizontally_stretchable = true
    caption_frame.style.top_margin = -8
    caption_frame.style.right_margin = -12
    caption_frame.style.left_margin = -12
    caption_frame.style.left_padding = 8

    local caption_flow = caption_frame.add {type = "flow", name = "caption_flow", direction = "horizontal"}
    caption_flow.style.vertical_align = "center"

    local title = caption_flow.add {
        name = "title",
        type = "label",
        caption = Caravan.get_name(caravan_data),
        style = "train_stop_subheader",
    }
    title.style.maximal_width = 300
    title.style.left_padding = 0

    local rename_button = caption_flow.add {
        type = "sprite-button",
        name = "py_rename_caravan_button",
        style = "mini_button_aligned_to_text_vertically_when_centered",
        sprite = "rename_icon_small_black",
        tags = {unit_number = entity.unit_number, maximal_width = 300}
    }
    caption_flow.add {type = "empty-widget", style = "py_empty_widget"}

    local refocus = caption_flow.add {
        type = "sprite-button",
        name = "py_refocus",
        style = "tool_button",
        sprite = "utility/center",
        tooltip = {"caravan-gui.refocus"},
        tags = {unit_number = caravan_data.unit_number}
    }
    -- refocus.style.size = {26, 26}
    refocus.visible = false

    local open_map_button = caption_flow.add {
        type = "sprite-button",
        name = "py_open_map_button",
        style = "tool_button",
        sprite = "utility/map",
        tooltip = {"caravan-gui.view-on-map"},
        tags = {unit_number = caravan_data.unit_number}
    }
    -- open_map_button.style.size = {26, 26}

    local status_flow = content_flow.add {type = "flow", name = "status_flow", direction = "horizontal"}
    status_flow.style.vertical_align = "center"
    local status_sprite = status_flow.add {type = "sprite", name = "status_sprite", style = "status_image"}
    status_flow.add {type = "label", name = "status_text"}

    local camera_frame = content_flow.add {type = "frame", name = "camera_frame", style = "py_nice_frame"}
    local camera = camera_frame.add {type = "camera", name = "camera", style = "py_caravan_camera", position = entity.position, surface_index = entity.surface.index}
    camera.entity = entity
    camera.visible = true
    camera.style.height = 155
    camera.zoom = prototype.camera_zoom or 1

    if caravan_data.fuel_inventory then
        local fuel_flow = content_flow.add {type = "flow", name = "fuel_flow", direction = "horizontal"}
        fuel_flow.style.vertical_align = "center"
        fuel_flow.style.horizontal_spacing = 8
        local favorite_food_tooltip = py.generate_favorite_food_tooltip(caravan_prototypes[entity.name].favorite_foods, "caravan-gui")
        local fuel_slot_flow = fuel_flow.add {type = "flow", name = "fuel_slot_flow", direction = "horizontal"}
        fuel_slot_flow.style.horizontal_spacing = 0
        for i = 1, #caravan_data.fuel_inventory do
            local fuel_slot = fuel_slot_flow.add {type = "sprite-button", name = "py_fuel_slot_" .. i, style = "inventory_slot", tags = {unit_number = caravan_data.unit_number, i = i}}
            fuel_slot.sprite = "slot_icon_food"
            fuel_slot.hovered_sprite = "slot_icon_food_black"
            local item_stack = caravan_data.fuel_inventory[i]
            if item_stack.valid_for_read then
                fuel_slot.elem_tooltip = {type = "item", name = item_stack.name}
            else
                fuel_slot.tooltip = favorite_food_tooltip
            end
        end
        fuel_flow.add {type = "progressbar", name = "fuel_bar", style = "burning_progressbar"}.style.horizontally_stretchable = true
    end

    local schedule_frame = content_flow.add {type = "frame", name = "schedule_frame", direction = "vertical", style = "py_nice_frame"}
    schedule_frame.style.vertically_stretchable = true

    local schedule_pane = schedule_frame.add {type = "scroll-pane", name = "schedule_pane", style = "py_schedule_scroll_pane",
        tags = {action_list_type = Caravan.action_list_types.standard_schedule}
    }
    schedule_pane.horizontal_scroll_policy = "never"
    schedule_pane.vertical_scroll_policy = "auto-and-reserve-space"
    schedule_pane.style.horizontally_stretchable = true
    schedule_pane.style.vertically_stretchable = true
    schedule_pane.style.right_padding = -12

    Caravan.update_gui(main_frame)
    Caravan.build_gui_connected(player, entity)
end

py.on_event(py.events.on_entity_clicked(), function(event)
    local player = game.get_player(event.player_index) --[[@as LuaPlayer]]
    -- If the player has a temporary item in their cursor, we don't let them open the GUI
    -- This includes the caravan controller, blueprint tool, etc
    local stack = player.cursor_stack
    if stack and stack.valid_for_read and stack.prototype.has_flag("only-in-cursor") then
        return
    end
    local entity = player.selected
    if not entity or not caravan_prototypes[entity.name] or not player.can_reach_entity(entity) then return end
    local caravan_data = Caravan.instantiate_caravan(entity)
    local existing = Caravan.get_caravan_gui(player)
    if existing then
        if existing.tags.unit_number == caravan_data.unit_number then
            return
        else
            player.opened = nil
        end
    end
    Caravan.build_gui(player, entity)
end)

---Resets the fuel inventory, the fuel bar, and the schedule pane of the caravan GUI to reflect the current state of the caravan.
---@param gui LuaGuiElement
---@param weak boolean? Optimization: If false, don't update the schedule pane.
function Caravan.update_gui(gui, weak)
    local caravan_data = storage.caravans[gui.tags.unit_number]
    if not Caravan.validity_check(caravan_data) then
        gui.destroy()
        return
    end
    local content_flow = gui.content_frame.content_flow
    local state, img = Caravan.status_img(caravan_data)
    content_flow.status_flow.status_text.caption = state
    content_flow.status_flow.status_sprite.sprite = img
    if caravan_data.fuel_inventory then
        for i = 1, #caravan_data.fuel_inventory do
            local stack = caravan_data.fuel_inventory[i]
            local element = content_flow.fuel_flow.fuel_slot_flow["py_fuel_slot_" .. i]
            if stack.valid_for_read then
                element.sprite = "item/" .. stack.name
                element.hovered_sprite = "item/" .. stack.name
                element.number = stack.count
                element.elem_tooltip = {type = "item", name = stack.name}
                element.tooltip = nil
            else
                element.sprite = "slot_icon_food"
                element.hovered_sprite = "slot_icon_food_black"
                element.number = nil
                local favorite_food_tooltip = py.generate_favorite_food_tooltip(caravan_prototypes[caravan_data.entity.name].favorite_foods, "caravan-gui")
                element.tooltip = favorite_food_tooltip
                element.elem_tooltip = nil
            end
        end
        content_flow.fuel_flow.fuel_bar.value = caravan_data.fuel_bar / caravan_data.last_eaten_fuel_value
    end

    if not weak then
        local schedule_pane = gui.content_frame.content_flow.schedule_frame.schedule_pane
        schedule_pane.clear()
        Caravan.build_schedule_gui(schedule_pane, caravan_data)
    end
end

---@param player LuaPlayer
function Caravan.update_interrupt_gui(player)
    local gui = Caravan.get_interrupt_gui(player)
    if not gui then return end
    local interrupt_data = storage.interrupts[gui.tags.interrupt_name]
    local caravan_data = storage.caravans[gui.tags.unit_number]
    gui.destroy()
    Caravan.build_interrupt_gui(player, caravan_data, interrupt_data.name)
end

py.on_event({defines.events.on_gui_closed, defines.events.on_player_changed_surface}, function(event)
    local player = game.get_player(event.player_index) --[[@as LuaPlayer]]

    if player.gui.relative.py_global_caravan_gui then
        player.gui.relative.py_global_caravan_gui.destroy()
    end
    if player.gui.screen.py_global_caravan_gui then
        player.gui.screen.py_global_caravan_gui.destroy()
    end
    if player.gui.relative.py_edit_interrupt_gui then
        player.gui.relative.py_edit_interrupt_gui.destroy()
    end

    if event.gui_type == defines.gui_type.script_inventory or event.gui_type == defines.gui_type.custom then
        local gui = Caravan.get_caravan_gui(player)
        if gui then gui.destroy() end
        if player.gui.relative.caravan_flow then
            player.gui.relative.caravan_flow.destroy()
        end
    end
end)

local function get_caravan_gui_in_flow(player)
    if player.gui.relative.caravan_flow then
        return player.gui.relative.caravan_flow.caravan_gui
    end
end

function Caravan.get_caravan_gui(player)
    local gui = player.gui.relative.caravan_gui or player.gui.screen.caravan_gui
    if gui then return gui end
end

function Caravan.get_interrupt_gui(player)
    return player.gui.relative.py_edit_interrupt_gui
end

---Creates a GUI for editing the interrupt
function Caravan.build_interrupt_gui(player, caravan_data, interrupt_name)
    if player.gui.relative.py_edit_interrupt_gui then
        player.gui.relative.py_edit_interrupt_gui.destroy()
    end
    local tags = {interrupt_name = interrupt_name, unit_number = caravan_data.unit_number}

    local interrupt_data = storage.interrupts[interrupt_name]
    assert(interrupt_data, "Missing interrupt_data " .. interrupt_name)
    local interrupt_window = player.gui.relative.add {
        type = "frame",
        name = "py_edit_interrupt_gui",
        -- caption = {"gui-interrupts.edit-interrupt"},
        direction = "vertical",
        anchor = {
            gui = defines.relative_gui_type.script_inventory_gui,
            position = defines.relative_gui_position.left,
        }
    }
    interrupt_window.tags = tags
    interrupt_window.style.width = 448

    local title_flow = interrupt_window.add {type = "flow", style = "frame_header_flow", direction = "horizontal"}
    title_flow.style.height = 32
    local title = title_flow.add {type = "label", caption = {"gui-interrupts.edit-interrupt"}, style = "frame_title"}
    title.style.bottom_padding = 3
    title.style.top_margin = -3
    local empty = title_flow.add {type = "empty-widget", style = "draggable_space_header"}
    empty.style.horizontally_stretchable = true
    empty.style.height = 24
    empty.style.right_margin = 4
    local close_button = title_flow.add {type = "sprite-button", name = "py_close_interrupt_button", style = "close_button", sprite = "utility/close"}

    local window_frame = interrupt_window.add {
        name = "window_frame",
        type = "frame",
        direction = "vertical",
        style = "inside_shallow_frame_with_padding_and_vertical_spacing",
    }
    window_frame.style.horizontally_stretchable = true

    local subheader_frame = window_frame.add {type = "frame", direction = "horizontal", style = "subheader_frame"}
    subheader_frame.style.height = 36
    subheader_frame.style.horizontally_stretchable = true
    subheader_frame.style.top_margin = -12
    subheader_frame.style.right_margin = -12
    subheader_frame.style.left_margin = -12

    subheader_frame.add {type = "label", name = "py_rename_interrupt_label", caption = interrupt_name, style = "subheader_caption_label"}
    local textfield = subheader_frame.add {type = "textfield", name = "py_rename_interrupt_textfield", text = interrupt_name, icon_selector = true}
    textfield.visible = false
    subheader_frame.add {type = "sprite-button", name = "py_rename_interrupt_button", style = "mini_button_aligned_to_text_vertically_when_centered", sprite = "rename_icon_small_black"}
    local empty = subheader_frame.add {type = "empty-widget"}
    empty.style.horizontally_stretchable = true
    empty.style.vertically_stretchable = true

    subheader_frame.add {type = "label", visible = false, name = "py_delete_interrupt_confirm", caption = {"caravan-gui.confirm-deletion"}}
    subheader_frame.add {type = "sprite-button", name = "py_delete_interrupt_button", style = "tool_button_red", sprite = "utility/trash", tooltip = {"caravan-gui.delete-interrupt"}, tags = tags}
    subheader_frame.add {type = "sprite-button", visible = false, name = "py_delete_interrupt_cancel", style = "tool_button", sprite = "utility/close_black", tooltip = {"caravan-gui.cancel-deletion"}}

    window_frame.add {type = "checkbox", name = "py_inside_interrupt", caption = {"gui-interrupts.inside-interrupt"},
        tags = tags, state = interrupt_data.inside_interrupt, tooltip = {"gui-interrupts.inside-interrupt-tooltip"}
    }
    window_frame.add {type = "label", caption = {"gui-interrupts.conditions"}, tooltip = {"gui-interrupts.conditions-tooltip"}, style = "semibold_label"}

    local conditions_scroll_pane_frame = window_frame.add {type = "frame", name = "conditions_scroll_pane_frame", direction = "vertical", style = "py_nice_frame"}
    conditions_scroll_pane_frame.style.vertically_stretchable = true
    local conditions_scroll_pane = conditions_scroll_pane_frame.add {type = "scroll-pane", style = "py_schedule_scroll_pane",
        tags = {action_list_type = Caravan.action_list_types.interrupt_condition}
    }
    conditions_scroll_pane.horizontal_scroll_policy = "never"
    conditions_scroll_pane.vertical_scroll_policy = "auto-and-reserve-space"
    conditions_scroll_pane.style.horizontally_stretchable = true
    conditions_scroll_pane.style.vertically_stretchable = true
    conditions_scroll_pane.style.right_padding = -8
    conditions_scroll_pane.style.left_padding = -28

    Caravan.build_action_list_gui(
        conditions_scroll_pane,
        interrupt_data.conditions,
        caravan_data,
        nil,
        interrupt_data.name
    )

    tags.action_list_type = Caravan.action_list_types.interrupt_condition

    local actions = Caravan.valid_actions["interrupt-condition"]
    actions = table.map(actions, function(v) return {"caravan-actions." .. v, v} end)
    local py_add_action = conditions_scroll_pane.add {type = "drop-down", name = "py_add_action", items = actions, tags = tags}
    py_add_action.style.width = 392
    py_add_action.style.height = 36
    py_add_action.style.right_padding = 12
    py_add_action.style.left_margin = 32

    window_frame.add {type = "label", caption = {"gui-interrupts.targets"}, tooltip = {"gui-interrupts.targets-tooltip"}, style = "semibold_label"}

    local targets_scroll_pane_frame = window_frame.add {type = "frame", name = "targets_scroll_pane_frame", direction = "vertical", style = "py_nice_frame"}
    targets_scroll_pane_frame.style.vertically_stretchable = true
    local targets_scroll_pane = targets_scroll_pane_frame.add {name = "targets_scroll_pane", type = "scroll-pane", style = "py_schedule_scroll_pane",
        tags = {action_list_type = Caravan.action_list_types.interrupt_targets}
    }
    targets_scroll_pane.horizontal_scroll_policy = "never"
    targets_scroll_pane.vertical_scroll_policy = "auto-and-reserve-space"
    targets_scroll_pane.style.horizontally_stretchable = true
    targets_scroll_pane.style.vertically_stretchable = true
    targets_scroll_pane.style.right_padding = -8

    Caravan.build_schedule_list_gui(targets_scroll_pane, caravan_data, interrupt_data)
    targets_scroll_pane.add {type = "button", name = "py_add_outpost", tags = tags, style = "train_schedule_add_station_button", caption = {"caravan-gui.add-outpost"}}
end

-- GUI for adding new interrupts to a caravan
function Caravan.build_add_interrupt_gui(player, gui)
    local caravan_data = storage.caravans[Caravan.get_caravan_gui(player).tags.unit_number]
    if gui.py_add_interrupt_frame then return end
    local main_frame = gui.add {type = "frame", name = "py_add_interrupt_frame", direction = "vertical"}
    gui.scroll_to_element(main_frame)

    local header_flow = main_frame.add {type = "flow", style = "frame_header_flow"}
    header_flow.add {type = "label", caption = {"gui-interrupts.title"}, style = "frame_title"}
    local empty = header_flow.add {type = "empty-widget"}
    empty.style.horizontally_stretchable = true
    local close_button = header_flow.add {type = "sprite-button", name = "py_add_interrupt_close_button", sprite = "utility/close", style = "frame_action_button"}
    close_button.style.right_margin = 4

    local subheader_frame = main_frame.add {type = "frame", direction = "horizontal", style = "subheader_frame"}
    subheader_frame.style.horizontally_stretchable = true
    -- subheader_frame.style.margin = -4
    local subheader_flow = subheader_frame.add {type = "flow", direction = "horizontal"}
    local textfield = subheader_flow.add {type = "textfield", name = "py_add_interrupt_textfield", style = "stretchable_textfield", icon_selector = true}
    subheader_flow.add {type = "sprite-button", name = "py_add_interrupt_confirm_button", style = "item_and_count_select_confirm", sprite = "utility/enter"}
    textfield.focus()

    local existing_interrupts = {}
    for _, name in pairs(caravan_data.interrupts) do
        existing_interrupts[name] = true
    end
    local items = {}
    for name, _ in pairs(storage.interrupts) do
        if not existing_interrupts[name] then table.insert(items, name) end
    end
    local list_box = main_frame.add {type = "list-box", name = "py_add_interrupt_list_box", items = items}
    list_box.style.horizontally_stretchable = true
    list_box.style.minimal_height = 200

    storage.gui_elements_by_name["py_add_interrupt_frame"] = main_frame
    storage.gui_elements_by_name["py_add_interrupt_textfield"] = textfield
end
