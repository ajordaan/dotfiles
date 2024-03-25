-- Learn the keybindings, see :help lsp-zero-keybindings
-- Learn to configure LSP servers, see :help lsp-zero-api-showcase
local lsp = require('lsp-zero')
lsp.preset('recommended')

lsp.ensure_installed({
	'tsserver',
	'eslint',
	'lua_ls',
	'solargraph',
  'html',
  'cssls'
})

local cmp = require('cmp')

cmp.setup {
  sources = {
    { name = 'nvim_lsp_signature_help' }
  }
}

local cmp_select = { behavior = cmp.SelectBehavior.Select }
local cmp_mappings = lsp.defaults.cmp_mappings({
  ['<C-<Tab>>'] = cmp.mapping.select_prev_item(cmp_select),
  ['<Tab>'] = cmp.mapping.select_next_item(cmp_select),
  ['<Enter>'] = cmp.mapping.confirm(cmp_select),
  ['<C-Space>'] = cmp.mapping.complete(cmp_select)
})

lsp.setup_nvim_cmp({
	mapping = cmp_mappings
})

	local opts = {buffer = bufnr, remap = false, noremap = true}

	vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
	vim.keymap.set("n", "<leader>h", function() vim.lsp.buf.hover() end, opts)
	vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, opts)
	vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, opts)
	vim.keymap.set("n", "[d", function() vim.diagnostic.goto_next() end, opts)
	vim.keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end, opts)
	vim.keymap.set("n", "<leader>vca", function() vim.lsp.buf.code_action() end, opts)
	vim.keymap.set("n", "<leader>vrr", function() vim.lsp.buf.references() end, opts)
	vim.keymap.set("n", "<leader>vrn", function() vim.lsp.buf.rename() end, opts)
	vim.keymap.set("i", "<C-s>", function() vim.lsp.buf.signature_help() end, opts)
lsp.setup()

local util = require("lspconfig.util")

lsp.configure('solargraph', {
  settings = {
    solargraph = {
      root_dir = util.root_pattern("Gemfile", ".git")(fname) or util.path.dirname(vim.api.nvim_buf_get_name(0)),
      diagnostics = true,
      completion = true
    }
  }
})

