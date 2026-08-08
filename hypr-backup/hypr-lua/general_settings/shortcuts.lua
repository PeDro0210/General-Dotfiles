local mainMod = "SUPER"

-- For intialize rofi
hl.bind(
	mainMod .. " + V",
	hl.dsp.exec_cmd(
		"cliphist list | rofi -dmenu -config ~/.config/rofi/config-clipboard.rasi | cliphist decode | wl-copy"
	)
)
hl.bind(
	mainMod .. " + SPACE",
	hl.dsp.exec_cmd("pkill rofi || rofi -show drun -modi drun,filebrowser,run,window -show-icons")
)
hl.bind(mainMod .. " + SPACE", hl.dsp.exec_cmd("pkill .waymac_launche || waymac_launcher"))

-- For yazi
hl.bind(mainMod .. " + Y", hl.dsp.exec_cmd("wezterm start yazi"))

-- BUG: for some reason hyprctl returns unknown values on the version -j
-- pypr utilities
hl.bind(mainMod .. " + Z", hl.dsp.exec_cmd("pyper zoom"))

-- For ss
hl.bind(mainMod .. " + SHIFT + Z", hl.dsp.exec_cmd("hyprshot -m window -m region --clipboard-only --silent"))

-- my good all friend wezterm (it lags time to time)
hl.bind(mainMod .. " + Return", hl.dsp.exec_cmd("wezterm"))

-- I want to switch to qutebrowser, but for the moment
hl.bind(mainMod .. " + B", hl.dsp.exec_cmd("firefox"))

-- initializing it wl-kbptr
hl.bind(mainMod .. " + SUPER + SUPER_L", hl.dsp.exec_cmd("pkill wl-kbptr || wl-kbptr -c ~/.config/wl-kbptr/config"))

-- for clicks

-- Left button
hl.bind(mainMod .. " + A", hl.dsp.exec_cmd("wlrctl pointer click left"))
-- Middle button
hl.bind(mainMod .. " + S", hl.dsp.exec_cmd("wlrctl pointer click middle"))
-- Right button
hl.bind(mainMod .. " + D", hl.dsp.exec_cmd("wlrctl pointer click right"))

-- for quickshell panel
hl.bind(mainMod .. " + SHIFT + P", hl.dsp.exec_cmd("quickshell ipc call powerOptionsMenu togglePowerOptionsMenu"))

-- for lights
hl.bind(mainMod .. " + SHIFT + L", hl.dsp.exec_cmd("~/Documents/Shell-Scripts/home-assistant/toogle_strip.sh"))
