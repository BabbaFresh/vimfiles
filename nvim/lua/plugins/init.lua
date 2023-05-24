-- Bootstrapping lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- Install Plugins
require('lazy').setup({
  -- Code Analysis
  'neovim/nvim-lspconfig',
  'hrsh7th/nvim-cmp', -- Autocompletion plugin
  'hrsh7th/cmp-nvim-lsp', -- LSP source for nvim-cmp
  'hrsh7th/cmp-buffer',
  'hrsh7th/cmp-path',
  'hrsh7th/cmp-cmdline',
  "ray-x/lsp_signature.nvim", -- Show Function Signature while entering parameters
  { "folke/trouble.nvim", dependencies = { 'kyazdani42/nvim-web-devicons' } }, -- Show LSP diagnostics in a floating window
  "github/copilot.vim",

  -- Snippets
  'hrsh7th/vim-vsnip',

  -- Testing Integration
  'walialu/jest.nvim',

  -- Keybindings
  'folke/which-key.nvim',

  -- Git Integration
  'tpope/vim-fugitive',
  'mhinz/vim-signify',

  -- BufExplorer, Buffers management on steroids
  'jlanzarotta/bufexplorer',

  -- Trailing whitespace highlighting & automatic fixing
  'ntpeters/vim-better-whitespace',

  -- Jump to any location specified by two characters.
  'justinmk/vim-sneak',

  -- Telescope
  { 'nvim-telescope/telescope.nvim', dependencies = { 'nvim-lua/plenary.nvim' } },
  { 'nvim-telescope/telescope-symbols.nvim', dependencies = { 'nvim-telescope/telescope.nvim' } },

  -- Syntax highlighting --

    -- Terraform
    'hashivim/vim-terraform',

    { -- Highlight, edit, and navigate code
      'nvim-treesitter/nvim-treesitter',
      build = function()
        pcall(require('nvim-treesitter.install').update { with_sync = true })
      end,
    },

  -- UI --

    -- Colorscheme
    'loctvl842/monokai-pro.nvim',

    -- File explorer
    { 'nvim-tree/nvim-tree.lua', dependencies = { 'kyazdani42/nvim-web-devicons' } },

    -- Customized vim status line
    { 'nvim-lualine/lualine.nvim', dependencies = { 'kyazdani42/nvim-web-devicons' } },

  -- Quickly swapping text with visual mode and motion command cx
  'tommcdo/vim-exchange',

  -- Comments
  'tpope/vim-commentary',

  -- Repeat
  'tpope/vim-repeat',

  -- Easily surround stuff
  'tpope/vim-surround',

  -- Tim Pope stuff
  'tpope/vim-unimpaired',
  'tpope/vim-rhubarb',

  -- Add Golang support
  { 'fatih/vim-go', build = ':GoUpdateBinaries' },

  -- Add Rust support
  'simrat39/rust-tools.nvim',

  -- Add Markdown support
  { 'plasticboy/vim-markdown', ft = {'markdown'} },
  { 'toppair/peek.nvim', ft = {'markdown'}, build = 'deno task --quiet build:fast', config = function() require('plugins.peek') end },

  -- Add EditorConfig support
  'editorconfig/editorconfig-vim',

  { 'cespare/vim-toml', ft = {'toml'} },
  { 'StanAngeloff/php.vim', ft = {'php'} }
})

-- Plugin Configuration
require 'plugins.lsp_config'
require 'plugins.lsp_config.cmp'
require 'plugins.lsp_config.diagnostics'
require 'plugins.lualine'
require 'plugins.nvimtree'
require 'plugins.treesitter'
require 'plugins.whichkey'
require 'plugins.monokaipro'
