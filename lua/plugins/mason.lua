return {
    "williamboman/mason.nvim",
    dependencies = {
        "williamboman/mason-lspconfig.nvim",
    },
    lazy = false,
    build = ":MasonUpdate",
    opts = {
        ensure_installed = {
            -- lsp
            "lua-language-server",
            "rust_analyzer",
            "clangd",
            "pyright",
            "cspell-lsp",
            "neocmakelsp",
            "zls",
            "csharp-language-server@0.20.0",
            "sqlls",
            -- formatter
            "clang-format",
            "black",
            "csharpier"
        }
    },
}
