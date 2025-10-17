return {
    'stevearc/conform.nvim',
    event = { "BufWritePre" },
    cmd = { "ConformInfo" },
    keys = {
        {
            "<leader>F",
            function()
                require("conform").format({ async = true }, function(err, did_edit)
                    if not err and did_edit then
                        vim.notify("Code formatted", vim.log.levels.INFO, { title = "Conform" })
                    end
                end)
            end,
            mode = { "n", "v" },
            desc = "Format buffer",
        },
    },
    opts = {
        formatters_by_filetype = {
        },
        default_format_opts = {
            lsp_format = "fallback",
        },
    },
    init = function()
        vim.o.formatexpr = "v:lua.require'conform'.formatexpr()"
    end,
}
