"===============================================================================
"
" Author: Nordwind
" E-Mail: bm9yZHdpbmQubWVAZ21haWwuY29t
" GitHub: github.com/nordwind80
" Created  Time: 13:06:17 29-06-2019
" Last Modified: 13:06:17 29-06-2019
" Description:
"        - File Name: misc.vim
"        - Version: 
"        - 
"
"===============================================================================


"-------------------------------------------------------------------------------
" Insert before current line. 
"-------------------------------------------------------------------------------

function! s:snip(text)
	call append(line('.') - 1, a:text)
endfunc


"-------------------------------------------------------------------------------
" Comment 
"-------------------------------------------------------------------------------

function! s:comment()
	let l:ext = expand('%:e')
	if &filetype == 'vim'
		return '"'
	elseif index(['c', 'cpp', 'h', 'hpp', 'hh', 'cc', 'cxx'], l:ext) >= 0
		return '// '
	elseif index(['m', 'mm', 'java', 'go', 'delphi', 'pascal'], l:ext) >= 0
		return '// '
	elseif index(['coffee', 'as'], l:ext) >= 0
		return '// '
	elseif index(['c', 'cpp', 'rust', 'go', 'javascript'], &filetype) >= 0
		return '// '
	elseif index(['coffee'], &filetype) >= 0
		return '// '
	elseif index(['sh', 'bash', 'python', 'php', 'perl', 'zsh'], $filetype) >= 0
		return '# '
	elseif index(['make', 'ruby', 'text'], $filetype) >= 0
		return '# '
	elseif index(['py', 'sh', 'pl', 'php', 'rb'], l:ext) >= 0
		return '# '
	elseif index(['asm', 's'], l:ext) >= 0
		return ';'
	elseif index(['asm'], &filetype) >= 0
		return ';'
	elseif index(['sql', 'lua'], l:ext) >= 0
		return '--'
	elseif index(['basic'], &filetype) >= 0
		return "'"
	endif
	return "#"
endfunc



"-------------------------------------------------------------------------------
" Comment bar 
"-------------------------------------------------------------------------------

function! s:comment_bar(repeat, limit)
	let l:comment = s:comment()
	while strlen(l:comment) < a:limit
		let l:comment .= a:repeat
	endwhile
	return l:comment
endfunc


"-------------------------------------------------------------------------------
" Comment block 
"-------------------------------------------------------------------------------

function! <SID>snip_comment_block(repeat)
	let l:comment = s:comment()
	let l:complete = s:comment_bar(a:repeat, 120)
	if l:comment == ''
		return
	endif
	call s:snip('')
	call s:snip(l:complete)
	call s:snip(l:comment . ' ')
	call s:snip(l:complete)
endfunc


"-----------------------------------------------------------------------
" copyright
"-----------------------------------------------------------------------

function! <SID>snip_copyright()
	let l:c = s:comment()
	let l:complete = s:comment_bar('=', 120)
	let l:filename = expand("%:t")
	let l:text = []
	if &filetype == 'python'
		let l:text += ['#! /usr/bin/env python']
		let l:text += ['# -*- coding: utf-8 -*-']
	elseif &filetype == 'sh'
		let l:text += ['#! /bin/sh']
	elseif &filetype == 'bash'
		let l:text += ['#! /usr/bin/env bash']
	elseif &filetype == 'zsh'
		let l:text += ['#! /usr/bin/env zsh']
	endif
	let l:text += [l:complete]
	let l:text += [l:c]
	let l:text += [l:c . ' Author: Nordwind']
  let l:text += [l:c . ' E-Mail: bm9yZHdpbmQubWVAZ21haWwuY29t']
  let l:text += [l:c . ' GitHub: github.com/nordwind80']
  let l:text += [l:c . ' Created  Time: ' . strftime('%H:%M:%S %d-%m-%Y')]
	let l:text += [l:c . ' Last Modified: ' . strftime('%H:%M:%S %d-%m-%Y')]
  let l:text += [l:c . ' Description:']
  let l:text += [l:c . '        - File Name: ' . l:filename]
  let l:text += [l:c . '        - Version: ']
  let l:text += [l:c . '        - ']
	let l:text += [l:c]
	let l:text += [l:complete]
	call append(0, l:text)
endfunc


"-------------------------------------------------------------------------------
" keymappings 
"-------------------------------------------------------------------------------

noremap <leader>e- :call <SID>snip_comment_block('-')<cr>
noremap <leader>e= :call <SID>snip_comment_block('=')<cr>
noremap <leader>e# :call <SID>snip_comment_block('#')<cr>
noremap <leader>ec :call <SID>snip_copyright()<cr>


