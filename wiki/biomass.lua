local wiki = {}

local name_width = 400
local input_width = 110
local output_width = 110

function wiki.biomass(wiki_pane, og_list, name_order)

    local tab3 = wiki_pane.add(
        {
            type = 'tab',
            name = 'biomass_tab',
            caption = 'Compostables'
        }
    )
    local bio_tab = wiki_pane.add
    {
        type = 'frame',
        name = 'biomass_tab_frame',
        caption = 'Biomass Items',
        style = 'invisible_frame',
        direction = "vertical"
    }
    bio_tab.style.width = 750
    bio_tab.style.maximal_height = 500
    wiki_pane.add_tab(tab3, bio_tab)

    wiki_pane.biomass_tab_frame.add
        {
            type = 'frame',
            name = 'bio_button_frame',
            --caption = 'fucks given for buttons',
            style = 'invisible_frame',
            direction = "horizontal"
        }
    local empty_frame = wiki_pane.biomass_tab_frame.bio_button_frame.add
        {
            type = 'frame',
            name = 'empty_frame',
            --caption = 'names',
            style = 'invisible_frame',
            direction = "vertical"
        }
    empty_frame.style.width = 64
    local name_frame = wiki_pane.biomass_tab_frame.bio_button_frame.add
        {
            type = 'frame',
            name = 'bio_name_frame',
            --caption = 'names',
            style = 'invisible_frame',
            direction = "vertical"
        }
    name_frame.style.left_padding = 10
    name_frame.style.width = name_width
    name_frame.add
        {
            type = 'button',
            name = 'name_button',
            caption = 'Item Name'
        }
    local input_frame = wiki_pane.biomass_tab_frame.bio_button_frame.add
        {
            type = 'frame',
            name = 'bio_input_frame',
            --caption = 'inputs',
            style = 'invisible_frame',
            direction = "vertical"
        }
    input_frame.style.width = input_width
    input_frame.add
        {
            type = 'button',
            name = 'input_button',
            caption = 'Input Amount'
        }
    local output_frame = wiki_pane.biomass_tab_frame.bio_button_frame.add
        {
            type = 'frame',
            name = 'bio_output_frame',
            --caption = 'outputs',
            style = 'invisible_frame',
            direction = "vertical"
        }
    output_frame.style.width = output_width
    output_frame.add
        {
            type = 'button',
            name = 'output_button',
            caption = 'Output Amount'
        }
    wiki_pane.biomass_tab_frame.add
        {
            type = 'scroll-pane',
            name = 'bio_scroll',
            style = 'inventory_scroll_pane'
        }
    wiki_pane.biomass_tab_frame.bio_scroll.add
        {
            type = 'frame',
            name = 'biomass_frame',
            style = 'invisible_frame',
            direction = "vertical"
        }
    for i,item in pairs(name_order) do
        if game.item_prototypes[item] ~= nil or game.fluid_prototypes[item] then
            local type
            --log(serpent.block(item))
            if og_list[item].type ~= nil then
                type = 'fluid'
            else
                type = 'item'
            end
            local item_frame = wiki_pane.biomass_tab_frame.bio_scroll.biomass_frame.add
                {
                    type = 'frame',
                    name = item .. '_frame',
                    style = 'invisible_frame',
                    direction = "horizontal"
                }
            item_frame.style.bottom_padding = 5
            item_frame.add
                {
                    type = 'sprite',
                    name = item .. '_sprite',
                    sprite = type .. '/' .. item,
                    caption = game[type .. '_prototypes'][item].localised_name
                }
            item_frame[item .. '_sprite'].style.width = 64
            item_frame[item .. '_sprite'].style.height = 64
            item_frame[item .. '_sprite'].style.stretch_image_to_widget_size = true
            local name = item_frame.add
                {
                    type = 'label',
                    name = item .. '_name',
                    caption = game[type .. '_prototypes'][item].localised_name
                }
            name.style.left_padding = 10
            name.style.width = name_width
            local input = item_frame.add
                {
                    type = 'label',
                    name = item .. '_input_amount',
                    caption = og_list[item].item_amount
                }
            input.style.width = input_width
            local output = item_frame.add
                {
                    type = 'label',
                    name = item .. '_biomass_amount',
                    caption = og_list[item].biomass_amount
                }
            output.style.width = output_width
        end
    end
end

return wiki
