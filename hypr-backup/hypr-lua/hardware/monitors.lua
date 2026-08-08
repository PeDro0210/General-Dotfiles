hl.monitor({
	output = "DP-4",
	mode = "1920x1080@144",
	position = "1920x0",
	scale = 1,
})

hl.monitor({
	output = "DP-5",
	mode = "1920x1080@144",
	position = "0x0",
	scale = 1,
})

hl.workspace_rule({ workspace = "1", monitor = "DP-4" })
hl.workspace_rule({ workspace = "3", monitor = "DP-4" })
hl.workspace_rule({ workspace = "5", monitor = "DP-4" })
hl.workspace_rule({ workspace = "7", monitor = "DP-4" })
hl.workspace_rule({ workspace = "9", monitor = "DP-4" })
hl.workspace_rule({ workspace = "2", monitor = "DP-5" })
hl.workspace_rule({ workspace = "4", monitor = "DP-5" })
hl.workspace_rule({ workspace = "6", monitor = "DP-5" })
hl.workspace_rule({ workspace = "8", monitor = "DP-5" })
hl.workspace_rule({ workspace = "10", monitor = "DP-5" })
