# Compile/Run

Pressing F7 will check the filetype and run the command defined for that filetype.

For compiled/interpreted languages:

- Odin: `odin run .` (odin by default does not keep the executable)
- C: Checks for a 'Makefile' then `make && ./{executable-name}`
- Python: `python {filename}`

For web etc:

- HTML: by default opens current file chromium, can be changed in with the  
browser variable
