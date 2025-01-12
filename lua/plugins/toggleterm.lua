return {
    "akinsho/toggleterm.nvim",
    version = "2.12.0",
    config = function()
        require("toggleterm").setup({
            open_mapping = [[<c-\>]],
            shell = "cmd",
            hide_numbers = true,
        })
    end,
}
