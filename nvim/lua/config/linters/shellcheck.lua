return {
  sourceName = "shellcheck",
  command = "shellcheck",
  debounce = 100,
  args = { "--format=gcc", "-" },
  offsetLine = 0,
  offsetColumn = 0,
  formatLines = 1,
  formatPattern = {
    "^[^:]+:(\\d+):(\\d+):\\s+([^:]+):\\s+(.*)$",
    {
      line = 1,
      column = 2,
      message = 4,
      security = 3,
    },
  },
  securities = {
    error = "error",
    warning = "warning",
    note = "info",
  },
}
