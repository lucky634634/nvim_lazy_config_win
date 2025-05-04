return {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {
        style = "night",
        transparent = false,
        on_colors = function(colors)
            colors.hint = colors.orange
            colors.error = "#990000"
        end,
    },
}
