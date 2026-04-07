vim.pack.add({
    { src = 'https://github.com/nvim-mini/mini.icons',   version = 'stable' },
    { src = 'https://github.com/nvim-mini/mini.files',   version = 'stable' },
    { src = 'https://github.com/nvim-mini/mini.tabline', version = 'stable' },
    "https://github.com/mason-org/mason.nvim",
    "https://github.com/mason-org/mason-lspconfig.nvim",
    { src = "https://github.com/saghen/blink.cmp", version = 'v1' },
    "https://github.com/rafamadriz/friendly-snippets",
    "https://github.com/ibhagwan/fzf-lua",
})

require("plugins.mini-icons")
require("plugins.mini-files")
require("plugins.mini-tabline")
require("plugins.mason")
require("plugins.mason-lspconfig")
require("plugins.blink")
require("plugins.fzf-lua")
