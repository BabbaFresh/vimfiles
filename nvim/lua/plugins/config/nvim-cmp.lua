return {
  "hrsh7th/nvim-cmp", -- Autocompletion plugin
  config = function()
    -- Set up nvim-cmp.
    local cmp = require("cmp")
    local lspkind = require("lspkind")

    cmp.setup({
      formatting = {
        format = lspkind.cmp_format({
          preset = "default", -- can be either 'default' (requires nerd-fonts font) or 'codicons' for codicon preset (requires vscode-codicons font)
          mode = "symbol_text", -- show only symbol annotations
          -- maxwidth = 50, -- prevent the popup from showing more than provided characters (e.g 50 will not show more than 50 characters)
          -- can also be a function to dynamically calculate max width such as
          -- maxwidth = function() return math.floor(0.45 * vim.o.columns) end,
          ellipsis_char = "...", -- when popup menu exceed maxwidth, the truncated part would show ellipsis_char instead (must define maxwidth first)
          show_labelDetails = true, -- show labelDetails in menu. Disabled by default
        }),
      },
      snippet = {
        expand = function(args)
          vim.fn["vsnip#anonymous"](args.body)
        end,
      },
      window = {
        completion = cmp.config.window.bordered(),
        documentation = cmp.config.window.bordered(),
      },
      mapping = cmp.mapping.preset.insert({
        ["<C-b>"] = cmp.mapping.scroll_docs(-4),
        ["<C-f>"] = cmp.mapping.scroll_docs(4),
        ["<C-Space>"] = cmp.mapping.complete(),
        ["<C-e>"] = cmp.mapping.abort(),
        ["<CR>"] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
      }),
      sources = cmp.config.sources({
        { name = "nvim_lsp" },
        { name = "vsnip" },
      }, {
        { name = "buffer" },
      }),
    })
    cmp.setup.filetype("http", {
      sources = cmp.config.sources({
        { name = "kulala-cmp-graphql" },
      }, {
        { name = "buffer" },
      }),
    })
    require("cmp_git").setup()
    -- Set configuration for specific filetype.
    cmp.setup.filetype("gitcommit", {
      sources = cmp.config.sources({
        { name = "git" },
      }, {
        { name = "buffer" },
      }),
    })
    cmp.setup.filetype("sql", {
      sources = cmp.config.sources({
        { name = "vim-dadbod-completion" },
      }, {
        { name = "buffer" },
      }),
    })
    -- Use buffer source for `/` (if you enabled `native_menu`, this won't work anymore).
    cmp.setup.cmdline("/", {
      mapping = cmp.mapping.preset.cmdline(),
      sources = {
        { name = "buffer" },
      },
    })

    -- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
    cmp.setup.cmdline(":", {
      mapping = cmp.mapping.preset.cmdline(),
      sources = cmp.config.sources({
        { name = "path" },
      }, {
        { name = "cmdline" },
      }),
    })
  end,
  dependencies = {
    "hrsh7th/cmp-nvim-lsp", -- LSP source for nvim-cmp
    "hrsh7th/cmp-buffer",
    "hrsh7th/cmp-path",
    "hrsh7th/cmp-cmdline",
    {
      "petertriho/cmp-git", -- Git source for nvim-cmp
      dependencies = {
        "nvim-lua/plenary.nvim",
      },
    },
    "hrsh7th/vim-vsnip",
    "onsails/lspkind.nvim", -- Add vscode-like pictograms to completion items
    {
      "mistweaverco/kulala-cmp-graphql", -- GraphQL source for nvim-cmp in http files
      config = function()
        require("kulala-cmp-graphql").setup()
      end,
      dir = "/home/marco/projects/personal/kulala-cmp-graphql.nvim",
      ft = "http",
    },
  },
}
