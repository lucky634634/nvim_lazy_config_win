return {
    "ibhagwan/fzf-lua",
    dependencies = { "echasnovski/mini.icons" },
    opts = {
        fzf_opts = {
            ["--ansi"]           = true,
            ["--info"]           = "inline-right", -- fzf < v0.42 = "inline"
            ["--height"]         = "100%",
            ["--layout"]         = "default",
            ["--border"]         = "none",
            ["--highlight-line"] = true, -- fzf >= v0.53
        },
        help_open_win = vim.api.nvim_open_win,
        winopts = {
            fullscreen = true,
        }
    },
    keys = {
        { "<leader>ff", "<cmd>FzfLua files<cr>",        desc = "Files (fzf-lua)" },
        { "<leader>fh", "<cmd>FzfLua helptags<cr>",     desc = "Help Tags (fzf-lua)" },
        { "<leader>fg", "<cmd>FzfLua grep_visual<cr>",  desc = "Grep (fzf-lua)" },
        { "<leader>fb", "<cmd>FzfLua buffers<cr>",      desc = "buffers (fzf-lua)" },
        { "<leader>fc", "<cmd>FzfLua colorschemes<cr>", desc = "ColorSchemes (fzf-lua)" },
        { "<leader>fk", "<cmd>FzfLua keymaps<cr>",      desc = "keymaps (fzf-lua)" },
    },
}
