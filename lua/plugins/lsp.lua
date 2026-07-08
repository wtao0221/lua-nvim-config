require("mason").setup({
	ui = {
		icons = {
			package_installed = "✓",
			package_pending = "➜",
			package_uninstalled = "✗",
		},
	},
})

require("mason-lspconfig").setup({
	ensure_installed = {
		"stylua",
		"pyright",
		"clangd",
		"rust_analyzer",
	},
	automatic_enable = true,
})

require("mason-tool-installer").setup({
	ensure_installed = {},
})

-- enable language servers
vim.lsp.enable({
	"lua_ls",
	"rust_analyzer",
	"pyright",
	"clang",
})
