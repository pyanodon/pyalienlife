local caravan_prototypes = require "caravan-prototypes"
require "caravan-gui-shared"

---Given a action index in a caravan GUI, returns the GUI style and sprite for the corresponding button.
---@param caravan_data Caravan
---@param schedule_id int
---@param action_id int
local function generate_button_status(caravan_data, schedule_id, action_id)
    local style = "train_schedule_action_button"
    local sprite = "utility/play"
    if caravan_data.schedule_id == schedule_id and (not action_id or action_id == caravan_data.action_id) then
        style = "py_clicked_train_schedule_action_button"
        sprite = "utility/stop"
    end
    return style, sprite
end

---@param gui LuaGuiElement
---@param caravan_data Caravan
---@param schedules CaravanSchedule[]
function Caravan.build_schedule_list_gui(gui, caravan_data, schedules)
    for i, schedule in ipairs(schedules) do
        local prototype = caravan_prototypes[caravan_data.entity.name]

        local schedule_flow = gui.add {type = "flow", direction = "vertical"}
        schedule_flow.style.horizontal_align = "right"
        schedule_flow.style.vertically_stretchable = false
        schedule_flow.style.right_margin = -12

        local schedule_frame = schedule_flow.add {type = "frame", style = "train_schedule_station_frame"}
        schedule_frame.style.horizontally_stretchable = true
        schedule_frame.style.vertically_stretchable = true
        schedule_frame.style.height = 36
        schedule_frame.style.right_padding = 12

        local tags = {unit_number = caravan_data.unit_number, schedule_id = i}
        local playbutton = schedule_frame.add {type = "sprite-button", name = "py_schedule_play", tags = tags}
        playbutton.style, playbutton.sprite = generate_button_status(caravan_data, i)
        schedule_frame.add {type = "label", name = "py_outpost_name", style = "clickable_squashable_label", tags = tags, caption = schedule.localised_name}

        schedule_frame.add {type = "empty-widget", style = "py_empty_widget", tags = tags}
        schedule_frame.add {type = "sprite-button", name = "py_shuffle_schedule_1", style = "py_schedule_move_button",
            tags = {unit_number = caravan_data.unit_number, schedule_id = i, up = true},
            sprite = "up-white", hovered_sprite = "up-black", clicked_sprite = "up-black"
        }
        schedule_frame.add {
            type = "sprite-button", name = "py_shuffle_schedule_2", style = "py_schedule_move_button", tags = tags,
            sprite = "down-white", hovered_sprite = "down-black", clicked_sprite = "down-black"
        }
        schedule_frame.add {
            type = "sprite-button", name = "py_delete_schedule", style = "py_schedule_move_button", tags = tags,
            sprite = "utility/close", hovered_sprite = "utility/close_black", clicked_sprite = "utility/close_black"
        }

        for j, action in ipairs(schedule.actions) do
            local tags = {unit_number = caravan_data.unit_number, schedule_id = i, action_id = j}

            local action_frame = schedule_flow.add {type = "frame", style = "train_schedule_condition_frame"}
            action_frame.style.horizontally_stretchable = true
            action_frame.style.vertically_stretchable = true
            action_frame.style.height = 36
            action_frame.style.right_padding = 12
            action_frame.style.width = 340

            local playbutton = action_frame.add {type = "sprite-button", name = "py_action_play", tags = tags}
            playbutton.style, playbutton.sprite = generate_button_status(caravan_data, i, j)
            action_frame.add {type = "label", style = "squashable_label_with_left_padding", caption = action.localised_name}

            if action.type == "time-passed" then
                action_frame.add {type = "empty-widget", style = "py_empty_widget"}
                local textfield = action_frame.add {type = "textfield", name = "py_time_passed_text", style = "py_compact_slider_value_textfield", text = action.wait_time or 5, tags = tags}
                textfield.numeric = true
                textfield.allow_decimal = false
                textfield.allow_negative = false
                action_frame.add {type = "label", caption = "s"}.style.left_margin = -5
            elseif action.type == "item-count" or action.type == "inverse-item-count" then
                action_frame.add {type = "empty-widget", style = "py_empty_widget"}
                local itemselect = action_frame.add {
                    type = "choose-elem-button", name = "py_item_count", style = "train_schedule_item_select_button",
                    tags = tags, elem_type = "item"
                }
                itemselect.elem_value = action.elem_value
                action_frame.add {type = "label", caption = "="}
                local textfield = action_frame.add {type = "textfield", name = "py_item_count_text", style = "py_compact_slider_value_textfield", tags = tags, text = action.item_count}
                textfield.numeric = true
                textfield.allow_decimal = false
                textfield.allow_negative = false
            elseif action.type == "circuit-condition" then
                action_frame.add {type = "empty-widget", style = "py_empty_widget"}
                local circuit_condition_right = action_frame.add {
                    type = "choose-elem-button", name = "py_circuit_condition_right", style = "train_schedule_item_select_button",
                    tags = tags, elem_type = "signal"
                }
                circuit_condition_right.elem_value = action.circuit_condition_right
                action_frame.add {type = "label", caption = "="}
                local circuit_condition_left = action_frame.add {
                    type = "choose-elem-button", name = "py_circuit_condition_left", style = "train_schedule_item_select_button",
                    tags = tags, elem_type = "signal"
                }
                circuit_condition_left.elem_value = action.circuit_condition_left
            elseif action.type == "circuit-condition-static" then
                action_frame.add {type = "empty-widget", style = "py_empty_widget"}
                local circuit_condition_right = action_frame.add {
                    type = "choose-elem-button", name = "py_circuit_condition_right", style = "train_schedule_item_select_button",
                    tags = tags, elem_type = "signal"
                }
                circuit_condition_right.elem_value = action.circuit_condition_right
                action_frame.add {type = "label", caption = "="}
                local value = action_frame.add {type = "textfield", name = "py_value_condition_left", style = "py_compact_slider_value_textfield", tags = tags, text = action.circuit_condition_left}
                value.numeric = true
                value.allow_decimal = false
                value.allow_negative = true
            else
                action_frame.add {type = "empty-widget", style = "py_empty_widget"}
            end
            if action.type == "item-count" or action.type == "inverse-item-count" or action.type == "fill-inventory" or action.type == "empty-inventory" then
                action_frame.add {type = "checkbox", name = "py_blocking_caravan", state = not action.async,
                    tooltip = {"caravan-gui.wait"},
                    tags = tags}
            end

            action_frame.add {
                type = "sprite-button", name = "py_shuffle_schedule_1", style = "py_schedule_move_button",
                tags = {unit_number = caravan_data.unit_number, schedule_id = i, action_id = j, up = true},
                sprite = "up-white", hovered_sprite = "up-black", clicked_sprite = "up-black"
            }
            action_frame.add {
                type = "sprite-button", name = "py_shuffle_schedule_2", style = "py_schedule_move_button", tags = tags,
                sprite = "down-white", hovered_sprite = "down-black", clicked_sprite = "down-black"
            }

            action_frame.add {
                type = "sprite-button", name = "py_delete_schedule", style = "py_schedule_move_button", tags = tags,
                sprite = "utility/close", hovered_sprite = "utility/close_black", clicked_sprite = "utility/close_black"
            }
        end

        local entity = schedule.entity
        local actions
        if entity and entity.valid then
            if (entity.name == "outpost") or (entity.name == "outpost-aerial") then
                actions = prototype.actions.outpost
            elseif prototype.actions[entity.type] then
                actions = prototype.actions[entity.type]
            end
        end
        actions = actions or prototype.actions.default
        actions = table.map(actions, function(v) return {"caravan-actions." .. v, v} end)
        local py_add_action = schedule_flow.add {type = "drop-down", name = "py_add_action", items = actions, tags = tags}
        py_add_action.style.width = 340
        py_add_action.style.height = 36
    end
end

---Creates the GUI pane for the caravan's schedule. Tries to lossely follow the vanilla train schedule GUI.
---@param gui LuaGuiElement
---@param caravan_data Caravan
function Caravan.build_schedule_gui(gui, caravan_data)
    Caravan.build_schedule_list_gui(gui, caravan_data, caravan_data.schedule)
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

    interrupt_frame.add {type = "label", style = "subheader_semibold_label", caption = {"gui-interrupts.interrupt-header"}}

    for _, interrupt in pairs(caravan_data.interrupts) do
        local tags = {unit_number = caravan_data.unit_number, schedule_id = i}
        local action_frame = gui.add {type = "frame", style = "train_schedule_condition_frame"}
        action_frame.style.horizontally_stretchable = true
        action_frame.style.vertically_stretchable = true
        action_frame.style.height = 36
        action_frame.style.right_padding = 12
        action_frame.style.right_margin = -12
        action_frame.style.width = 340

        local playbutton = action_frame.add {type = "sprite-button", name = "py_action_play", tags = tags}
        playbutton.style, playbutton.sprite = generate_button_status(caravan_data, i, j)
        action_frame.add {type = "label", style = "squashable_label_with_left_padding", caption = interrupt}
        action_frame.add {type = "empty-widget", style = "py_empty_widget"}

        action_frame.add {
            type = "sprite-button", name = "py_edit_interrupt_button", style = "train_schedule_action_button",
            -- tags = {unit_number = caravan_data.unit_number, schedule_id = i, action_id = j, up = true},
            tags = {name = interrupt},
            sprite = "utility/rename_icon",
        }

        action_frame.add {
            type = "sprite-button", name = "py_shuffle_schedule_1", style = "py_schedule_move_button",
            tags = {unit_number = caravan_data.unit_number, schedule_id = i, action_id = j, up = true},
            sprite = "up-white", hovered_sprite = "up-black", clicked_sprite = "up-black"
        }
        action_frame.add {
            type = "sprite-button", name = "py_shuffle_schedule_2", style = "py_schedule_move_button", tags = tags,
            sprite = "down-white", hovered_sprite = "down-black", clicked_sprite = "down-black"
        }

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
---@param from_remote_manager boolean Is this GUI opened from the py codex? If so, hide the inventory so that the player cannot teleport items.
function Caravan.build_gui(player, entity, from_remote_manager)
    local caravan_data = storage.caravans[entity.unit_number]
    local prototype = caravan_prototypes[entity.name]

    local main_frame
    if from_remote_manager then
        player.opened = nil
        main_frame = player.gui.screen.add {type = "frame", name = "caravan_gui", direction = "vertical"}
        main_frame.auto_center = true
        player.opened = main_frame
    else
        player.opened = caravan_data.inventory
        if player.gui.relative.caravan_flow then
            player.gui.relative.caravan_flow.destroy()
        end
        local flow = player.gui.relative.add {
            type = "flow", name = "caravan_flow",
            anchor = {
                gui = defines.relative_gui_type.script_inventory_gui,
                position = defines.relative_gui_position.right
            },

        }
        flow.style.horizontal_spacing = 0
        main_frame = flow.add {
            type = "frame", name = "caravan_gui", direction = "vertical"
        }
    end
    main_frame.style.width = 436
    main_frame.style.minimal_height = 710
    main_frame.style.margin = 0
    main_frame.tags = {unit_number = entity.unit_number}

    local caption_flow = main_frame.add {type = "flow", direction = "horizontal"}

    local title = caption_flow.add {
        name = "title",
        type = "label",
        caption = Caravan.get_name(caravan_data),
        style = "frame_title",
        ignored_by_interaction = true
    }
    title.style.maximal_width = 300

    local rename_button = caption_flow.add {
        type = "sprite-button",
        name = "py_rename_caravan_button",
        style = "frame_action_button",
        sprite = "rename_icon_small_white",
        hovered_sprite = "rename_icon_small_black",
        clicked_sprite = "rename_icon_small_black",
        tags = {unit_number = entity.unit_number, maximal_width = 300}
    }

    local caption_spacing = caption_flow.add {type = "empty-widget", style = "draggable_space_header", ignored_by_interaction = true}
    caption_spacing.style.height = 24
    caption_spacing.style.right_margin = 4
    caption_spacing.style.horizontally_stretchable = true

    local content_frame = main_frame.add {type = "frame", name = "content_frame", direction = "vertical", style = "inside_shallow_frame_with_padding"}
    content_frame.style.vertically_stretchable = true
    local content_flow = content_frame.add {type = "flow", name = "content_flow", direction = "vertical"}
    content_flow.style.vertical_spacing = 8
    content_flow.style.margin = {-4, 0, -4, 0}
    content_flow.style.vertical_align = "center"

    local status_flow = content_flow.add {type = "flow", name = "status_flow", direction = "horizontal"}
    status_flow.style.vertical_align = "center"
    local status_sprite = status_flow.add {type = "sprite", name = "status_sprite"}
    status_sprite.resize_to_sprite = false
    status_sprite.style.size = {16, 16}
    status_flow.add {type = "label", name = "status_text"}
    status_flow.add {type = "empty-widget", style = "py_empty_widget"}
    local refocus = status_flow.add {type = "sprite-button", name = "py_refocus", style = "tool_button", sprite = "utility/import_slot", tooltip = {"caravan-gui.refocus"}, tags = {unit_number = caravan_data.unit_number}}
    refocus.style.size = {26, 26}
    refocus.style.top_margin = -2
    refocus.style.bottom_margin = -4
    refocus.visible = false

    local camera_frame = content_flow.add {type = "frame", name = "camera_frame", style = "py_nice_frame"}
    local camera = camera_frame.add {type = "camera", name = "camera", style = "py_caravan_camera", position = entity.position, surface_index = entity.surface.index}
    camera.entity = entity
    camera.visible = true
    camera.style.height = 155
    camera.zoom = prototype.camera_zoom or 1

    if caravan_data.fuel_inventory then
        local fuel_flow = content_flow.add {type = "flow", name = "fuel_flow", direction = "horizontal"}
        fuel_flow.style.vertical_align = "center"
        local favorite_food_tooltip = py.generate_favorite_food_tooltip(caravan_prototypes[entity.name].favorite_foods, "caravan-gui")
        for i = 1, #caravan_data.fuel_inventory do
            local fuel_slot = fuel_flow.add {type = "sprite-button", name = "py_fuel_slot_" .. i, style = "inventory_slot", tags = {unit_number = caravan_data.unit_number, i = i}}
            fuel_slot.sprite = "slot_icon_fuel"
            fuel_slot.tooltip = favorite_food_tooltip
        end
        fuel_flow.add {type = "progressbar", name = "fuel_bar", style = "burning_progressbar"}.style.horizontally_stretchable = true
    end

    local schedule_frame = content_flow.add {type = "frame", name = "schedule_frame", direction = "vertical", style = "py_nice_frame"}
    schedule_frame.style.vertically_stretchable = true

    local schedule_pane = schedule_frame.add {type = "scroll-pane", name = "schedule_pane", style = "py_schedule_scroll_pane"}
    schedule_pane.horizontal_scroll_policy = "never"
    schedule_pane.vertical_scroll_policy = "auto-and-reserve-space"
    schedule_pane.style.horizontally_stretchable = true
    schedule_pane.style.vertically_stretchable = true

    Caravan.update_gui(main_frame)
    Caravan.build_gui_connected(player, entity)
end

py.on_event(py.events.on_entity_clicked(), function(event)
    local player = game.get_player(event.player_index)
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
            local element = content_flow.fuel_flow["py_fuel_slot_" .. i]
            if stack.valid_for_read then
                element.sprite = "item/" .. stack.name
                element.number = stack.count
            else
                element.sprite = "slot_icon_fuel"
                element.number = nil
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

py.on_event({defines.events.on_gui_closed, defines.events.on_player_changed_surface}, function(event)
    local player = game.get_player(event.player_index)

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
    local gui = get_caravan_gui_in_flow(player) or player.gui.screen.caravan_gui
    if gui then return gui end
end

---@param gui LuaGuiElement
---@param schedules CaravanSchedule[]
function Caravan.build_interrupt_schedule_list_gui(gui, schedules)
    for i, schedule in ipairs(schedules) do
        -- local prototype = prototypes[caravan_data.entity.name]

        local schedule_flow = gui.add {type = "flow", direction = "vertical"}
        schedule_flow.style.horizontal_align = "right"
        schedule_flow.style.vertically_stretchable = false
        schedule_flow.style.right_margin = -12

        local schedule_frame = schedule_flow.add {type = "frame", style = "train_schedule_station_frame"}
        schedule_frame.style.horizontally_stretchable = true
        schedule_frame.style.vertically_stretchable = true
        schedule_frame.style.height = 36
        schedule_frame.style.right_padding = 12

        -- local tags = {unit_number = caravan_data.unit_number, schedule_id = i}
        local tags

        schedule_frame.add {type = "empty-widget", style = "py_empty_widget", tags = tags}
        schedule_frame.add {type = "sprite-button", name = "py_shuffle_schedule_1", style = "py_schedule_move_button",
            tags = {unit_number = caravan_data.unit_number, schedule_id = i, up = true},
            sprite = "up-white", hovered_sprite = "up-black", clicked_sprite = "up-black"
        }
        schedule_frame.add {
            type = "sprite-button", name = "py_shuffle_schedule_2", style = "py_schedule_move_button", tags = tags,
            sprite = "down-white", hovered_sprite = "down-black", clicked_sprite = "down-black"
        }
        schedule_frame.add {
            type = "sprite-button", name = "py_delete_schedule", style = "py_schedule_move_button", tags = tags,
            sprite = "utility/close", hovered_sprite = "utility/close_black", clicked_sprite = "utility/close_black"
        }

        for j, action in ipairs(schedule.actions) do
            -- local tags = {unit_number = caravan_data.unit_number, schedule_id = i, action_id = j}

            local action_frame = schedule_flow.add {type = "frame", style = "train_schedule_condition_frame"}
            action_frame.style.horizontally_stretchable = true
            action_frame.style.vertically_stretchable = true
            action_frame.style.height = 36
            action_frame.style.right_padding = 12
            action_frame.style.width = 340

            if action.type == "time-passed" then
                action_frame.add {type = "empty-widget", style = "py_empty_widget"}
                local textfield = action_frame.add {type = "textfield", name = "py_time_passed_text", style = "py_compact_slider_value_textfield", text = action.wait_time or 5, tags = tags}
                textfield.numeric = true
                textfield.allow_decimal = false
                textfield.allow_negative = false
                action_frame.add {type = "label", caption = "s"}.style.left_margin = -5
            elseif action.type == "item-count" or action.type == "inverse-item-count" then
                action_frame.add {type = "empty-widget", style = "py_empty_widget"}
                local itemselect = action_frame.add {
                    type = "choose-elem-button", name = "py_item_count", style = "train_schedule_item_select_button",
                    tags = tags, elem_type = "item"
                }
                itemselect.elem_value = action.elem_value
                action_frame.add {type = "label", caption = "="}
                local textfield = action_frame.add {type = "textfield", name = "py_item_count_text", style = "py_compact_slider_value_textfield", tags = tags, text = action.item_count}
                textfield.numeric = true
                textfield.allow_decimal = false
                textfield.allow_negative = false
            elseif action.type == "circuit-condition" then
                action_frame.add {type = "empty-widget", style = "py_empty_widget"}
                local circuit_condition_right = action_frame.add {
                    type = "choose-elem-button", name = "py_circuit_condition_right", style = "train_schedule_item_select_button",
                    tags = tags, elem_type = "signal"
                }
                circuit_condition_right.elem_value = action.circuit_condition_right
                action_frame.add {type = "label", caption = "="}
                local circuit_condition_left = action_frame.add {
                    type = "choose-elem-button", name = "py_circuit_condition_left", style = "train_schedule_item_select_button",
                    tags = tags, elem_type = "signal"
                }
                circuit_condition_left.elem_value = action.circuit_condition_left
            elseif action.type == "circuit-condition-static" then
                action_frame.add {type = "empty-widget", style = "py_empty_widget"}
                local circuit_condition_right = action_frame.add {
                    type = "choose-elem-button", name = "py_circuit_condition_right", style = "train_schedule_item_select_button",
                    tags = tags, elem_type = "signal"
                }
                circuit_condition_right.elem_value = action.circuit_condition_right
                action_frame.add {type = "label", caption = "="}
                local value = action_frame.add {type = "textfield", name = "py_value_condition_left", style = "py_compact_slider_value_textfield", tags = tags, text = action.circuit_condition_left}
                value.numeric = true
                value.allow_decimal = false
                value.allow_negative = true
            else
                action_frame.add {type = "empty-widget", style = "py_empty_widget"}
            end
            if action.type == "item-count" or action.type == "inverse-item-count" or action.type == "fill-inventory" or action.type == "empty-inventory" then
                action_frame.add {type = "checkbox", name = "py_blocking_caravan", state = not action.async,
                    tooltip = {"caravan-gui.wait"},
                    tags = tags}
            end

            action_frame.add {
                type = "sprite-button", name = "py_shuffle_schedule_1", style = "py_schedule_move_button",
                -- tags = {unit_number = caravan_data.unit_number, schedule_id = i, action_id = j, up = true},
                sprite = "up-white", hovered_sprite = "up-black", clicked_sprite = "up-black"
            }
            action_frame.add {
                type = "sprite-button", name = "py_shuffle_schedule_2", style = "py_schedule_move_button", tags = tags,
                sprite = "down-white", hovered_sprite = "down-black", clicked_sprite = "down-black"
            }

            action_frame.add {
                type = "sprite-button", name = "py_delete_schedule", style = "py_schedule_move_button", tags = tags,
                sprite = "utility/close", hovered_sprite = "utility/close_black", clicked_sprite = "utility/close_black"
            }
        end

        -- local entity = schedule.entity
        -- local actions
        -- if entity and entity.valid then
        --     if (entity.name == "outpost") or (entity.name == "outpost-aerial") then
        --         actions = prototype.actions.outpost
        --     elseif prototype.actions[entity.type] then
        --         actions = prototype.actions[entity.type]
        --     end
        -- end
        -- actions = actions or prototype.actions.default
        local actions = prototypes["caravan"].actions
        actions = table.map(actions, function(v) return {"caravan-actions." .. v, v} end)
        local py_add_action = schedule_flow.add {type = "drop-down", name = "py_add_action", items = actions, tags = tags}
        py_add_action.style.width = 340
        py_add_action.style.height = 36
    end
end

-- GUI for editing the interrupt
function Caravan.build_interrupt_gui(player, interrupt_name)
    if player.gui.relative.py_edit_interrupt_gui then
        player.gui.relative.py_edit_interrupt_gui.destroy()
    end
    local interrupt_data = storage.interrupts[interrupt_name]
    local interrupt_window = player.gui.relative.add {
        type = "frame",
        name = "py_edit_interrupt_gui",
        caption = {"gui-interrupts.edit-interrupt"},
        direction = "vertical",
        -- TODO: make anchor optional
        anchor = {
            gui = defines.relative_gui_type.script_inventory_gui,
            position = defines.relative_gui_position.left,
        }
    }
    interrupt_window.style.width = 448
    interrupt_window.style.minimal_height = 123

    local window_frame = interrupt_window.add{
        type = "frame",
        direction = "vertical",
        style = "inside_shallow_frame_with_padding_and_vertical_spacing",
    }
    window_frame.style.minimal_height = 123
    window_frame.style.horizontally_stretchable = true
    
    local subheader_frame = window_frame.add {type = "frame", direction = "horizontal", style = "subheader_frame"}
    subheader_frame.style.height = 36
    subheader_frame.style.horizontally_stretchable = true
    subheader_frame.style.top_margin = -12
    subheader_frame.style.right_margin = -12
    subheader_frame.style.left_margin = -12

    subheader_frame.add {type = "label", name = "py_rename_interrupt_label", caption = interrupt_data.name, style = "subheader_caption_label"}
    local textfield = subheader_frame.add {type = "textfield", name = "py_rename_interrupt_textfield", text = interrupt_data.name, icon_selector = true}
    textfield.visible = false
    subheader_frame.add {type = "sprite-button", name = "py_rename_interrupt_button", style = "mini_button_aligned_to_text_vertically_when_centered", sprite = "rename_icon_small_black"}
    -- subheader_frame.style.padding = -8
    -- window_flow.add {type = "frame", style = "inside_shallow_frame_with_padding_and_vertical_spacing"}
    -- local main_flow = window_flow.add {type = "flow", direction = "vertical"}

    window_frame.add {type = "checkbox", caption = {"gui-interrupts.inside-interrupt"}, state = false}
    window_frame.add {type = "label", caption = {"gui-interrupts.conditions"}, style = "semibold_label"}
    local conditions_scroll_pane = window_frame.add {type = "scroll-pane", style = "train_interrupts_scroll_pane"}
    conditions_scroll_pane.style.minimal_height = 36
    conditions_scroll_pane.style.horizontal_align = "right"
    conditions_scroll_pane.style.vertically_stretchable = true
    window_frame.add {type = "label", caption = {"gui-interrupts.targets"}, style = "semibold_label"}
    local targets_scroll_pane = window_frame.add {type = "scroll-pane", style = "train_interrupts_scroll_pane"}
    targets_scroll_pane.style.minimal_height = 36
    targets_scroll_pane.style.horizontal_align = "right"
    targets_scroll_pane.style.vertically_stretchable = true

    Caravan.build_interrupt_schedule_list_gui(targets_scroll_pane, interrupt_data.schedule)
    targets_scroll_pane.add {type = "button", name = "py_add_outpost", style = "train_schedule_add_station_button", caption = {"caravan-gui.add-outpost"}}

    local button_flow = interrupt_window.add {type = "flow", direction = "horizontal", style = "dialog_buttons_horizontal_flow"}
    button_flow.style.horizontally_stretchable = true
    button_flow.style.vertically_stretchable = false
    
    local empty = button_flow.add {type = "empty-widget", style = "draggable_space"}
    empty.style.horizontally_stretchable = true
    empty.style.vertically_stretchable = true
    -- empty.ignored_by_interaction = true -- Allows dragging?
    local confirm_button = button_flow.add {type = "button", name = "py_interrupt_confirm", style = "confirm_button", caption = {"gui.confirm"}}

    -- TODO: make everything not assume caravan gui is the one opened
    -- player.opened = player.gui.screen.py_edit_interrupt_gui
end

-- GUI for adding new interrupts to a caravan
function Caravan.build_add_interrupt_gui(gui)
    if gui.py_add_interrupt_frame then return end
    local main_frame = gui.add {type = "frame", name = "py_add_interrupt_frame", direction = "vertical"}

    local header_flow = main_frame.add {type = "flow", style = "frame_header_flow"}
    header_flow.add {type = "label", caption = "add interrupt", style = "frame_title"}
    local empty = header_flow.add {type = "empty-widget"}
    empty.style.horizontally_stretchable = true
    header_flow.add {type = "sprite-button", name = "py_add_interrupt_close_button", sprite = "utility/close", style = "frame_action_button"}

    local subheader_frame = main_frame.add {type = "frame", direction = "horizontal", style = "subheader_frame"}
    subheader_frame.style.horizontally_stretchable = true
    -- subheader_frame.style.margin = -4
    local subheader_flow = subheader_frame.add {type = "flow", direction = "horizontal"}
    local textfield = subheader_flow.add {type = "textfield", name = "py_add_interrupt_textfield", style = "stretchable_textfield", icon_selector = true}
    subheader_flow.add {type = "sprite-button", name = "py_add_interrupt_confirm_button", style = "item_and_count_select_confirm", sprite = "utility/enter"}
    textfield.focus()

    local items = {}
    for name, _ in pairs(storage.interrupts) do
        table.insert(items, name)
    end
    local list_box = main_frame.add {type = "list-box", name = "py_add_interrupt_list_box", items = items}
    list_box.style.horizontally_stretchable = true
    list_box.style.minimal_height = 200

    storage.gui_elements_by_name["py_add_interrupt_frame"] = main_frame
    storage.gui_elements_by_name["py_add_interrupt_textfield"] = textfield
end