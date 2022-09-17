local helper = {}

--- Function to map keys in nvim with lua
--- @param mode 'n, i, t, v'
--- @param lhs  'Keybinding it should be'
--- @param rhs  'Command or keycombination it should execute'
--- @param opts 'Options'
function helper.mapKey(mode, lhs, rhs, opts)
  local options = {noremap = true}
  if opts then options = vim.tbl_extend('force', options, opts) end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

return helper

