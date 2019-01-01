"=============================================================================
"@ Author: Nordwind
"@ E-Mial: ZWFnbGV3aW5ncy55aUBnbWFpbC5jb20=
"@ Created  Time: 19:54:26 30-12-2018
"@ Last Modified: 13:44:34 31-12-2018
"@ Description:
"         - File Name: plugins.vim
"         - Plugin manage and plugins settings
"=============================================================================


" Plugin Manage --------------------{{{ 
  call plug#begin()

  " VIM --------------------{{{ 
  Plug 'jiangmiao/auto-pairs'
  Plug 'junegunn/vim-easy-align'
  Plug 'scrooloose/nerdcommenter'
  Plug 'tpope/vim-surround'
  Plug 'yuttie/comfortable-motion.vim'
  Plug 'CodeFalling/fcitx-vim-osx'
  Plug 'majutsushi/tagbar', {'on': 'TagbarToggle'}
  " }}}

  " Lint --------------------{{{ 
  Plug 'w0rp/ale', {'for': ['vim', 'python', 'go', 'javascript', 'typescript']}
  " }}}

  " Search --------------------{{{ 
  Plug 'Yggdroot/LeaderF', {'do': './install.sh'}
  " }}}

  " Code Complete --------------------{{{ 
  "Plug 'Valloric/YouCompleteMe'
  "Plug 'Shougo/echodoc.vim'
  "Plug 'SirVer/ultisnips'
  Plug 'neoclide/coc.nvim', {'tag': '*', 'do': { -> coc#util#install()}, 'for': ['vim', 'c', 'go', 'vue', 'python', 'javascript', 'typescript', 'css', 'html']}
  " }}}

  " View Style --------------------{{{ 
  Plug 'rakr/vim-one'
  Plug 'nordwind80/space-vim-dark'
  "Plug 'morhetz/gruvbox'
  Plug 'vim-airline/vim-airline'
  Plug 'ryanoasis/vim-devicons'
  Plug 'mhinz/vim-startify'
  Plug 'scrooloose/nerdtree', {'on': 'NERDTreeToggle'}
  Plug 'luochen1990/rainbow'
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
  Plug 'alfredodeza/pytest.vim', {'for': 'python'}

  " MarkDown
  Plug 'plasticboy/vim-markdown', {'for': 'markdown'}
  Plug 'godlygeek/tabular', {'for': 'markdown'}
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

  " Bars setting
  runtime /config/plugins/tagbar.vim
  runtime /config/plugins/nerdtree.vim

  " Other plugins setting
  runtime /config/plugins/view.vim
  runtime /config/plugins/features.vim

  " Syntax setting
  runtime /config/plugins/Go.vim
  runtime /config/plugins/Python.vim
  runtime /config/plugins/MarkDown.vim

" }}}

