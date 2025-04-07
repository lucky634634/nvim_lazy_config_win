return {
    "ibhagwan/fzf-lua",
    dependencies = { "echasnovski/mini.icons" },
    opts = {},
    keys = {
        { "<leader>ff", "<cmd>FzfLua files<cr>",    desc = "Files (fzf-lua)" },
        { "<leader>fh", "<cmd>FzfLua helptags<cr>", desc = "Help Tags (fzf-lua)" },
        { "<leader>fg", "<cmd>FzfLua grep<cr>",     desc = "Grep (fzf-lua)" },
    }
}
