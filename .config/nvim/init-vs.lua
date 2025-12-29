local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
vim.opt.rtp:prepend(lazypath)

vim.g.mapleader = ' '
vim.keymap.set('n', '<space>', '<nop>')

vim.keymap.set('', 'J', '<cmd>HopWordAC<CR>')
vim.keymap.set('', 'K', '<cmd>HopWordBC<CR>')
vim.keymap.set('', '<Backspace>', 'i<Backspace>', { noremap = true })
vim.keymap.set('', '<CR>', 'A<CR>', { noremap = true })
vim.keymap.set('n', '<esc>', ':noh<CR><esc>', { silent = true })
vim.keymap.set('n', '<esc>^[', '<esc>^[', { noremap = true })

vim.opt.hlsearch = true
vim.opt.incsearch = true
vim.keymap.set('n', 'H', "50k<Esc>:call VSCodeExtensionNotify('reveal','center',0)<CR>")
vim.keymap.set('n', 'L', "50j<Esc>:call VSCodeExtensionNotify('reveal','center',0)<CR>")
vim.keymap.set('', '<Tab>', "<Cmd>call VSCodeNotify('workbench.action.nextEditorInGroup')<CR>", { noremap = true })
vim.keymap.set('n', '`', "<Cmd>call VSCodeNotify('workbench.action.debug.start','comprun-file')<CR>")
-- map ` <Cmd>call VSCodeNotify('workbench.action.tasks.runTask','comprun-file')<CR>

require("lazy").setup({
  {
    "smoka7/hop.nvim",
    lazy = false,
    config = function()
      vim.cmd([[
        hi HopNextKey  cterm=bold gui=bold ctermfg=196 guifg=#ff0000
        hi HopNextKey1 cterm=bold gui=bold ctermfg=208 guifg=#ff8700
        hi HopNextKey2 cterm=bold gui=bold ctermfg=208 guifg=#ff8700
      ]])
      require'hop'.setup()
    end,
  },
})

