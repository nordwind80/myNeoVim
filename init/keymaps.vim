"=============================================================================
"@ Author: Nordwind
"@ E-Mial: bm9yZHdpbmQubWVAZ21haWwuY29t 
"@ Created  Time: 19:51:13 30-12-2018
"@ Last Modified: 17:25:10 25-06-2019  
"@ Description:
"         - File Name: mappings.vim
"         - Neovim Key mappings settings
"=============================================================================


" Edit --------------------{{{ 
  "Leader key
  let mapleader = ' '
  let localleader = '-'

  " 替换ESC键退出INSERT模式
  inoremap jj <Esc>

  " Terminal
  " nmap <leader>ep :vert sp | term ipython<CR>
  " nmap <leader>et :vert sp | term<CR>
  " nmap <leader>ep :vs|:te ipython<CR>

  " Exit Terminal
  tnoremap <m-q> <c-\><c-n>

  " 切换pwd到当前文件路径
  nnoremap <leader>cd :cd %:h<CR>

  " 屏蔽方向键 Normal Insert Visual
  nnoremap <Left> <Nop>
  nnoremap <Right> <Nop>
  nnoremap <Up> <Nop>
  nnoremap <Down> <Nop>
  " inoremap <Left> <Nop>
  " inoremap <Right> <Nop>
  " inoremap <Up> <Nop>
  " inoremap <Down> <Nop>
  vnoremap <Left> <Nop>
  vnoremap <Right> <Nop>
  vnoremap <Up> <Nop>
  vnoremap <Down> <Nop>

  " 命令行模式增强，ctrl - a到行首， -e 到行尾
  cnoremap <C-j> <t_kd>
  cnoremap <C-k> <t_ku>
  cnoremap <C-a> <Home>
  cnoremap <C-e> <End>

  " 快速在当前行上下插入空行
  nnoremap [<space> :<c-u>put! =repeat(nr2char(10), v:count1)<cr>'[
  nnoremap ]<space> :<c-u>put =repeat(nr2char(10), v:count1)<cr>

  " 左右缩进一行或者选区
  vnoremap < <gv
  vnoremap > >gv

  " 上下移动一行
  nnoremap J :m .+1<CR>==
  nnoremap K :m .-2<CR>==

  " 上下移动一个选区
  vnoremap J :m '>+1<CR>gv=gv
  vnoremap K :m '<-2<CR>gv=gv

  " 快速移动行首和行尾
  nnoremap H ^
  nnoremap L $

  "Ctrl + H             光标左移一格
  imap <c-h> <Left>
  " Ctrl + J            光标下移一行
  imap <c-j> <Down>
  " Ctrl + K            光标上移一行
  imap <c-k> <Up>
  " Ctrl + L            光标右移一格
  imap <c-l> <Right>
  " Alt  + H            光标移到当前行行首
  imap ˙ <ESC>I
  " Alt  + J            光标移到下一行的行首
  imap ∆ <ESC><Down>A
  " Alt  + K            光标移到上一行的行尾
  imap ˚ <ESC><Up>A
  " Alt  + L            光标移到当前行的行尾
  imap ¬ <ESC>A

  set clipboard=unnamed

  " 复制选中区到系统剪切板中
  vnoremap <leader>y "+y
  nnoremap <leader>yy "+yy

  " 将剪贴板内容粘贴到指定位置
  nnoremap <leader>p "+p

  " select all 全选
  nnoremap <Leader>sa ggVG

  " 选中并高亮最后一次插入的内容
  nnoremap gv `[v`]

  " select block
  nnoremap <leader>v V`}

  " .vimrc & .zshrc 快速打开 并保存生效
  nnoremap <leader>evm :vsp ~/.config/nvim/config/mappings.vim<CR>
  nnoremap <leader>evp :vsp ~/.config/nvim/config/plugins.vim<CR>
  nnoremap <leader>evo :vsp ~/.config/nvim/config/options.vim<CR>
  nnoremap <leader>sv :source ~/.config/nvim/init.vim<CR>
  nnoremap <leader>ez :vsp ~/.zshrc<CR>
  nnoremap <leader>sz :source ~/.zshrc<CR>

  " 去掉和恢复搜索高亮
  noremap <silent><leader>/ :nohls<CR>
  noremap <silent><leader>// :set hls<CR>

  "文本对齐
  xnoremap <leader>a <Plug>(EasyAlign)
  nnoremap <leader>a <Plug>(EasyAlign)

  " Quickly close the current window
  nnoremap <leader>q :q<CR>

  " Quickly save the current file
  nnoremap <leader>w :w<CR>

  " remap U to <C-r> for easier redo
  nnoremap U <C-r>

  " 当前时间
  iabbrev lst    <c-r>=strftime('%H:%M:%S %d-%m-%Y')<CR>
" }}}


" Window --------------------{{{ 
  " 允许横向和纵向分隔布局
  set splitbelow
  set splitright

  " 窗口分隔
  nnoremap <leader>\ :vs<CR>
  nnoremap <leader>- :sp<CR>

  " 窗口跳转
  nnoremap <C-J> <C-W><C-J> " 组合快捷键：- Ctrl-j 切换到下方的分割窗口
  nnoremap <C-K> <C-W><C-K> " 组合快捷键：- Ctrl-k 切换到上方的分割窗口
  nnoremap <C-L> <C-W><C-L> " 组合快捷键：- Ctrl-l 切换到右侧的分割窗口
  nnoremap <C-H> <C-W><C-H> " 组合快捷键：- Ctrl-h 切换到左侧的分割窗口

  " 调整窗口大小
  noremap <leader>= :resize +3<CR>
  noremap <leader>- :resize -3<CR>
  noremap <leader>. :vertical resize +3<CR>
  noremap <leader>, :vertical resize -3<CR>
" }}}


" Tab --------------------{{{ 
  " 新建Tab
  augroup NewTab
    autocmd!
    autocmd TabLeave * let g:last_active_tab = tabpagenr()
  augroup END

  " 新建tab  Ctrl+t
  nnoremap <C-t>     :tabnew<CR>
  inoremap <C-t>     <Esc>:tabnew<CR>

  " Tab切换
  map <leader>th :tabfirst<cr>
  map <leader>tl :tablast<cr>

  map <leader>tj :tabnext<cr>
  map <leader>tk :tabprev<cr>
  map <leader>tn :tabnext<cr>
  map <leader>tp :tabprev<cr>

  map <leader>te :tabedit<cr>
  map <leader>td :tabclose<cr>
  map <leader>tm :tabm<cr>

  " normal模式下切换到指定的 Tab
  noremap <leader>1 1gt
  noremap <leader>2 2gt
  noremap <leader>3 3gt
  noremap <leader>4 4gt
  noremap <leader>5 5gt
  noremap <leader>6 6gt
  noremap <leader>7 7gt
  noremap <leader>8 8gt
  noremap <leader>9 9gt
  noremap <leader>0 :tablast <C-r>

  let g:last_active_tab = 1
  nnoremap <silent> <leader>tt :execute 'tabnext ' . g:last_active_tab<cr>
  vnoremap <silent> <leader>tt :execute 'tabnext ' . g:last_active_tab<cr>
" }}} 


" Buffer --------------------{{{ 
  noremap <leader>bp :bp<CR>
  noremap <leader>bn :bn<CR>

  noremap <leader>bl :ls<CR>

  noremap <leader>b1 :b1<CR>
  noremap <leader>b2 :b2<CR>
  noremap <leader>b3 :b3<CR>
  noremap <leader>b4 :b4<CR>
  noremap <leader>b5 :b5<CR>
  noremap <leader>b6 :b6<CR>
  noremap <leader>b7 :b7<CR>
  noremap <leader>b8 :b8<CR>
  noremap <leader>b9 :b9<CR>
  noremap <leader>b0 :b0<CR>

  " delete buffers
  noremap <leader>bd1 :bd1<CR>
  noremap <leader>bd2 :bd2<CR>
  noremap <leader>bd3 :bd3<CR>
  noremap <leader>bd4 :bd4<CR>
  noremap <leader>bd5 :bd5<CR>
  noremap <leader>bd6 :bd6<CR>
  noremap <leader>bd7 :bd7<CR>
  noremap <leader>bd8 :bd8<CR>
  noremap <leader>bd9 :bd9<CR>
  noremap <leader>bd0 :bd0<CR>

  " delete buffer
  noremap <leader>bd :bdelete<CR>
" }}}


if exists('$TMUX')
"  function! TmuxOrSplitSwitch(wincmd, tmuxdir)
"    let previous_winnr= winnr()
"    silent! execute "wincmd " . a: wincmd
" if previous_winnr == winnr()
"      call system("tmux select-pane -" . a: tmuxdir)
"      redraw!
"    endif
"  endfunction
"
"  let previous_title = substitute(system("tmux display-message - p '#{pane_title}'"), '\n', '', '')
"  let & t_ti = "\<Esc>]2; vim\<Esc>\\" . & t_ti
"  let & t_te = "\<Esc>]2; ". previous_title . "\< Esc >\\" . & t_te
"
"  nnoremap <silent> <C-h>: call TmuxOrSplitSwitch('h', 'L') <cr>
"  nnoremap <silent> <C-j>: call TmuxOrSplitSwitch('j', 'D') <cr>
"  nnoremap <silent> <C-k>: call TmuxOrSplitSwitch('k', 'U') <cr>
"  nnoremap <silent> <C-l>: call TmuxOrSplitSwitch('l', 'R') <cr>
" else
  map <C-h> <C-w>h
  map <C-j> <C-w>j
  map <C-k> <C-w>k
  map <C-l> <C-w>l
endif
