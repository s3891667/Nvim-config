local lsp_capabilities = require('cmp_nvim_lsp').default_capabilities()
require 'lspconfig'.jdtls.setup({
        capabilities = lsp_capabilities,
	on_attach = function(client, bufnr)
		print('hello Java')
	end,

})
