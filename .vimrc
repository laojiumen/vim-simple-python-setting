set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'davidhalter/jedi-vim'

Plugin 'vim-scripts/indentpython.vim'

Plugin 'scrooloose/syntastic'

Plugin 'nvie/vim-flake8'

Plugin 'scrooloose/nerdtree'

Plugin 'jistr/vim-nerdtree-tabs'

Plugin 'kien/ctrlp.vim'

Plugin 'tpope/vim-fugitive'

"Plugin 'jnurmine/Zenburn'

"Plugin 'altercation/vim-colors-solarized'

call vundle#end()            " required
filetype plugin indent on    " required

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" encode
set encoding=utf-8


"python with virtualenv support
py << EOF
import os
import sys
if 'VIRTUAL_ENV' in os.environ:
  project_base_dir = os.environ['VIRTUAL_ENV']
  activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
  execfile(activate_this, dict(__file__=activate_this))
EOF

let python_highlight_all=1
syntax on


let mapleader = "." 
let g:mapleader = "." 
let g:nerdtree_tabs_open_on_console_startup=1
map <leader>n <plug>NERDTreeTabsToggle <CR> 

set nu
set clipboard=unnamed
