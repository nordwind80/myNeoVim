"===============================================================================
"
" Author: Nordwind
" E-Mail: bm9yZHdpbmQubWVAZ21haWwuY29t
" GitHub: github.com/nordwind80
" Created  Time: 20:18:37 04-07-2019
" Last Modified: 20:18:37 04-07-2019
" Description:
"        - File Name: Vista.vim
"        - Version: 
"        - 
"
"===============================================================================


" Vista --------------------  {{{
  map <F3> :Vista <CR>
  let g:vista_icon_indent = ['╰─▸ ', '├─▸ ']
  let g:vista_default_executive = 'coc'
  let g:vista_executive_for = {
    \ 'go': 'coc',
    \ 'vim': 'coc',
    \ 'python': 'coc',
    \ 'typescript': 'coc',
    \ 'javascript': 'coc',
    \ }

  let g:vista_fzf_preview = ['right:50%']
  let g:vista#renderer#enable_icon = 1
  let g:vista#renderer#icons = {
    \ 'function': "\uf794",
    \ 'variable': "\uf71b",
    \  }
" }}}
