"=============================================================================
"@ Author: Nordwind
"@ E-Mial: bm9yZHdpbmQubWVAZ21haWwuY29t
"@ Created  Time: 19:57:37 30-12-2018
"@ Last Modified: 20:56:30 24-06-2019 
"@ Description:
"         - File Name: options.vim
"         - NeoVim General Settings
"=============================================================================


" General Settings -------------------- {{{ 
  " Backup file
  set nobackup
  set noswapfile

  " history存储容量
  set history=2000

  " Encoding
  " set modifiable
  set fileformat=unix
  set encoding=UTF-8
  set fileencodings=utf-8,gbk,gb2312,gb18030

  " 检测文件类型
  filetype on
  " 针对不同的文件类型采用不同的缩进格式
  filetype indent on
  " 允许插件
  filetype plugin on
  " 启动自动补全
  " filetype plugin indent on

  " 取消备份。
  set nobackup
  " 关闭交换文件
  set noswapfile


  " Code folds
  set foldmethod=manual
  " set foldmethod=marker
  " set foldenable
 
  " Mouse
  set mouse-=a
  " 修复ctrl+m 多光标操作选择的bug，但是改变了ctrl+v进行字符选中时将包含光标下的字符
  " set selection=exclusive
  set selection=inclusive
  set selectmode=mouse,key

  " Warp
  set nowrap
  set backspace+=indent,eol,start
  set whichwrap+=<,>,h,l
  
" }}}


" Display Settings --------------------{{{ 
  " Line number
  set number
  set relativenumber

  " set cursorcolumn
  " 显示当前的行号列号
  set ruler

  " Tabline
  set showtabline=2

  " Status line
  set laststatus=2

  " Command line
  " 左下角显示当前vim模式
  " set showcmd
  " set showmode
  set showcmd
  set noshowmode
  set cmdheight=2

  " WildMenu
  set pumheight=50
  set wildmenu
  " set wildmode=longest:list,full
  set wildignore=*.swp,*.bak,*.pyc,*.class,.svn

  " Cursor
  set scrolloff=10
  set cursorline

  " Indent
  set autoindent
  set smarttab
  set cindent
  set expandtab
  set shiftwidth=2
  set tabstop=2

  " set hidden
  set ttyfast

  " 在状态栏显示正在输入的命令
  " set showcmd
  " set showmode

  " 括号配对情况, 跳转并高亮一下匹配的括号
  set showmatch
  " How many tenths of a second to blink when matching brackets
  set matchtime=2

  " 设置文内智能搜索提示
  " 高亮search命中的文本
  set hlsearch
  " 打开增量搜索模式,随着键入即时搜索
  set incsearch
  " 搜索时忽略大小写
  set ignorecase
  " 有一个或以上大写字母时仍大小写敏感
  set smartcase

  " GUI Font
  set guifontwide=input:h16
  set guifont=Hack\ regular\ Nerd\ Font\ Complete:h16

  " GUI window
  set linespace=6
  set showtabline=0
  set guioptions-=r
  set guioptions-=L
  set guioptions-=b

  " 右侧新建缓冲区
  set splitright

  " vim-airline
  "let g:airline_left_sep = "\uE0C0"
  "let g:airline_left_alt_sep = "\uE0C6"
  "let g:airline_right_sep = "\uE0C2 "
  "let g:airline_right_alt_sep = "\uE0C7"
    
  " Colors
  set termguicolors
  set background=dark

  "colortheme
  colorscheme space-vim-dark
  hi LineNr ctermbg=NONE guibg=NONE

  " 防止tmux下vim的背景色显示异常
  " Refer: http://sunaku.github.io/vim-256color-bce.html
  " if &term =~ '256color'
    " " disable Background Color Erase (BCE) so that color schemes
    " " render properly when inside 256-color tmux and GNU screen.
    " " see also http://snk.tuxfamily.org/log/vim-256color-bce.html
    " set t_ut=
  " endif
" }}}


" FileType EnCode Settings --------------------{{{ 

  " 相对行号: 行号变成相对，可以用 nj/nk 进行跳转
  set relativenumber number
  au FocusLost * :set norelativenumber number
  au FocusGained * :set relativenumber

  " 插入模式下用绝对行号, 普通模式下用相对
  autocmd InsertEnter * :set norelativenumber number
  autocmd InsertLeave * :set relativenumber
  function! NumberToggle()
    if(&relativenumber == 1)
      set norelativenumber number
    else
      set relativenumber
    endif
  endfunc
  nnoremap <C-n> :call NumberToggle()<cr>

" }}}


" Other Settings -------------------- {{{ 
  " 离开插入模式后自动关闭预览窗口
  autocmd InsertLeave * if pumvisible() == 0|pclose|endif

  " VimScript file settings --------------------{{{ 
  augroup filetype_vim
    autocmd!
    autocmd FileType vim,tmux setlocal foldmethod=marker
    autocmd FileType vim,tmux :iabbrev <buffer> --- -------------------- {{{
    autocmd FileType vim,tmux :iabbrev <buffer> === =============================================================================
    iabbrev lst    <c-r>=strftime('%H:%M:%S %d-%m-%Y')<CR>
  augroup END
  " }}}
  
 
  iabbrev lst    <c-r>=strftime('%H:%M:%S %d-%m-%Y')<CR>
  " =============================================================================
  
  " =============================================================================

  " 保存python文件时删除多余空格
  fun! <SID>StripTrailingWhitespaces()
      let l = line(".")
      let c = col(".")
      %s/\s\+$//e
      call cursor(l, c)
  endfun
  autocmd FileType c,cpp,java,go,php,javascript,puppet,python,rust,twig,xml,yml,perl autocmd BufWritePre <buffer> :call <SID>StripTrailingWhitespaces()

  " 设置可以高亮的关键字
  if has("autocmd")
    " Highlight TODO, FIXME, NOTE, etc.
    if v:version > 701
      autocmd Syntax * call matchadd('Todo',  '\W\zs\(TODO\|FIXME\|CHANGED\|DONE\|XXX\|BUG\|HACK\)')
      autocmd Syntax * call matchadd('Debug', '\W\zs\(NOTE\|INFO\|IDEA\|NOTICE\)')
    endif
  endif

  augroup FileTypeSetting
    autocmd FileType python setlocal tabstop=4 softtabstop=4 shiftwidth=4 expandtab autoindent fileformat=unix
    autocmd FileType go setlocal noexpandtab tabstop=8 shiftwidth=8 autoindent
    autocmd FileType markdown setlocal autoindent expandtab smarttab shiftwidth=4 softtabstop=4
  augroup END

  augroup FileHead
  " 定义函数AutoSetFileHead，自动插入文件头
    autocmd BufNewFile *.c,*.h,*.cpp,*.sh,*.vim,*.py,*.md,*.go,*.js,*.ts exec ":call AutoSetFileHead()"
      function! AutoSetFileHead()
        if &filetype ==? 'sh'
          call setline(1, '#! /bin/bash')
          call setline(2, '#')
          call setline(3, '# Author: Nordwind')
          call setline(4, '# E-Mail: bm9yZHdpbmQubWVAZ21haWwuY29t')
          call setline(5, '# Created  Time: '.strftime('%H:%M:%S %d/%m/%Y'))
          call setline(6, '# Last Modified: ')
          call setline(7, '# Description:')
          call setline(8, '#        - File Name: '.expand('%'))
          call setline(9, '#        - ')
        elseif &filetype ==? 'vim'
          call setline(1, '"=============================================================================')  
          call setline(2, '"@ Author: Nordwind')
          call setline(3, '"@ E-Mial: bm9yZHdpbmQubWVAZ21haWwuY29t')
          call setline(4, '"@ Created  Time: '.strftime('%H:%M:%S %d-%m-%Y'))  
          call setline(5, '"@ Last Modified: ')
          call setline(6, '"@ Description:')
          call setline(7, '"         - File Name: '.expand('%'))
          call setline(8, '"=============================================================================')
        elseif (&filetype ==? 'c' || &filetype ==? 'cpp')
          call setline(1, '/************************************************************************')  
          call setline(2, '\ @Author: Nordwind')
          call setline(3, '\ @E-Mial: bm9yZHdpbmQubWVAZ21haWwuY29t')
          call setline(4, '\ @Created  Time: '.strftime('%H:%M:%S %d/%m/%Y'))  
          call setline(5, '\ @Last Modified: ')
          call setline(6, '\ @Description:')
          call setline(7, '\        - File Name: '.expand('%'))
          call setline(8, '\        - ')
          call setline(9, '\************************************************************************')  
        elseif &filetype ==? 'python'
          call setline(1, '# ======================================')
          call setline(2, '# Author: Nordwind')
          call setline(3, '# E-Mail: bm9yZHdpbmQubWVAZ21haWwuY29t')
          call setline(4, '# Created  Time: '.strftime('%H:%M:%S %d-%m-%Y'))
          call setline(5, '# Last Modified: ')
          call setline(6, '# Description:')
          call setline(7, '#        - File Name: '.expand('%'))
          call setline(8, '#        - Version: ')
          call setline(9, '#        - ')
          call setline(10, '# ======================================')
        elseif &filetype ==? 'go'
          call setline(1, '// ======================================')
          call setline(2, '// Author: Nordwind')
          call setline(3, '// E-Mail: bm9yZHdpbmQubWVAZ21haWwuY29t')
          call setline(4, '// Created  Time: '.strftime('%H:%M:%S %d-%m-%Y'))
          call setline(5, '// Last Modified: ')
          call setline(6, '// Description:')
          call setline(7, '//         - File Name: '.expand('%'))
          call setline(8, '//         - Version: ')
          call setline(9, '//         - ')
          call setline(10, '// ======================================')
        elseif &filetye==? 'markdown'
          call setline(1, '\// Author: Nordwind')
        endif
        normal! G
        normal! o
        normal! o
        normal! o
      endfunc
  augroup END
" }}}

" Syntax setting --------------------{{{ 
  if !exists('g:syntax_on')
    syntax enable
  endif
" }}}
