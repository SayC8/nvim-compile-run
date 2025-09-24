# Usage

1. copy compile_run.lua to your nvim config directory
2. require the compile_run.lua somewhere in your nvim config e.g. init.lua or lua/config/keymaps.lua

## Compile/Run

Pressing F7 will check the filetype and run the command defined for that filetype.

For compiled/interpreted languages:

- Odin: `odin run .` (odin by default does not keep the executable)
- C: Checks for a 'Makefile' then `make && ./{executable-name}`
- Python: `python {filename}`
- Lua: `lua {filename}`

For web etc:

- HTML: by default opens current file in chromium, can be changed with the  
browser variable
