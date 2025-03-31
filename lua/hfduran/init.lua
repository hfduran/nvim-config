vim.g.mapleader = " "

-- required for NERDTree to work properly...
vim.api.nvim_create_autocmd("BufEnter", {
    pattern = "*",
    callback = function()
        local current_win = vim.api.nvim_win_get_number(0)
        local prev_win = vim.api.nvim_win_get_number(vim.fn.win_getid(0))
        local bufname = vim.fn.bufname('#')
        local current_bufname = vim.fn.bufname('%')
        local total_wins = vim.fn.winnr('$')

        if current_win == prev_win and bufname:match("NERD_tree_\\d+") 
           and not current_bufname:match("NERD_tree_\\d+") and total_wins > 1 then
            local buf = vim.fn.bufnr()
            vim.cmd("buffer #" .. buf)
            vim.cmd("normal! <C-W>w")
            vim.cmd("buffer " .. buf)
        end
    end
})

require("hfduran.lazy_init")
require("hfduran.set")
require("hfduran.remap")
