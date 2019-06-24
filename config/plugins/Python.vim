"=============================================================================
"@ Author: Nordwind
"@ E-Mial: bm9yZHdpbmQubWVAZ21haWwuY29t
"@ Created  Time: 13:34:10 01-01-2019
"@ Last Modified: 21:05:28 24-06-2019 
"@ Description:
"         - File Name: Python.vim
"         - Python language settings
"=============================================================================


" Python -------------------- {{{ 
  " Syntax Settings -------------------- {{{ 
    let g:python_highlight_all = 1
    let g:python_highlight_space_errors = 0
    let g:python_highlight_indent_errors = 0
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

    " Black -------------------- {{{
      autocmd BufWritePre *.py execute ':Black'
      let g:black_linelength=120
    " }}}
  " }}}
" }}}
