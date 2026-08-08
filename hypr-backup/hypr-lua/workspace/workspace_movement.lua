local mainMod = "SUPER"

hl.bind(mainMod .. " + Q", hl.dsp.window.close())
hl.bind(mainMod .. " + F", hl.dsp.window.fullscreen())
hl.bind(mainMod .. " + SHIFT + F", hl.dsp.window.fullscreen({ action = "toggle" }))
hl.bind(mainMod .. " + ALT + F", hl.dsp.exec_cmd("hyprctl dispatch workspaceopt allfloat"))

-- Resize windows
hl.bind(mainMod .. " + SHIFT + H", hl.dsp.window.resize({ x = -50, y = 0, relative = true }))
hl.bind(mainMod .. " + SHIFT + L", hl.dsp.window.resize({ x = 50, y = 0, relative = true }))
hl.bind(mainMod .. " + SHIFT + K", hl.dsp.window.resize({ x = 0, y = -50, relative = true }))
hl.bind(mainMod .. " + SHIFT + J", hl.dsp.window.resize({ x = 0, y = 50, relative = true }))

-- Move windows
hl.bind(mainMod .. " + CTRL + H", hl.dsp.window.move({ direction = "left" }))
hl.bind(mainMod .. " + CTRL + L", hl.dsp.window.move({ direction = "right" }))
hl.bind(mainMod .. " + CTRL + K", hl.dsp.window.move({ direction = "up" }))
hl.bind(mainMod .. " + CTRL + J", hl.dsp.window.move({ direction = "down" }))

-- Did a weird exchange of keys for k and j
hl.bind(mainMod .. " + H", hl.dsp.focus({ direction = "left" }))
hl.bind(mainMod .. " + L", hl.dsp.focus({ direction = "right" }))
hl.bind(mainMod .. " + K", hl.dsp.focus({ direction = "up" }))
hl.bind(mainMod .. " + J", hl.dsp.focus({ direction = "down" }))

-- Workspaces related

-- Sound for changing between workspaces

-- TODO: fix script
--bindel = SUPER, tab, exec, ~/Documents/Shell-Scripts/hypr/ff-cursor-sound.sh

-- To switch between windows in a floating workspace:
hl.bind("SUPER + Tab", function()
	hl.dispatch(hl.dsp.window.cycle_next()) -- Change focus to another window
end)

-- TODO: fix script
--bind = SUPER, code:10, exec, ~/Documents/Shell-Scripts/hypr/ff-cursor-sound.sh
--bind = SUPER, code:11, exec, ~/Documents/Shell-Scripts/hypr/ff-cursor-sound.sh
--bind = SUPER, code:12, exec, ~/Documents/Shell-Scripts/hypr/ff-cursor-sound.sh
--bind = SUPER, code:13, exec, ~/Documents/Shell-Scripts/hypr/ff-cursor-sound.sh
--bind = SUPER, code:14, exec, ~/Documents/Shell-Scripts/hypr/ff-cursor-sound.sh
--bind = SUPER, code:15, exec, ~/Documents/Shell-Scripts/hypr/ff-cursor-sound.sh
--bind = SUPER, code:16, exec, ~/Documents/Shell-Scripts/hypr/ff-cursor-sound.sh
--bind = SUPER, code:17, exec, ~/Documents/Shell-Scripts/hypr/ff-cursor-sound.sh
--bind = SUPER, code:18, exec, ~/Documents/Shell-Scripts/hypr/ff-cursor-sound.sh
--bind = SUPER, code:19, exec, ~/Documents/Shell-Scripts/hypr/ff-cursor-sound.sh

for i = 1, 10 do
	local key = i % 10
	hl.bind(mainMod .. " + " .. key, hl.dsp.focus({ workspace = i }))
end

-- Move active window and follow to workspace mainMod + SHIFT [0-9]
for i = 1, 10 do
	local key = i % 10
	hl.bind(mainMod .. " + " .. key, hl.dsp.focus({ workspace = i }))
	hl.bind(mainMod .. " + SHIFT + " .. key, hl.dsp.window.move({ workspace = i }))
end

hl.bind(mainMod .. " + mouse:272", hl.dsp.window.drag(), { mouse = true })
hl.bind(mainMod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })
