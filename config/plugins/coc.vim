"=============================================================================
"@ Author: Nordwind
"@ E-Mial: ZWFnbGV3aW5ncy55aUBnbWFpbC5jb20=
"@ Created  Time: 13:46:07 31-12-2018
"@ Last Modified: 
"@ Description:
"         - File Name: coc.vim
"         - Coc.nvim completion plugin
"=============================================================================


" Coc.Nvim -------------------- {{{ 
  " General Settings -------------------- {{{ 
    set updatetime=300
    set shortmess+=c
    set signcolumn=yes
  " }}}

  " KeyMappings Settings -------------------- {{{ 
    " Use tab for trigger completion with characters ahead and navigate.
    inoremap <silent><expr> <TAB>
          \ pumvisible() ? "\<C-n>" :
          \ <SID>check_back_space() ? "\<TAB>" :
          \ coc#refresh()
    inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

    function! s:check_back_space() abort
      let col = col('.') - 1
      return !col || getline('.')[col - 1]  =~# '\s'
    endfunction

    " Use <ENTER> to confirm complete.
    inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<CR>"

    " Use <Tab> and <S-Tab> for navigate completion list.
    inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
    inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

    " Close preview window when completion is done.
    augroup ClosePreview
      autocmd! CompleteDone * if pumvisible() == 0 | pclose | endif
    augroup end

    " Use [c and ]c for navigate diagnostics.
    nnoremap <silent> <leader>cp <Plug>(coc-diagnostic-prev)
    nnoremap <silent> <leader>cn <Plug>(coc-diagnostic-next)

    " Remap key for gotos.
    nnoremap <silent> <leader>gd <Plug>(coc-definition)
    nnoremap <silent> <leader>gy <Plug>(coc-type-definition)
    nnoremap <silent> <leader>gi <Plug>(coc-implementation)
    nnoremap <silent> <leader>gr <Plug>(coc-references)

    " Use <Leader>sd for show documentation in preview window
    nnoremap <silent> <Leader>sd :call <SID>show_documentation()<CR>

    function! s:show_documentation()
      if &filetype ==? 'vim'
        execute 'h '.expand('<cword>')
      else
        call CocAction('doHover')
      endif
    endfunction
  " }}}
" }}}



