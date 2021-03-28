local wiki = {}

local function add_table_line(biomass_table, item, item_type, item_amount, biomass_amount)
    biomass_table.add{type = "label", caption = item_amount}
    biomass_table.add{type = 'sprite', sprite = item_type .. '/' .. item}
    biomass_table.add{type = "label", caption = game[item_type .. '_prototypes'][item].localised_name}
    biomass_table.add{type = "label", caption = biomass_amount}
    biomass_table.add{type = 'sprite', sprite = 'item/biomass'}
    biomass_table.add{type = "label", caption = game['item_prototypes']['biomass'].localised_name}
end

function wiki.biomass(wiki_pane, og_list, name_order)

    local tab3 = wiki_pane.add{
        type = 'tab',
        name = 'biomass_tab',
        caption = 'Compostables'
    }

    local bio_tab = wiki_pane.add{
        type = 'frame',
        name = 'biomass_tab_frame',
        caption = 'Biomass Items',
        style = 'invisible_frame',
        direction = "vertical"
    }
    wiki_pane.add_tab(tab3, bio_tab)

    local item_scroll = wiki_pane.biomass_tab_frame.add{
        type="scroll-pane",
        name="item_scroll"
    }

    local table = item_scroll.add{
        type="table",
        name="item_table",
        column_count=6
    }
    table.style.column_alignments[1] = "right"
    table.style.column_alignments[2] = "center"
    table.style.column_alignments[4] = "right"
    table.style.column_alignments[5] = "center"
    table.style.left_padding = 10
    table.style.right_padding = 50
    table.style.horizontally_stretchable = true

    -- header section
    table.add{type = 'label', caption = 'Sort by'}
    table.add{type = 'sprite-button', sprite = 'item/fawogae'}
    table.add{type = 'textfield', text = 'search'}
    table.add{type = 'label', caption = ''}
    table.add{type = 'sprite-button', sprite = 'item/biomass'}
    table.add{type = 'label', caption = ''}

    for _, item in pairs(name_order) do
        if game.item_prototypes[item] ~= nil or game.fluid_prototypes[item] then
            local item_type
            --log(serpent.block(item))
            if og_list[item].type ~= nil then
                item_type = 'fluid'
            else
                item_type = 'item'
            end
            local item_amount = og_list[item].item_amount
            local biomass_amount = og_list[item].biomass_amount

            add_table_line(table, item, item_type, item_amount, biomass_amount)
        end
    end
end

return wiki
