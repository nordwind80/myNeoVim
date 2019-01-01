scriptencoding utf-8

" Python Semantic Completion
let g:ycm_server_python_interpreter = '/usr/bin/python3'
let g:ycm_python_binary_path = '/usr/bin/python3'

" 禁止缓存匹配项,每次都重新生成匹配项
let g:ycm_cache_omnifunc=0

" 语意补全
let g:ycm_seed_identifiers_with_syntax = 1

" 开启 YCM 基于标签引擎
let g:ycm_collect_identifiers_from_tags_files = 1

" 从第2个键入字符就开始罗列匹配项
let g:ycm_min_num_of_chars_for_completion=2

" 在注释输入中也能补全
let g:ycm_complete_in_comments = 1

" 在字符串输入中也能补全
let g:ycm_complete_in_strings = 1

" 跳转定义分屏打开
let g:ycm_goto_buffer_command = 'horizontal-split'
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_autoclose_preview_window_after_completion = 1

" YCM 诊断信息
let g:ycm_show_diagnostics_ui = 0
let g:ycm_server_log_level = 'info'
let g:ycm_semantic_triggers =  {
			\ 'vim,sh,c,cpp,python,go': ['re!\w{2}'],
			\ 'cs,lua,javascript,typescript': ['re!\w{2}'],
			\ }

let g:ycm_filetype_whitelist = {
			\ 'c':1,
			\ 'sh':1,
			\ 'go':1,
			\ 'zsh':1,
			\ 'lua':1,
			\ 'cpp':1,
			\ 'python':1,
			\ 'javascript':1,
			\ 'typescript':1,
			\ }

let g:ycm_register_as_syntastic_checker = 0

" 转到定义快捷键
nnoremap <leader>jd :YcmCompleter GoToDefinitionElseDeclaration<CR>
nnoremap <leader>gd :YcmCompleter GoToDeclaration<CR>

" 回车选中
let g:ycm_key_list_stop_completion = ['<CR>']

" 自动补全快捷键
"let g:ycm_key_invoke_completion = '<c-space>'

" Popup menu
"highlight Pmenu ctermfg=141 ctermbg=235 guifg=141 guibg=235
"highlight PmenuSel ctermfg=251 ctermbg=97 guifg=251 guibg=97
"highlight PmenuSbar ctermfg=28 ctermbg=233 guifg=28 guibg=233
"highlight PmenuThumb ctermfg=160 ctermbg=97 guifg=160 guibg=97

" UltiSnips setting
let g:UltiSnipsExpandTrigger='<c-space>'
let g:UltiSnipsJumpForwardTrigger='<tab>'
let g:UltiSnipsJumpBackwardTrigger='<s-tab>'

" EchoDOc setting
let g:echodoc_enable_at_startup = 1
let g:echodoc_type = 'echo'
