call plug#begin('~/.config/nvim/plugged')

Plug 'altercation/vim-colors-solarized' " colour theme
Plug 'scrooloose/syntastic' " syntax check
Plug 'tpope/vim-surround' " change surrounding quotes, etc.
Plug 'tpope/vim-repeat' " repeat plug commands
Plug 'dougireton/vim-chef' " recognise chef cookbook file types
Plug 'Chiel92/vim-autoformat' " auto format/indent
Plug 'Shougo/neocomplete.vim' " autocomplete
Plug 'derekwyatt/vim-scala' " Scala formatting

" Add plugins to &runtimepath
call plug#end()

" Colour scheme, syntax and line numbers
syntax on
set number
set background=dark
colorscheme solarized

" Default tab control
filetype plugin indent on
set expandtab " insert spaces rather than tabs for <Tab>
set smarttab " tab respects 'tabstop', 'shiftwidth', and 'softtabstop'
set tabstop=4 " the visible width of tabs
set softtabstop=4 " edit as if the tabs are 4 characters wide
set shiftwidth=4 " number of spaces to use for indent and unindent
set shiftround " round indent to a multiple of 'shiftwidth'
set completeopt+=longest

" Python
:autocmd Filetype python set ts=4 sts=4 sw=4

" Ruby
:autocmd Filetype ruby set ts=2 sts=2 sw=2

" YAML
:autocmd Filetype yaml set ts=2 sts=2 sw=2

" Syntastic settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['jshint']
let g:syntastic_python_checkers = ['flake8', 'pylint']
let g:syntastic_yaml_checkers = ['yamllint']
let g:syntastic_ruby_checkers = ['mri', 'rubocop']
let g:syntastic_ruby_rubocop_args = '-r cookstyle'
let g:syntastic_python_flake8_post_args="--max-line-length=120"
let g:syntastic_python_pylint_post_args="--max-line-length=120"
