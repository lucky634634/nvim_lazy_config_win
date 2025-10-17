return {
    "williamboman/mason.nvim",
    dependencies = {
        "williamboman/mason-lspconfig.nvim",
    },
    lazy = false,
    build = ":MasonUpdate",
    opts = {
        ensure_installed = {
            "lua-language-server",
            "rust_analyzer",
            "clangd",
            "clang-format"
        }
    },
}
