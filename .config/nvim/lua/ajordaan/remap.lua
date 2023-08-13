vim.g.mapleader = " "
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- greatest remap ever, paste without overwriting register
-- vim.keymap.set("x", "<leader>p", [["_dP]])

-- next greatest remap ever : asbjornHaland - copy to system clipboard
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+y$]])
vim.keymap.set({"n", "v"}, "<leader>p", [["0p]])
vim.keymap.set({"n", "v"}, "<leader>P", [["0P]])
vim.keymap.set({"n", "v"}, "<leader><leader>p", [["+p]])
vim.keymap.set({"n", "v"}, "<leader><leader>P", [["+P]])

vim.keymap.set({"n", "v"}, "<leader>d", [["_d]]) -- delete to void register

-- vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
vim.keymap.set("n", "<leader>fo", vim.lsp.buf.format)

vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
-- vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
-- vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })
vim.keymap.set("n", "<C-/>", [[:let @+=expand('%:p:~:.')<CR>]], { noremap = true, silent = true })

vim.keymap.set('n', '<leader>fr', [[<cmd>!rubocop -A %<CR>]], { noremap = true, silent = true })

vim.keymap.set('n', '<leader><leader>l', ':set relativenumber!<CR>', { noremap = true, silent = true })
 
vim.keymap.set('n', '<leader><tab>', ':tabnext<CR>', { noremap = true, silent = true })
vim.keymap.set('n', 'H', '^', { noremap = true, silent = true })
vim.keymap.set('n', 'L', '$', { noremap = true, silent = true })

