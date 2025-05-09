return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		local configs = require("nvim-treesitter.configs")

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
			},
			sync_install = false,
			highlight = { enable = true },
			indent = { enable = true },
		})
		vim.cmd([[ autocmd BufRead,BufNewFile *.v set filetype=verilog ]])
	end,
}
