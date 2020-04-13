call plug#begin('~/.vim/plugged')
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'

Plug 'preservim/nerdtree'

Plug 'dracula/vim'
Plug 'flazz/vim-colorschemes'
Plug 'tpope/vim-commentary'

Plug 'tpope/vim-sensible'

Plug 'HerringtonDarkholme/yats.vim'
Plug 'mhartington/nvim-typescript', { 'do': './install.sh' }
Plug 'pangloss/vim-javascript'
Plug 'maxmellon/vim-jsx-pretty'

Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'

Plug 'jiangmiao/auto-pairs'


call plug#end()

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
set tabstop=2 shiftwidth=2 expandtab     " default tab is two spaces
autocmd VimEnter * wincmd p
nnoremap <silent> find :NERDTreeFind <CR>" Find file in nerdtree

:set number  " enable line numbers

" Theme
set termguicolors
" set background=dark
colorscheme dracula
:hi CursorLine   cterm=NONE ctermbg=darkred ctermfg=white

" Remapping
let mapleader = ","
" let mapleader = "\<Space>"
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

" fix nerdtree highlight
" let g:vim_jsx_pretty_colorful_config = 1 not sure

nnoremap <Leader><Space> :noh<CR>

" let g:AutoPairsMapSpace = 0 for auto pairs - remove space at closing pair
:set mouse=a " enable mouse

" let g:jsx_ext_required = 0
" let g:typescript_indent_disable = 1
"


" Better display for messages
set cmdheight=2
" Smaller updatetime for CursorHold & CursorHoldI
set updatetime=300
" don't give |ins-completion-menu| messages.
set shortmess+=c
" always show signcolumns
set signcolumn=yes

" Use `lp` and `ln` for navigate diagnostics
nmap <silent> <leader>lp <Plug>(coc-diagnostic-prev)
nmap <silent> <leader>ln <Plug>(coc-diagnostic-next)

" Remap keys for gotos
nmap <silent> <leader>ld <Plug>(coc-definition)
nmap <silent> <leader>lt <Plug>(coc-type-definition)
nmap <silent> <leader>li <Plug>(coc-implementation)
nmap <silent> <leader>lf <Plug>(coc-references)

" Remap for rename current word
nmap <leader>lr <Plug>(coc-rename)

" Use K for show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if &filetype == 'vim'
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight symbol under cursor on CursorHold
autocmd CursorHold * silent call CocActionAsync('highlight')

" Random coc stuff
let g:coc_global_extensions = ['coc-css', 'coc-html', 'coc-json', 'coc-prettier', 'coc-tsserver']

let g:AutoPairsMapSpace = 0

let s:vim_jsx_pretty_colorful_config = get(g:, 'vim_jsx_pretty_colorful_config', 0)

let g:jsx_ext_required = 0
