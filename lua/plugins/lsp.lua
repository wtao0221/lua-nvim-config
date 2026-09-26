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
	"clangd",
})

vim.lsp.config("clangd", {
	cmd = {
		"clangd",
		"--background-index",
		"--clang-tidy",
		"--completion-style=detailed",
		"--header-insertion=never",
	},
	filetypes = { "c", "cpp" },
	root_markers = {
		"compile_commands.json",
		".clangd",
		".git",
	},
})
