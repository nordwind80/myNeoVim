"=============================================================================
"@ Author: Nordwind
"@ E-Mial: bm9yZHdpbmQubWVAZ21haWwuY29t
"@ Created  Time: 15:45:11 31-12-2018
"@ Last Modified: 17:07:12 01-01-2019
"@ Description:
"         - File Name: Go.vim
"         - Go language settings
"=============================================================================

" Go Gopher -------------------- {{{ 
  " General Settings -------------------- {{{ 
    " Flod -------------------- {{{ 
      let g:go_fold_enable = 1
      let g:go_fold_enable = ['import', 'varconst', 'package_comment', 'comment']
    " }}}
    let g:go_fmt_command = 'goimports'
  " }}}

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
