"===============================================================================
"
" Author: Nordwind
" E-Mail: bm9yZHdpbmQubWVAZ21haWwuY29t
" GitHub: github.com/nordwind80
" Created  Time: 15:56:34 29-06-2019
" Last Modified: 15:56:34 29-06-2019
" Description:
"        - File Name: base.vim
"        - Version: 
"        - Neovim Base config
"
"===============================================================================



"-------------------------------------------------------------------------------
" 基础配置 
"-------------------------------------------------------------------------------

" 关闭自动换行
set nowrap
set whichwrap+=<,>,h,l

" 打开 C/C++ 语言缩进优化
set cindent

" 设置自动缩进
set autoindent
set smartindent
set smartcase

" 打开功能键超时检测（终端下功能键为一串 ESC 开头的字符串）
set ttimeout

" 功能键超时检测 50 毫秒
set ttimeoutlen=50

" 设置 BackSpace 键模式
set backspace+=indent,eol,start

set expandtab

" 右侧新建缓冲区
set splitright

" 行宽设置
let &colorcolumn="121,".join(range(120,999),",")
let &colorcolumn="121"

"-------------------------------------------------------------------------------
" 搜索配置 
"-------------------------------------------------------------------------------

" 搜索时忽略大小写
set ignorecase

" 智能搜索大小写判断，默认忽略大小写，除非搜索内容包含大写字母
set smartcase

" 高亮搜索内容
set hlsearch

" 查找输入时动态增量显示查找结果
set incsearch


"-------------------------------------------------------------------------------
" 编码设置
"-------------------------------------------------------------------------------

" 内部工作编码
set encoding=UTF-8

" 文件默认编码
set fileencoding=utf-8

" 打开文件时自动尝试以下编码
set fileencodings=utf-8,gbk,gb2312,gb18030


"----------------------------------------------------------------------
" 允许 Vim 自带脚本根据文件类型自动设置缩进等
"----------------------------------------------------------------------

if has('autocmd')
	filetype plugin indent on
endif


"----------------------------------------------------------------------
" 语法高亮设置
"----------------------------------------------------------------------

if has('syntax')  
  syntax enable 
  syntax on 
  syntax sync minlines=200
endif


"-------------------------------------------------------------------------------
" 其他设置 
"-------------------------------------------------------------------------------

" 禁用鼠标
set mouse-=a
" set selection=exclusive
"
" set selection=inclusive
"
" set selectmode=mouse,key

" 历史记录容量
set history=2000

" 显示匹配的括号
set showmatch

" 显示括号匹配的时间
set matchtime=2

" 显示最后一行
set display=lastline

" 延迟绘制（提升性能）
set lazyredraw

" 错误格式
set errorformat+=[%f:%l]\ ->\ %m,[%f:%l]:%m

" 设置分隔符可视
" set listchars=tab:\|\ ,eol:↲,trail:•,extends:⟩,precedes:⟨
set listchars=tab:\|\ ,trail:•,extends:⟩,precedes:⟨

" set showbreak=↪\ 
" set listchars=tab:→\ ,eol:↲,nbsp:␣,trail:•,extends:⟩,precedes:⟨


" 设置 tags：当前文件所在目录往上向根目录搜索直到碰到 .tags 文件
" 或者 Vim 当前目录包含 .tags 文件
" set tags=./.tags;,.tags

" 如遇Unicode值大于255的文本，不必等到空格再折行
" set formatoptions+=m

" 合并两行中文时，不在中间加空格
set formatoptions+=B

" 文件换行符，默认使用 unix 换行符
set fileformats=unix,mac,dos


"----------------------------------------------------------------------
" 备份设置
"----------------------------------------------------------------------

" 不允许备份
set nobackup

" " 允许备份
" set backup

" " 保存时备份
" set writebackup

" " 备份文件地址，统一管理
" set backupdir=~/.vim/tmp

" " 备份文件扩展名
" set backupext=.bak

" 禁用交换文件
set noswapfile

" 禁用 undo文件
set noundofile

" 创建目录，并且忽略可能出现的警告
" silent! call mkdir(expand('~/.vim/tmp'), "p", 0755)


"----------------------------------------------------------------------
" 文件搜索和补全时忽略下面扩展名
"----------------------------------------------------------------------
set suffixes=.bak,~,.o,.h,.info,.swp,.obj,.pyc,.pyo,.egg-info,.class

set wildignore=*.o,*.obj,*~,*.exe,*.a,*.pdb,*.lib "stuff to ignore when tab completing
set wildignore+=*.so,*.dll,*.swp,*.egg,*.jar,*.class,*.pyc,*.pyo,*.bin,*.dex
set wildignore+=*.zip,*.7z,*.rar,*.gz,*.tar,*.gzip,*.bz2,*.tgz,*.xz    " MacOSX/Linux
set wildignore+=*DS_Store*,*.ipch
set wildignore+=*.gem
set wildignore+=*.png,*.jpg,*.gif,*.bmp,*.tga,*.pcx,*.ppm,*.img,*.iso
set wildignore+=*.so,*.swp,*.zip,*/.Trash/**,*.pdf,*.dmg,*/.rbenv/**
set wildignore+=*/.nx/**,*.app,*.git,.git
set wildignore+=*.wav,*.mp3,*.ogg,*.pcm
set wildignore+=*.mht,*.suo,*.sdf,*.jnlp
set wildignore+=*.chm,*.epub,*.pdf,*.mobi,*.ttf
set wildignore+=*.mp4,*.avi,*.flv,*.mov,*.mkv,*.swf,*.swc
set wildignore+=*.ppt,*.pptx,*.docx,*.xlt,*.xls,*.xlsx,*.odt,*.wps
set wildignore+=*.msi,*.crx,*.deb,*.vfd,*.apk,*.ipa,*.bin,*.msu
set wildignore+=*.gba,*.sfc,*.078,*.nds,*.smd,*.smc
set wildignore+=*.linux2,*.win32,*.darwin,*.freebsd,*.linux,*.android

