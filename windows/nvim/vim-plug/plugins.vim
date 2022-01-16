call plug#begin('C:\Users\Carolyn\AppData\Local\nvim\autoload\plugged')

    " Better Syntax Support
    Plug 'sheerun/vim-polyglot'

    " File Explorer
    Plug 'scrooloose/NERDTree'

    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'

    " Lualine
    Plug 'hoob3rt/lualine.nvim'

    " Intellisense with coc
    Plug 'neoclide/coc.nvim', {'branch': 'release'}

    " Project Management with Startify
    Plug 'mhinz/vim-startify'

    " TEST
    Plug 'kristijanhusak/defx-git'
    Plug 'kristijanhusak/defx-icons'
    Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }

call plug#end()

