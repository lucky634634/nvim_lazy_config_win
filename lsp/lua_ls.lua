return {
    cmd = { "lua-language-server" },
    filetypes = { "lua" },
    root_dir = vim.fs.dirname(vim.fs.find({ '.git', '.vim', 'nvim' }, { upward = true })[1]),
    root_markers = {
        '.luarc.json',
        '.luarc.jsonc',
        '.luacheckrc',
        '.stylua.toml',
        'stylua.toml',
        'selene.toml',
        'selene.yml',
        '.git',
    },
    settings = {
        Lua = {
            diagnostics = {
                disable = { "missing-fields" },
                globals = {
                    "vim",
                    "Snacks",
                },
            },
            hint = {
                enable = true,
                setType = false,
                paramType = true,
                paramName = "Disable",
                semicolon = "Disable",
                arrayIndex = "Disable",
            },
            workspace = {
                library = {
                    [vim.fn.expand("$VIMRUNTIME/lua")] = true,
                    [vim.fn.expand("$VIMRUNTIME/lua/vim/lsp")] = true,
                    [vim.fn.stdpath("config")] = true,
                },
                maxPreload = 2000,
                preloadFileSize = 50000,
            },
            telemetry = {
                enable = false,
            },
        },
    },
}
