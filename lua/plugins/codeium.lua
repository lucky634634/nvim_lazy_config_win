return {
    "Exafunction/codeium.vim",
    event = "BufEnter",
    version = "1.20.8",
    config = function()
        vim.g.codeium_disable_bindings = false
        vim.g.codeium_enabled = true
    end,
}
