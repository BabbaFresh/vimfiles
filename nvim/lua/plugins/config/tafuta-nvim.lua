return {
  "mistweaverco/tafuta.nvim",
  cmd = { "Tf", "Tfc", "Tfl" },
  config = function()
    require("tafuta").setup({
      user_command_prompt = "Tf",
      user_command_cursor = "Tfc",
      user_command_live = "Tfl",
    })
  end,
  dir = "/home/marco/projects/personal/tafuta.nvim",
}
