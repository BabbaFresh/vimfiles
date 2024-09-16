return {
  "stevearc/conform.nvim",
  config = function()
    require("conform").setup({
      formatters_by_ft = {
        lua = { "stylua" },
        python = { "autoflake", "black", "isort" },
        javascript = { "eslint", "prettier" },
        typescript = { "eslint", "prettier" },
        typescriptreact = { "eslint", "prettier" },
      },
      format_on_save = {
        all = true,
      },
    })
  end,
}
