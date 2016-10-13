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

"Plugin 'ivanov/vim-ipython'

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
let NERDTreeIgnore=['\.pyc']
map <leader>n <plug>NERDTreeTabsToggle <CR> 

set nu
set clipboard+=unnamed

set cul
set shortmess=atI
set ruler
set showcmd
set showmatch



"新建.c,.h,.sh,.java文件，自动插入文件头 
autocmd BufNewFile *.cpp,*.[ch],*.sh,*.rb,*.java,*.py exec ":call SetTitle()" 
""定义函数SetTitle，自动插入文件头 
func SetTitle() 
	"如果文件类型为.sh文件 
	if &filetype == 'sh' 
		call setline(1,"\#!/bin/bash") 
		call append(line("."), "") 
        elseif &filetype == 'python'
        	call setline(1,"#!/usr/bin/env python")
	        call append(line("."),"# coding=utf-8")
	    	call append(line(".")+1, "") 
    	endif
endfunc 
autocmd BufNewFile * normal G
