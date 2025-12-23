-- Key maps
local map = vim.keymap.set

-- F8: Toggle Line Numbers
map('n', '<F8>', function()
  vim.opt.number = not vim.opt.number:get()
--  vim.opt.relativenumber = not vim.opt.relativenumber:get()
end, { desc = "Toggle Line Numbers (Absolute & Relative)" })

