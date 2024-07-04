return {
  sourceName = "eslint",
  command = "./node_modules/.bin/eslint",
  rootPatterns = { ".eslintrc", ".eslintrc.json", ".eslintrc.cjs", ".eslintrc.js", ".eslintrc.yml", ".eslintrc.yaml", "package.json" },
  debounce = 100,
  args = {
    "--stdin",
    "--stdin-filename",
    "%filepath",
    "--format",
    "json",
  },
  parseJson = {
    errorsRoot = "[0].messages",
    line = "line",
    column = "column",
    endLine = "endLine",
    endColumn = "endColumn",
    message = "${message} [${ruleId}]",
    security = "severity",
  },
  securities = {
    [2] = "error",
    [1] = "warning"
  },
}
