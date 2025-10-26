return {
    cmd = { "omnisharp", "--languageserver" },
    filetypes = { "cs", "csx" },
    root_dir = function(fname)
        return vim.lsp.util.find_git_ancestor(fname)
    end
}
