return {
    "nvim-neo-tree/neo-tree.nvim",
    priority = 1000,
    branch = "v3.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons",
        "MunifTanjim/nui.nvim",
        -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
    },
    opts = {
        window = {
            position = "right",
        },
        filesystem = {
            filtered_items = {
                visible = true,
                show_hidden_count = true,
                hide_dotfiles = false,
                hide_gitignored = false,
                hide_by_name = {
                    ".git",
                    -- '.DS_Store',
                    -- 'thumbs.db',
                },
                never_show = {
                    ".git",
                },
            },
        },
    },
}
