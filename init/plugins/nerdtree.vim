"===============================================================================
"
" Author: Nordwind
" E-Mail: bm9yZHdpbmQubWVAZ21haWwuY29t
" GitHub: github.com/nordwind80
" Created  Time: 20:18:26 04-07-2019
" Last Modified: 20:18:26 04-07-2019
" Description:
"        - File Name: nerdtree.vim
"        - Version: 
"        - 
"
"===============================================================================


" NERDTree -------------------- {{{ 
  
  " General Settings -------------------- {{{ 
    "autocmd vimenter * NERDTree
    "let NERDTreeShowLineNumbers= 1
    let NERDTreeChDirMode= 1
    let NERDTreeShowBookmarks= 1
    let NERDTreeIgnore=['\.pyc', '\.pyo$', '\.so$', '\~$','\.swp','__pycache__','\.git$','\.DS_Store']
    let NERDTreeWinSize= 25
    let NERDTreeAutoCenter= 1
  " }}}

  " View Settings -------------------- {{{ 
    " let g:NERDTreeDirArrowExpandable= '▸'
    " let g:NERDTreeDirArrowCollapsible= '▾'
    let g:NERDTreeDirArrowExpandable= '╰─▸'
    let g:NERDTreeDirArrowCollapsible= '├─▸'
  " }}}

  " KeyMapping Settings -------------------- {{{ 
    map <F2> :NERDTreeToggle <CR>
  " }}}

" }}}
