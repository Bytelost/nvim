local autocmd = vim.api.nvim_create_autocmd

-- Highlight copied text
autocmd("TextYankPost", {
    callback = function()
        vim.highlight.on_yank({
            timeout = 150,
        })
    end,
})

-- Return to previous cursor position when reopening a file
autocmd("BufReadPost", {
    callback = function()
        local mark = vim.api.nvim_buf_get_mark(0, '"')
        local line_count = vim.api.nvim_buf_line_count(0)

        if mark[1] > 0 and mark[1] <= line_count then
            pcall(vim.api.nvim_win_set_cursor, 0, mark)
        end
    end,
})

-- Remove trailing whitespace when saving
autocmd("BufWritePre", {
    pattern = "*",
    callback = function()
        local position = vim.api.nvim_win_get_cursor(0)
        vim.cmd([[%s/\s\+$//e]])
        vim.api.nvim_win_set_cursor(0, position)
    end,
})
