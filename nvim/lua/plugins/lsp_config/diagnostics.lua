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
