local global = vim.g
local o = vim.opt

global.mapleader = " "
global.maplocalleader = " "

o.number = true
o.relativenumber = true
vim.schedule(function()
    o.clipboard:append("unnamedplus")
end)
o.syntax = "on"
o.autoindent = true
o.cursorline = true
o.expandtab = true
o.tabstop = 4
o.softtabstop = 4
o.shiftwidth = 4
o.wrap = true
o.linebreak = true
o.showbreak = "↪ "
o.breakindent = true
o.breakindentopt = "shift:2,min:20"
o.hidden = true
o.backup = false
o.writebackup = false
o.updatetime = 300
o.signcolumn = "yes"
o.title = true
o.showcmd = true
o.wildmenu = true
o.showmatch = true
o.inccommand = "split"
o.splitright = true
o.splitbelow = true
o.termguicolors = true
o.ruler = true
o.mouse = "a"
o.hlsearch = true
o.undofile = true
o.smartcase = true
o.ignorecase = true
o.updatetime = 250
o.timeoutlen = 300
o.splitright = true
o.splitbelow = true
o.list = true
o.listchars = { tab = '» ', trail = '·', nbsp = '␣' }
o.inccommand = 'split'
o.cursorline = true

o.confirm = true

o.scrolloff = 10
o.splitkeep = "screen"
o.laststatus = 3

-- Set up pretty unicode diagnostic signs
vim.fn.sign_define("DiagnosticSignError",
    { text = "", hl = "DiagnosticSignError", texthl = "DiagnosticSignError", culhl = "DiagnosticSignErrorLine" })
vim.fn.sign_define("DiagnosticSignWarn",
    { text = "", hl = "DiagnosticSignWarn", texthl = "DiagnosticSignWarn", culhl = "DiagnosticSignWarnLine" })
vim.fn.sign_define("DiagnosticSignInfo",
    { text = "", hl = "DiagnosticSignInfo", texthl = "DiagnosticSignInfo", culhl = "DiagnosticSignInfoLine" })
vim.fn.sign_define("DiagnosticSignHint",
    { text = "", hl = "DiagnosticSignHint", texthl = "DiagnosticSignHint", culhl = "DiagnosticSignHintLine" })
