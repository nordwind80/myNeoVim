" MarkDown
let g:vim_markdown_conceal= 0
let g:vim_markdown_folding_disabled = 1
let g:mkdp_path_to_chrome= "open -a Google\\ Chrome"
nmap <silent> <F4><Plug> MarkdownPreview        " 普通模式
imap <silent> <F4><Plug> MarkdownPreview        " 插入模式
nmap <silent> <F6><Plug> StopMarkdownPreview    " 普通模式
imap <silent> <F6><Plug> StopMarkdownPreview    " 插入模式
