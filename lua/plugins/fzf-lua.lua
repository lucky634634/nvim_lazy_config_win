return {
    "ibhagwan/fzf-lua",
    dependencies = { "echasnovski/mini.icons" },
    opts = {},
    keys = {
        { "<leader>ff", "<cmd>FzfLua files<cr>",        desc = "Files (fzf-lua)" },
        { "<leader>fh", "<cmd>FzfLua helptags<cr>",     desc = "Help Tags (fzf-lua)" },
        { "<leader>fg", "<cmd>FzfLua grep_visual<cr>",  desc = "Grep (fzf-lua)" },
        { "<leader>fb", "<cmd>FzfLua buffers<cr>",      desc = "buffers (fzf-lua)" },
        { "<leader>fc", "<cmd>FzfLua colorschemes<cr>", desc = "ColorSchemes (fzf-lua)" },
        { "<leader>fk", "<cmd>FzfLua keymaps<cr>",      desc = "keymaps (fzf-lua)" },
    },
}
