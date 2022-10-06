local map = require 'helper'.mapKey

-- Move up/down by visual (wrapped) lines
map('', 'j', 'gj')
map('', 'k', 'gk')

-- Save
map('n', '<leader>w', ':w<CR>')
map('n', '<leader>q', ':q<CR>')

-- Replacement for ctrlp
map('n', '<C-p>', ':Telescope find_files<CR>')

-- Replacement for ctrlp
map('n', '<leader>be', ':BufExplorer<CR>')

-- Quickly swap between two files
map('n', '<space>', ':b#<CR>')

-- File Explorer
map('n', '<leader>E', ':NERDTreeToggle<CR>')

-- Telescope symbols
--https://github.com/nvim-telescope/telescope-symbols.nvim
map('i', '<C-e>', '<esc>:Telescope symbols<CR>')

