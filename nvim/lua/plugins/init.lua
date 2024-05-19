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
  {
    'hrsh7th/nvim-cmp', -- Autocompletion plugin
    dependencies = {
      'hrsh7th/cmp-nvim-lsp', -- LSP source for nvim-cmp
      'hrsh7th/cmp-buffer',
      'hrsh7th/cmp-path',
      'hrsh7th/cmp-cmdline',
      {
        'petertriho/cmp-git', -- Git source for nvim-cmp
        dependencies = {
          'nvim-lua/plenary.nvim',
        },
      },
      'hrsh7th/vim-vsnip',
      'onsails/lspkind.nvim', -- Add vscode-like pictograms to completion items
    },
  },

  "ray-x/lsp_signature.nvim", -- Show Function Signature while entering parameters

  -- Show LSP diagnostics
  {
    "folke/trouble.nvim",
    dependencies = {
      'kyazdani42/nvim-web-devicons'
    }
  },

  -- Navigate code on steroids with flash.nvim ⚡
  {
    'folke/flash.nvim',
    config = function()
      require('flash').setup({
        modes = {
          char = { enabled = false },
        }
      })
    end
  },

  -- This is 🔥 github copilot
  "github/copilot.vim",

  -- Testing Integration
  {
    'mistweaverco/jest.nvim',
    dir = "/home/marco/projects/personal/jest.nvim",
  },

  -- Keybindings
  'folke/which-key.nvim',

  -- Git Integration
  {
    "NeogitOrg/neogit",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "sindrets/diffview.nvim",
      "nvim-telescope/telescope.nvim",
    },
    config = true
  },
  {
    'lewis6991/gitsigns.nvim',
    config = function()
      require('gitsigns').setup()
    end
  },

  -- Github Integration
  {
    'mistweaverco/githubutils.nvim',
    dependencies = {
      'nvim-telescope/telescope.nvim'
    }
  },

  -- Bafa, Buffer management on steroids 💊
  {
    'mistweaverco/bafa.nvim'
  },

  -- Umbizo, formatting on steroids 💊
  {
    'mistweaverco/umbizo.nvim',
    config = function()
      require('umbizo').setup()
    end,
    dir = "/home/marco/projects/personal/umbizo.nvim"
  },

  -- Harpoon, quick access to project files
  {
    'ThePrimeagen/harpoon',
    dependencies = {
      'nvim-lua/plenary.nvim'
    }
  },

  -- Rest Console
  -- See https://github.com/rest-nvim/rest.nvim?tab=readme-ov-file#packernvim for setup options
  {
    'rest-nvim/rest.nvim',
    config = function()
      require('rest-nvim').setup({})
    end,
    ft = {'http'},
    dependencies = {
      'nvim-lua/plenary.nvim',
      'vhyrro/luarocks.nvim'
    }
  },

  -- Trailing whitespace highlighting & automatic fixing
  'ntpeters/vim-better-whitespace',

  -- Telescope
  {
    'nvim-telescope/telescope.nvim',
    dependencies = {
      'nvim-lua/plenary.nvim'
    }
  },
  {
    'nvim-telescope/telescope-symbols.nvim',
    dependencies = {
      'nvim-telescope/telescope.nvim'
    }
  },

  -- Syntax highlighting --

  -- Terraform
  'hashivim/vim-terraform',
  -- mustache and handlebars mode
  'mustache/vim-mustache-handlebars',

  -- Highlight, edit, and navigate code
  {
    'nvim-treesitter/nvim-treesitter',
    build = function()
      pcall(require('nvim-treesitter.install').update { with_sync = true })
    end,
  },

  -- Discord
  {
    'mistweaverco/discord.nvim',
    config = function()
      require('discord').setup({
        -- log_level = 'debug',
      })
    end,
    dir = "/home/marco/projects/personal/discord.nvim",
  },

  -- UI --

  -- Colorscheme
  {
    'mistweaverco/bluloco.nvim',
    lazy = false,
    priority = 1000,
    config = function()
      require('bluloco').setup({
        theme = 'dark',
      })
    end,
  },

  -- Color highlighting
  {
    'brenoprata10/nvim-highlight-colors',
    config = function()
      require('nvim-highlight-colors').setup({
        ---Render style
        ---@usage 'background'|'foreground'|'virtual'
        render = 'virtual',
        ---Highlight named colors, e.g. 'green'
        enable_named_colors = false,
        ---Highlight tailwind colors, e.g. 'bg-blue-500'
        enable_tailwind = false,
      })
    end
  },

  -- File explorer
  {
    'nvim-tree/nvim-tree.lua',
    dependencies = {
      'kyazdani42/nvim-web-devicons'
    }
  },
  {
    'stevearc/oil.nvim',
    tag = 'v2.2.0',
    opts = {},
    dependencies = {
      'kyazdani42/nvim-web-devicons'
    }
  },

  -- Customized vim status line
  {
    'nvim-lualine/lualine.nvim',
    dependencies = {
      'kyazdani42/nvim-web-devicons'
    }
  },

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
  {
    'fatih/vim-go',
    build = ':GoUpdateBinaries'
  },

  -- Add Rust support
  'simrat39/rust-tools.nvim',

  -- Add Markdown support
  {
    'plasticboy/vim-markdown',
    ft = {'markdown'}
  },

  {
    'cespare/vim-toml',
    ft = {'toml'}
  },
  {
    'StanAngeloff/php.vim',
    ft = {'php'}
  }
})

-- Plugin Configuration
require 'plugins.lsp_config'
require 'plugins.lsp_config.cmp'
require 'plugins.lsp_config.diagnostics'
require 'plugins.lualine'
require 'plugins.oil'
require 'plugins.nvimtree'
require 'plugins.treesitter'
require 'plugins.whichkey'
