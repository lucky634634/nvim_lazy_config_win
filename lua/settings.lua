local global = vim.g
local o = vim.opt

global.mapleader = " "
global.maplocalleader = " "

o.number = true
o.relativenumber = true
o.clipboard:append("unnamedplus")
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

o.scrolloff = 8
o.splitkeep = "screen"
o.laststatus = 3

if vim.fn.has("macunix") then
else
    o.shell = "pwsh.exe"
    o.shellxquote = "-NoLogo -NoProfile -ExecutionPolicy RemoteSigned -Command "
    o.shellquote = ""
    o.shellpipe = "| Out-File -Encoding UTF8 %s"
    o.shellredir = "| Out-File -Encoding UTF8 %s"
end
