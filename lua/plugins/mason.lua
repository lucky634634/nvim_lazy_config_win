return {
    "williamboman/mason.nvim",
    dependencies = {
        "williamboman/mason-lspconfig.nvim",
        -- "neovim/nvim-lspconfig",
    },
    config = function()
        local mason = require("mason")
        local mason_lspconfig = require("mason-lspconfig")
        mason.setup(
            {
                ensure_installed = {
                    "lua_ls",
                    "stylua",
                }
            }
        )
        mason_lspconfig.setup({
            ensure_installed = {
                "lua_ls",
            }
        })
    end,
}
