"=======================================================================================================================
"
" Author: Nordwind
" E-Mail: bm9yZHdpbmQubWVAZ21haWwuY29t
" GitHub: github.com/nordwind80
" Created  Time: 18:52:39 04-08-2019
" Last Modified: 18:52:39 04-08-2019
" Description:
"        - File Name: actionmenu.vim
"        - Version: 
"        - 
"
"=======================================================================================================================



"-------------------------------------------------------------------------------
" ActionMenu.nvim
"-------------------------------------------------------------------------------
let s:code_actions = []

func! ActionMenuCodeActions() abort
  let s:code_actions = CocAction('codeActions')
  let l:menu_items = map(copy(s:code_actions), { index, item -> item['title'] })
  call actionmenu#open(l:menu_items, 'ActionMenuCodeActionsCallback')
endfunc

func! ActionMenuCodeActionsCallback(index, item) abort
  if a:index >= 0
    let l:selected_code_action = s:code_actions[a:index]
    let l:response = CocAction('doCodeAction', l:selected_code_action)
  endif
endfunc


nnoremap <silent> <Leader>s :call ActionMenuCodeActions()<CR>
