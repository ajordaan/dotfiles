local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>fa', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set({ 'n', 'v' }, '<leader>fs', builtin.grep_string, {})
vim.keymap.set('n', '<leader>ff', builtin.git_files, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fc', builtin.git_status, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
vim.keymap.set('n', '<leader>fy', builtin.registers, {})
vim.keymap.set('n', '<leader>gb', builtin.git_branches, {})
vim.keymap.set('n', '<leader><leader>gc', builtin.git_commits, {})
vim.keymap.set('n', '<leader>gc', builtin.git_bcommits, {})
vim.keymap.set('n', '<leader>fp', function()

	builtin.grep_string({ search = vim.fn.input("Grep | > ") })
end)
vim.keymap.set('n', '<leader>fd', function()
	builtin.find_files({ cwd = vim.fn.expand('%:p:h') })
end)
vim.keymap.set('n', '<leader>fe', function()
  builtin.find_files({ no_ignore=true })
end)

vim.keymap.set('n', '<leader><leader>vd', function()
  builtin.diagnostics({ bufnr=0 })
end)

vim.keymap.set("n", "<leader>fr", builtin.resume, {})

require("telescope").load_extension "file_browser"

-- vim.keymap.set( "n", "<space>fd", ":Telescope file_browser path=%:p:h select_buffer=true <CR>", { noremap = true })
