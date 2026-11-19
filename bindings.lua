-- Keep only your personal keybinding overrides here. Add new bindings or
-- -- unbind defaults before replacing them.
--
if o and o.bindings then o.bindings = {} end

hl.unbind("SUPER + return")
o.bind("SUPER + return", "Open Terminal", "foot")
hl.unbind("SUPER + Z")
o.bind("SUPER + Z", "Toggle FullScreen", hl.dsp.window.fullscreen_state({ internal = 2, client = 0, action = "toggle" }))

local layouts = { "scrolling", "dwindle" }
o.bind("SUPER + W", "Cycle window layouts", function()
  local ws = hl.get_active_special_workspace() or hl.get_active_workspace()
  if not ws then return end

  local next_idx = 1
  for i, name in ipairs(layouts) do
    if name == ws.tiled_layout then
      next_idx = (i % #layouts) + 1
      break
    end
  end

  hl.workspace_rule({
   workspace = tostring(ws.id), 
   layout = layouts[next_idx]
   })
end)

-- o.bind("SUPER + semicolon", "Go Leap Mode", hl.dsp.exec_cmd("~/toolbox/hypr_action.py"))

hl.unbind("SUPER + L")
o.bind("SUPER + L", "Focus Right", hl.dsp.focus({ direction = "right" }))
hl.unbind("SUPER + H")
o.bind("SUPER + H", "Focus Left", hl.dsp.focus({ direction = "left" }))
hl.unbind("SUPER + K")
o.bind("SUPER + K", "Focus Up", hl.dsp.focus({ direction = "up" }))
hl.unbind("SUPER + J")
o.bind("SUPER + J", "Focus Down", hl.dsp.focus({ direction = "down" }))
hl.unbind("SUPER + SPACE")
o.bind("SUPER + SPACE", "Omarchy menu", "omarchy-menu toggle")
hl.unbind("SUPER + ALT + K")
o.bind("SUPER + ALT + K", "Keybindings", "omarchy-menu-keybindings")
hl.unbind("SUPER + comma")
o.bind("SUPER + comma", "Dismiss last notification", "omarchy-shell notifications dismissOne")
hl.unbind("PRINT")
o.bind("PRINT", "Screenshot", "omarchy-capture-screenshot")
hl.unbind("ALT + PRINT")
o.bind("ALT + PRINT", "Screenrecording", "omarchy-capture-screenrecording --stop-recording || omarchy-menu toggle trigger.capture.screenrecord")
hl.unbind("SUPER + A")
o.bind("SUPER + A", "Agent", "omarchy-agent --pick")
hl.unbind("SUPER + CTRL + D")
o.bind("SUPER + CTRL + D", "Display", "omarchy-shell shell toggle omarchy.monitor")
hl.unbind("SUPER + Q")
o.bind("SUPER + Q", "Close Window", hl.dsp.window.close())
hl.unbind("SUPER + F")
o.bind("SUPER + F", "File manager", hl.dsp.exec_cmd("nautilus"))

hl.unbind("SUPER + CTRL + L")
o.bind("SUPER + CTRL + L", "Next Workspace", hl.dsp.focus({ workspace = "e+1" }))
hl.unbind("SUPER + CTRL + H")
o.bind("SUPER + CTRL + H", "Prev Workspace", hl.dsp.focus({ workspace = "e-1" }))


hl.unbind("SUPER + R")
o.bind("SUPER + R", "Resize", hl.dsp.submap("resize"))
hl.define_submap("resize", function()
    hl.bind("l", hl.dsp.window.resize({ x = 40, y = 0, relative = true }), { repeating =  true})
    hl.bind("h", hl.dsp.window.resize({ x = -40, y = 0, relative = true }), { repeating =  true})
    hl.bind("k", hl.dsp.window.resize({ x = 0, y = -40, relative = true }), { repeating =  true})
    hl.bind("j", hl.dsp.window.resize({ x = 0, y = 40, relative = true }), { repeating =  true})
    hl.bind("escape", hl.dsp.submap("reset"))
    hl.bind("return", hl.dsp.submap("reset"))
end)

hl.unbind("SUPER + M")
o.bind("SUPER + M", "Move Window", hl.dsp.submap("move"))
hl.define_submap("move", function()
    hl.bind("l", hl.dsp.window.move({ direction = "r"}))
    hl.bind("h", hl.dsp.window.move({ direction = "l"}))
    hl.bind("k", hl.dsp.window.move({ direction = "u"}))
    hl.bind("j", hl.dsp.window.move({ direction = "d"}))
    hl.bind("escape", hl.dsp.submap("reset"))
    hl.bind("return", hl.dsp.submap("reset"))
end)

  -- Bindings for preinstalled Omarchy applications, TUIs, and web apps.
hl.unbind("SUPER + T")
o.bind("SUPER + T", "Tmux", hl.dsp.exec_cmd("foot -e tmux new-session -A -s main"))
hl.unbind("SUPER + ALT + T")
o.bind("SUPER + ALT + T", "Herdr", hl.dsp.exec_cmd("foot -e herdr"))

-- workspaces
hl.unbind("SUPER + E")
o.bind("SUPER + E", "Switch to eMail Workspace", hl.dsp.focus({ workspace = "name: E" }))
hl.unbind("SUPER + SHIFT + E")
o.bind("SUPER + SHIFT + E", "Move Window to eMail Workspace", hl.dsp.window.move({ workspace = "name:E"}))

hl.unbind("SUPER + I")
o.bind("SUPER + I", "Switch to Internet Workspace", hl.dsp.focus({ workspace = "name: I" }))
hl.unbind("SUPER + SHIFT + I")
o.bind("SUPER + SHIFT + I", "Move Window to Internet Workspace", hl.dsp.window.move({ workspace = "name:I"}))

hl.unbind("SUPER + C")
o.bind("SUPER + C", "Switch to Coding Workspace", hl.dsp.focus({ workspace = "name: C" }))
hl.unbind("SUPER + SHIFT + C")
o.bind("SUPER + SHIFT + C", "Move Window to Coding Workspace", hl.dsp.window.move({ workspace = "name:C"}))

