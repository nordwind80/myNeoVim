"=============================================================================
"@ Author: Nordwind
"@ E-Mial: bm9yZHdpbmQubWVAZ21haWwuY29t
"@ Created  Time: 19:57:37 30-12-2018
"@ Last Modified: 17:02:35 01-01-2019
"@ Description:
"         - File Name: options.vim
"         - NeoVim General Settings
"=============================================================================


" View --------------------{{{ 

  " Encoding
  set encoding=utf-8
  set fileencodings=utf-8,gbk,gb2312,gb18030

  " GUI Font
  set guifontwide=input:h16
  set guifont=Hack\ regular\ Nerd\ Font\ Complete:h16

  " GUI window
  set linespace=6
  set showtabline=0
  set guioptions-=r
  set guioptions-=L
  set guioptions-=b

  " vim-airline
  let g:airline_left_sep = "\uE0C0"
  "let g:airline_left_alt_sep = "\uE0C6"
  let g:airline_right_sep = "\uE0C2 "
  "let g:airline_right_alt_sep = "\uE0C7"
    
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
  set noshowmode
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
  "set pumheight=50
  "set wildmenu
  "set wildmode=longest,full
  "set complete+=k
  "set complete-=t
  "set completeopt=menu,preview

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
    autocmd FileType vim,tmux setlocal foldmethod=marker
    autocmd FileType vim,tmux :iabbrev <buffer> --- -------------------- {{{
    autocmd FileType vim,tmux :iabbrev <buffer> === "=============================================================================
    iabbrev idts    <c-r>=strftime("%H:%M:%S %d-%m-%Y")<CR>
  augroup END
  " }}} }}}

  augroup FileTypeSetting
    autocmd FileType python setlocal tabstop=4 softtabstop=4 shiftwidth=4 expandtab autoindent fileformat=unix
    autocmd FileType go setlocal noexpandtab tabstop=8 shiftwidth=8 autoindent
  augroup END

  augroup FileHead
  " 定义函数AutoSetFileHead，自动插入文件头
    autocmd BufNewFile *.c,*.h,*.cpp,*.sh,*.vim,*.py,*.go,*.js,*.ts exec ":call AutoSetFileHead()"
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
          call setline(1, '#!/usr/bin/env python3')
          call setline(2, '#')
          call setline(3, '# Author: Nordwind')
          call setline(4, '# E-Mail: bm9yZHdpbmQubWVAZ21haWwuY29t')
          call setline(5, '# Created  Time: '.strftime('%H:%M:%S %d-%m-%Y'))
          call setline(6, '# Last Modified: ')
          call setline(7, '# Description:')
          call setline(8, '#        - File Name: '.expand('%'))
          call setline(9, '#        - Version: ')
          call setline(10, '#        - ')
        elseif &filetype ==? 'go'
          call setline(1, '// =============================================================================')
          call setline(2, '// Author: Nordwind')
          call setline(3, '// E-Mail: bm9yZHdpbmQubWVAZ21haWwuY29t')
          call setline(4, '// Created  Time: '.strftime('%H:%M:%S %d-%m-%Y'))
          call setline(5, '// Last Modified: ')
          call setline(6, '// Description:')
          call setline(7, '//         - File Name: '.expand('%'))
          call setline(8, '//         - Version: ')
          call setline(9, '//         - ')
          call setline(10, '// =============================================================================')
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
