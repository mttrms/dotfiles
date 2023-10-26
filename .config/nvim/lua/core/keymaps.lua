vim.g.mapleader = ','

local keymap = vim.keymap

keymap.set("n", "<leader> ", ":nohl<CR>", { desc = "Clear search highlights" })

-- navigate splits
keymap.set("n", "<c-k>", ":wincmd k<CR>")

keymap.set("n", "<c-h>", ":wincmd h<CR>")
keymap.set("n", "<c-j>", ":wincmd j<CR>")
keymap.set("n", "<c-l>", ":wincmd l<CR>")

vim.cmd [[
    " jump to start / end of line
    nnoremap <Leader>b ^
    nnoremap <Leader>e $

    " copy current file to clipboard
    nnoremap <Leader>f :let @+=expand('%:p')<CR>

    " suspend to terminal
    nnoremap <Leader>t <C-Z>
    
    nnoremap \ :Rg<CR>

    " don't jump on * but keep result in jump list
    nnoremap * *``
]]
