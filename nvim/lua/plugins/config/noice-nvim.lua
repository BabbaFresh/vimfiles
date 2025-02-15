return {
  "folke/noice.nvim",
  event = "VeryLazy",
  dependencies = {
    "MunifTanjim/nui.nvim",
    {
      "rcarriga/nvim-notify",
      opts = {
        animate = false,
        stages = "static",
      },
    },
  },
  opts = {
    lsp = {
      -- override markdown rendering so plugins use **Treesitter**
      override = {
        ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
        ["vim.lsp.util.stylize_markdown"] = true,
      },
    },
    presets = {
      command_palette = false, -- position the cmdline and popupmenu together
    },
  },
}
