require("settings")

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
    spec = {
        { import = "plugins" },
    },
    checker = { enabled = true },
})

require("keymap")
require("colorscheme")
vim.cmd([[let g:loaded_node_provider = 0]])
-- vim.cmd([[let g:node_host_prog = 'C:/Program Files/nodejs/node.EXE']])
vim.cmd([[let g:loaded_perl_provider = 0]])
vim.cmd([[let g:python3_host_prog = 'C:\\Program Files\\Python313\\python.EXE']])
