local nvim_lsp = require'lspconfig'

vim.api.nvim_command('inoremap <C-n> <C-x><C-o>')

-- Set up lspconfig.
local capabilities = require('cmp_nvim_lsp').default_capabilities(vim.lsp.protocol.make_client_capabilities())

local servers = { 'tsserver', 'html', 'eslint', 'cssls', 'jsonls', 'gopls', 'terraformls', 'bashls', 'dockerls', 'yamlls', 'vimls', 'sqlls' , 'rust_analyzer'}

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
