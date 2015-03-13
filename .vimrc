" .vimrc
syntax enable
" set t_Co=16
set background=dark
"colorscheme solarized
"colorscheme odkq
colorscheme distinguished
" Use scripts in ~/.vim/ftplugin
filetype plugin indent on
highlight ExtraWhitespace ctermbg=lightred guibg=lightgreen
"hi ColorColumn ctermbg=6
match ExtraWhitespace /\s\+$/
au InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
au InsertLeave * match ExtraWhitespace /\s\+$/
set smartindent
" execute pathogen#infect()
