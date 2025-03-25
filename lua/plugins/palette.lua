return {
    "bhugovilela/palette.nvim",
    config = function()
        vim.g.palette_config = {
            export_path = vim.fn.stdpath("config") .. '/colors',
        }
    end
}
