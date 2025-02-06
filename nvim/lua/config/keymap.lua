local map = require("helper").mapKey

-- Move up/down by visual (wrapped) lines
map("", "j", "gj")
map("", "k", "gk")

-- Save
map("n", "<leader>w", ":w<CR>")

-- Save and quit buffer
map("n", "<leader>wq", ":wq<CR>")

-- Save and quit Neovim
map("n", "<leader>q", ":wqall!<CR>")

-- Quit out of buffer
map("n", "<leader>x", ":bd!<CR>")

-- Replacement for ctrlp
map("n", "<C-p>", ":Telescope find_files<CR>")
vim.keymap.set("n", "<C-p>", function()
  require("telescope.builtin").find_files({ find_command = { "rg", "--files", "--hidden", "-g", "!.git" } })
end)

map("n", "<leader>be", ':lua require("bafa.ui").toggle()<CR>', { desc = "Toggle bafa", noremap = true, silent = true })

-- Quickly swap between two files
map("n", "<space>", ":b#<CR>")

-- File Explorer
map("n", "<leader>e", ":NvimTreeFindFileToggle<CR>")
map("n", "<leader>E", ":NvimTreeToggle<CR>")

-- Telescope symbols
--https://github.com/nvim-telescope/telescope-symbols.nvim
vim.keymap.set("i", "<C-e>", function()
  require("telescope.builtin").symbols({ sources = { "emoji", "gitmoji" } })
end)
-- Telescope lsp document symbols
vim.keymap.set("n", "<leader>t", function()
  require("telescope.builtin").lsp_document_symbols()
end)

vim.keymap.set("n", "-", require("oil").open, { desc = "Open parent directory" })
