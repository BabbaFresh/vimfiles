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
require("lazy").setup({
  -- Neovim development for the lazy
  require("plugins.config.lazydev-nvim"),
  -- Code Analysis
  require("plugins.config.nvim-lspconfig"),
  -- Autocompletion
  require("plugins.config.nvim-cmp"),
  -- Show Function Signature while entering parameters
  require("plugins.config.lsp_signature-nvim"),
  -- Code Actions (based on lsp)
  require("plugins.config.tiny-code-action-nvim"),
  -- Show LSP diagnostics
  require("plugins.config.trouble-nvim"),
  -- Nicer messages and commandline
  require("plugins.config.noice-nvim"),
  -- Navigate code on steroids with flash.nvim ⚡
  require("plugins.config.flash-nvim"),
  -- This is 🔥 github copilot
  require("plugins.config.copilot-vim"),
  -- blazingly fast ⚡ search 🔍
  require("plugins.config.tafuta-nvim"),
  -- Simple HTTP Client 🐼
  require("plugins.config.kulala-nvim"),
  -- Minimal session management
  require("plugins.config.kikao-nvim"),
  -- Keybindings
  require("plugins.config.which-key-nvim"),
  -- Formatters 💄 and Linters 🧹
  require("plugins.config.conform-nvim"),
  require("plugins.config.nvim-lint"),
  -- Git Integration
  require("plugins.config.neogit"),
  require("plugins.config.gitsigns-nvim"),
  require("plugins.config.blame-nvim"),
  -- Github, GitLab and Bitbucket Integration 🐙
  require("plugins.config.ndoo-nvim"),
  -- Bafa, Buffer management on steroids 💊
  require("plugins.config.bafa-nvim"),
  -- Trailing whitespace highlighting & automatic fixing
  require("plugins.config.vim-better-whitespace"),
  -- Telescope
  require("plugins.config.telescope-nvim"),
  -- Terraform 🌍
  require("plugins.config.vim-terraform"),
  -- Treesitter 🌳
  require("plugins.config.nvim-treesitter"),
  -- Social Coding
  require("plugins.config.vim-wakatime"),
  -- Hide 🙈 sensitive data
  require("plugins.config.cloak-nvim"),
  -- Colorscheme
  require("plugins.config.bluloco-nvim"),
  -- Color highlighting
  require("plugins.config.nvim-highlight-colors"),
  -- Comments
  require("plugins.config.todo-comments-nvim"),
  require("plugins.config.ts-comments-nvim"),
  -- File explorer
  require("plugins.config.nvim-tree"),
  -- Cocconut oil 🥥 for neovim
  require("plugins.config.oil-nvim"),
  -- Customized 🌈 vim status line
  require("plugins.config.lualine-nvim"),
  -- Repeat
  require("plugins.config.vim-repeat"),
  -- Easily surround stuff
  require("plugins.config.vim-surround"),
  -- Add Golang support
  require("plugins.config.go-nvim"),
  -- Database 🗃️ support
  require("plugins.config.vim-dadbod"),
  -- Search on steroids with ripgrep
  require("plugins.config.grug-far-nvim"),
})
