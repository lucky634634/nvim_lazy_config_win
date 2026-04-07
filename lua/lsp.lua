vim.lsp.enable({
    "lua_ls",
    "rust_analyzer",
    "csharp_ls",
    "pyright",
    "clangd",
})

vim.diagnostic.config({
    virtual_lines = true,
    -- virtual_text = true,
    underline = true,
    update_in_insert = false,
    severity_sort = true,
    float = {
        border = "rounded",
        source = true,
    },
    signs = {
        text = {
            [vim.diagnostic.severity.ERROR] = "󰅚 ",
            [vim.diagnostic.severity.WARN] = "󰀪 ",
            [vim.diagnostic.severity.INFO] = "󰋽 ",
            [vim.diagnostic.severity.HINT] = "󰌶 ",
        },
        numhl = {
            [vim.diagnostic.severity.ERROR] = "ErrorMsg",
            [vim.diagnostic.severity.WARN] = "WarningMsg",
        },
    },
})

vim.lsp.config('*', {
    capabilities = {
        textDocument = {
            semanticTokens = {
                multilineTokenSupport = true,
            }
        }
    },
    root_markers = { '.git' },
})

vim.api.nvim_create_autocmd('LspAttach', {
    callback = function(args)
        local opts = { buffer = args.buf }

        vim.keymap.set('n', 'gq', '<CMD>lua vim.lsp.buf.code_action()<CR>', opts)
        vim.keymap.set('n', 'gh', '<CMD>lua vim.lsp.buf.hover()<CR>', opts)
        vim.keymap.set('n', 'gd', '<CMD>lua vim.lsp.buf.definition()<CR>', opts)
        vim.keymap.set('n', 'gD', '<CMD>lua vim.lsp.buf.declaration()<CR>', opts)
        vim.keymap.set('n', 'gi', '<CMD>lua vim.lsp.buf.implementation()<CR>', opts)
        vim.keymap.set('n', 'gr', '<CMD>lua vim.lsp.buf.references()<CR>', opts)
    end
})

vim.api.nvim_create_autocmd("BufWritePre", {
    pattern = "*",
    callback = function()
        vim.lsp.buf.format({ async = false })
    end,
})

local function lsp_status_short()
    local bufnr = vim.api.nvim_get_current_buf()
    local clients = vim.lsp.get_clients({ bufnr = bufnr })

    if #clients == 0 then
        return "" -- Return empty string when no LSP
    end

    local names = {}
    for _, client in ipairs(clients) do
        table.insert(names, client.name)
    end

    return "󰒋 " .. table.concat(names, ",")
end

local function git_branch()
    local ok, handle = pcall(io.popen, "git branch --show-current 2>/dev/null")
    if not ok or not handle then
        return ""
    end
    local branch = handle:read("*a")
    handle:close()
    if branch and branch ~= "" then
        branch = branch:gsub("\n", "")
        return " 󰊢 " .. branch
    end
    return ""
end

local function formatter_status()
    local ok, conform = pcall(require, "conform")
    if not ok then
        return ""
    end

    local formatters = conform.list_formatters_to_run(0)
    if #formatters == 0 then
        return ""
    end

    local formatter_names = {}
    for _, formatter in ipairs(formatters) do
        table.insert(formatter_names, formatter.name)
    end

    return "󰉿 " .. table.concat(formatter_names, ",")
end

local function linter_status()
    local ok, lint = pcall(require, "lint")
    if not ok then
        return ""
    end

    local linters = lint.linters_by_ft[vim.bo.filetype] or {}
    if #linters == 0 then
        return ""
    end

    return "󰁨 " .. table.concat(linters, ",")
end
-- Safe wrapper functions for statusline
local function safe_git_branch()
    local ok, result = pcall(git_branch)
    return ok and result or ""
end

local function safe_lsp_status()
    local ok, result = pcall(lsp_status_short)
    return ok and result or ""
end

local function safe_formatter_status()
    local ok, result = pcall(formatter_status)
    return ok and result or ""
end

local function safe_linter_status()
    local ok, result = pcall(linter_status)
    return ok and result or ""
end

_G.git_branch = safe_git_branch
_G.lsp_status = safe_lsp_status
_G.formatter_status = safe_formatter_status
_G.linter_status = safe_linter_status

vim.opt.statusline = table.concat({
    "%{v:lua.git_branch()}",       -- Git branch
    "%f",                          -- File name
    "%m",                          -- Modified flag
    "%r",                          -- Readonly flag
    "%=",                          -- Right align
    "%{v:lua.linter_status()}",    -- Linter status
    "%{v:lua.formatter_status()}", -- Formatter status
    "%{v:lua.lsp_status()}",       -- LSP status
    " %l:%c",                      -- Line:Column
    " %p%%"                        -- Percentage through file
}, " ")
