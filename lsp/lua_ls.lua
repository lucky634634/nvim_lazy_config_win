return {
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
                    [vim.fn.expand('~/AppData/Local/nvim/lua')] = true,
                },
            },
            telemetry = {
                enable = false,
            },
        },
    },
}
