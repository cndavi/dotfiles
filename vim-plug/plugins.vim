call plug#begin('C:\Users\Carolyn\AppData\Local\nvim\autoload\plugged')

    " Better Syntax Support
    Plug 'sheerun/vim-polyglot'

    " File Explorer
    Plug 'scrooloose/NERDTree'

    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'

    " Intellisense with coc
    Plug 'neoclide/coc.nvim', {'branch': 'release'}

    " Project Management with Startify
    Plug 'mhinz/vim-startify'

    " Status Line with Airline
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'

    " FZF
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    Plug 'airblade/vim-rooter'

call plug#end()

