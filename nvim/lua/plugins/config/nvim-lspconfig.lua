return {
  "neovim/nvim-lspconfig",
  config = function()
    local nvim_lsp = require'lspconfig'

    vim.api.nvim_command('inoremap <C-n> <C-x><C-o>')

    -- Set up lspconfig.
    local capabilities = require('cmp_nvim_lsp').default_capabilities(vim.lsp.protocol.make_client_capabilities())

    local servers = {
      'bashls',
      'cssls',
      'dockerls',
      'eslint',
      'gopls',
      'html',
      'intelephense',
      'jsonls',
      'pyright',
      'rust_analyzer',
      'sqlls',
      'svelte',
      'tailwindcss',
      'terraformls',
      'tsserver',
      'vimls',
      'yamlls',
    }

    for _, lsp in ipairs(servers) do
      if nvim_lsp[lsp] ~= nil then
        nvim_lsp[lsp].setup {
          capabilities = capabilities,
        }
      end
    end

    local eslint_linter = require('config.linters.eslint')
    local shellcheck_linter  = require('config.linters.shellcheck')
    local nvim_lsp = require('lspconfig')

    nvim_lsp.diagnosticls.setup({
      filetypes = {
        "javascript",
        "javascript.jsx",
        "sh",
        "typescript",
      },
      init_options = {
        filetypes = {
          ["javascript.jsx"] = "eslint",
          javascript = "eslint",
          javascriptreact = "eslint",
          sh = "shellcheck",
          typescript = "eslint",
          typescriptreact = "eslint",
        },
        linters = {
          eslint = eslint_linter,
          shellcheck = shellcheck_linter,
        },
      },
    })
  end,
}
