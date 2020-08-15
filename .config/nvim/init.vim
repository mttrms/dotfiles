set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath

function! CocSplitIfNotCurrentFile(...)
    let cursorCmd = ''
    let fname = a:1
    if a:0 == 2  " Two arguments.
        let cursorCmd = a:1
        let fname = a:2
    endif
    if fname != fnamemodify(expand('%'), ':p:~:.')
        exec 'vsplit '.fname
    endif
    if len(cursorCmd)
        exec cursorCmd
    endif
endfunction

command! -nargs=+ CocSplitIfNotOpen :call CocSplitIfNotCurrentFile(<f-args>)

source ~/.vim/.vimrc
