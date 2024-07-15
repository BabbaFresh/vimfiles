return {
  "stevearc/oil.nvim",
  -- tag = 'v2.2.0',
  opts = {},
  dependencies = {
    "kyazdani42/nvim-web-devicons",
  },
  config = function()
    require("oil").setup({
      view_options = {
        show_hidden = true,
      },
    })
  end,
}
