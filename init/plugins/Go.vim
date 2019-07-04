"===============================================================================
"
" Author: Nordwind
" E-Mail: bm9yZHdpbmQubWVAZ21haWwuY29t
" GitHub: github.com/nordwind80
" Created  Time: 20:24:55 04-07-2019
" Last Modified: 20:24:55 04-07-2019
" Description:
"        - File Name: Go.vim
"        - Version: 
"        - 
"
"===============================================================================


" Gopher --------------------  {{{
  " 设置
  let g:go_fold_enable = 0
  let g:go_fold_enable = ['import', 'varconst', 'package_comment', 'comment']
  let g:go_fmt_command = 'goimports'
  let g:go_auto_type_info = 0                 
  let g:go_auto_sameids = 0
  " let g:go_def_mode='gopls'
  " let g:go_info_mode='gopls'

  " Syntax Settings -------------------- {{{ 
  let g:go_highlight_array_whitespace_error = 0
  let g:go_highlight_chan_whitespace_error = 0
  let g:go_highlight_types = 1
  let g:go_highlight_extra_types = 1
  "let g:go_highlight_fields = 1
  let g:go_highlight_function_calls = 1
  let g:go_highlight_operators = 1
  let g:go_highlight_methods = 1
  let g:go_highlight_structs = 1
  let g:go_highlight_build_constraints = 1
  let g:go_highlight_generate_tags = 1
  let g:go_highlight_format_strings = 1
  let g:go_highlight_variable_assignments = 1
  "let g:go_highlight_variable_declarations = 1
  " }}}
" }}}
