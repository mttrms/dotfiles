local opt = vim.opt

-- line numbers
opt.number = true
opt.numberwidth = 5

-- tabs & indentation
opt.tabstop = 2 -- 2 spaces for tabs (prettier default)
opt.shiftwidth = 2 -- 2 spaces for indent width
opt.expandtab = true -- expand tab to spaces
opt.autoindent = true -- copy indent from current line when starting new one

-- line wrapping
opt.wrap = true -- disable line wrapping

-- search settings
opt.ignorecase = true -- ignore case when searching
opt.smartcase = true -- if you include mixed case in your search, assumes you want case-sensitive

-- backspace
opt.backspace = "indent,eol,start" -- allow backspace on indent, end of line or insert mode start position

-- clipboard
opt.clipboard:append("unnamedplus") -- use system clipboard as default register

-- split windows
opt.splitright = true -- split vertical window to the right
opt.splitbelow = true -- split horizontal window to the bottom

-- turn off swapfile
opt.swapfile = false

-- misc
opt.timeoutlen = 375

-- convert me later
vim.cmd [[
    filetype plugin indent on

    " undo
    set undodir=$HOME/.config/undo
    set undofile
    set undolevels=10000
    set undoreload=20000

    " auto reload file
    set autoread
    au CursorHold * checktime

    " Better display for messages
    set cmdheight=2

    " For Blamer - figure out why it needs to be set outside config function
    let g:blamer_enabled = 1
    let g:blamer_delay = 500
    let g:blamer_template = '<author>, <author-time> • <summary>'
    let g:blamer_date_format = '%m/%d/%y'
    let g:blamer_relative_time = 1
    let g:blamer_show_in_visual_modes = 0
]]
