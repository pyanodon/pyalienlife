-- Holds circuit connection definitions for PyAL entities.
-- variation counts from 0 (Python-like).

collector_connector_definitions = circuit_connector_definitions.create
(
  universal_connector_template,
  {--Directions are up, right, down, left.
    { variation = 24, main_offset = util.by_pixel(-110, -122), shadow_offset = util.by_pixel(-100, -117), show_shadow = false }, 
    { variation = 27, main_offset = util.by_pixel(105, 95), shadow_offset = util.by_pixel(107, 100), show_shadow = false },
    { variation = 26, main_offset = util.by_pixel(-105, 100), shadow_offset = util.by_pixel(-104, 107), show_shadow = false },
    { variation = 26, main_offset = util.by_pixel(-105, 100), shadow_offset = util.by_pixel(-111, 112), show_shadow = false }
  }
)

fluid_drill_connector_definitions = circuit_connector_definitions.create
(
  universal_connector_template,
  {
    { variation = 18, main_offset = util.by_pixel(30, 50), shadow_offset = util.by_pixel(24, 62), show_shadow = false }, 
    { variation = 18, main_offset = util.by_pixel(30, 50), shadow_offset = util.by_pixel(24, 62), show_shadow = false },
    { variation = 18, main_offset = util.by_pixel(30, 50), shadow_offset = util.by_pixel(24, 62), show_shadow = false },
    { variation = 18, main_offset = util.by_pixel(30, 50), shadow_offset = util.by_pixel(24, 62), show_shadow = false }
  }
)