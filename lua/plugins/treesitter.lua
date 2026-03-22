return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		local configs = require("nvim-treesitter.config")

		configs.setup({
			ensure_installed = {
				"lua",
				"python",
				"cpp",
				"vimdoc",
				"vim",
				"regex",
				"terraform",
				"dockerfile",
				"toml",
				"json",
				"go",
				"gomod",
				"gowork",
				"gosum",
				"gitignore",
				"yaml",
				"make",
				"cmake",
				"markdown",
				"markdown_inline",
				"bash",
				"verilog",
				"jsonnet",
			},
			sync_install = false,
			highlight = { enable = true },
			indent = { enable = true },
		})
		vim.cmd([[ autocmd BufRead,BufNewFile *.v set filetype=verilog ]])
		vim.cmd([[ autocmd BufRead,BufNewFile *.vh set filetype=verilog ]])
		vim.cmd([[ autocmd BufRead,BufNewFile *.jsonnet.TEMPLATE set filetype=jasonnet ]])
	end,
}
