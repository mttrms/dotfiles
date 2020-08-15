" suspend vim - go back to terminal
nnoremap <Leader>t <C-Z>

" Switch between tabs
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" ripgrep
nnoremap \ :Rg<CR>

" remove highlighted results
nnoremap <Leader><Space> :noh<CR>

" jump to start / end of line
nnoremap <Leader>b ^
nnoremap <Leader>e $
