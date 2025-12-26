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

vim.cmd('colorscheme phoenix')
vim.opt.termguicolors = false
vim.opt.foldlevel = 99
vim.opt.foldlevelstart = 99
vim.opt.foldenable = true
vim.opt.hlsearch = true
vim.opt.incsearch = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.autoread = true
vim.opt.swapfile = false

if vim.g.vscode then
  vim.keymap.set('n', 'H', "50k<Esc>:call VSCodeExtensionNotify('reveal','center',0)<CR>")
  vim.keymap.set('n', 'L', "50j<Esc>:call VSCodeExtensionNotify('reveal','center',0)<CR>")
  vim.keymap.set('', '<Tab>', "<Cmd>call VSCodeNotify('workbench.action.nextEditorInGroup')<CR>", { noremap = true })
  vim.keymap.set('n', '`', "<Cmd>call VSCodeNotify('workbench.action.debug.start','comprun-file')<CR>")
  -- map ` <Cmd>call VSCodeNotify('workbench.action.tasks.runTask','comprun-file')<CR>
else
  vim.keymap.set('n', 'H', 'Hzz')
  vim.keymap.set('n', 'L', 'Lzz')
  vim.keymap.set('i', '{<CR>', '{<CR>}<Esc>ko')

  vim.keymap.set('', '<Tab>', '<cmd>bnext<CR>', { noremap = true })
  vim.keymap.set('n', '<S-Tab>', '<cmd>wincmd w<CR>', { silent = true })
  vim.keymap.set('n', '`', ':wa<CR>:!comprun-file "%:p" norm<CR>')
  vim.keymap.set('n', '~', ':wa<CR>:!comprun-file "%:p" shift<CR>')
  vim.keymap.set('n', '<A-`>', ':wa<CR>:!comprun-file "%:p" alt<CR>')
  vim.keymap.set('n', 'o', function()
    local explorer_win = nil
    local wins = vim.api.nvim_list_wins()
    for _, win in ipairs(wins) do
      local buf = vim.api.nvim_win_get_buf(win)
      local ft = vim.bo[buf].filetype
      if ft == 'snacks_explorer' or ft == 'snacks_picker_list' then
        explorer_win = win
        break
      end
    end
    if explorer_win and vim.api.nvim_get_current_win() ~= explorer_win then
      vim.api.nvim_set_current_win(explorer_win)
    else
      Snacks.explorer()
    end
  end, { desc = "File Explorer" })
  -- vim.keymap.set('n', 'O', function() Snacks.explorer.reveal() end, { desc = "Reveal Current File" })
  vim.keymap.set('n', '<Leader><Tab>', function() Snacks.explorer() end, { desc = "Toggle Explorer" })

  vim.opt.list = true
  vim.opt.listchars = { tab = '→ ', nbsp = '␣', trail = '·', precedes = '«', extends = '»' }
  vim.opt.tabstop = 2
  vim.opt.softtabstop = 0
  vim.opt.shiftwidth = 2
  vim.opt.smarttab = true
  vim.opt.expandtab = true
  vim.opt.wrap = false
  vim.opt.cursorline = true
  vim.opt.autoindent = true
end

require("lazy").setup({
  {
    "smoka7/hop.nvim",
    config = function()
      require'hop'.setup()
    end,
  },
  {
    "nvim-treesitter/nvim-treesitter",
    config = function()
      require'nvim-treesitter'.setup {
        install_dir = vim.fn.stdpath('data') .. '/site',
      }
      require'nvim-treesitter'.install {
        'javascript', 'typescript', 'lua', 'jsx'
      }
    end,
    cond = not vim.g.vscode,
  },
  {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      local custom_theme = {
        visual = {
          a = { fg = 8, bg = 3, gui = 'bold' },
          b = { fg = 7, bg = 8 },
        },
        replace = {
          a = { fg = 8, bg = 1, gui = 'bold' },
          b = { fg = 7, bg = 8 },
        },
        inactive = {
          c = { fg = 7, bg = 8 },
          a = { fg = 7, bg = 8, gui = 'bold' },
          b = { fg = 7, bg = 8 },
        },
        normal = {
          c = { fg = 6, bg = 8 },
          a = { fg = 8, bg = 4, gui = 'bold' },
          b = { fg = 7, bg = 8 },
        },
        insert = {
          a = { fg = 8, bg = 2, gui = 'bold' },
          b = { fg = 7, bg = 8 },
        },
      }
      require('lualine').setup({
        options = {
          theme = custom_theme,
          component_separators = { left = '', right = '' },
          section_separators = { left = '', right = '' },
        },
        tabline = {
          lualine_a = {
            {
              'buffers',
              buffers_color = {
                active = 'lualine_a_normal',
                inactive = 'lualine_a_inactive',
              },
              symbols = {
                modified = '',
                alternate_file = '',
                directory = '',
              },
            }
          },
        },
      })
    end,
    cond = not vim.g.vscode,
  },
  {
    "folke/snacks.nvim",
    config = function()
      require("snacks").setup({
        animate = {
          enabled = true,
        },
        debug = { enabled = true },
        dim = { enabled = true },
        keymap = { enabled = true },
        explorer = { enabled = true },
        picker = {
          sources = {
            explorer = {
              win = {
                list = {
                  keys = {
                    ["o"] = "confirm",
                    ["I"] = "toggle_hidden",
                    ["<Tab>"] = false,
                    ["H"] = false,
                    ["L"] = false,
                    ["l"] = false,
                  },
                },
              },
            },
          },
        },
        notifier = { enabled = true },
        notify = { enabled = true },
        indent = { enabled = true },
        scroll = {
          enabled = true,
          animate = {
            duration = { step = 10, total = 80 },
            easing = "linear",
          },
          animate_repeat = {
            delay = 100,
            duration = { step = 1, total = 40 },
            easing = "linear",
          },
        },
        statuscolumn = { enabled = true },
      })
    end,
    cond = not vim.g.vscode,
  },
  {
    "kevinhwang91/nvim-ufo",
    dependencies = { "kevinhwang91/promise-async" },
    config = function()
      require('ufo').setup({
        provider_selector = function(bufnr, filetype, buftype)
          return {'treesitter', 'indent'}
        end
      })
    end,
    cond = not vim.g.vscode,
  },
})

