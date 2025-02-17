return {
  "folke/which-key.nvim",
  config = function()
    local wk = require("which-key")
    wk.add({
      mode = { "n" },
      { "<leader>f", group = "Flash.nvim ⚡" },
      { "<leader>fT", "<Cmd>require('flash').toggle()<CR>", desc = "Toggle" },
      { "<leader>ff", "<Cmd>lua require('flash').jump()<CR>", desc = "Jump ⚡" },
      { "<leader>ft", "<Cmd>require('flash').treesitter()<CR>", desc = "Treesitter 🌳" },
    })

    wk.add({
      {
        mode = { "v" },
        { "<leader>a", group = "Git 🐙" },
        { "<leader>as", group = "ndoo 🥷" },
        { "<leader>asO", "<Cmd>lua require('ndoo').open({ v = true, commit = true })<CR>", desc = "Open commit" },
        { "<leader>aso", "<Cmd>lua require('ndoo').open({ v = true })<CR>", desc = "Open" },
      },
    })

    wk.add({
      mode = { "n" },
      { "<leader>a", group = "Git 🐙" },
      { "<leader>ab", "<Cmd>BlameToggle window<CR>", desc = "Blame 😠" },
      { "<leader>aa", "<Cmd>Neogit<CR>", desc = "Neogit 🥷" },
      { "<leader>as", group = "ndoo 🥷" },
      { "<leader>asO", "<Cmd>lua require('ndoo').open({ commit = true })<CR>", desc = "Open commit" },
      { "<leader>asa", "<Cmd>lua require('ndoo').pipelines()<CR>", desc = "Pipelines" },
      { "<leader>asc", "<Cmd>lua require('ndoo').commit()<CR>", desc = "Commit" },
      { "<leader>asi", "<Cmd>lua require('ndoo').issues()<CR>", desc = "Issues" },
      { "<leader>asl", "<Cmd>lua require('ndoo').labels()<CR>", desc = "Labels" },
      { "<leader>aso", "<Cmd>lua require('ndoo').open()<CR>", desc = "Open" },
      { "<leader>asp", "<Cmd>lua require('ndoo').pulls()<CR>", desc = "Pulls" },
      { "<leader>asr", "<Cmd>lua require('ndoo').repo()<CR>", desc = "Repo" },
    })

    wk.add({
      mode = { "n" },
      { "<leader>g", group = "Goto" },
      { "<leader>gD", "<Cmd>lua vim.lsp.buf.declaration()<CR>", desc = "Declaration" },
      { "<leader>gd", "<Cmd>lua require('telescope.builtin').lsp_definitions()<CR>", desc = "Definitions" },
      { "<leader>gg", "<Cmd>lua require('telescope.builtin').live_grep()<CR>", desc = "Live Grep" },
      { "<leader>gi", "<Cmd>lua require('telescope.builtin').lsp_implementations()<CR>", desc = "Implementations" },
      { "<leader>gk", "<Cmd>lua vim.lsp.buf.hover()<CR>", desc = "Show Function Docs" },
      { "<leader>gr", "<Cmd>lua require('telescope.builtin').lsp_references()<CR>", desc = "References" },
      { "<leader>gR", "<Cmd>lua vim.lsp.buf.rename()<CR>", desc = "Rename" },
      { "<leader>gs", group = "Symbols" },
      { "<leader>gsd", "<Cmd>lua require('telescope.builtin').lsp_document_symbols()<CR>", desc = "Document Symbols" },
      {
        "<leader>gsw",
        "<Cmd>lua require('telescope.builtin').lsp_workspace_symbols()<CR>",
        desc = "Workspace Symbols",
      },
      { "<leader>gt", "<Cmd>lua require('telescope.builtin').lsp_type_definitions()<CR>", desc = "Type Definitions" },
    })

    wk.add({
      mode = { "n" },
      { "<leader>d", group = "Debug" },
      {
        "<leader>dt",
        "<cmd>TodoTrouble<cr>",
        desc = "ToDo",
        icon = "",
      },
      { "<leader>d", group = "Debug" },
      {
        "<leader>dd",
        "<cmd>lua require('trouble').toggle({ mode = 'diagnostics', filter = { buf = 0 } })<cr>",
        desc = "Document Diagnostics",
      },
      { "<leader>de", "<cmd>lua vim.diagnostic.open_float(0, {scope='line'})<CR>", desc = "Show error in float" },
      {
        "<leader>dw",
        "<cmd>lua require('trouble').toggle({ mode = 'diagnostics' })<cr>",
        desc = "Workspace Diagnostics",
      },
    })

    wk.add({
      mode = { "n" },
      { "<leader>c", group = "Code" },
      { "<leader>ca", "<cmd>lua require('tiny-code-action').code_action()<CR>", desc = "Actions" },
    })

    wk.add({
      mode = { "n" },
      { "<leader>z", group = "Zen" },
      { "<leader>zz", "<cmd>:ZenMode<CR>", desc = "ZenMode" },
    })
  end,
}
