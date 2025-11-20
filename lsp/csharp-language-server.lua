return {
    cmd = { "csharp-ls" },
    filetypes = { "cs" },
    root_makers = { "*.sln", "csproj" },
    root_dir = vim.fs.root(0, function(name, path)
        return name:match("%.sln$") ~= nil or name:match("%.csproj$") ~= nil
    end)
}
