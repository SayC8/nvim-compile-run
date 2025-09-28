# Contents

## Configs

### Omarchy switch kb layout

1. Paste contents of hyprland_switch_layouts.conf to the top of ~/.config/hypr/input.conf
2. Make sure to replace the kb_layout with: <br>

```
input {
    kb_layout: $layout0,$layout1
}
```

- SUPER + CTRL + 1: Switch to first layout
- SUPER + CTRL + 2: Switch to second layout

More layouts can be added like this:

```
$layout2 = jp
bindd = SUPER CTRL, 3, Switch to layout 3, exec, hyprctl switchxkblayout $device 2 && notify-send "Switched to keyboard layout:" $layout2
input {
    kb_layout: $layout0,$layout1,$layout2
}
```

Note: kb_layout uses 0 based indexing

## Neovim keybinds

### Nvim Compile/Run

1. copy compile_run.lua to your nvim config directory
2. require the compile_run.lua somewhere in your nvim config e.g. init.lua or lua/config/keymaps.lua

Pressing F7 will check the filetype and run the command defined for that filetype.

For compiled/interpreted languages:

- Odin: `odin run .` (odin by default does not keep the executable)
- C: Checks for a 'Makefile' then `make && ./{executable-name}`
- Python: `python {filename}`
- Lua: `lua {filename}`

For web etc:

- HTML: by default opens current file in chromium, can be changed with the  
browser variable
