return {
  'stevearc/conform.nvim',
  config = function()
    require("conform").setup({
      linters_by_ft = {
        python = { "pylint" },
      },
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
