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

set autoindent                " copy indendation from last line

set expandtab                 " <TAB> will insert 'softtabstop' spaces
set tabstop=2                 " width of the <TAB> character
set shiftwidth=2              " affects >>, <<, ==
set softtabstop=2
set backspace=2               " make backspace work like most other app

" Share clipboard with osx
set clipboard=unnamed

" Vim plug
" Usage 
"   :PlugInstall 
"   :PlugClean
"
" Plugins
call plug#begin('~/.vim/plugged')

" Look and feel
Plug 'dracula/vim'

" Languages
Plug 'derekwyatt/vim-scala'

" Mix
Plug 'scrooloose/nerdtree'

call plug#end()

map <C-e> :NERDTreeToggle<CR>
