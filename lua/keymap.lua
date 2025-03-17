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

-- Telescope
keymap.set("n", "<leader>ff", "<CMD>Telescope find_files<CR>", { desc = "Fuzzy find files in cwd" })
keymap.set("n", "<leader>fg", "<CMD>Telescope live_grep<CR>", { desc = "Fuzzy find recent files" })
keymap.set("n", "<leader>fb", "<CMD>Telescope buffers<CR>", { desc = "Find string in cwd" })
keymap.set("n", "<leader>fh", "<CMD>Telescope help_tags<CR>", { desc = "Find help" })
keymap.set("n", "<leader>fcr", "<CMD>Telescope colorscheme<CR>", { desc = "Colorscheme picker" })
keymap.set("n", "<leader>fco", "<CMD>Telescope commands<CR>", { desc = "Command picker" })
keymap.set("n", "<leader>fq", "<CMD>Telescope quickfix<CR>", { desc = "Quickfix picker" })
keymap.set("n", "<leader>fk", "<CMD>Telescope keymaps<CR>", { desc = "Keymaps picker" })

keymap.set('i', '<C-Space>', ':lua MiniCompletion.complete_fallback()<CR>', { silent = true })

keymap.set('n', '<leader>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', { silent = true })

keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>', { silent = true })
