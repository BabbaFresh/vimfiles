local map = require 'helper'.mapKey

-- Move up/down by visual (wrapped) lines
map('', 'j', 'gj')
map('', 'k', 'gk')

-- Save
map('n', '<leader>w', ':w<CR>')
map('n', '<leader>q', ':q<CR>')

-- Replacement for ctrlp
map('n', '<C-p>', ':Files<CR>')

-- Replacement for ctrlp
map('n', 'be', ':BufExplorer<CR>')

-- Quickly swap between two files
map('n', '<space>', ':b#<CR>')

-- File Explorer
map('n', '<leader>E', ':NERDTreeToggle<CR>')

-- Telescope symbols
--https://github.com/nvim-telescope/telescope-symbols.nvim
map('i', '<C-e>', '<esc>:Telescope symbols<CR>')

-- CTRL + ALT(meta) + p will open the fuzzy finder just for the directory containing the currently edited file
map('n', '<C-M-p>', ':Files <C-r>=expand("%:h")<CR>/<CR>')

