return {
  "mfussenegger/nvim-lint",
  config = function()
    require("lint").linters_by_ft = {
      javascript = {
        "eslint",
      },
      lua = {
        "luacheck",
      },
      markdown = {
        "vale",
      },
      php = {
        "phpcs",
      },
      python = {
        "pylint",
      },
      sh = {
        "shellcheck",
      },
      typescript = {
        "eslint",
      },
      typescriptreact = {
        "eslint",
      },
      yaml = {
        "yamllint",
      },
    }
    vim.api.nvim_create_autocmd({ "BufWritePost" }, {
      callback = function()
        require("lint").try_lint()
      end,
    })
  end,
}
