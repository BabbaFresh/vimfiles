local wk = require('which-key')

wk.register({
  f = {
    name = "Flash.nvim ⚡",
    f = { "<Cmd>lua require('flash').jump()<CR>", "Jump ⚡" },
    t = { "<Cmd>require('flash').treesitter()<CR>", "Treesitter 🌳"},
    T = { "<Cmd>require('flash').toggle()<CR>", "Toggle"},
  },
}, { prefix = "<leader>", mode = "n" })

wk.register({
  g = {
    name = "Goto",
      n = {
        name = "ndoo",
        o = { "<Cmd>lua require('ndoo').open({ v = true })<CR>", "Open" },
        O = { "<Cmd>lua require('ndoo').open({ v = true, commit = true })<CR>", "Open commit" },
      },
  },
}, { prefix = "<leader>", mode = "v" })

wk.register({
  G = {
    name = "Git 🐙",
    n = { "<Cmd>Neogit<CR>", "Neogit 🥷" },
    b = { "<Cmd>BlameToggle window<CR>", "Blame 😠" },
  },
}, { prefix = "<leader>", mode = "n" })

wk.register({
  g = {
    name = "Goto",
      g = { "<Cmd>lua require('telescope.builtin').live_grep()<CR>", "Live Grep"},
      n = {
        name = "ndoo",
        o = { "<Cmd>lua require('ndoo').open()<CR>", "Open" },
        O = { "<Cmd>lua require('ndoo').open({ commit = true })<CR>", "Open commit" },
        r = { "<Cmd>lua require('ndoo').repo()<CR>", "Repo" },
        c = { "<Cmd>lua require('ndoo').commit()<CR>", "Commit" },
        p = { "<Cmd>lua require('ndoo').pulls()<CR>", "Pulls" },
        i = { "<Cmd>lua require('ndoo').issues()<CR>", "Issues" },
        a = { "<Cmd>lua require('ndoo').pipelines()<CR>", "Pipelines" },
        l = { "<Cmd>lua require('ndoo').labels()<CR>", "Labels" },
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
    e = { "<cmd>lua vim.diagnostic.open_float(0, {scope='line'})<CR>", "Show error in float" },
    w = { "<cmd>lua require('trouble').toggle({ mode = 'diagnostics' })<cr>", "Workspace Diagnostics" },
    d = { "<cmd>lua require('trouble').toggle({ mode = 'diagnostics', filter = { buf = 0 } })<cr>", "Document Diagnostics" },
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

