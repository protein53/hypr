-- 1. Force main Evince document windows to tile (overrides Omarchy's floating-window tag)
o.window({ class = "^org\\.gnome\\.Evince$" }, {
  tag = "-floating-window",
  float = false,
  tile = true,
})

-- 2. Keep modal dialogs (password prompts, confirmations) floating
o.window({
  class = "^org\\.gnome\\.Evince$",
  modal = true,
}, {
  float = true,
  center = true,
})

-- 3. Keep non-modal pop-ups (Print, Save As, Open, Properties) floating
o.window({
  class = "^org\\.gnome\\.Evince$",
  title = "^(Print|Save As|Open Document|Document Properties|Password Required).*$",
}, {
  float = true,
  center = true,
})
