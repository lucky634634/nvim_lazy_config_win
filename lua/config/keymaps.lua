local keymap = vim.keymap

keymap.set({ "n", "v" }, "<leader>d", '"_', { silent = true })

-- Split
keymap.set("n", "<leader>-", "<CMD>split<CR>", { silent = true })
keymap.set("n", "<leader>\\", "<CMD>vsplit<CR>", { silent = true })

-- Navigate window
keymap.set("n", "<C-h>", "<C-w>h", { silent = true })
keymap.set("n", "<C-l>", "<C-w>l", { silent = true })
keymap.set("n", "<C-j>", "<C-w>j", { silent = true })
keymap.set("n", "<C-k>", "<C-w>k", { silent = true })

keymap.set("n", "L", ":bnext<CR>", { silent = true })
keymap.set("n", "H", ":bprevious<CR>", { silent = true })

-- Resize window
keymap.set("n", "<C-Left>", "<C-w><", { silent = true })
keymap.set("n", "<C-Right>", "<C-w>>", { silent = true })
keymap.set("n", "<C-Up>", "<C-w>+", { silent = true })
keymap.set("n", "<C-Down>", "<C-w>-", { silent = true })

-- Copy
keymap.set("n", "<A-d>", ":copy .<CR>", { noremap = true, silent = true })
keymap.set("i", "<A-d>", "<Esc>:copy .<CR>a", { noremap = true, silent = true })
keymap.set("v", "<A-d>", ":copy '><CR>", { noremap = true, silent = true })

keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>", { silent = true })
