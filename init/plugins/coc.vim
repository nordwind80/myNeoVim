"===============================================================================
"
" Author: Nordwind
" E-Mail: bm9yZHdpbmQubWVAZ21haWwuY29t
" GitHub: github.com/nordwind80
" Created  Time: 20:24:36 04-07-2019
" Last Modified: 20:24:36 04-07-2019
" Description:
"        - File Name: coc.vim
"        - Version: 
"        - 
"
"===============================================================================


" Coc.Nvim -------------------- {{{ 

  " General Settings -------------------- {{{ 
    set complete+=k
    set complete-=t
    set completeopt=menu,preview
    set updatetime=300

    set shortmess+=c

    augroup complete
      autocmd!
      autocmd CompleteDone * pclose
    augroup end
  " }}}

  " KeyMappings Settings -------------------- {{{
    " Use tab for trigger completion with characters ahead and navigate.
    "inoremap <silent><expr> <TAB>
    "      \ pumvisible() ? "\<C-n>" :
    "      \ <SID>check_back_space() ? "\<TAB>" :
    "      \ coc#refresh()
    "inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

    inoremap <silent><expr> <TAB>
      \ pumvisible() ? coc#_select_confirm() :
      \ coc#expandableOrJumpable() ? coc#rpc#request('doKeymap', ['snippets-expand-jump','']) :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()

    function! s:check_back_space() abort
      let col = col('.') - 1
      return !col || getline('.')[col - 1]  =~# '\s'
    endfunction

    let g:coc_snippet_next = '<tab>'

    " Use <ENTER> to confirm complete.
    inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<CR>"

    " Use <Tab> and <S-Tab> for navigate completion list.
    inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
    inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

    " Close preview window when completion is done.
    augroup ClosePreview
      autocmd! CompleteDone * if pumvisible() == 0 | pclose | endif
    augroup end

    nnoremap <leader>K :call <SID>show_documentation()<CR>

    function! s:show_documentation()
      if &filetype ==? 'vim'
        execute 'h '.expand('<cword>')
      else
        call CocAction('doHover')
      endif
    endfunction

    " Use [c and ]c for navigate diagnostics.
    nnoremap <leader>cp <Plug>(coc-diagnostic-prev)
    nnoremap <leader>cn <Plug>(coc-diagnostic-next)

    " Remap key for gotos.
    nmap <leader>gd <Plug>(coc-definition)
    nmap <leader>gy <Plug>(coc-type-definition)
    nmap <leader>gi <Plug>(coc-implementation)
    nmap <leader>gr <Plug>(coc-references)

    inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
          \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

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

  " Coc.nvim Extension -------------------- {{{
    " coc-translator
    nmap <Leader>tt <Plug>(coc-translator-p)
    nmap <leader>tr <Plug>(coc-translator-r)
    nmap <leader>th :CocCommand translator.exportHistory<CR>

    " coc-lists
    nnoremap <silent> <leader>l :<C-u>CocList<CR>
    nnoremap <silent> <leader>j  :<C-u>CocNext<CR>
    nnoremap <silent> <leader>k  :<C-u>CocPrev<CR>
    nnoremap <silent> <leader>p  :<C-u>CocListResume<CR>
    nnoremap <silent> <leader>w  :exe 'CocList -I --normal --input='.expand('<cword>').' words'<CR>
  " }}} 

" }}}
