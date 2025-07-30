local wezterm = require("wezterm")

return {
	scrollback_lines = 3500,
	colors = {
		cursor_border = "#FFFFFF",
		cursor_fg = "#FFFFFF",
	},
	font = wezterm.font("Pixel Code", { weight = "Regular" }),
	-- font
	window_background_opacity = 0.7,
	-- tab bar
	hide_tab_bar_if_only_one_tab = true,
	window_padding = {
		left = 10,
		right = 0,
		top = 0,
		bottom = 0,
	},
	color_scheme = "Synthwave (Gogh)",
	window_decorations = "NONE",
	inactive_pane_hsb = {
		brightness = 0.7,
	},
	window_close_confirmation = "NeverPrompt",
	default_prog = { "fish" },
	front_end = "OpenGL",
}
