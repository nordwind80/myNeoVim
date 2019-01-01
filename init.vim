"============================================================================= 
"@ Author: Nordwind
"@ E-Mial: bm9yZHdpbmQubWVAZ21haWwuY29t
"@ Created Time : 16:44:12 30/12/2018
"@ Last Modified: 16:56:17 01-01-2019
"@ Description:
"        - File Name: init.vim
"        - NeoVim init.vim,load other config file.
"============================================================================= 


" NeoVim Python host {{{
  let g:python_host_skip_check=1
  let g:python_host_prog = 'usr/bin/python'
  let g:python3_host_skip_check=1
  let g:python3_host_prog = '/usr/bin/python3'
" }}}

" ConfigFile {{{ "
  " NeoVim ConfigFile
  runtime ./config/mappings.vim
  runtime ./config/plugins.vim
  runtime ./config/options.vim
" }}} "

