return {
  'stevearc/conform.nvim',
  config = function()
    require("conform").setup({
      formatters_by_ft = {
        lua = { "stylua" },
        python = { "isort", "black" },
        javascript = { "eslint", { "prettierd",  "prettier" } },
        typescript = { "eslint", { "prettierd",  "prettier" } },
        typescriptreact = { "eslint", { "prettierd",  "prettier" } },
      },
      format_on_save = true,
    })
  end
}
