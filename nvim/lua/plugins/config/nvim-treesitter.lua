return {
  "nvim-treesitter/nvim-treesitter",
  build = function()
    pcall(require("nvim-treesitter.install").update { with_sync = true })
  end,
}
