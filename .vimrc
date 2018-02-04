" .vimrc
set nocompatible
filetype off
syntax enable
" set t_Co=16
set background=dark
" 256 color theme based on 'distinguished'
colorscheme odkq
" Use scripts in ~/.vim/ftplugin
filetype plugin indent on
highlight ExtraWhitespace ctermbg=lightred guibg=lightgreen
"hi ColorColumn ctermbg=6
match ExtraWhitespace /\s\+$/
au InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
au InsertLeave * match ExtraWhitespace /\s\+$/
"set ts=4
set textwidth=72
set smartindent
" set breakindent
" backspace over everything
set backspace=indent,eol,start
" execute pathogen#infect()
"
"set cc=80

set laststatus=2
setlocal tabstop=4
setlocal softtabstop=4
setlocal shiftwidth=4
setlocal textwidth=78
setlocal smarttab
setlocal expandtab
