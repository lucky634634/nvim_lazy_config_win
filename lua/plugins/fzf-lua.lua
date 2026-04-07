require("fzf-lua").setup({
    fzf_opts = {
        ["--ansi"]           = true,
        ["--info"]           = "inline-right",
        ["--height"]         = "100%",
        ["--layout"]         = "default",
        ["--border"]         = "none",
        ["--highlight-line"] = true,
    },
    help_open_win = vim.api.nvim_open_win,
})

local opts = { silent = true }

vim.keymap.set("n", "<leader>ff", "<CMD>FzfLua files<CR>", opts)
vim.keymap.set("n", "<leader>fh", "<cmd>FzfLua helptags<cr>", opts)
vim.keymap.set("n", "<leader>fg", "<cmd>FzfLua grep_visual<cr>", opts)
vim.keymap.set("n", "<leader>fc", "<cmd>FzfLua colorschemes<cr>", opts)
vim.keymap.set("n", "<leader>fk", "<cmd>FzfLua keymaps<cr>", opts)
