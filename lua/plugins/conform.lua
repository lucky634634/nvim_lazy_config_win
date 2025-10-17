return {
    'stevearc/conform.nvim',
    opts = {},
    config = function()
        require("conform").setup({
            formatters_by_filetype = {
                lua = { "stylua" },
            },
        })
    end
}
