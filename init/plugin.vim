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

  " comment
  Plug 'scrooloose/nerdcommenter'

  " align
  Plug 'junegunn/vim-easy-align'

  " surround
  Plug 'tpope/vim-surround'

  " multiple cursors
  Plug 'terryma/vim-multiple-cursors'

  Plug 'liuchengxu/vim-which-key', {'on': ['WhichKey', 'WhichKey!']}

  " Plug 'jpalardy/vim-slime'

  " Search in the Dash for macOS 
  Plug 'rizzatti/dash.vim'

  " A nice context menu for vim
  Plug 'kizza/actionmenu.nvim'

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

  Plug 'scrooloose/nerdtree', {'on': 'NERDTreeToggle'}

  Plug 'mhinz/vim-startify'

  " Tags
  Plug 'liuchengxu/vista.vim', {'on': 'Vista'}

endif


"-------------------------------------------------------------------------------
" 显示插件 
"-------------------------------------------------------------------------------

if index(g:bundle_group, 'style') >= 0

  Plug 'nordwind80/space-vim-dark'

  Plug 'ryanoasis/vim-devicons'

  Plug 'nathanaelkane/vim-indent-guides'

endif


"-------------------------------------------------------------------------------
" Ale 静态检测 
"-------------------------------------------------------------------------------

if index(g:bundle_group, 'ale') >= 0

  " Plug 'w0rp/ale', {'for': ['vim', 'python', 'go', 'javascript', 'typescript']}

endif


"-------------------------------------------------------------------------------
" 模糊搜索 
"-------------------------------------------------------------------------------

if index(g:bundle_group, 'search') >= 0

  Plug '/usr/local/opt/fzf'
  Plug 'junegunn/fzf.vim'
  Plug 'tracyone/fzf-funky',{'on': 'CtrlPFunky'}

endif


"-------------------------------------------------------------------------------
" 自动补全框架 
"-------------------------------------------------------------------------------

if index(g:bundle_group, 'complete') >= 0

  Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}

  Plug 'honza/vim-snippets'

endif


"-------------------------------------------------------------------------------
" Go Language 
"-------------------------------------------------------------------------------

if index(g:bundle_group, 'go') >= 0

  " Go for vim
  Plug 'fatih/vim-go', {'do': ':GoUpdateBinaries', 'for': 'go'}
  " Plug 'fatih/vim-go', {'for': 'go'}

endif


"-------------------------------------------------------------------------------
" Python Language 
"-------------------------------------------------------------------------------

if index(g:bundle_group, 'python') >= 0

  " Python3 Syntax
  Plug 'nordwind80/python-syntax', {'for': 'python'}

endif


"-------------------------------------------------------------------------------
" TypeScript, JavaScript & JSON
"-------------------------------------------------------------------------------

if index(g:bundle_group, 'typescript') >= 0

  " TypeScript Syntax
  Plug 'leafgarland/typescript-vim', {'for': 'typescript, javascript'}

  " JSON Syntax
  Plug 'elzr/vim-json'

endif


"-------------------------------------------------------------------------------
" MarkDown
"-------------------------------------------------------------------------------

if index(g:bundle_group, 'markdown') >= 0

  " vim markdown
  Plug 'godlygeek/tabular', {'for': 'markdown'}
  Plug 'plasticboy/vim-markdown', {'for': 'markdown'}

  " hugo helper
  Plug 'robertbasic/vim-hugo-helper', { 'for': 'markdown'}
  
  " make TOC
  Plug 'mzlogin/vim-markdown-toc', { 'for': 'markdown' }

  " markdown preview
  Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() } , 'for': 'markdown'}
  Plug 'iamcco/mathjax-support-for-mkdp', {'for': 'markdown'}

  " Nginx
  Plug 'chr4/nginx.vim', {'for': 'nginx'}

endif


"-------------------------------------------------------------------------------
" 插件结束安装 
"-------------------------------------------------------------------------------
call plug#end()


for file in split(globpath('~/.config/nvim/init/plugins/', '*.vim'), '\n') 
  exe 'source' file
endfor
