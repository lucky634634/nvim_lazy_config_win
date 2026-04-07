vim.pack.add({
    { src = 'https://github.com/nvim-mini/mini.icons',       version = 'stable' },
    { src = 'https://github.com/nvim-mini/mini.files',       version = 'stable' },
    { src = 'https://github.com/nvim-mini/mini.tabline',     version = 'stable' },
    { src = 'https://github.com/nvim-mini/mini.statusline',  version = 'stable' },
    { src = 'https://github.com/nvim-mini/mini.notify',      version = 'stable' },
    { src = 'https://github.com/nvim-mini/mini.indentscope', version = 'stable' },
    { src = 'https://github.com/nvim-mini/mini.pairs',       version = 'stable' },
    { src = 'https://github.com/nvim-mini/mini.move',        version = 'stable' },
    { src = 'https://github.com/nvim-mini/mini-git',         version = 'stable' },
    -- Mason
    "https://github.com/mason-org/mason.nvim",
    "https://github.com/mason-org/mason-lspconfig.nvim",
    "https://github.com/nvimtools/none-ls.nvim",
    "https://github.com/jay-babu/mason-null-ls.nvim",
    "https://github.com/nvim-lua/plenary.nvim",

    { src = "https://github.com/saghen/blink.cmp",       version = vim.version.range("v1.x") },
    "https://github.com/rafamadriz/friendly-snippets",
    "https://github.com/ibhagwan/fzf-lua",
    { src = "https://github.com/kylechui/nvim-surround", version = vim.version.range("4.x") },
    "https://github.com/folke/which-key.nvim",
    "https://github.com/Exafunction/windsurf.vim",
})

require("plugins.mini-icons")
require("plugins.mini-files")
require("plugins.mini-tabline")
require("plugins.mini-statusline")
require("plugins.mini-notify")
require("plugins.mini-indentscope")
require("plugins.mini-pairs")
require("plugins.mini-move")
require("plugins.mini-git")
require("plugins.nvim-surround")
require("plugins.mason")
require("plugins.mason-lspconfig")
require("plugins.none-ls")
require("plugins.mason-null-ls")
require("plugins.blink")
require("plugins.fzf-lua")
require("plugins.which-key")
require("plugins.windsurf")
