require("nvim-tree").setup({
  git = {
    enable = true,
    timeout = 3000 -- (in ms)
  },
  update_focused_file = {
    enable = true,
  }
})
vim.keymap.set("n", "<leader>vp", vim.cmd.NvimTreeFocus)
vim.keymap.set("n", "<leader>ep", vim.cmd.NvimTreeClose)
