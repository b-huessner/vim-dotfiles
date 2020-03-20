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


call plug#begin()

" Nerdtree
Plug 'preservim/nerdtree'
" Auto Pairs
Plug 'jiangmiao/auto-pairs'
" Comments
Plug 'tpope/vim-commentary'
" Color Scheme
Plug 'mhartington/oceanic-next'
" Easymotion
Plug 'easymotion/vim-easymotion'
" Tab support
Plug 'pacha/vem-tabline'

" Syntax highlighting
" JSX
Plug 'MaxMEllon/vim-jsx-pretty'
" Javascript
Plug 'othree/yajs.vim'
" Nginx
Plug 'chr4/nginx.vim'
" YML
Plug 'stephpy/vim-yaml'
" Dockerfile
Plug 'ekalinin/dockerfile.vim'

" FuzzySearch
set rtp+=~/.fzf
Plug 'junegunn/fzf.vim'

" ALE
Plug 'dense-analysis/ale'
" Deoplete
if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif
let g:deoplete#enable_at_startup = 1

" Ultisnips
Plug 'Shougo/neosnippet.vim'

" Git
Plug 'tpope/vim-fugitive'
Plug 'mhinz/vim-signify'
Plug 'airblade/vim-gitgutter'

" Language Server support
Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }

call plug#end()
