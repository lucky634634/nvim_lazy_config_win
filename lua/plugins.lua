vim.pack.add({
    { src = 'https://github.com/nvim-mini/mini.icons',      version = 'stable' },
    { src = 'https://github.com/nvim-mini/mini.files',      version = 'stable' },
    { src = 'https://github.com/nvim-mini/mini.tabline',    version = 'stable' },
    { src = 'https://github.com/nvim-mini/mini.statusline', version = 'stable' },
    "https://github.com/mason-org/mason.nvim",
    "https://github.com/mason-org/mason-lspconfig.nvim",
    { src = "https://github.com/saghen/blink.cmp",       version = vim.version.range("v1.x") },
    "https://github.com/rafamadriz/friendly-snippets",
    "https://github.com/ibhagwan/fzf-lua",
    { src = "https://github.com/kylechui/nvim-surround", version = vim.version.range("4.x") },
})

require("plugins.mini-icons")
require("plugins.mini-files")
require("plugins.mini-tabline")
require("plugins.mini-statusline")
require("plugins.mason")
require("plugins.mason-lspconfig")
require("plugins.blink")
require("plugins.fzf-lua")
require("plugins.nvim-surround")
