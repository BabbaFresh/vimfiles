return {
  "mistweaverco/tafuta.nvim",
  cmd = { "Tf" },
  config = function()
    require("tafuta").setup({
      user_command = "Tf",
    })
  end,
  dir = "/home/marco/projects/personal/tafuta.nvim",
}
