local wk = require('which-key')

wk.register({
  g = {
    name = "Goto",
      h = {
        name = "Github Utils",
        o = { "<Cmd>lua require('githubutils').open({ v = true })<CR>", "Open" },
        O = { "<Cmd>lua require('githubutils').open({ v = true, commit = true })<CR>", "Open commit" },
      },
  },
}, { prefix = "<leader>", mode = "v" })

wk.register({
  g = {
    name = "Goto",
      g = { "<Cmd>lua require('telescope.builtin').live_grep()<CR>", "Live Grep"},
      h = {
        name = "Github Utils",
        o = { "<Cmd>lua require('githubutils').open()<CR>", "Open" },
        O = { "<Cmd>lua require('githubutils').open({ commit = true })<CR>", "Open commit" },
        r = { "<Cmd>lua require('githubutils').repo()<CR>", "Repo" },
        c = { "<Cmd>lua require('githubutils').commit()<CR>", "Commit" },
        p = { "<Cmd>lua require('githubutils').pulls()<CR>", "Pulls" },
        i = { "<Cmd>lua require('githubutils').issues()<CR>", "Issues" },
        a = { "<Cmd>lua require('githubutils').actions()<CR>", "Actions" },
        l = { "<Cmd>lua require('githubutils').labels()<CR>", "Labels" },
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
    name = "Format",
    u = { "<cmd>lua require('umbizo').format()<CR>", "Umbizo" },
    j = { "<cmd>lua require('umbizo.fmt.jq').format()<CR>", "JQ/JSON" },
    p = { "<cmd>lua require('umbizo.fmt.prettier').format()<CR>", "Prettier" },
    s = { "<cmd>lua vim.lsp.buf.formatting()<CR>", "LSP Formatting" },
  }
}, { prefix = "<leader>" })

wk.register({
  x = {
    name = "Run",
    x = { "<Cmd>JestIntegrated<CR>", "Jest integrated test" },
    r = { "<Plug>RestNvim<CR>", "run the request under the cursor" },
    p = { "<Plug>RestNvimPreview<CR>", "preview the request cURL command" },
  }
}, { prefix = "<leader>" })

