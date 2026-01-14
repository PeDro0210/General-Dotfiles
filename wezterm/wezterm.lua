local wezterm = require("wezterm")

return {
	scrollback_lines = 3500,
	font = wezterm.font("Pixel Code", { weight = "Regular" }),
	font_size = 12,
	-- font
	-- tab bar
	hide_tab_bar_if_only_one_tab = true,
	window_padding = {
		left = 5,
		right = 0,
		top = 10,
		bottom = 0,
	},
	color_scheme_dirs = { "./colors" },
	color_scheme = "wallust",

	window_decorations = "NONE",
	inactive_pane_hsb = {
		brightness = 0.7,
	},
	set_environment_variables = {
		TERMINFO_DIRS = "/home/pedro0210/.nix-profile/share/terminfo",
		WSLENV = "TERMINFO_DIRS",
	},
	window_close_confirmation = "NeverPrompt",
	default_prog = { "fish" },
	front_end = "OpenGL",
	enable_wayland = true,
}
