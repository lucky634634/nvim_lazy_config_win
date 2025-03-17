return {
    "williamboman/mason.nvim",
    dependencies = {
        "williamboman/mason-lspconfig.nvim",
        "WhoIsSethDaniel/mason-tool-installer.nvim",
        "neovim/nvim-lspconfig",
    },
    config = function()
        local mason = require("mason")
        local mason_lspconfig = require("mason-lspconfig")
        local mason_tool = require("mason-tool-installer")
        local lsp = require("lspconfig")
        mason.setup({
            ensure_installed = {
                "lua_ls",
                "prettier",
                "stylua", -- lua formatter
                "lua_ls",
                "pyright",
                "marksman"
            }
        })

        mason_lspconfig.setup()

        mason_tool.setup()

        vim.api.nvim_create_autocmd('LspAttach', {
            group = vim.api.nvim_create_augroup('UserLspConfig', {}),
            callback = function(ev)
                -- Enable completion triggered by <c-x><c-o>
                vim.bo[ev.buf].omnifunc = 'v:lua.vim.lsp.omnifunc'

                -- Buffer local mappings.
                -- See `:help vim.lsp.*` for documentation on any of the below functions
                local opts = function(str)
                    return { buffer = ev.buf, desc = str }
                end

                vim.keymap.set('n', '<leader>lgD', vim.lsp.buf.declaration, opts("Declaration"))
                vim.keymap.set('n', '<leader>lgd', vim.lsp.buf.definition, opts("Definition"))
                vim.keymap.set('n', '<leader>lgi', vim.lsp.buf.implementation, opts("Implementation"))
                vim.keymap.set({ 'n', 'v' }, '<leader>lca', vim.lsp.buf.code_action, opts("Code Action"))
                vim.keymap.set('n', '<leader>lgr', vim.lsp.buf.references, opts("Buffer References"))
                vim.keymap.set('n', '<leader>lh', vim.lsp.buf.hover, opts("Hover"))
                vim.keymap.set('n', '<leader>lf', function()
                    vim.lsp.buf.format { async = true }
                end, opts("Format Buffer"))
                vim.keymap.set('n', '<leader>lr', vim.lsp.buf.rename, opts("Rename"))
            end,
        })


        local capabilities = vim.lsp.protocol.make_client_capabilities()

        mason_lspconfig.setup_handlers({
            function(server)
                lsp[server].setup({
                    capabilities = capabilities
                })
            end
        })

        lsp.lua_ls.setup {
            settings = {
                Lua = {
                    runtime = {
                        path = vim.split(package.path, ';'),
                    },
                    diagnostics = { globals = { 'vim', 'hs' }, },
                    workspace = {
                        library = {
                            [vim.fn.expand('$VIMRUNTIME/lua')] = true,
                            [vim.fn.expand('$VIMRUNTIME/lua/vim/lsp')] = true,
                        },
                    },
                },
            },
        }

        lsp.pyright.setup({
            settings = {
                python = {
                    analysis = {
                        autoSearchPaths = true,
                        useLibraryCodeForTypes = true,
                    },
                },
            },
        })
    end,
}
