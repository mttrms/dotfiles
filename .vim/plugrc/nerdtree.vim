Plug 'preservim/nerdtree'

let NERDTreeAutoDeleteBuffer = 1
let NERDTreeShowHidden=1
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1

nnoremap <silent> find :NERDTreeFind <CR>" Find file in nerdtree

nmap <leader>, :NERDTreeToggle<CR>

" don't start vim with NERDTree open
autocmd VimEnter * wincmd p
