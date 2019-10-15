execute pathogen#infect()
syntax on
filetype plugin indent on
set autoindent
set smarttab
set hlsearch
set incsearch
set ignorecase
set smartcase

" Stolen NERDTree Stuff
let NERDTreeAutoDeleteBuffer = 1
let NERDTreeShowHidden=1
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
set tabstop=2 shiftwidth=2      " default tab is two spaces
autocmd VimEnter * wincmd p
nnoremap <silent> find :NERDTreeFind <CR>" Find file in nerdtree

:set number  " enable line numbers

" Theme
colorscheme dracula
set termguicolors

" Remapping
let mapleader = ","
nmap <leader>, :NERDTreeToggle<CR>
nnoremap <Leader>b ^
nnoremap <Leader>e $
nnoremap <Leader>t <C-Z>

" Fix backspace
set backspace=indent,eol,start

" Switch between tabs
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Stolen search stuff

" FZF
set rtp+=/usr/local/opt/fzf
nnoremap <silent> <C-P> :Files<CR>

" ripgrep
nnoremap \ :Rg<CR>
nnoremap K :Rg <C-R><C-W><CR>
