"============================================================================= 
"@ Author: Nordwind
"@ E-Mial: bm9yZHdpbmQubWVAZ21haWwuY29t
"@ Created Time : 16:44:12 30/12/2018
"@ Last Modified: 16:56:17 01-01-2019
"@ Description:
"        - File Name: init.vim
"        - NeoVim init.vim,load other config file.
"============================================================================= 

" vim: set sw=2 ts=2 sts=2 et tw=78 foldmarker={{,}} foldmethod=marker foldlevel=0:


"-------------------------------------------------------------------------------
" init python version 
"-------------------------------------------------------------------------------

let g:python_host_prog = '/usr/local/bin/python2'
let g:python3_host_prog = '/usr/bin/python3'
let g:ruby_host_prog = exepath('neovim-ruby-host')
let g:node_host_prog = '/usr/local/lib/node_modules/neovim/bin/cli.js'

let g:vimsyn_embed='0'
setlocal omnifunc=

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


"-------------------------------------------------------------------------------
" 加载配置文件
"-------------------------------------------------------------------------------

for file in split(globpath('~/.config/nvim/init/', '*.vim'), '\n')
  exe 'source' file
endfor

