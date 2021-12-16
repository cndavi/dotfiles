source $HOME\AppData\Local\nvim\general\settings.vim
source $HOME\AppData\Local\nvim\keys\mappings.vim
source $HOME\AppData\Local\nvim\vim-plug\plugins.vim
source $HOME\AppData\Local\nvim\plug-config\coc.vim
source $HOME\AppData\Local\nvim\plug-config\fzf.vim
source $HOME\AppData\Local\nvim\plug-config\nerdtree.vim
source $HOME\AppData\Local\nvim\plug-config\start-screen.vim
source $HOME\AppData\Local\nvim\themes\airline.vim


" General "{{{
" ---------------------------------------------------------------------

" Line numbers
set number

"}}}



" Highlights "{{{
" ---------------------------------------------------------------------
set cursorline
"set cursorcolumn

" Set cursor line color on visual mode
highlight Visual cterm=NONE ctermbg=236 ctermfg=NONE guibg=Grey40

highlight LineNr cterm=none ctermfg=240 guifg=#2b506e guibg=#000000

augroup BgHighlight
  autocmd!
  autocmd WinEnter * set cul
  autocmd WinLeave * set nocul
augroup END

if &term =~ "screen"
  autocmd BufEnter * if bufname("") !~ "^?[A-Za-z0-9?]*://" | silent! exe '!echo -n "\ek[`hostname`:`basename $PWD`/`basename %`]\e\\"' | endif
  autocmd VimLeave * silent!  exe '!echo -n "\ek[`hostname`:`basename $PWD`]\e\\"'
endif

"}}}



" NeoSolarized theme "{{{
" ---------------------------------------------------------------------

" true color
if exists("&termguicolors") && exists("&winblend")
  syntax enable
  set termguicolors
  set winblend=0
  set wildoptions=pum
  set pumblend=5
  set background=dark
  " Use NeoSolarized
  let g:neosolarized_termtrans=1
  runtime ./colors/NeoSolarized.vim
  colorscheme NeoSolarized
endif

"}}}



" Configure Provider "{{{
" ---------------------------------------------------------------------

let s:local_vimrc = expand('$LOCALAPPDATA\nvim\init.local.vim')
if filereadable(fnameescape(s:local_vimrc))
  execute 'source ' . fnameescape(s:local_vimrc)
endif
unlet! s:local_vimrc

"}}}