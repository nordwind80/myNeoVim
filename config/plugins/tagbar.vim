"=============================================================================
"@ Author: Nordwind
"@ E-Mial: bm9yZHdpbmQubWVAZ21haWwuY29t
"@ Created  Time: 12:30:40 31-12-2018
"@ Last Modified: 17:09:22 01-01-2019
"@ Description:
"         - File Name: tagbar.vim
"         - TagBar Settings
"         - Languages: Python Go Markdown JavaScript and TypeScript
"=============================================================================


" TagBar -------------------- {{{ 
  
  " General Settings -------------------- {{{ 
    let Tlist_Ctags_Cmd = '/usr/local/Cellar/ctags/5.8_1/bin/ctags'
    " let g:tagbar_ctags_bin = 'ctags'
    let g:tagbar_autofocus = 1
    let Tlist_Show_One_File = 1
    let Tlist_Use_Right_Window = 1
    let Tlist_Exit_OnlyWindow = 1
  " }}}

  " Languages Settings -------------------- {{{ 

    " MarkDown -------------------- {{{ 
      let g:tagbar_type_markdown = {
        \ 'ctagstype': 'markdown',
        \ 'kinds': [
           \ 'h:Heading_L1',
           \ 'i:Heading_L2',
           \ 'k:Heading_L3'
        \]
      \}
    " }}}

    " Go -------------------- {{{ 
    " gotags https://github.com/jstemmer/gotags

      let g:tagbar_type_go = {
        \ 'ctagstype' : 'go',
        \ 'kinds'     : [
          \ 'p:package',
          \ 'i:imports:1',
          \ 'c:constants',
          \ 'v:variables',
          \ 't:types',
          \ 'n:interfaces',
          \ 'w:fields',
          \ 'e:embedded',
          \ 'm:methods',
          \ 'r:constructor',
          \ 'f:functions'
        \ ],
        \ 'sro' : '.',
        \ 'kind2scope' : {
          \ 't' : 'ctype',
          \ 'n' : 'ntype'
        \ },
        \ 'scope2kind' : {
          \ 'ctype' : 't',
          \ 'ntype' : 'n'
        \ },
        \ 'ctagsbin'  : 'gotags',
        \ 'ctagsargs' : '-sort -silent'
      \ }
    " }}}

    " Python -------------------- {{{ 

    " }}}
    " JavaScript -------------------- {{{ 

    " }}}

    " TypeScript -------------------- {{{ 
      let g:tagbar_type_typescript = {
        \ 'ctagstype': 'typescript',
        \ 'kinds': [
            \ 'c:classes',
            \ 'n:modules',
            \ 'f:functions',
            \ 'v:variables',
            \ 'v:varlambdas',
            \ 'm:members',
            \ 'i:interfaces',
            \ 'e:enums',
        \]
      \}
    " }}}

  " }}}

  " KeyMappings Settings -------------------- {{{ 
    nmap <F3> :TagbarToggle<CR>
  " }}}
" }}}
