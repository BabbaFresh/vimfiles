local wk = require('which-key')

wk.register({
  g = {
    name = "Go to",
    D = { "<Cmd>lua vim.lsp.buf.declaration()<CR>", "Declaration" },
    d = { "<Cmd>lua require('telescope.builtin').lsp_definitions()<CR>", "Definitions"},
    i = { "<Cmd>lua require('telescope.builtin').lsp_implementations()<CR>", "Implementations" },
    r = { "<Cmd>lua require('telescope.builtin').lsp_references()<CR>", "References" },
    t = { "<Cmd>lua require('telescope.builtin').lsp_type_definitions()<CR>", "Type Definitions" },
    k = { "<Cmd>lua vim.lsp.buf.hover()<CR>", "Show Function Docs" }
  },
})

wk.register({
  r = {
    name = "Refactor",
    n = { "<Cmd>lua vim.lsp.buf.rename()<CR>", "Rename" },
    a = { "<Cmd>lua vim.lsp.buf.code_action()<CR>", "Actions"},
  },
  f = {
    s = { "<cmd>lua vim.lsp.buf.formatting()<CR>", "LSP Formatting" },
  }
}, { prefix = "<leader>" })

wk.register({
  x = {
    name = "Run",
    x = { "<Cmd>JestIntegrated<CR>", "Jest integrated test" },
  }
}, { prefix = "<leader>" })

