-- convert me later
vim.cmd [[
  " show cursorline in insert mode
  autocmd InsertEnter,InsertLeave * set cursorline!

  " underline settings
  let &t_Cs = "\e[4:3m"
  let &t_Ce = "\e[4:0m"

  " cursor settings
  let &t_SI.="\e[5 q"
  let &t_SR.="\e[4 q"
  let &t_EI.="\e[1 q"
]]
