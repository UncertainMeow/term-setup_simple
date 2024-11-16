-- ~/.config/wezterm/wezterm.lua
local wezterm = require 'wezterm'

return {
  color_scheme = "Gruvbox Dark",  -- Choose a color scheme that is easy on the eyes
  font = wezterm.font("JetBrains Mono"),  -- Simple, readable font
  font_size = 12.0,
  hide_tab_bar_if_only_one_tab = true,
  default_prog = {"/bin/bash", "-l"},  -- Start with bash by default
  use_fancy_tab_bar = false,
}

-- Additional aesthetic tweaks (uncomment as desired)
-- window_decorations = "RESIZE",
-- adjust_window_size_when_changing_font_size = false,
-- color_schemes = {
--   ["My Custom Theme"] = {
--     foreground = "#c1c1c1",
--     background = "#000000",
--     cursor_bg = "#c1c1c1",
--     cursor_border = "#c1c1c1",
--   },
-- }
