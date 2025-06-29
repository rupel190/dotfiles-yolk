-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

-- For example, changing the initial geometry for new windows:
-- config.initial_cols = 120
-- config.initial_rows = 28

config.adjust_window_size_when_changing_font_size = false
config.enable_scroll_bar = true
config.scrollback_lines = 200000

-- tab bar
config.window_close_confirmation = "NeverPrompt"
config.tab_bar_at_bottom = true
config.hide_tab_bar_if_only_one_tab = true
config.show_new_tab_button_in_tab_bar = false
-- Requires nightly build
-- config.show_close_tab_button_in_tabs = false

config.color_scheme = "Tokyo Night"
config.font = wezterm.font_with_fallback({
	"GeistMono Nerd Font Mono",
	"JetBrains Mono",
})

config.keys = {
	{ key = "UpArrow", mods = "SHIFT", action = wezterm.action.ScrollToPrompt(-1) },
	{ key = "DownArrow", mods = "SHIFT", action = wezterm.action.ScrollToPrompt(1) },
}

-- config.font_size = 10
-- config.color_scheme = "AdventureTime"

-- Finally, return the configuration to wezterm:
return config
