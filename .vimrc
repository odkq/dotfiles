" .vimrc
syntax on
colorscheme elflord
" Use scripts in ~/.vim/ftplugin
filetype plugin indent on
highlight ExtraWhitespace ctermbg=lightred guibg=lightgreen
match ExtraWhitespace /\s\+$/
au InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
au InsertLeave * match ExtraWhitespace /\s\+$/
