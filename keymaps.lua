-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("n", "<F7>", function()
  local browser = "chromium"
  local cmd = nil
  local filetype = vim.bo.filetype
  local filename = vim.fn.expand("%")
  local basename = vim.fn.expand("%:r")

  local function checkFile(f)
    local check = io.open(f)
    if check then
      return true
    else
      print("No " .. f .. " found in CWD")
      f.close()
      return false
    end
  end

  local function compile(c)
    vim.cmd("w")
    vim.cmd("split")
    vim.cmd("resize 20")
    vim.cmd(c)
    vim.cmd("$")
  end

  if filetype == "odin" then
    cmd = "term odin run ."
    compile(cmd)
  elseif filetype == "c" then
    if checkFile("Makefile") then
      cmd = "term make && ./" .. basename
      compile(cmd)
    else
      print("No Makefile found!")
    end
  elseif filetype == "python" then
    cmd = "term python " .. filename
    compile(cmd)
  elseif filetype == "html" then
    vim.cmd("!" .. browser .. " %")
  else
    print("No interpreter or compiler defined for filetype: '" .. filetype .. "'")
  end
end)
