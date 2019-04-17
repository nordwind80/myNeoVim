"=============================================================================
"@ Author: Nordwind
"@ E-Mial: bm9yZHdpbmQubWVAZ21haWwuY29t
"@ Created  Time: 19:54:26 30-12-2018
"@ Last Modified: 09:29:48 02-01-2019
"@ Description:
"         - File Name: plugins.vim
"         - Plugin manage and plugins settings
"=============================================================================


" Plugin Manage --------------------{{{ 
  call plug#begin()

  " VIM --------------------{{{ 
    Plug 'junegunn/vim-easy-align'
    "Plug 'jiangmiao/auto-pairs'
    Plug 'scrooloose/nerdcommenter'
    Plug 'tpope/vim-surround'
    Plug 'yuttie/comfortable-motion.vim'
    Plug 'CodeFalling/fcitx-vim-osx'
    Plug 'majutsushi/tagbar', {'on': 'TagbarToggle'}
    Plug 'wellle/targets.vim'
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
    "Plug 'neoclide/coc.nvim', {'tag': '*', 'do': { -> coc#util#install()}, 'for': ['vim', 'c', 'go', 'vue', 'python', 'javascript', 'typescript', 'css', 'html']}
    "Plug 'neoclide/coc.nvim', {'do': { -> coc#util#build()}}
    Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}
    Plug 'honza/vim-snippets'
  " }}}

  " View Style --------------------{{{ 
    Plug 'rakr/vim-one'
    Plug 'nordwind80/space-vim-dark'
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
    "Plug 'fatih/vim-go', {'do': ':GoUpdateBinaries', 'for': 'go'}
    Plug 'fatih/vim-go', {'do': ':GoUpdateBinaries', 'for': 'go'}
    "Plug 'fatih/vim-go', {'do': ':GoUpdateBinaries'}

    " Python
    Plug 'vim-python/python-syntax', {'for': 'python'}
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

