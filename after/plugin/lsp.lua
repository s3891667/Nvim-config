--LSP setupls
vim.opt.signcolumn = 'yes'

vim.api.nvim_create_autocmd('LspAttach', {
    group = vim.api.nvim_create_augroup('user_lsp_attach', { clear = true }),
    callback = function(event)
        local opts = { buffer = event.buf }
        vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
        vim.keymap.set("n", "<F3>", function() vim.lsp.buf.format() end, opts)
        vim.keymap.set("n", "<leader>vd", function()
                vim.diagnostic.open_float()
            end,
            { noremap = true, silent = true, buffer = event.buf })
        vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
        vim.keymap.set("n", "[d", function() vim.diagnostic.goto_next() end, opts)
        vim.keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end, opts)
        vim.keymap.set("i", "<C-s>", function() vim.lsp.buf.signature_help() end, opts)
        vim.keymap.set("n", "<leader>vca", function() vim.lsp.buf.code_action() end, opts)
        vim.keymap.set("n", "<leader>vrn", function() vim.lsp.buf.rename() end, opts)
    end
})

vim.diagnostic.config({
    virtual_text = true
})


local lsp_capabilities = require('cmp_nvim_lsp').default_capabilities()
require("mason").setup()

require("mason-lspconfig").setup({
    ensure_installed = { "ts_ls", "rust_analyzer", "lua_ls" },

    handlers = {
        lua_ls = function()
            vim.lsp.config.lua_ls = {
                settings = {
                    Lua = {
                        runtime = { version = "LuaJIT" },
                        diagnostics = { globals = { "vim" } },
                        workspace = {
                            library = { vim.env.VIMRUNTIME },
                        },
                    },
                },
            }

            vim.lsp.enable("lua_ls")
        end,

        ts_ls = function()
            vim.lsp.config.ts_ls = {
                on_attach = function(_, bufnr)
                    print("hello typescript " .. bufnr)
                end,

                init_options = {
                    plugins = {
                        {
                            name = "@vue/typescript-plugin",
                            location = "/usr/local/lib/node_modules/@vue/typescript-plugin",
                            languages = { "javascript", "typescript", "vue" },
                        },
                    },
                },

                filetypes = {
                    "javascript",
                    "typescript",
                    "typescriptreact",
                    "typescript.tsx",
                    "vue",
                },
            }

            vim.lsp.enable("ts_ls")
        end,
    },
})


local cmp = require('cmp')
local cmp_select = { behavior = cmp.SelectBehavior.Select }
cmp.setup({
    sources = cmp.config.sources({
        { name = 'nvim_lsp' },
        { name = 'luasnip' },
        { name = 'buffer' },
        { name = 'html-css' },
    }),
    mapping = {
        ['<c-y>'] = cmp.mapping.confirm({ select = true }),
        ['<CR>'] = cmp.mapping.confirm({ select = true }),
        ['<c-e>'] = cmp.mapping.abort(),
        ['<c-u>'] = cmp.mapping.scroll_docs(-4),
        ['<c-d>'] = cmp.mapping.scroll_docs(4),
        ['<c-p>'] = cmp.mapping(function()
            if cmp.visible() then
                cmp.select_prev_item({ behavior = cmp_select })
            else
                cmp.complete()
            end
        end),
        ['<c-n>'] = cmp.mapping(function()
            if cmp.visible() then
                cmp.select_next_item({ behavior = cmp_select })
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

vim.diagnostic.config({
    signs = {
        text = {
            [vim.diagnostic.severity.INFO] = '',
            [vim.diagnostic.severity.HINT] = '',
        },
    },
})
