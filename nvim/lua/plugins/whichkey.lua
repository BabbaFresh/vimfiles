local wk = require('which-key')

wk.register({
  g = {
    name = "Go to",
  },
})

wk.register({
  g = {
    name = "Search",
      g = { "<Cmd>lua require('telescope.builtin').live_grep()<CR>", "Live Grep"},
      h = {
        name = "Github",
        o = { "<Cmd>lua require('github.open').open()<CR>", "Open" },
        O = { "<Cmd>lua require('github.open').open_origin()<CR>", "Open origin" },
        r = { "<Cmd>lua require('github.open').repo()<CR>", "Repo" },
        p = { "<Cmd>lua require('github.open').pulls()<CR>", "Pulls" },
        i = { "<Cmd>lua require('github.open').issues()<CR>", "Issues" },
        a = { "<Cmd>lua require('github.open').actions()<CR>", "Actions" },
      },
      s = {
        name = "Symbols",
        d = { "<Cmd>lua require('telescope.builtin').lsp_document_symbols()<CR>", "Document Symbols" },
        w = { "<Cmd>lua require('telescope.builtin').lsp_workspace_symbols()<CR>", "Workspace Symbols" }
      },
      D = { "<Cmd>lua vim.lsp.buf.declaration()<CR>", "Declaration" },
      d = { "<Cmd>lua require('telescope.builtin').lsp_definitions()<CR>", "Definitions"},
      i = { "<Cmd>lua require('telescope.builtin').lsp_implementations()<CR>", "Implementations" },
      r = { "<Cmd>lua require('telescope.builtin').lsp_references()<CR>", "References" },
      t = { "<Cmd>lua require('telescope.builtin').lsp_type_definitions()<CR>", "Type Definitions" },
      k = { "<Cmd>lua vim.lsp.buf.hover()<CR>", "Show Function Docs" }
  },
}, { prefix = "<leader>" })

wk.register({
  d = {
    name = "Debug",
    e = { "<Cmd>lua vim.diagnostic.open_float(0, {scope='line'})<CR>", "Show error in float" },
    w = { "<Cmd>TroubleToggle workspace_diagnostics<CR>", "Workspace Diagnostics" },
    d = { "<Cmd>TroubleToggle document_diagnostics<CR>", "Document Diagnostics" },
  },
}, { prefix = "<leader>" })


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

