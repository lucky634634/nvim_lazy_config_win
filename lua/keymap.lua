local keymap = vim.keymap

keymap.set({ "n", "v" }, "<leader>d", '"_', { silent = true })

-- Split
keymap.set("n", "<leader>o", "<CMD>vsplit<CR>", { silent = true })
keymap.set("n", "<leader>p", "<CMD>split<CR>", { silent = true })

-- Navigate window
keymap.set("n", "<C-h>", "<C-w>h", { silent = true })
keymap.set("n", "<C-l>", "<C-w>l", { silent = true })
keymap.set("n", "<C-j>", "<C-w>j", { silent = true })
keymap.set("n", "<C-k>", "<C-w>k", { silent = true })

-- Resize window
keymap.set("n", "<C-Left>", "<C-w><", { silent = true })
keymap.set("n", "<C-Right>", "<C-w>>", { silent = true })
keymap.set("n", "<C-Up>", "<C-w>+", { silent = true })
keymap.set("n", "<C-Down>", "<C-w>-", { silent = true })

-- Navigate tab
keymap.set("n", "<leader>t", "<CMD>tabnew<CR>", { silent = true })
keymap.set("n", "H", "<CMD>tabprevious<CR>", { silent = true })
keymap.set("n", "L", "<CMD>tabnext<CR>", { silent = true })

-- Mini.Files
keymap.set("n", "<leader>e", "<CMD>lua MiniFiles.open()<CR>", { silent = true })
