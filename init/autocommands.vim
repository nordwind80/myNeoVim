"===============================================================================
"
" Author: Nordwind
" E-Mail: bm9yZHdpbmQubWVAZ21haWwuY29t
" GitHub: github.com/nordwind80
" Created  Time: 07:01:15 03-07-2019
" Last Modified: 07:01:15 03-07-2019
" Description:
"        - File Name: autocommands.vim
"        - Version: 
"        - 
"
"===============================================================================



"-------------------------------------------------------------------------------
" 自动命令 
"-------------------------------------------------------------------------------

" 插入模式下用绝对行号, 普通模式下用相对
augroup AutoNumber
  autocmd!
  autocmd InsertEnter * :set norelativenumber number
  autocmd InsertLeave * :set relativenumber
augroup END

function! NumberToggle()
  if(&relativenumber == 1)
    set norelativenumber number
  else
    set relativenumber
  endif
endfunc

nnoremap <C-n> :call NumberToggle()<cr>


"-------------------------------------------------------------------------------
" Auto Commands 
"-------------------------------------------------------------------------------
" augroup common
  " autocmd BufEnter * call EmptyBuffer()
  " autocmd BufReadPost *.log normal! G
  " autocmd BufWinEnter * call s:OnBufEnter()
  " autocmd FileType *
        " \ if &omnifunc == "" |
        " \    setlocal omnifunc=syntaxcomplete#Complete |
        " \ endif
  " autocmd BufReadPost *
        " \ if line("'\"") > 1 && line("'\"") <= line("$") |
        " \   exe "normal! g`\"" |
        " \ endif
  " autocmd FileType json syntax match Comment +\/\/.\+$+
  " autocmd FileType typescript setl formatexpr=CocAction('formatSelected')
  " autocmd FileType typescript let b:coc_pairs_disabled = ['<']
" augroup END



"-------------------------------------------------------------------------------
" Functions
"-------------------------------------------------------------------------------
" function! EmptyBuffer()
  " if @% ==# ''
    " setfiletype txt
  " endif
" endfunction

" function! s:OnFileType(filetype)
  " if index(['xml', 'wxml', 'html', 'wxss', 'css', 'scss', 'less'], a:filetype) >=0
    " let b:coc_additional_keywords = ['-']
  " endif
" endfunction

" function! s:OnBufEnter()
  " let name = bufname(+expand('<abuf>'))
  " " quickly leave those temporary buffers
  " if &previewwindow || name =~# '^term://' || &buftype ==# 'nofile' || &buftype ==# 'help'
    " if !mapcheck('q', 'n')
      " nnoremap <silent><buffer> q :<C-U>bd!<CR>
    " endif
  " elseif name =~# '/tmp/'
    " setl bufhidden=delete
  " endif
  " unlet name
" endfunction
" }}


"-------------------------------------------------------------------------------
" Viml 
"-------------------------------------------------------------------------------
augroup Viml
  autocmd!
  autocmd FileType vim,tmux setlocal tabstop=2 softtabstop=2 shiftwidth=2 expandtab
  autocmd FileType vim,tmux setlocal foldmethod=marker foldmarker={{,}} foldlevel=0
  autocmd FileType vim,tmux :iabbrev <buffer> --- --------------------
augroup END


"-------------------------------------------------------------------------------
" JavaScript & TypeScript 
"-------------------------------------------------------------------------------
augroup JavaScript
  autocmd!
  autocmd FileType javascript,typescript setlocal tabstop=4 softtabstop=4 shiftwidth=4 expandtab
  autocmd FileType typescript let b:coc_pairs_disabled = ['<']
augroup END


"-------------------------------------------------------------------------------
" Python Language 
"-------------------------------------------------------------------------------
augroup Python
  autocmd!
  autocmd FileType python setlocal tabstop=4 softtabstop=4 shiftwidth=4 expandtab
  " autocmd BufWritePre *.py :ALEFix
augroup END


"-------------------------------------------------------------------------------
" Go Language 
"-------------------------------------------------------------------------------
augroup Go
  autocmd!
  autocmd FileType go setlocal tabstop=8 softtabstop=8 shiftwidth=8 expandtab
  autocmd BufWritePre *.go :call CocAction('runCommand', 'editor.action.organizeImport')
augroup END


"-------------------------------------------------------------------------------
" MarkDown
"-------------------------------------------------------------------------------
augroup MarkDown
  autocmd!
  autocmd FileType markdown setlocal autoindent expandtab smarttab shiftwidth=4 softtabstop=4
  "autocmd Filetype markdown map <leader>w yiWi[<esc>Ea](<esc>pa)
  autocmd Filetype markdown inoremap ,f <Esc>/<++><CR>:nohlsearch<CR>c4l
  autocmd Filetype markdown inoremap ,n ---<Enter><Enter>
  autocmd Filetype markdown inoremap ,b **** <++><Esc>F*hi
  autocmd Filetype markdown inoremap ,s ~~~~ <++><Esc>F~hi
  autocmd Filetype markdown inoremap ,i ** <++><Esc>F*i
  autocmd Filetype markdown inoremap ,d `` <++><Esc>F`i
  autocmd Filetype markdown inoremap ,c ```<Enter><++><Enter>```<Enter><Enter><++><Esc>4kA
  autocmd Filetype markdown inoremap ,h ====<Space><++><Esc>F=hi
  autocmd Filetype markdown inoremap ,p ![](<++>) <++><Esc>F[a
  autocmd Filetype markdown inoremap ,a [](<++>) <++><Esc>F[a
  autocmd Filetype markdown inoremap ,1 #<Space><Enter><++><Esc>kA
  autocmd Filetype markdown inoremap ,2 ##<Space><Enter><++><Esc>kA
  autocmd Filetype markdown inoremap ,3 ###<Space><Enter><++><Esc>kA
  autocmd Filetype markdown inoremap ,4 ####<Space><Enter><++><Esc>kA
  autocmd Filetype markdown inoremap ,l --------<Enter>
augroup END


" RunCode --------------------{{{ 
  augroup RunCode
    map <F5> :call CompileRunGcc()<CR>
    func! CompileRunGcc()
      exec'w'
      if &filetype ==? 'c'
        exec '!g++ % -o %<'
        exec '!time ./%<'
      elseif &filetype ==? 'python'
        exec '!clear'
        exec '!time python3 %'
      elseif &filetype ==? 'sh'
        exec '!time bash %'
      elseif &filetype ==? 'html'
        exec '!chrome % &'
      elseif &filetype ==? 'go'
        exec '!time go run %'
      elseif &filetype ==? 'typescript'
        exec '!time tsc %'
        exec '!time node %'
      elseif &filetype ==? 'markdown'
        exec '!~/.vim/markdown.pl % > %.html'
        exec '!open -a Google\\ Chrome %.html'
      endif
    endfunc
  augroup END
" }}}
