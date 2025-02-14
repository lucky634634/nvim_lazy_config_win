return {
    "neovim/nvim-lspconfig",
    config = function()
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

                vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts("Declaration"))
                vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts("Definition"))
                vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts("Implementation"))
                vim.keymap.set('n', '<leader>F', function()
                    vim.lsp.buf.format { async = true }
                end, opts("Format Buffer"))
            end,
        })
        local lspconfig = require('lspconfig')
        lspconfig.lua_ls.setup {
            settings = {
                Lua = {
                    runtime = {
                        path = vim.split(package.path, ';'),
                    },
                    diagnostics = { globals = {'vim', 'hs'}, },
                    workspace = {
                        library = {
                            [vim.fn.expand('$VIMRUNTIME/lua')] = true,
                            [vim.fn.expand('$VIMRUNTIME/lua/vim/lsp')] = true,
                        },
                    },
                },
            },
        }
    end
}
