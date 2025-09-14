-- Adds circuit connection definitions for PyAL entities to the pre-existing global table
-- for base-game implementation details, see https://github.com/wube/factorio-data/blob/ed3d12197fbbe63fcd19c0eb23bc826cea44410f/core/lualib/circuit-connector-sprites.lua#L101
-- variation counts from 0 (Python-like).

circuit_connector_definitions["flora-collector-mkxx"] = circuit_connector_definitions.create_vector
    (
        universal_connector_template,
        { --Directions are up, right, down, left.
            {variation = 24, main_offset = util.by_pixel(-110, -122), shadow_offset = util.by_pixel(-100, -117), show_shadow = false},
            {variation = 27, main_offset = util.by_pixel(105, 95),    shadow_offset = util.by_pixel(107, 100),   show_shadow = false},
            {variation = 26, main_offset = util.by_pixel(-105, 100),  shadow_offset = util.by_pixel(-104, 107),  show_shadow = false},
            {variation = 26, main_offset = util.by_pixel(-105, 100),  shadow_offset = util.by_pixel(-111, 112),  show_shadow = false}
        }
    )

circuit_connector_definitions["fluid-drill-mkxx"] = circuit_connector_definitions.create_vector
    (
        universal_connector_template,
        {
            {variation = 18, main_offset = util.by_pixel(30, 50), shadow_offset = util.by_pixel(24, 62), show_shadow = false},
            {variation = 18, main_offset = util.by_pixel(30, 50), shadow_offset = util.by_pixel(24, 62), show_shadow = false},
            {variation = 18, main_offset = util.by_pixel(30, 50), shadow_offset = util.by_pixel(24, 62), show_shadow = false},
            {variation = 18, main_offset = util.by_pixel(30, 50), shadow_offset = util.by_pixel(24, 62), show_shadow = false}
        }
    )

circuit_connector_definitions["harvester"] = circuit_connector_definitions.create_vector
    (
        universal_connector_template,
        {
            {variation = 25, main_offset = util.by_pixel(106, -12), shadow_offset = util.by_pixel(100, 0), show_shadow = false},
            {variation = 25, main_offset = util.by_pixel(106, -12), shadow_offset = util.by_pixel(100, 0), show_shadow = false},
            {variation = 25, main_offset = util.by_pixel(106, -12), shadow_offset = util.by_pixel(100, 0), show_shadow = false},
            {variation = 25, main_offset = util.by_pixel(106, -12), shadow_offset = util.by_pixel(100, 0), show_shadow = false}
        }
    )

circuit_connector_definitions["biocranes"] = circuit_connector_definitions.create_vector
    (
        inserter_connector_template,
        {
            {variation = 2, main_offset = util.by_pixel(-1, 1),      shadow_offset = util.by_pixel(-1, 1),      show_shadow = true},
            {variation = 3, main_offset = util.by_pixel(-1, -1),     shadow_offset = util.by_pixel(-1, -1),     show_shadow = true},
            {variation = 0, main_offset = util.by_pixel(-1.2, -5.5), shadow_offset = util.by_pixel(-1.2, -5.5), show_shadow = true},
            {variation = 1, main_offset = util.by_pixel(1, -1),      shadow_offset = util.by_pixel(1, -1),      show_shadow = true}
        }
    )
