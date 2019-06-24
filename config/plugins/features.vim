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


" ComForTable -------------------- {{{ 
  let g:comfortable_motion_scroll_up_key = 'k'
  let g:comfortable_motion_scroll_down_key = 'j'
" }}}

" NERDCommenter -------------------- {{{ 
  let g:NERDSpaceDelims=1
" }}}"
" Tmux Navigator --------------------{{{ 
  if exists('$TMUX')
  "  function! TmuxOrSplitSwitch(wincmd, tmuxdir)
  "    let previous_winnr= winnr()
  "    silent! execute "wincmd " . a: wincmd
  " if previous_winnr == winnr()
  "      call system("tmux select-pane -" . a: tmuxdir)
  "      redraw!
  "    endif
  "  endfunction
  "
  "  let previous_title = substitute(system("tmux display-message - p '#{pane_title}'"), '\n', '', '')
  "  let & t_ti = "\<Esc>]2; vim\<Esc>\\" . & t_ti
  "  let & t_te = "\<Esc>]2; ". previous_title . "\< Esc >\\" . & t_te
  "
  "  nnoremap <silent> <C-h>: call TmuxOrSplitSwitch('h', 'L') <cr>
  "  nnoremap <silent> <C-j>: call TmuxOrSplitSwitch('j', 'D') <cr>
  "  nnoremap <silent> <C-k>: call TmuxOrSplitSwitch('k', 'U') <cr>
  "  nnoremap <silent> <C-l>: call TmuxOrSplitSwitch('l', 'R') <cr>
  " else
    map <C-h> <C-w>h
    map <C-j> <C-w>j
    map <C-k> <C-w>k
    map <C-l> <C-w>l
  endif"
" }}}
