require "nvchad.options"
local o = vim.o

o.cursorlineopt = 'both'
vim.opt.list = true
vim.opt.listchars = { tab = '→ ', nbsp = '␣', trail = '·', precedes = '«', extends = '»' }
