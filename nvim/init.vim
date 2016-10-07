call plug#begin('~/.config/nvim/plugged')

Plug 'altercation/vim-colors-solarized' " colour theme
Plug 'scrooloose/syntastic' " syntax check
Plug 'tpope/vim-surround' " change surrounding quotes, etc.
Plug 'tpope/vim-repeat' " repeat plug commands
Plug 'dougireton/vim-chef' " recognise chef cookbook file types

" Add plugins to &runtimepath
call plug#end()

" Colour scheme, syntax and line numbers
syntax on
set number
set background=dark
colorscheme solarized

" Tab control
set expandtab " insert spaces rather than tabs for <Tab>
set smarttab " tab respects 'tabstop', 'shiftwidth', and 'softtabstop'
set tabstop=4 " the visible width of tabs
set softtabstop=4 " edit as if the tabs are 4 characters wide
set shiftwidth=4 " number of spaces to use for indent and unindent
set shiftround " round indent to a multiple of 'shiftwidth'
set completeopt+=longest

" Syntastic settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['jshint']
let g:syntastic_yaml_checkers = ['yamllint']
