"=============================================================================
"@ Author: Nordwind
"@ E-Mial: bm9yZHdpbmQubWVAZ21haWwuY29t
"@ Created  Time: 17:29:57 24-06-2019
"@ Last Modified: 21:05:56 24-06-2019 
"@ Description:
"         - File Name: vim-slime.vim
"=============================================================================


" use neovim terminal
let g:slime_target = "tmux"

" default config
let g:slime_default_config = {"socket_name": "default", "target_pane": "{right-of}"}

" iPyhton
let g:slime_python_ipython = 1

" Mappings
xmap <leader>ss <Plug>SlimeRegionSend
nmap <leader>ss <Plug>SlimeParagraphSend

