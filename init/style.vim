"===============================================================================
"
" Author: Nordwind
" E-Mail: bm9yZHdpbmQubWVAZ21haWwuY29t
" GitHub: github.com/nordwind80
" Created  Time: 16:20:33 29-06-2019
" Last Modified: 16:20:33 29-06-2019
" Description:
"        - File Name: style.vim
"        - Version: 
"        - 
"
"===============================================================================


"-------------------------------------------------------------------------------
" 显示设置
"-------------------------------------------------------------------------------

" 总是显示状态栏
set laststatus=2

" 总是显示行号
set number

" 显示相对行号
set relativenumber

" 显示当前行列数
set ruler

" 总是显示侧边栏（用于显示 mark/gitdiff/诊断信息）
set signcolumn=yes

" 显示状态栏
set laststatus=2

" 总是显示标签栏
set showtabline=2

" 设置显示制表符等隐藏字符
set list

" 右下角显示命令
set showcmd

" 不显示当前模式
set noshowmode

" 命令行行高
set cmdheight=2

" 允许下方显示目录
set wildmenu

set wildmode=full

set wildoptions=pum

set pumblend=10

" set pumheight=50

set wildignore=*.swp,*.bak,*.pyc,*.class,.svn

" Cursor
set scrolloff=10

set lazyredraw
set ttyfast


"-------------------------------------------------------------------------------
" 主题设置 
"-------------------------------------------------------------------------------

" Colors
set termguicolors
set t_Co=256
set background=dark

"colortheme
colorscheme space-vim-dark


"-------------------------------------------------------------------------------
" GUI设置 
"-------------------------------------------------------------------------------

" GUI Font
set guifontwide=input:h16
set guifont=Hack\ regular\ Nerd\ Font\ Complete:h16

" GUI window
" set linespace=6
" set showtabline=0
" set guioptions-=r
" set guioptions-=L
" set guioptions-=b
