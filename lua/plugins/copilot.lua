return {
	{
		"github/copilot.vim",
		config = function()
			vim.g.copilot_filetypes = {
				python = true,
				lua = true,
				markdown = true,
				go = true,
				-- c = true,
				-- cpp = true,
				dockerfile = true,
				["*"] = false,
			}
		end,
	},
}
