require "nvchad.mappings"
local map = vim.keymap.set
local nomap = vim.keymap.del

map("n", ";", ":", { desc = "CMD enter command mode" })

map("", "J", "<cmd>HopWordAC<CR>")
map("", "K", "<cmd>HopWordBC<CR>")
map("", "<CR>", "o", { noremap = true })
map("", "<Backspace>", "i<Backspace>", { noremap = true })
map("n", "<esc>", ":noh<CR><esc>", { silent = true })
map("n", "<esc>^[", "<esc>^[", { noremap = true })
map("n", "H", "Hzz")
map("n", "L", "Lzz")

local function is_neotree_open()
  return vim.iter(vim.api.nvim_list_bufs())
    :any(function(buf)
      return vim.api.nvim_get_option_value('filetype', {buf = buf}) == 'neo-tree'
    end)
end
map("n", "o", function()
  vim.cmd("Neotree focus reveal=" .. tostring(not is_neotree_open()))
end)
map("n", "O", "<cmd>Neotree focus reveal<CR>")
map("n", "<leader><tab>", "<cmd>Neotree show toggle<CR>")

nomap("n", "<C-n>")
nomap("n", "<leader>e")
