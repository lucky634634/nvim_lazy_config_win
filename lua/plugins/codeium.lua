return {
    "Exafunction/codeium.vim",
    event = "BufEnter",
    version = "1.10.0",
    config = function()
        vim.g.codeium_disable_bindings = false
        vim.g.codeium_enabled = true
    end,
}
