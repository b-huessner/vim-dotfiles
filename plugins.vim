" check whether vim-plug is installed and install it if necessary
let plugpath = expand('<sfile>:p:h'). '/autoload/plug.vim'
if !filereadable(plugpath)
    if executable('curl')
        let plugurl = 'https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
        call system('curl -fLo ' . shellescape(plugpath) . ' --create-dirs ' . plugurl)
        if v:shell_error
            echom "Error downloading vim-plug. Please install it manually.\n"
            exit
        endif
    else
        echom "vim-plug not installed. Please install it manually or install curl.\n"
        exit
    endif
endif

" Specify a directory for plugins
call plug#begin('~/.vim/plugged')

Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'ctrlpvim/ctrlp.vim' " fuzzy find files
Plug 'scrooloose/nerdcommenter'

Plug 'christoomey/vim-tmux-navigator'

Plug 'morhetz/gruvbox'

" NERDTree
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'ryanoasis/vim-devicons'
Plug 'unkiwii/vim-nerdtree-sync'

" Vim surround
Plug 'tpope/vim-surround'

" Tab support
Plug 'pacha/vem-tabline'

" FuzzySearch
set rtp+=~/.fzf
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Close Buffer without closing split
Plug 'qpkorr/vim-bufkill'

" Easymotion
Plug 'easymotion/vim-easymotion'
"
" Syntax highlighting
" JSX
Plug 'MaxMEllon/vim-jsx-pretty'
" Typescript
Plug 'HerringtonDarkholme/yats.vim'
" Nginx
Plug 'chr4/nginx.vim'
" YML
Plug 'stephpy/vim-yaml'
" Dockerfile
Plug 'ekalinin/dockerfile.vim'
" Jenkinsfile
Plug 'martinda/Jenkinsfile-vim-syntax'

" Dart
Plug 'dart-lang/dart-vim-plugin'

" JsDoc
Plug 'heavenshell/vim-jsdoc', {
  \ 'for': ['javascript'],
  \ 'do': 'make install'
\}

" Git
Plug 'tpope/vim-fugitive'
Plug 'mhinz/vim-signify'
Plug 'airblade/vim-gitgutter'

" Initialize plugin system
call plug#end()
