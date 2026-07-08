local hooks = require("ibl.hooks")

hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
	vim.api.nvim_set_hl(0, "IndentRed", { fg = "#e06c75" })
	vim.api.nvim_set_hl(0, "IndentYellow", { fg = "#e5c07b" })
	vim.api.nvim_set_hl(0, "IndentBlue", { fg = "#61afef" })
	vim.api.nvim_set_hl(0, "IndentOrange", { fg = "#d19a66" })
	vim.api.nvim_set_hl(0, "IndentGreen", { fg = "#98c379" })
	vim.api.nvim_set_hl(0, "IndentViolet", { fg = "#c678dd" })
	vim.api.nvim_set_hl(0, "IndentCyan", { fg = "#56b6c2" })

	vim.api.nvim_set_hl(0, "Scope", { fg = "#ffffff", bold = true })
end)

require("ibl").setup({
	indent = {
		char = "│",
		highlight = {
			"IndentRed",
			"IndentYellow",
			"IndentBlue",
			"IndentOrange",
			"IndentGreen",
			"IndentViolet",
			"IndentCyan",
		},
	},
	scope = {
		enabled = true,
		highlight = "Scope",
	},
})
