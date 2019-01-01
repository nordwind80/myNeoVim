"=============================================================================
"@ Author: Nordwind
"@ E-Mial: bm9yZHdpbmQubWVAZ21haWwuY29t
"@ Created  Time: 20:05:28 30-12-2018
"@ Last Modified: 17:05:49 01-01-2019
"@ Description:
"         - File Name: ale.vim
"         - ALE settings
"         - https://github.com/w0rp/ale 
"=============================================================================


" ALE -------------------- {{{ 

  " General Settings -------------------- {{{ 
    let g:ale_completion_enabled = 0
    let g:ale_set_highlights = 0

    let g:ale_lint_on_text_changed = 'never'
    let g:ale_lint_on_enter = 0

    let b:ale_fix_on_save = 0
  " }}}

  " View Settings -------------------- {{{ 
    let g:airline#extensions#ale#enabled = 1
    let g:ale_sign_column_always = 1
    let g:ale_sign_error = '✗'
    let g:ale_sign_warning = '⚡'
    let g:ale_echo_msg_error_str = 'E'
    let g:ale_echo_msg_warning_str = 'W'
    let g:ale_echo_msg_format = '[%linter%][%code%]: %s [%severity%]'
    let g:ale_statusline_format = ['✗ %d', '⚡ %d', '✔ OK']
  " }}}

  " KeyMapping Settings -------------------- {{{ 
    nmap <F7> <Plug>(ale_fix)
    nnoremap <leader>ap <Plug>(ale_previous_wrap)
    nnoremap <leader>an <Plug>(ale_next_wrap)

    nnoremap <leader>at :ALEToggle<CR>
    nnoremap <leader>ad :ALEDetail<CR>

    " Toggle quickfix list
    function! ToggleErrors()
      let old_last_winnr = winnr('$')
      lclose
      if old_last_winnr == winnr('$')
        " Nothing was closed, open syntastic_error location panel
        lopen
      endif
    endfunction
    nnoremap <leader>ae :call ToggleErrors()<cr>
  " }}}

  " Fixer Settings -------------------- {{{ 
  let b:ale_fixers = {
        \ 'python': ['yapf', 'remove_trailing_lines', 'trim_whitespace'],
        \ 'vim': ['remove_trailing_lines'],
        \ 'javascript': ['tslint'],
        \ 'typescript': ['eslint']
        \}
  " }}}

  " Linter Settings -------------------- {{{ 
    let g:ale_linters = {
          \ 'vim': ['vint'],
          \ 'go': ['gofmt', 'goimports', 'golint', 'govet', 'gobuild'],
          \ 'python': ['pyflakes'],
          \ 'javascript': ['eslint'],
          \ 'typescript': ['tslint']
          \}
  " }}}

" }}}

