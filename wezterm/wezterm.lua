wezterm = require("wezterm")

return {

	color_scheme_dirs = { "./colors" },
	color_scheme = "wallust",
	font = wezterm.font("Pixel Code"),
	-- font
	window_background_opacity = 0.8,
	-- tab bar
	hide_tab_bar_if_only_one_tab = true,
	window_padding = {
		left = 0,
		right = 0,
		top = 0,
		bottom = 0,
	},
	window_decorations = "RESIZE",
	inactive_pane_hsb = {
		brightness = 0.7,
	},
	window_close_confirmation = "NeverPrompt",
	default_prog = { "/run/current-system/sw/bin/fish", "-l" },
}
