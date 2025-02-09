-- lint setup
local lint_setup, lint = pcall(require, "lint")
if not lint_setup then
    return
end

lint.linters_by_ft = {
    cpp = {"cpplint"},
    python = { "pylint" },
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
        python = { "black" },
    },
})

vim.api.nvim_create_autocmd("BufWritePre", {
    pattern = "*",
    callback = function(args)
        require("conform").format({ bufnr = args.buf })
    end,
})


vim.api.nvim_create_autocmd("BufWritePre", {
    pattern = "*.go",
    callback = function()
        local params = vim.lsp.util.make_range_params()
        params.context = {only = {"source.organizeImports"}}
        -- buf_request_sync defaults to a 1000ms timeout. Depending on your
        -- machine and codebase, you may want longer. Add an additional
        -- argument after params if you find that you have to write the file
        -- twice for changes to be saved.
        -- E.g., vim.lsp.buf_request_sync(0, "textDocument/codeAction", params, 3000)
        local result = vim.lsp.buf_request_sync(0, "textDocument/codeAction", params)
        for cid, res in pairs(result or {}) do
            for _, r in pairs(res.result or {}) do
                if r.edit then
                    local enc = (vim.lsp.get_client_by_id(cid) or {}).offset_encoding or "utf-16"
                    vim.lsp.util.apply_workspace_edit(r.edit, enc)
                end
            end
        end
        vim.lsp.buf.format({async = false})
    end
})
