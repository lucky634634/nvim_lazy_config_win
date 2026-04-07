require("mason-lspconfig").setup {
    ensure_installed = {
        "lua_ls",
        "rust_analyzer",
        "csharp_ls@0.20.0",
        "pyright",
        "clangd",
    }
}
