require("settings")

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
    spec = {
        { import = "plugins" },
    },
    checker = { enabled = true },
})

require("keymap")
require("colorscheme")

vim.cmd([[let g:loaded_node_provider = 0]])
vim.cmd([[let g:loaded_perl_provider = 0]])
vim.cmd([[let g:python3_host_prog = 'C:\\Program Files\\Python313\\python.EXE']])

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
        vim.keymap.set({ 'n', 'v' }, 'gq', vim.lsp.buf.code_action, opts("Code Action"))
        vim.keymap.set('n', '<leader>lgr', vim.lsp.buf.references, opts("Buffer References"))
        vim.keymap.set('n', 'gh', vim.lsp.buf.hover, opts("Hover"))
        vim.keymap.set('n', '<leader>la', vim.diagnostic.open_float, opts("Open Diagnostics"))
    end,
})

vim.lsp.config('*', {
    capabilities = {
        textDocument = {
            semanticTokens = {
                multilineTokenSupport = true,
            }
        }
    },
    root_markers = { '.git' },
})
