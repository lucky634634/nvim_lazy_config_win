local keymap = vim.keymap

keymap.set("n", "<leader>e", "<CMD>Neotree toggle<CR>", { desc = "Neotree toggle" })
keymap.set("n", "<leader>r", "<CMD>Neotree focus<CR>", { desc = "Neotree focus" })

-- Telescope
keymap.set("n", "<leader>ff", "<CMD>Telescope find_files<CR>", { desc = "Fuzzy find files in cwd" })
keymap.set("n", "<leader>fg", "<CMD>Telescope live_grep<CR>", { desc = "Fuzzy find recent files" })
keymap.set("n", "<leader>fb", "<CMD>Telescope buffers<CR>", { desc = "Find string in cwd" })
keymap.set("n", "<leader>fs", "<CMD>Telescope git_status<CR>", { desc = "Find string under cursor in cwd" })
keymap.set("n", "<leader>fc", "<CMD>Telescope git commits<CR>", { desc = "Find todos" })
keymap.set("n", "<leader>fh", "<CMD>Telescope help_tags<CR>", { desc = "Find help" })

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

-- Format
keymap.set({ "n", "v" }, "<leader>F", function()
	local conform = require("conform")
	conform.format({
		lsp_fallback = true,
		async = false,
		timeout_ms = 1000,
	})
end)
