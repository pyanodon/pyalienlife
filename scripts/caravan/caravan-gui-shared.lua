function Caravan.status_img(caravan_data)
    local entity = caravan_data.entity
    if caravan_data.is_aerial then
        return { 'entity-status.working' }, 'utility/status_working'
    elseif caravan_data.fuel_bar == 0 and caravan_data.fuel_inventory.is_empty() then
        return { 'entity-status.starved' }, 'utility/status_not_working'
    elseif entity.health ~= entity.prototype.max_health then
        return { 'entity-status.wounded' }, 'utility/status_yellow'
    elseif not Caravan.is_automated(caravan_data) then
        return { 'entity-status.idle' }, 'utility/status_yellow'
    else
        return { 'entity-status.healthy' }, 'utility/status_working'
    end
end

function Caravan.add_gui_row(caravan_data, key, table)
    table.add { type = 'label',
                style = 'clickable_squashable_label',
                name = 'click_caravan_.' .. tostring(key),
                tags = { unit_number = key, entity = caravan_data },
                caption = tostring(key) }
    table.add { type = 'label', caption = tostring(caravan_data.entity.name) }
    local status_flow = table.add { type = 'flow', direction = 'horizontal' }
    status_flow.style.vertical_align = 'center'
    local status_sprite = status_flow.add { type = 'sprite' }
    status_sprite.resize_to_sprite = false
    status_sprite.style.size = { 16, 16 }
    local status_text = status_flow.add { type = 'label' }
    status_flow.add { type = 'empty-widget', style = 'py_empty_widget' }
    local state, img = Caravan.status_img(caravan_data)
    status_text.caption = state
    status_sprite.sprite = img
end