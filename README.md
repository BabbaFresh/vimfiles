<h1 align="center">Neovimfiles</h1>

<div align="center">
  <a href="#install">Install</a>
  <span> • </span>
  <a href="#features">Features</a>
  <span> • </span>
  <a href="#languages">Languages</a>
  <p></p>
</div>

<div align="center">

![Lua](https://img.shields.io/badge/Made%20with%20Lua-blueviolet.svg?style=for-the-badge&logo=lua)

</div>

These are my Neovim configuration files.

## install

**Prerequisites**

- Neovim 0.10+
- Node.js 18+ (for most LSPs)

```sh
mkdir -p ~/projects/personal
git clone https://github.com/gorillamoe/neovimfiles ~/projects/personal/neovimfiles
ln -s ~/projects/personal/neovimfiles ~/.config/nvim
cd ~/.config/nvim
./install-language-servers.sh
```

2. Open Neovim. You should see a _"Installing lazy.nvim.."_ and popup installing the plugins on the first run

## features

- **Plugins**: [lazy.nvim][lazy.nvim] to manage my plugins.
- **LSP**: [nvim-lspconfig][nvim-lspconfig] to configure the Language Server Protocol.
- **Treesitter**: [nvim-treesitter][nvim-treesitter] to configure the Treesitter syntax highlighter.
- **Telescope**: [telescope.nvim][telescope.nvim] as fuzzy finder.
- **Lualine**: [lualine.nvim][lualine.nvim] as status line.
- **Color Scheme**: [bluloco][bluloco.nvim] as color scheme.
- **Completion**: [nvim-cmp][nvim-cmp] as completion plugin.
- **File Explorer**:
  - [nvim-tree.lua][nvim-tree.lua] as file explorer.
  - [oil.nvim][oil.nvim] as file explorer.
- **Git**:
  - [gitsigns.nvim][gitsigns.nvim] as git signs.
  - [neogit][neogit] as git client.
  - [ndoo.nvim][ndoo.nvim] to interact with GitHub, GitLab, and Bitbucket.
- **Comments**:
  - [todo-comments.nvim][todo-comments.nvim] as todo comments highlighter.
  - [ts-comments.nvim][ts-comments.nvim] to enhance native comments.

## languages

The following languages are supported (either via LSP and/or Treesitter):

- css (lsp & treesitter)
- go (lsp & treesitter)
- http (treesitter)
- javascript (lsp & treesitter)
- jsdoc (treesitter)
- json (lsp & treesitter)
- lua (lsp & treesitter)
- prisma (treesitter)
- python (treesitter)
- rust (lsp & treesitter)
- scss (lsp & treesitter)
- sql (treesitter)
- svelte (lsp & treesitter)
- tsx (lsp & treesitter)
- typescript (lsp & treesitter)
- vim (treesitter)
- vimdoc (treesitter)
- yaml (lsp & treesitter)

[lazy.nvim]: https://github.com/folke/lazy.nvim
[nvim-lspconfig]: https://github.com/neovim/nvim-lspconfig
[nvim-treesitter]: https://github.com/nvim-treesitter/nvim-treesitter
[telescope.nvim]: https://github.com/nvim-telescope/telescope.nvim
[lualine.nvim]: https://github.com/nvim-lualine/lualine.nvim
[bluloco.nvim]: https://github.com/mistweavercolors/bluloco.nvim
[nvim-cmp]: https://github.com/hrsh7th/nvim-cmp
[nvim-tree.lua]: https://github.com/nvim-tree/nvim-tree.lua
[oil.nvim]: https://github.com/stevearc/oil.nvim
[gitsigns.nvim]: https://github.com/lewis6991/gitsigns.nvim
[neogit]: https://github.com/NeogitOrg/neogit
[ndoo.nvim]: https://github.com/mistweaverco/ndoo.nvim
