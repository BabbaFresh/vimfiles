vim.filetype.add({
  extension = {
    ["http"] = "http",
  },
  filename = {
    ["tsconfig.json"] = "jsonc",
    [".env"] = "env",
  },
  pattern = {
    -- This will match .env.*, like .env.local, .env.production, etc.
    [".env.*"] = "env",
  },
})
