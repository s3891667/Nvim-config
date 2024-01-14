local lsp = require("lsp-zero").preset({})
local cmp = require('cmp')
local cmp_action = require('lsp-zero').cmp_action()


lsp.preset("recommended")

lsp.ensure_installed({
	'tsserver',
	'rust_analyzer',
})

--for PHP
require 'lspconfig'.intelephense.setup {}
--for cpp
require 'lspconfig'.clangd.setup {}

lsp.nvim_workspace()

cmp.setup({
	sources = {
		{ name = 'nvim_lsp' },
	},
	mapping = {
		['<c-y>'] = cmp.mapping.confirm({ select = true }),
		['<CR>'] = cmp.mapping.confirm({ select = true }),
		['<c-e>'] = cmp.mapping.abort(),
		['<c-u>'] = cmp.mapping.scroll_docs(-4),
		['<c-d>'] = cmp.mapping.scroll_docs(4),
		['<c-p>'] = cmp.mapping(function()
			if cmp.visible() then
				cmp.select_prev_item(cmp_select_opts)
			else
				cmp.complete()
			end
		end),
		['<c-n>'] = cmp.mapping(function()
			if cmp.visible() then
				cmp.select_next_item(cmp_select_opts)
			else
				cmp.complete()
			end
		end),
	},
	snippet = {
		expand = function(args)
			require('luasnip').lsp_expand(args.body)
		end,
	},
	window = {
		documentation = {
			max_height = 15,
			max_width = 60,
		}
	},
	formatting = {
		fields = { 'abbr', 'menu', 'kind' },
		format = function(entry, item)
			local short_name = {
				nvim_lsp = 'lsp',
				nvim_lua = 'nvim'
			}

			local menu_name = short_name[entry.source.name] or entry.source.name

			item.menu = string.format('[%s]', menu_name)
			return item
		end,
	},
})

lsp.set_preferences({
	suggest_lsp_servers = false,
	sign_icons = {
		error = 'e',
		warn = 'w',
		hint = 'h',
		info = 'i'
	}
})



lsp.on_attach(function(client, bufnr)
	local opts = { buffer = bufnr, remap = false }
	print('')

	vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
	vim.keymap.set("n", "gi", function() vim.lsp.buf.implementation() end, opts)
	vim.keymap.set('n', 'gr', function() require('telescope.builtin').lsp_references() end, opts)
	vim.keymap.set("n", "<leader>vd", function()
			vim.diagnostic.open_float()
		end,
		{ noremap = true, silent = true, buffer = bufnr })
	vim.keymap.set("n", "[d", function() vim.diagnostic.goto_next() end, opts)
	vim.keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end, opts)
	vim.keymap.set("n", "<leader>vca", function() vim.lsp.buf.code_action() end, opts)
	vim.keymap.set("n", "<leader>vrn", function() vim.lsp.buf.rename() end, opts)
end)


lsp.setup()


vim.diagnostic.config({
	virtual_text = true
})
