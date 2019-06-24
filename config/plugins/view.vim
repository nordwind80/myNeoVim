"=============================================================================
"@ Author: Nordwind
"@ E-Mial: bm9yZHdpbmQubWVAZ21haWwuY29t
"@ Created  Time: 21:27:21 30-12-2018
"@ Last Modified: 17:09:57 01-01-2019
"@ Description:
"         - File Name: view.vim
"         - NeoVim View Plugins Settings
"             1. Startify
"             2. Rainbow
"             3. AirLine
"             4. IndentGuides
"=============================================================================


" Startify -------------------- {{{ 
  let g:startify_session_autoload = 1

  let g:startify_files_number = 10

  let g:startify_custom_header = [
  \'',
  \'    ██╗  ██╗███████╗██╗     ██╗      ██████╗        ███╗   ██╗ ██████╗ ██████╗ ██████╗ ██╗    ██╗██╗███╗   ██╗██████╗',
  \'    ██║  ██║██╔════╝██║     ██║     ██╔═══██╗       ████╗  ██║██╔═══██╗██╔══██╗██╔══██╗██║    ██║██║████╗  ██║██╔══██╗',
  \'    ███████║█████╗  ██║     ██║     ██║   ██║       ██╔██╗ ██║██║   ██║██████╔╝██║  ██║██║ █╗ ██║██║██╔██╗ ██║██║  ██║',
  \'    ██╔══██║██╔══╝  ██║     ██║     ██║   ██║       ██║╚██╗██║██║   ██║██╔══██╗██║  ██║██║███╗██║██║██║╚██╗██║██║  ██║',
  \'    ██║  ██║███████╗███████╗███████╗╚██████╔╝▄█╗    ██║ ╚████║╚██████╔╝██║  ██║██████╔╝╚███╔███╔╝██║██║ ╚████║██████╔╝',
  \'    ╚═╝  ╚═╝╚══════╝╚══════╝╚══════╝ ╚═════╝ ╚═╝    ╚═╝  ╚═══╝ ╚═════╝ ╚═╝  ╚═╝╚═════╝  ╚══╝╚══╝ ╚═╝╚═╝  ╚═══╝╚═════╝',
  \'',
  \'',
  \'',
  \'     - The Wind Rises. We Must Try To Live.',
  \'',
  \'',
  \]

  function! StartifyEntryFormat()
    return 'WebDevIconsGetFileTypeSymbol(absolute_path) ."  ". entry_path'
  endfunction
" }}}

" RainBow -------------------- {{{ 
  let g:rainbow_active = 1
  let g:rainbow_conf = {
    \	'guifgs': ['#50FA7B', '#8BE9FD', '#BD93F9', '#FF79C6', '#F1FA8C'],
    \	'ctermfgs': ['Green', 'Magenta', 'Cyan', 'Yellow'],
    \	'operators': '_,_',
    \	'parentheses': ['start=/(/ end=/)/ fold', 'start=/\[/ end=/\]/ fold', 'start=/{/ end=/}/ fold'],
    \	'separately': {
    \		'*': {},
    \		'tex': {
    \			'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/'],
    \		},
    \		'lisp': {
    \			'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick', 'darkorchid3'],
    \		},
    \		'vim': {
    \			'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/', 'start=/{/ end=/}/ fold', 'start=/(/ end=/)/ containedin=vimFuncBody', 'start=/\[/ end=/\]/ containedin=vimFuncBody', 'start=/{/ end=/}/ fold containedin=vimFuncBody'],
    \		},
    \		'html': {
    \			'parentheses': ['start=/\v\<((area|base|br|col|embed|hr|img|input|keygen|link|menuitem|meta|param|source|track|wbr)[ >])@!\z([-_:a-zA-Z0-9]+)(\s+[-_:a-zA-Z0-9]+(\=("[^"]*"|'."'".'[^'."'".']*'."'".'|[^ '."'".'"><=`]*))?)*\>/ end=#</\z1># fold'],
    \		},
    \		'css': 0,
    \	}
    \}
" }}}

" AirLine -------------------- {{{ 
  let g:airline_theme='violet'
  "let g:airline_extensions = []
  let g:airline_highlighting_cache=1
  "let g:airline#extensions#tagbar#enabled = 0
  "let g:airline#extensions#wordcount#enabled = 0
  "let g:airline#extensions#whitespace#enabled = 0
  "let g:airline#extensions#tabline#show_splits = 0
  "let g:airline#extensions#tabline#show_tab_type = 0
  let g:airline#extensions#tabline#enabled = 1
  let g:airline#extensions#tabline#buffer_nr_show = 1
  let g:airline#extensions#tabline#left_sep = ' '
  let g:airline#extensions#tabline#left_alt_sep = '|'
  let g:airline#extensions#tabline#formatter = 'default'

  " Airline whitespace detection
  let g:airline#extensions#whitespace#enabled = 0
" }}}

" IndentGuides -------------------- {{{ 
  let g:indent_guides_enable_on_vim_startup = 1
" }}}
