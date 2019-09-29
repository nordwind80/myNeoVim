"===============================================================================
"
" Author: Nordwind
" E-Mail: bm9yZHdpbmQubWVAZ21haWwuY29t
" GitHub: github.com/nordwind80
" Created  Time: 20:26:26 04-07-2019
" Last Modified: 20:26:26 04-07-2019
" Description:
"        - File Name: Python.vim
"        - Version: 
"        - 
"
"===============================================================================


" Python --------------------  {{{
  " 设置
  let g:python_highlight_all = 1
  let g:python_highlight_space_errors = 0
  let g:python_highlight_indent_errors = 0

  augroup ft_py
    au!
    " Highlight all python functions
    au Filetype python syn match pythonAttribute2 /\.\h\w*(/hs=s+1,he=e-1
    au Filetype python hi def link pythonAttribute2 Function
  augroup END
  " }}}
" }}}
