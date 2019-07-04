"============================================================================= 
"@ Author: Nordwind
"@ E-Mial: bm9yZHdpbmQubWVAZ21haWwuY29t
"@ Created Time : 16:44:12 30/12/2018
"@ Last Modified: 16:56:17 01-01-2019
"@ Description:
"        - File Name: init.vim
"        - NeoVim init.vim,load other config file.
"============================================================================= 



"-------------------------------------------------------------------------------
" init python version 
"-------------------------------------------------------------------------------

let g:python_host_skip_check=1
let g:python_host_prog = '/usr/local/bin/python2'
let g:python3_host_skip_check=1
let g:python3_host_prog = '/usr/bin/python3'

lang en_US.UTF-8

if has('mac')
  let g:clipboard = {
    \   'name': 'macOS-clipboard',
    \   'copy': {
    \      '+': 'pbcopy',
    \      '*': 'pbcopy',
    \    },
    \   'paste': {
    \      '+': 'pbpaste',
    \      '*': 'pbpaste',
    \   },
    \   'cache_enabled': 0,
    \ }
endif

if has('clipboard')
  set clipboard& clipboard+=unnamedplus
endif

" " 防止重复加载
" if get(s:, 'loaded', 0) != 0
  " finish
" else
  " let s:loaded = 1
" endif

" " 取得本文件所在的目录
" let s:home = fnamemodify(resolve(expand('<sfile>:p')), ':h')

" " 定义一个命令用来加载文件
" command! -nargs=1 LoadScript exec 'so '.s:home.'/'.'<args>'

" " 将 vim-init 目录加入 runtimepath
" exec 'set rtp+='.s:home


"-------------------------------------------------------------------------------
" 加载配置文件
"-------------------------------------------------------------------------------

for file in split(glob('~/.config/nvim/init/*.vim'), '\n')
  exe 'source' file
endfor
