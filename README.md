# Neovim compile/run keybind

Pressing F7 will check the filetype and run the command defined for that filetype.

----------

For compiled/interpreted languages:

- Odin: `odin run .` (odin by default does not keep the executable)
- C: Checks for a 'Makefile' then `make && ./{executable-name}`

For web etc:

- HTML: by default opens current file chromium, can be changed in with the <br> browser variable
