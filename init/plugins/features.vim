"=============================================================================
"@ Author: Nordwind
"@ E-Mial: bm9yZHdpbmQubWVAZ21haWwuY29t
"@ Created  Time: 21:41:30 30-12-2018
"@ Last Modified: 17:06:55 01-01-2019
"@ Description:
"         - File Name: features.vim
"         - NeoVim Features Plugins
"         - 1. ComForTable
"           2. Tmux Navigator
"=============================================================================



" Dash -------------------- {{{ 
  nnoremap <leader>d :Dash<CR>
" }}}

" NERDCommenter -------------------- {{{ 
  let g:NERDSpaceDelims=1
" }}}"

" Easy align --------------------  {{{
  vmap ga <Plug>(EasyAlign)
  nmap ga <Plug>(EasyAlign)
" }}}


" Vim-Slime --------------------  {{{
  " use neovim terminal
  let g:slime_target = 'tmux'

  " default config
  let g:slime_default_config = {'socket_name': 'default', 'target_pane': '{right-of}'}

  " iPyhton
  let g:slime_python_ipython = 1

  " Mappings
  xmap <leader>ss <Plug>SlimeRegionSend
  nmap <leader>ss <Plug>SlimeParagraphSend
" }}}

" WhichKey --------------------  {{{
  nnoremap <silent><leader>      :<c-u>WhichKey '<Space>'<CR>
  nnoremap <silent><localleader> :<c-u>WhichKey  ','<CR>
" }}}
