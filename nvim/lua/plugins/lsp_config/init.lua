local nvim_lsp = require'lspconfig'

vim.api.nvim_command('inoremap <C-n> <C-x><C-o>')

-- Set up lspconfig.
local capabilities = require('cmp_nvim_lsp').default_capabilities(vim.lsp.protocol.make_client_capabilities())

local servers = {
  'bashls',
  'cssls',
  'dockerls',
  'eslint',
  'gopls',
  'html',
  'jsonls',
  'rust_analyzer',
  'sqlls',
  'svelte',
  'tailwindcss',
  'terraformls',
  'tsserver',
  'vimls',
  'yamlls',
}

for _, lsp in ipairs(servers) do
	if nvim_lsp[lsp] ~= nil then
		nvim_lsp[lsp].setup {
			capabilities = capabilities,
		}
	end
end

require 'plugins.lsp_config.diagnostics'
require 'plugins.lsp_config.cmp'
require 'plugins.lsp_config.lsp_signature'
