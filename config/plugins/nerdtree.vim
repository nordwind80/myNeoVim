"=============================================================================
"@ Author: Nordwind
"@ E-Mial: ZWFnbGV3aW5ncy55aUBnbWFpbC5jb20=
"@ Created  Time: 21:14:12 30-12-2018
"@ Last Modified: 21:19:57 30-12-2018
"@ Description:
"         - File Name: nerdtree.vim
"         - NERDTree settings
"         - https://github.com/scrooloose/nerdtree
"=============================================================================


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
    let g:NERDTreeDirArrowExpandable= '▸'
    let g:NERDTreeDirArrowCollapsible= '▾'
  " }}}

  " KeyMapping Settings -------------------- {{{ 
    map <F2> :NERDTreeToggle <CR>
  " }}}

" }}}
