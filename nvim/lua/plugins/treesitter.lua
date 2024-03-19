-- [[ Configure Treesitter ]]
-- See `:help nvim-treesitter`
require('nvim-treesitter.configs').setup {
  -- Add languages to be installed here that you want installed for treesitter
  ensure_installed = {
    'css',
    'go',
    'http',
    'javascript',
    'jsdoc',
    'json',
    'lua',
    'prisma',
    'python',
    'rust',
    'scss',
    'svelte',
    'tsx',
    'typescript',
    'vim',
    'vimdoc',
  },

  highlight = { enable = true },
  indent = { enable = true, disable = { 'python' } },
  incremental_selection = {
    enable = true,
    keymaps = {
      init_selection = '<c-space>',
      node_incremental = '<c-space>',
      scope_incremental = '<c-s>',
      node_decremental = '<c-backspace>',
    },
  },
}
