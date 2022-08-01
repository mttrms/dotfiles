Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
nnoremap <silent> <C-P> :GFiles<CR>
nnoremap <silent> <leader>p :Files<CR>
