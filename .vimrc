if $SHELL =~ 'bin/fish'
	set shell=/bin/sh
endif

set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
set rtp+=/usr/local/opt/fzf

filetype plugin on
syntax on

call vundle#begin()
Plugin 'gmarik/Vundle.vim'

Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-surround'
Plugin 'w0rp/ale'
Plugin 'altercation/vim-colors-solarized'
Plugin 'itchyny/lightline.vim'
Plugin 'junegunn/fzf.vim'
Plugin 'mattn/emmet-vim'
Plugin 'tpope/vim-commentary'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'myusuf3/numbers.vim'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'jiangmiao/auto-pairs'

call vundle#end()
filetype plugin indent on

" indents
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set textwidth=0
set autoindent

" misc
set showcmd		" shows <leader> key as pressed
nnoremap <space> <nop>
let mapleader=" "
:autocmd InsertEnter * set cul
:autocmd InsertLeave * set nocul
:set hlsearch
set ignorecase

" theming
colorscheme Tomorrow-Night
if !has('gui_running')
  set t_Co=256
endif
set laststatus=2
set noshowmode

" ALE
let g:ale_sign_error = '✘'
let g:ale_sign_warning = '⚠'
highlight ALEErrorSign ctermbg=NONE ctermfg=red
highlight ALEWarningSign ctermbg=NONE ctermfg=yellow
let g:ale_linters = {
\  'javascript': ['eslint'],
\}
let g:ale_fixers = {
\  'javascript': ['eslint'],
\}
nnoremap <leader>l :ALEDetail<CR>
nnoremap <leader>ll :ALEFix<CR>

" NERDTree
nnoremap <leader>n :NERDTreeToggle<CR>
nnoremap <leader>m :NERDTreeFind<CR>
let NERDTreeAutoDeleteBuffer = 1
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1

" numbers
let g:numbers_exclude = ['tagbar', 'gundo', 'minibufexpl', 'nerdtree']
nnoremap <F3> :NumbersToggle<CR>

" fzf
nnoremap <C-p> :Files<Cr>
