Plug 'neoclide/coc.nvim', {'branch': 'release'}

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
let g:coc_global_extensions = ['coc-css', 'coc-html', 'coc-json', 'coc-solargraph', 'coc-tsserver']

nmap <silent> gd <Plug>(coc-definition)

" test func
" function! SplitIfNotOpen(call, fname)
"     let bufnum=bufnr(expand(a:fname))
"     let winnum=bufwinnr(bufnum)
"     if winnum != -1
" 	" Jump to existing split
" 	exe winnum . "wincmd w"
"     else
" 	" Make new split as usual
" 	exe "vsplit " . a:fname
"     endif
"     " Execute the cursor movement command
"     exe a:call
" endfunction

" command! -nargs=+ CocSplitIfNotOpen :call SplitIfNotOpen(<f-args>)
