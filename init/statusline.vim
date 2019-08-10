let g:currentmode = {
  \ 'n': 'NORMAL',
  \ 'i': 'INSERT',
  \ 'R': 'REPLACE',
  \ 'v': 'VISUAL',
  \ 'V': 'V-LINE',
  \ '\<C-v>': 'V-BLOCK',
  \ 'c': 'COMMAND',
  \ 's': 'SELECT',
  \ 'S': 'S-LINE',
  \ '\<C-s>': 'S-BLOCK',
  \ 't': 'TERMINAL'
  \ }

function! MyStatusLine()
  return s:GetPaste()
        \. '%2*  %{toupper(g:currentmode[mode()])}  '
        \. '%3* %{TotalBuffers()} %*'
        \. '%5* %{MyStatusGit()}%*'
        \. '%6*%{MyStatusGitChanges()}%* %{MyStatusCoc()}'
        \. ' %f %{MyStatusModifySymbol()}'
        \. ' %{MyStatusReadonly()}'
        \. '%=%-{&ft} %l,%c %P '
        \. '%7* %{MyStatusError()} %{MyStatusWarning()}%*'
"%{&fenc}
endfunction

function! BufnrWinnr() abort
  let l:bufnr = bufnr('%')
  return l:bufnr
endfunction

function! TotalBuffers() abort
  return 'Buffer: '.BufnrWinnr().'/'.len(filter(range(1, bufnr('$')), 'buflisted(v:val)')).''
endfunction

function! s:IsTempFile()
  if !empty(&buftype) | return 1 | endif
  if &previewwindow | return 1 | endif
  if &filetype ==# 'gitcommit' | return 1 | endif
  let filename = expand('%:p')
  if filename =~# '^/tmp' | return 1 | endif
  if filename =~# '^fugitive:' | return 1 | endif
  return 0
endfunction

function! s:GetPaste()
  if !&paste | return '' |endif
  return '%#MyStatusPaste# paste %*'
endfunction

function! MyStatusReadonly()
  if !&readonly | return '' |endif
  return '  '
endfunction

function! MyStatusCoc()
  if get(g:, 'did_coc_loaded', 0)
    return coc#status()
  endif
  return ''
endfunction

function! MyStatusModifySymbol()
  return &modified ? '⚡' : ''
endfunction

function! MyStatusGitChanges() abort
  if s:IsTempFile() | return '' | endif
  return get(b:, 'coc_git_status', '')
endfunction

function! MyStatusGit(...) abort
  if s:IsTempFile() | return '' | endif
  return get(g:, 'coc_git_status', '')
endfunction

function! MyStatusError() abort
  if exists('g:loaded_ale')
    let l:counts = ale#statusline#Count(bufnr(''))
      return l:counts[0] == 0 ? 'E • 0 |' : 'E • '.l:counts[0].' |'
  endif
  return ''
endfunction

function! MyStatusWarning() abort
  if exists('g:loaded_ale')
    let l:counts = ale#statusline#Count(bufnr(''))
      return l:counts[1] == 0 ? 'W • 0 ' : 'W • '.l:counts[1].' '
  endif
  return ''
endfunction

function! SetStatusLine()
  if &previewwindow | return | endif
  if s:IsTempFile() | return | endif
  call MyStatusGit(1)
  setl statusline=%!MyStatusLine()
  hi User2         guifg=#f8f8ff guibg=#24936E    gui=none
  hi User3         guifg=#f8f8ff guibg=#24936E    gui=none
  hi User4 guifg=#f8f8ff guibg=#24936E
  hi User5 guifg=#f8f8ff guibg=#24936E
  hi User6 guifg=#f8f9fa guibg=#24936E
  hi User7 guifg=#f8f9fa guibg=#24936E
  hi MyStatusPaste guifg=#F8F8F0 guibg=#FF5F00 gui=none
  hi MyStatusPaste ctermfg=202   ctermbg=16    cterm=none
endfunction

augroup statusline
  autocmd!
  autocmd User GitGutter call SetStatusLine()
  autocmd BufNewFile,BufReadPost,ShellCmdPost,BufWritePost * call SetStatusLine()
  autocmd FileChangedShellPost,ColorScheme * call SetStatusLine()
  autocmd FileReadPre,ShellCmdPost,FileWritePost * call SetStatusLine()
augroup end
