vim.pack.add({
    {src='https://github.com/nvim-mini/mini.files', version='stable'},
    {src='https://github.com/nvim-mini/mini.tabline', version='stable'},
    "https://github.com/mason-org/mason.nvim",
    "https://github.com/mason-org/mason-lspconfig.nvim"
})

require("plugins.mini-files")
require("plugins.mini-tabline")
require("plugins.mason")
require("plugins.mason-lspconfig")
