
-- Show white space characters
vim.opt.list = true
vim.opt.listchars = {tab = '»·', trail = '•', extends = '>', precedes = '<' }

-- Mark trailing white space as red.
vim.cmd([[
  highlight ExtraWhitespace ctermbg=red guibg=red
  match ExtraWhitespace /\s\+$/
]])

-- Use spaces instead of tabs
vim.opt.expandtab = true
-- Use 2 spaces for every 'tab'
vim.opt.tabstop = 2
-- Number of spaces for indenting (e.g., using '>>' or '<<')
vim.opt.shiftwidth = 2
-- Makes 'Tab' key insert 2 spaces
vim.opt.softtabstop = 2


-- Lazy plugin manager
require("config.lazy")
