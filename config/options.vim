"=============================================================================
"@ Author: Nordwind
"@ E-Mial: ZWFnbGV3aW5ncy55aUBnbWFpbC5jb20=
"@ Created  Time: 19:57:37 30-12-2018
"@ Last Modified: 21:33:47 30-12-2018
"@ Description:
"         - File Name: options.vim
"         - NeoVim General Settings
"=============================================================================


" View --------------------{{{ 

  " Encoding
  set encoding=utf-8
  set fileencodings=utf-8,gbk,gb2312,gb18030

  " GUI Font
  set guifont=
  set guifontwide=

  " GUI window
  set linespace=6
  set showtabline=0
  set guioptions-=r
  set guioptions-=L
  set guioptions-=b
  
  " Colors
  set termguicolors
  set background=dark

  "colortheme
  colorscheme space-vim-dark
  hi LineNr ctermbg=NONE guibg=NONE

  " Line number
  set number
  set relativenumber

  " Tabline
  set showtabline=2

  " Status line
  set laststatus=2

  " Command line
  set noshowcmd
  set cmdheight=2

  " Cursor
  set scrolloff=10
  set cursorline
  " set cursorcolumn

  " Search
  set ignorecase
  set hlsearch
  set incsearch
  set smartcase
" }}}

" Edit --------------------{{{ 

  " Code folds
  set foldmethod=marker
  set foldenable
  "set foldlevelstart=1

  " Indent
  set autoindent
  set smarttab
  set cindent
  set expandtab
  set shiftwidth=2
  set tabstop=2
  
  " Backspace
  set backspace+=indent,eol,start

  " Mouse
  set mouse=a
  set selection=exclusive
  set selectmode=mouse,key

  " Clipboard
  "set clipboard+=unnamed

  " Complete
  set pumheight=30
  set wildmenu
  set wildmode=longest,full
  set completeopt=menu,menuone

  " Backup file
  set nobackup
  set noswapfile

  " Warp
  set nowrap
  set whichwrap+=<,>,h,l
" }}}

" FileType --------------------{{{ 

  set fileformat=unix
  filetype plugin indent on

  " VimScript file settings --------------------{{{ 
  augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
    autocmd FileType vim :iabbrev <buffer> --- -------------------- {{{
    autocmd FileType vim :iabbrev <buffer> === "=============================================================================
    iabbrev idts    <c-r>=strftime("%H:%M:%S %d-%m-%Y")<CR>
  augroup END
  " }}} }}}

  augroup FileTypeSetting
    autocmd FileType python setlocal tabstop=4 softtabstop=4 shiftwidth=4 expandtab autoindent fileformat=unix
    autocmd FileType go setlocal noexpandtab tabstop=4 shiftwidth=4 autoindent
  augroup END

  augroup FileHead
  " 定义函数AutoSetFileHead，自动插入文件头
    autocmd BufNewFile *.c,*.h,*.cpp,*.sh,*.vim,*.py,*.go,*.js,*.ts exec ":call AutoSetFileHead()"
      function! AutoSetFileHead()
        if &filetype ==? 'sh'
          call setline(1, '#! /bin/bash')
          call setline(2, '#')
          call setline(3, '# Author: Nordwind')
          call setline(4, '# E-Mail: ZWFnbGV3aW5ncy55aUBnbWFpbC5jb20=')
          call setline(5, '# Created  Time: '.strftime('%H:%M:%S %d/%m/%Y'))
          call setline(6, '# Last Modified: ')
          call setline(7, '# Description:')
          call setline(8, '#        - File Name: '.expand('%'))
          call setline(9, '#        - ')
        elseif &filetype ==? 'vim'
          call setline(1, '"=============================================================================')  
          call setline(2, '"@ Author: Nordwind')
          call setline(3, '"@ E-Mial: ZWFnbGV3aW5ncy55aUBnbWFpbC5jb20=')
          call setline(4, '"@ Created  Time: '.strftime('%H:%M:%S %d-%m-%Y'))  
          call setline(5, '"@ Last Modified: ')
          call setline(6, '"@ Description:')
          call setline(7, '"         - File Name: '.expand('%'))
          call setline(8, '"         - Version  : ')
          call setline(8, '"=============================================================================')
        elseif (&filetype ==? 'c' || &filetype ==? 'cpp')
          call setline(1, '/************************************************************************')  
          call setline(2, '\ @Author: Nordwind')
          call setline(3, '\ @E-Mial: ZWFnbGV3aW5ncy55aUBnbWFpbC5jb20=')
          call setline(4, '\ @Created  Time: '.strftime('%H:%M:%S %d/%m/%Y'))  
          call setline(5, '\ @Last Modified: ')
          call setline(6, '\ @Description:')
          call setline(7, '\        - File Name: '.expand('%'))
          call setline(8, '\        - ')
          call setline(8, '\************************************************************************')  
        elseif &filetype ==? 'python'
          call setline(1, '#!/usr/bin/env python3')
          call setline(2, '# -*- coding: utf-8 -*-')
          call setline(3, '#')
          call setline(4, '# Author: Nordwind')
          call setline(5, '# E-Mail: ZWFnbGV3aW5ncy55aUBnbWFpbC5jb20=')
          call setline(6, '# Created  Time: '.strftime('%H:%M:%S %d-%m-%Y'))
          call setline(7, '# Last Modified: ')
          call setline(8, '# Description:')
          call setline(8, '#        - File Name: '.expand('%'))
          call setline(9, '#        - Version  : ')
        elseif &filetype ==? 'go'
          call setline(1, '// =============================================================================')
          call setline(2, '// Author: Nordwind')
          call setline(3, '// E-Mail: ZWFnbGV3aW5ncy55aUBnbWFpbC5jb20=')
          call setline(4, '// Created  Time: '.strftime('%H:%M:%S %d-%m-%Y'))
          call setline(5, '// Last Modified: ')
          call setline(6, '// Description:')
          call setline(7, '//         - File Name: '.expand('%'))
          call setline(8, '//         - Version  : ')
          call setline(9, '// =============================================================================')
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
