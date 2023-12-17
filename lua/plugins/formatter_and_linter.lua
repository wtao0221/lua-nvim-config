-- lint setup
local lint_setup, lint = pcall(require, "lint")
if not lint_setup then
    return
end

lint.linters_by_ft = {
    cpp = {"cpplint"},
}

local lint_augroup = vim.api.nvim_create_augroup("lint", { clear = true })

vim.api.nvim_create_autocmd({ "BufEnter", "InsertLeave", "BufWritePost" }, {
    group = lint_augroup,
    callback = function()
        lint.try_lint()
    end,
})

vim.keymap.set("n", "<leader>l", function()
      lint.try_lint()
    end, { desc = "Trigger linting for current file" })


-- formatter setup
local fmt_setup, fmt = pcall(require, "conform")
if not fmt_setup then
    return
end

fmt.setup({
    formatters_by_ft = {
        cpp = { "clang_format" },
    },
})

vim.api.nvim_create_autocmd("BufWritePre", {
    pattern = "*",
    callback = function(args)
        require("conform").format({ bufnr = args.buf })
    end,
})
