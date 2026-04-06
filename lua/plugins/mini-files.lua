require("mini.files").setup()

vim.keymap.set("n", "<leader>e", "<CMD>lua MiniFiles.open()<CR>", {silent=true})
