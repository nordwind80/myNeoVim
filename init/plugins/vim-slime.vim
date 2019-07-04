"===============================================================================
"
" Author: Nordwind
" E-Mail: bm9yZHdpbmQubWVAZ21haWwuY29t
" GitHub: github.com/nordwind80
" Created  Time: 20:19:56 04-07-2019
" Last Modified: 20:19:56 04-07-2019
" Description:
"        - File Name: vim-slime.vim
"        - Version: 
"        - 
"
"===============================================================================


" Vim-Slime --------------------  {{{
  " use neovim terminal
  let g:slime_target = "tmux"

  " default config
  let g:slime_default_config = {"socket_name": "default", "target_pane": "{right-of}"}

  " iPyhton
  let g:slime_python_ipython = 1

  " Mappings
  xmap <leader>ss <Plug>SlimeRegionSend
  nmap <leader>ss <Plug>SlimeParagraphSend
" }}}

