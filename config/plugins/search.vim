"=============================================================================
"@ Author: Nordwind
"@ E-Mial: bm9yZHdpbmQubWVAZ21haWwuY29t
"@ Created  Time: 13:20:38 31-12-2018
"@ Last Modified: 17:08:47 01-01-2019
"@ Description:
"         - File Name: search.vim
"         - NeoVim search plugins.
"         - LeaderF
"=============================================================================


" LeaderF -------------------- {{{ 
  
  " General Settings -------------------- {{{ 
    let g:Lf_WildIgnore = {
          \ 'dir': ['.svn','.git','.hg'],
          \ 'file': ['*.sw?','~$*','*.bak','*.exe','*.o','*.so','*.py[co]']
          \}
  " }}}

  " KeyMappings Settings -------------------- {{{ 
    " earch word under cursor, the pattern is treated as regex, and enter normal mode directly
    noremap <C-F> :<C-U><C-R>=printf("Leaderf! rg -e %s ", expand("<cword>"))<CR>
    " search word under cursor, the pattern is treated as regex,
    " append the result to previous search results.
    noremap <C-G> :<C-U><C-R>=printf("Leaderf! rg --append -e %s ", expand("<cword>"))<CR>
    " search word under cursor literally only in current buffer
    noremap <C-B> :<C-U><C-R>=printf("Leaderf! rg -F --current-buffer -e %s ", expand("<cword>"))<CR>
  " }}}
" }}}
