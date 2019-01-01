"=============================================================================
"@ Author: Nordwind
"@ E-Mial: ZWFnbGV3aW5ncy55aUBnbWFpbC5jb20=
"@ Created  Time: 13:34:10 01-01-2019
"@ Last Modified: 13:39:29 01-01-2019
"@ Description:
"         - File Name: Python.vim
"         - Python language settings
"=============================================================================


" Python -------------------- {{{ 
  " Syntax Settings -------------------- {{{ 
    "let g:python_highlight_all = 1
    "let g:python_highlight_space_errors = 0
    "let g:python_highlight_indent_errors = 0
  " }}}

  " Plugins Settings -------------------- {{{ 
    " PyTest -------------------- {{{ 
      "let g:pytest_executable = "py.test-3"
      nmap <silent> <Leader>pf <Esc>:Pytest file<CR>
      nmap <silent> <Leader>pc <Esc>:Pytest class<CR>
      nmap <silent> <Leader>pm <Esc>:Pytest method<CR>
      nmap <silent> <Leader>pp <Esc>:Pytest project<CR>
      nmap <silent> <Leader>ps <Esc>:Pytest session<CR>
      nmap <silent> <Leader>pn <Esc>:Pytest next<CR>
      nmap <silent> <Leader>pu <Esc>:Pytest last<CR>
    " }}}

    " REPL -------------------- {{{ 
      "autocmd Filetype python nnoremap <leader>r :REPLToggle <Cr>
      "let g:rep_row_width= 10                         "窗口宽度
      "let g:sendtorepl_invoke_key= "ww"          "传送代码快捷键，默认为ww
      "let g:repl_at_top= 1                               "0表示出现在下方，1表示出现在下方
      "let g:repl_stayatrepl_when_open= 1         "打开REPL时是回到原文件（1）还是停留在REPL窗口中（0）
    " }}}

    " Autodoc -------------------- {{{ 
      " let g:autodoc_display_runtime_info = 1
      " let g:autodoc_display_return_type = 1
      " let g:autodoc_typehint_style = "pep484"
    " }}}
  " }}}
" }}}
