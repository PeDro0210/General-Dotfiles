hl.on("hyprland.start", function()
	-- For wallpaper
	hl.exec_cmd("awww-daemon --format xrgb")

	-- For clipboard
	hl.exec_cmd("wl-paste --type text --watch cliphist store")
	hl.exec_cmd("wl-paste --type image --watch cliphist store")

	-- For th one and only Miku cursor
	hl.exec_cmd("hyprctl setcursor ffxi-chocobo-cursor 24")

	-- BUG: for some reason hyprctl returns unknown values on the version -j

	-- Pyprland
	hl.exec_cmd("pypr &")
	-- Quickshell
	hl.exec_cmd("quickshell &")

	-- home-assistant
	hl.exec_cmd("~/Documents/Shell-Scripts/home-assistant/startup_strip.sh")

	-- Workspaces with shorcuts

	-- for some reason the system that tracks where to place windows it's messed up cause of hyprland changes
	-- check messages just in case:

	hl.exec_cmd("spotify", { workspace = "special:spotify silent" })
	hl.exec_cmd("kitty wiremix", { workspace = "special:wiremix silent" })
	hl.exec_cmd("kitty btop", { workspace = "special:btop silent" })
	hl.exec_cmd("openrgb", { workspace = "special:openrgb silent" })
	hl.exec_cmd("firefox", { workspace = "special:cached silent" })
end)
