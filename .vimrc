set wrap

" Config
syntax on                     " syntax highlighting
syntax enable                 " syntac highlighting

set title                     " show title in console title bar.
set cursorline                " highlights line
set number                    " show line number

set splitright                " always split to the right
set splitbelow                " always split to the bottom

set lsp=0                     " space it out a little more (easier to read)
set cmdheight=1               " the command bar is 2 high.
set autoindent                " copy indentation form last line
set smartindent               " automatically inserts one extra level in some cases

set expandtab                 " <TAB> will insert 'softtabstop' spaces
set tabstop=2                 " width of the <TAB> character
set shiftwidth=2              " affects >>, <<, ==
set softtabstop=2
set backspace=2               " make backspace work like most other app

set laststatus=2              " force to show airline

" Share clipboard with osx
set clipboard=unnamed

" Vim plug
" Usage: 
"   :PlugInstall 
"   :PlugClean
"
" Plugins
call plug#begin('~/.vim/plugged')

" Look and feel
Plug 'dracula/vim'
Plug 'vim-airline/vim-airline'            " powerline statusline
Plug 'vim-airline/vim-airline-themes'     " powerline statusline themes

call plug#end()

color dracula

" Strait airline separators
let g:airline_left_sep='' 
let g:airline_right_sep=''
