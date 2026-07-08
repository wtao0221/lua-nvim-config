-- require("conform").setup({		-- Define your formatters
-- 		formatters_by_ft = {
-- 			lua = { "stylua" },
-- 			-- go = { "gofumpt", "golines", "goimports-reviser" },
-- 			-- cpp = { "clang-format" },
-- 			-- python = { "isort", "black" },
-- 			-- javascript = { "prettierd", "prettier", stop_after_first = true },
-- 		},
-- 		-- Set default options
-- 		default_format_opts = {
-- 			lsp_format = "fallback",
-- 		},
-- 		-- Set up format-on-save
-- 		format_on_save = { timeout_ms = 500, lsp_fallback = true },
-- 		-- Customize formatters
-- 		formatters = {
-- 			shfmt = {
-- 				prepend_args = { "-i", "2" },
-- 			},
-- 		},
-- 	},
-- })

require("conform").setup({
	formatters_by_ft = {
		lua = { "stylua" },
		-- Conform will run multiple formatters sequentially
		-- python = { "isort", "black" },
		-- You can customize some of the format options for the filetype (:help conform.format)
		-- rust = { "rustfmt", lsp_format = "fallback" },
		-- Conform will run the first available formatter
		-- avascript = { "prettierd", "prettier", stop_after_first = true },
	},
	-- Set default options
	default_format_opts = {
		lsp_format = "fallback",
	},
	format_on_save = {
		timeout_ms = 500,
		lsp_fallback = true,
	},
})
