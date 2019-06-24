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


" Fuzzy Finder -------------------- {{{ 
  
  " General Settings -------------------- {{{ 
  let $FZF_DEFAULT_OPTS='--ansi --height 50% --layout=reverse --preview "bat --style=numbers --color=always {} || (cat {}) 2> /dev/null | head -500"'
  " let g:fzf_layout = { 'window': 'call FloatingFZF()' }
  let g:fzf_layout = { 'window': 'call OpenFloatingWin()'}

  function! OpenFloatingWin()
    let height = &lines - 3
    let width = float2nr(&columns - (&columns * 2 / 10))
    let col = float2nr((&columns - width) / 2)

    let opts = {
          \ 'relative': 'editor',
          \ 'row': height * 0.3,
          \ 'col': col,
          \ 'width': width * 2 / 2,
          \ 'height': height / 2
          \ }

    let buf = nvim_create_buf(v:false, v:true)
    let win = nvim_open_win(buf, v:true, opts)

    call setwinvar(win, '&winhl', 'Normal:Pmenu')

    setlocal
          \ buftype=nofile
          \ nobuflisted
          \ bufhidden=hide
          \ nonumber
          \ norelativenumber
          \ signcolumn=no
  endfunction
  " }}}

  " KeyMappings Settings -------------------- {{{ 
  nnoremap <Leader>fu :CtrlPFunky<Cr>
  " narrow the list down with a word under cursor
  nnoremap <Leader>fU :execute 'CtrlPFunky ' . expand('<cword>')<Cr>


  " Mapping selecting mappings.
  nmap <leader><tab> <plug>(fzf-maps-n)
  xmap <leader><tab> <plug>(fzf-maps-x)
  omap <leader><tab> <plug>(fzf-maps-o)

  " Insert mode completion
  imap <c-x><c-k> <plug>(fzf-complete-word)
  imap <c-x><c-f> <plug>(fzf-complete-path)
  imap <c-x><c-j> <plug>(fzf-complete-file-ag)
  imap <c-x><c-l> <plug>(fzf-complete-line)


  nnoremap <silent><leader>ft :Ag<CR>
  nnoremap <silent><leader>fp :Files<CR>
  nnoremap <silent><leader>fb :Buffers<CR>
  nnoremap <silent><leader>fh :Helptags<CR>
  nnoremap <silent><leader>fc :Commands<CR>

  let g:fzf_action = { 'ctrl-e': 'edit' }

  " }}}
" }}}
