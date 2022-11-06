" configure leader
nnoremap <SPACE> <NOP>
let mapleader = ","
set timeoutlen=375


" source core config files
function! s:SourceConfigFilesIn(directory)
  let directory_splat = '~/.local/share/nvim/site/' . a:directory . '/*'
  for config_file in split(glob(directory_splat), '\n')
    if filereadable(config_file)
      execute 'source' config_file
    endif
  endfor
endfunction

call plug#begin()
call s:SourceConfigFilesIn('plugrc')
call plug#end()
call s:SourceConfigFilesIn('configrc')

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
