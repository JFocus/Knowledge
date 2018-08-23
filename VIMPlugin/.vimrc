set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'altercation/vim-colors-solarized'

Plugin 'scrooloose/nerdtree'

Plugin 'Valloric/YouCompleteMe'

call vundle#end()
filetype plugin indent on

"solorized settings
syntax enable
set background=light
let g:solarized_termcolors=256
colorscheme solarized

"Nerdtree settings 
map <C-n> : NERDTreeToggle<CR>
