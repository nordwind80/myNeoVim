"=============================================================================
"@ Author: Nordwind
"@ E-Mial: bm9yZHdpbmQubWVAZ21haWwuY29t
"@ Created  Time: 19:54:26 30-12-2018
"@ Last Modified: 21:04:27 24-06-2019 
"@ Description:
"         - File Name: plugins.vim
"         - Plugin manage and plugins settings
"=============================================================================


"----------------------------------------------------------------------
" 默认情况下的分组，可以再前面覆盖之
"----------------------------------------------------------------------
if !exists('g:bundle_group')
  let g:bundle_group = ['basic', 'textobj', 'config', 'style', 'ale', 'search']
  let g:bundle_group += ['complete', 'go', 'python', 'markdown', 'typescript']
endif

"----------------------------------------------------------------------
" 计算当前 vim-init 的子路径
"----------------------------------------------------------------------
let s:home = fnamemodify(resolve(expand('<sfile>:p')), ':h:h')

function! s:path(path)
	let path = expand(s:home . '/' . a:path )
	return substitute(path, '\\', '/', 'g')
endfunc


"-------------------------------------------------------------------------------
" 插件安装开始 
"-------------------------------------------------------------------------------

call plug#begin()


"-------------------------------------------------------------------------------
" 基础插件 
"-------------------------------------------------------------------------------

if index(g:bundle_group, 'basic') >= 0

  " 快速注释 -------------------- {{{ 
  Plug 'scrooloose/nerdcommenter'

  " 键位设置
  let g:NERDSpaceDelims=1
  " }}}"

  " 文本对齐
  Plug 'junegunn/vim-easy-align'

  vmap ga <Plug>(EasyAlign)
  nmap ga <Plug>(EasyAlign)

  " 快速使用符号包裹代码
  Plug 'tpope/vim-surround'

  " WhichKey -------------------- {{{
  Plug 'liuchengxu/vim-which-key', {'on': ['WhichKey', 'WhichKey!']}

  " 设置
  nnoremap <silent><leader>      :<c-u>WhichKey '<Space>'<CR>
  nnoremap <silent><localleader> :<c-u>WhichKey  ','<CR>
  " }}}

  " Multiple Cursors
  Plug 'terryma/vim-multiple-cursors'

  " vim slime -------------------- {{{
  Plug 'jpalardy/vim-slime'

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

  " Dash -------------------- {{{ 
  Plug 'rizzatti/dash.vim'

  " 键位设置
  nnoremap <leader>d :Dash<CR>

  " }}}

endif


"----------------------------------------------------------------------
" 文本对象：textobj 全家桶
"----------------------------------------------------------------------
if index(g:bundle_group, 'textobj') >= 0

  " 多种文本对象
  Plug 'wellle/targets.vim'

endif

"----------------------------------------------------------------------
" 扩展插件
"----------------------------------------------------------------------
if index(g:bundle_group, 'config') >= 0

  " 文件管理器 -------------------- {{{ 
  Plug 'scrooloose/nerdtree', {'on': 'NERDTreeToggle'}

  " 基本设置
  "autocmd vimenter * NERDTree
  "let NERDTreeShowLineNumbers= 1
  let NERDTreeChDirMode= 1
  let NERDTreeShowBookmarks= 1
  let NERDTreeIgnore=['\.pyc', '\.pyo$', '\.so$', '\~$','\.swp','__pycache__','\.git$','\.DS_Store']
  let NERDTreeWinSize= 25
  let NERDTreeAutoCenter= 1

  " 显示设置
  " let g:NERDTreeDirArrowExpandable= '▸'
  " let g:NERDTreeDirArrowCollapsible= '▾'
  let g:NERDTreeDirArrowExpandable= '╰─▸'
  let g:NERDTreeDirArrowCollapsible= '├─▸'

  " 键位
  map <F2> :NERDTreeToggle <CR>
  " }}}

  " Startify -------------------- {{{ 
  Plug 'mhinz/vim-startify'

  " 设置
  let g:startify_session_autoload = 1

  let g:startify_files_number = 10

  let g:startify_custom_header = [
  \'',
  \'    ██╗  ██╗███████╗██╗     ██╗      ██████╗        ███╗   ██╗ ██████╗ ██████╗ ██████╗ ██╗    ██╗██╗███╗   ██╗██████╗',
  \'    ██║  ██║██╔════╝██║     ██║     ██╔═══██╗       ████╗  ██║██╔═══██╗██╔══██╗██╔══██╗██║    ██║██║████╗  ██║██╔══██╗',
  \'    ███████║█████╗  ██║     ██║     ██║   ██║       ██╔██╗ ██║██║   ██║██████╔╝██║  ██║██║ █╗ ██║██║██╔██╗ ██║██║  ██║',
  \'    ██╔══██║██╔══╝  ██║     ██║     ██║   ██║       ██║╚██╗██║██║   ██║██╔══██╗██║  ██║██║███╗██║██║██║╚██╗██║██║  ██║',
  \'    ██║  ██║███████╗███████╗███████╗╚██████╔╝▄█╗    ██║ ╚████║╚██████╔╝██║  ██║██████╔╝╚███╔███╔╝██║██║ ╚████║██████╔╝',
  \'    ╚═╝  ╚═╝╚══════╝╚══════╝╚══════╝ ╚═════╝ ╚═╝    ╚═╝  ╚═══╝ ╚═════╝ ╚═╝  ╚═╝╚═════╝  ╚══╝╚══╝ ╚═╝╚═╝  ╚═══╝╚═════╝',
  \'',
  \'',
  \'',
  \'     - The Wind Rises. We Must Try To Live.',
  \'',
  \'',
  \]

  function! StartifyEntryFormat()
    return 'WebDevIconsGetFileTypeSymbol(absolute_path) ."  ". entry_path'
  endfunction
  " }}}

  " Vista --------------------  {{{
  Plug 'liuchengxu/vista.vim', {'on': 'Vista'}

  map <F3> :Vista <CR>
  let g:vista_icon_indent = ['╰─▸ ', '├─▸ ']
  let g:vista_default_executive = 'coc'
  let g:vista_executive_for = {
    \ 'go': 'coc',
    \ 'vim': 'coc',
    \ 'python': 'coc',
    \ 'typescript': 'coc',
    \ 'javascript': 'coc',
    \ }

  let g:vista_fzf_preview = ['right:50%']
  let g:vista#renderer#enable_icon = 1
  let g:vista#renderer#icons = {
    \ 'function': "\uf794",
    \ 'variable': "\uf71b",
    \  }
  " }}}

endif


"-------------------------------------------------------------------------------
" 显示插件 
"-------------------------------------------------------------------------------

if index(g:bundle_group, 'style') >= 0
  " 主题（自定义）
  Plug 'nordwind80/space-vim-dark'

  " 图标
  Plug 'ryanoasis/vim-devicons'

  " 缩进显示 -------------------- {{{
  Plug 'nathanaelkane/vim-indent-guides'

  " 设置
  let g:indent_guides_enable_on_vim_startup = 1
  " }}}

endif


"-------------------------------------------------------------------------------
" Ale 静态检测 
"-------------------------------------------------------------------------------

if index(g:bundle_group, 'ale') >= 0

  " ALE -------------------- {{{ 
  Plug 'w0rp/ale', {'for': ['vim', 'python', 'go', 'javascript', 'typescript']}

  " General Settings -------------------- {{{ 
  let g:ale_completion_enabled = 0
  let g:ale_set_highlights = 0

  let g:ale_lint_on_text_changed = 'never'
  let g:ale_lint_on_enter = 0
  " let g:ale_lint_on_insert_leave = 1

  let g:ale_fix_on_save = 0
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
  nnoremap <leader>af :ALEFix<CR>
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

  augroup ALECall
    autocmd!
    autocmd User ALELint call ToggleErrors()
  augroup END

  nnoremap <leader>ae :call ToggleErrors()<CR>
  nnoremap <leader>al :ALELint<CR>
  " }}}

  " Fixer Settings -------------------- {{{ 
  let g:ale_fixers = {
        \ 'python': ['black', 'isort'],
        \ 'vim': ['remove_trailing_lines'],
        \ 'javascript': ['eslint'],
        \ 'typescript': ['tslint'],
        \ 'go': ['gofmt']
        \}
  " }}}

  " Linter Settings -------------------- {{{ 
  let g:ale_linters = {
        \ 'vim': ['vint'],
        \ 'go': ['gofmt', 'goimports'],
        \ 'python': ['flake8', 'mypy'],
        \ 'javascript': ['eslint'],
        \ 'typescript': ['tslint']
        \}

  let g:ale_python_mypy_options='--ignore-missing-imports'
  let g:ale_python_black_options='--line-length=120'
  let g:ale_python_flake8_options='--max-line-length=120'
  " }}}

  " }}}

endif


"-------------------------------------------------------------------------------
" 模糊搜索 
"-------------------------------------------------------------------------------

if index(g:bundle_group, 'search') >= 0

  " Fuzzy Finder -------------------- {{{ 
  Plug '/usr/local/opt/fzf'
  Plug 'junegunn/fzf.vim'
  Plug 'tracyone/fzf-funky',{'on': 'CtrlPFunky'}

  " General Settings -------------------- {{{ 
  " let $FZF_DEFAULT_OPTS='--ansi --height 50% --layout=reverse --preview "bat --style=numbers --color=always {} || (cat {}) 2> /dev/null | head -500"'
  let $FZF_DEFAULT_OPTS='--ansi --height 50% --preview "bat --theme={} --style=numbers --color=always {} || (cat {}) 2> /dev/null | head -500"'
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

endif


"-------------------------------------------------------------------------------
" 自动补全框架 
"-------------------------------------------------------------------------------

if index(g:bundle_group, 'complete') >= 0

  " Coc.Nvim -------------------- {{{
    Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}

  " General Settings -------------------- {{{ 
    set pumheight=35

    set complete+=k
    set complete-=t
    set completeopt=menu,preview
    set updatetime=300

    set shortmess+=c

    set signcolumn=yes

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

  " 代码片段管理
  Plug 'honza/vim-snippets'

endif


"-------------------------------------------------------------------------------
" Go Language 
"-------------------------------------------------------------------------------

if index(g:bundle_group, 'go') >= 0

" Go Gopher -------------------- {{{ 
  " Plug 'fatih/vim-go', {'do': ':GoUpdateBinaries', 'for': 'go'}
  Plug 'fatih/vim-go', {'for': 'go'}

  " 设置
  let g:go_fold_enable = 1
  let g:go_fold_enable = ['import', 'varconst', 'package_comment', 'comment']
  let g:go_fmt_command = 'goimports'

  " Syntax Settings -------------------- {{{ 
  let g:go_highlight_array_whitespace_error = 0
  let g:go_highlight_chan_whitespace_error = 0
  let g:go_highlight_types = 1
  let g:go_highlight_extra_types = 1
  "let g:go_highlight_fields = 1
  let g:go_highlight_function_calls = 1
  let g:go_highlight_operators = 1
  let g:go_highlight_methods = 1
  let g:go_highlight_structs = 1
  let g:go_highlight_build_constraints = 1
  let g:go_highlight_generate_tags = 1
  let g:go_highlight_format_strings = 1
  let g:go_highlight_variable_assignments = 1
  "let g:go_highlight_variable_declarations = 1
  " }}}

" }}}

endif


"-------------------------------------------------------------------------------
" Python Language 
"-------------------------------------------------------------------------------

if index(g:bundle_group, 'python') >= 0

  " Python 语法高亮增强(自定义) -------------------- {{{ 
  Plug 'nordwind80/python-syntax', {'for': 'python'}

  " 设置
  let g:python_highlight_all = 1
  let g:python_highlight_space_errors = 0
  let g:python_highlight_indent_errors = 0
  " }}}

  " Python PyTest 单元测试 -------------------- {{{ 
  " Plug 'alfredodeza/pytest.vim', {'for': 'python'}

  " " 设置
  " "let g:pytest_executable = "py.test-3"
  " nmap <silent> <Leader>pf <Esc>:Pytest file<CR>
  " nmap <silent> <Leader>pc <Esc>:Pytest class<CR>
  " nmap <silent> <Leader>pm <Esc>:Pytest method<CR>
  " nmap <silent> <Leader>pp <Esc>:Pytest project<CR>
  " nmap <silent> <Leader>ps <Esc>:Pytest session<CR>
  " nmap <silent> <Leader>pn <Esc>:Pytest next<CR>
  " nmap <silent> <Leader>pu <Esc>:Pytest last<CR>
  " }}}

endif


"-------------------------------------------------------------------------------
" TypeScript
"-------------------------------------------------------------------------------

if index(g:bundle_group, 'typescript') >= 0
  Plug 'leafgarland/typescript-vim', {'for': 'typescript, javascript'}
  Plug 'elzr/vim-json'
endif


"-------------------------------------------------------------------------------
" MarkDown
"-------------------------------------------------------------------------------

if index(g:bundle_group, 'markdown') >= 0

  " MarkDown 高亮增强 --------------------  {{{
  Plug 'godlygeek/tabular', {'for': 'markdown'}
  Plug 'plasticboy/vim-markdown', {'for': 'markdown'}
  " }}}

  " MarkDown 预览 --------------------  {{{
  Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() } , 'for': 'markdown'}
  Plug 'iamcco/mathjax-support-for-mkdp', {'for': 'markdown'}

  " 设置
  let g:vim_markdown_conceal= 0
  let g:vim_markdown_folding_disabled = 1
  let g:mkdp_path_to_chrome= "open -a Google\\ Chrome"

  " 键位
  nmap <silent> <F4><Plug> MarkdownPreview        " 普通模式
  imap <silent> <F4><Plug> MarkdownPreview        " 插入模式
  nmap <silent> <F6><Plug> StopMarkdownPreview    " 普通模式
  imap <silent> <F6><Plug> StopMarkdownPreview    " 插入模式
  " }}}

endif


"-------------------------------------------------------------------------------
" 插件结束安装 
"-------------------------------------------------------------------------------
call plug#end()
