local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

-- Install Plugins
require('packer').startup(function(use)
  -- Code Analysis
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
  use 'neovim/nvim-lspconfig'
  use 'hrsh7th/nvim-cmp' -- Autocompletion plugin
  use 'hrsh7th/cmp-nvim-lsp' -- LSP source for nvim-cmp
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use "ray-x/lsp_signature.nvim" -- Show Function Signature while entering parameters
  use { "folke/trouble.nvim", requires = "kyazdani42/nvim-web-devicons" } -- Show LSP diagnostics in a floating window
  use "github/copilot.vim"

  -- Snippets
  use 'hrsh7th/vim-vsnip'

  -- Testing Integration
  use 'walialu/jest.nvim'

  -- Keybindings
  use 'folke/which-key.nvim'

  -- Git Integration
  use 'tpope/vim-fugitive'
  use 'mhinz/vim-signify'

  -- BufExplorer, Buffers management on steroids
  use 'jlanzarotta/bufexplorer'

  -- Trailing whitespace highlighting & automatic fixing
  use 'ntpeters/vim-better-whitespace'

  -- Jump to any location specified by two characters.
  use 'justinmk/vim-sneak'

  -- Telescope
  use { 'nvim-telescope/telescope.nvim', requires = { 'nvim-lua/plenary.nvim' } }
  use { 'nvim-telescope/telescope-symbols.nvim', requires = { 'nvim-telescope/telescope.nvim' } }

  -- Syntax highlighting --

    -- Terraform
    use 'hashivim/vim-terraform'

  -- UI --

    -- Colorscheme
    use 'folke/tokyonight.nvim'

    -- File explorer
    use 'scrooloose/nerdtree'

    -- Customized vim status line
    use { 'nvim-lualine/lualine.nvim', requires = { 'kyazdani42/nvim-web-devicons', opt = true } }

    -- Icons
    use 'ryanoasis/vim-devicons'
    use 'tiagofumo/vim-nerdtree-syntax-highlight'

    -- Tagbar replacement
    use 'liuchengxu/vista.vim'

  -- Quickly swapping text with visual mode and motion command cx
  use 'tommcdo/vim-exchange'

  -- Comments
  use 'tpope/vim-commentary'

  -- Repeat
  use 'tpope/vim-repeat'

  -- Easily surround stuff
  use 'tpope/vim-surround'

  -- Tim Pope stuff
  use 'tpope/vim-unimpaired'
  use 'tpope/vim-rhubarb'

  -- Add Golang support
  use { 'fatih/vim-go', run = ':GoUpdateBinaries' }

  -- Add Rust support
  use 'simrat39/rust-tools.nvim'

  -- Add Markdown support
  use { 'plasticboy/vim-markdown', ft = {'markdown'} }

  -- Add EditorConfig support
  use 'editorconfig/editorconfig-vim'

  use { 'cespare/vim-toml', ft = {'toml'} }
  use { 'StanAngeloff/php.vim', ft = {'php'} }

  -- Plugin Configuration
  require 'plugins.lsp_config'
  require 'plugins.lsp_config.cmp'
  require 'plugins.lsp_config.diagnostics'
  require 'plugins.lualine'
  require 'plugins.whichkey'
  require 'plugins.tokyonight'

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)
