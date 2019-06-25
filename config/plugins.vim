"=============================================================================
"@ Author: Nordwind
"@ E-Mial: bm9yZHdpbmQubWVAZ21haWwuY29t
"@ Created  Time: 19:54:26 30-12-2018
"@ Last Modified: 21:04:27 24-06-2019 
"@ Description:
"         - File Name: plugins.vim
"         - Plugin manage and plugins settings
"=============================================================================


" Plugin Manage --------------------{{{ 
  call plug#begin()

  " VIM --------------------{{{ 
    Plug 'junegunn/vim-easy-align'
    Plug 'scrooloose/nerdcommenter'
    Plug 'tpope/vim-surround'
    Plug 'yuttie/comfortable-motion.vim'

    " WhichKey
    Plug 'liuchengxu/vim-which-key', {'on': ['WhichKey', 'WhichKey!']}

    " Multiple Cursors
    Plug 'terryma/vim-multiple-cursors'

    " vim slime
    Plug 'jpalardy/vim-slime'
  " }}}

  " TextObject -------------------- {{{ 
    Plug 'wellle/targets.vim'
    "Plug 'kana/vim-textobj-user'
    " 增加行文本对象: l   dal yal cil
    "Plug 'kana/vim-textobj-line'
    " 增加文件文本对象: e   dae yae cie
    "Plug 'kana/vim-textobj-entire'
    " 增加缩进文本对象: i   dai yai cii - 相同缩进属于同一块
    "Plug 'kana/vim-textobj-indent'
 
  
  " }}}"

  " Lint --------------------{{{ 
    Plug 'w0rp/ale', {'for': ['vim', 'python', 'go', 'javascript', 'typescript']}
  " }}}

  " Search --------------------{{{ 
    Plug '/usr/local/opt/fzf'
    Plug 'junegunn/fzf.vim'
    Plug 'tracyone/fzf-funky',{'on': 'CtrlPFunky'}
  " }}}

  " Code Complete --------------------{{{ 
    Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}
    Plug 'honza/vim-snippets'
  " }}}

  " View Style --------------------{{{ 
    Plug 'nordwind80/space-vim-dark'
    Plug 'vim-airline/vim-airline'
    Plug 'ryanoasis/vim-devicons'
    Plug 'mhinz/vim-startify'
    Plug 'scrooloose/nerdtree', {'on': 'NERDTreeToggle'}
    Plug 'nathanaelkane/vim-indent-guides'
  " }}}

  " Git --------------------{{{ 
    Plug 'tpope/vim-fugitive'
    Plug 'airblade/vim-gitgutter'
  " }}}

  " Syntax --------------------{{{ 
    " Go
    Plug 'fatih/vim-go', {'do': ':GoUpdateBinaries', 'for': 'go'}

    " Python
    Plug 'nordwind80/python-syntax', {'for': 'python'}
    Plug 'alfredodeza/pytest.vim', {'for': 'python'}
    Plug 'ambv/black', {'for': 'python'}

    " MarkDown
    Plug 'godlygeek/tabular', {'for': 'markdown'}
    Plug 'plasticboy/vim-markdown', {'for': 'markdown'}
    Plug 'iamcco/mathjax-support-for-mkdp', {'for': 'markdown'}
    Plug 'iamcco/markdown-preview.vim', {'for': 'markdown'}
  " }}}

  call plug#end()
" }}} 

" Plugins setting --------------------{{{ 
  " Complete setting
  "runtime /config/plugins/YouCompleteMe.vim
  runtime /config/plugins/coc.vim

  " Lint setting
  runtime /config/plugins/ale.vim

  " Search setting
  runtime /config/plugins/search.vim

  " TreeBar setting
  runtime /config/plugins/nerdtree.vim

  " Other plugins setting
  runtime /config/plugins/view.vim
  runtime /config/plugins/features.vim

  " Which-key
  runtime /config/plugins/whichkey.vim

  runtime /config/plugins/vim-slime.vim

  " Syntax setting
  runtime /config/plugins/Go.vim
  runtime /config/plugins/Python.vim
  runtime /config/plugins/MarkDown.vim

" }}}

