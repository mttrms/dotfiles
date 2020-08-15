syntax on

filetype plugin indent on
set autoindent
set smarttab
set hlsearch
set incsearch
set ignorecase
set smartcase
set updatetime=100

" 2 spaces
set tabstop=2 shiftwidth=2 expandtab

" Fix backspace
set backspace=indent,eol,start

" wrapping / line length
set linebreak
set wrap
autocmd VimResized * | set columns=120

" gutters
set relativenumber number
set numberwidth=5
set signcolumn=yes

:set mouse=a " enable mouse

" Better display for messages
set cmdheight=2

" splits
set splitbelow
set splitright

" auto reload file
set autoread
au CursorHold * checktime
