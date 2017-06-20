let g:vimwiki_list = [{'path': '~/vimwiki/',
            \ 'template_path': '~/vimwiki/templates',
            \ 'template_default': 'def_template',
            \ 'template_ext': '.html'}]
"VUNDLE

set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Add all your plugins here (note older versions of Vundle used Bundle instead of Plugin)

Plugin 'tmhedberg/SimpylFold'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'scrooloose/syntastic'
Plugin 'nvie/vim-flake8'
Bundle 'Valloric/YouCompleteMe'
Plugin 'itchyny/lightline.vim'
Plugin 'vimwiki/vimwiki'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required


"lightline
set laststatus=2
set noshowmode



"set colorsheme and syntax higlighting
colo monokai
let python_highlight_all=1
syntax on
set number
set relativenumber
"Splittinge
set splitbelow
set splitright

	" split navigation
	nnoremap <C-J> <C-W><C-J>
	nnoremap <C-K> <C-W><C-K>
	nnoremap <C-L> <C-W><C-L>
	nnoremap <C-H> <C-W><C-H>

"Enable Folding for python 
au BufNewFile,BufRead *.py set foldmethod=indent | set foldlevel=99
"space to fold
nnoremap <space> za
 

"python pep8 
au BufNewFile,BufRead *.py
    \ set tabstop=4|
    \ set softtabstop=4|
    \ set shiftwidth=4|
    \ set textwidth=79|
    \ set expandtab|
    \ set autoindent|
    \ set fileformat=unix



execute pathogen#infect()
call pathogen#helptags()
