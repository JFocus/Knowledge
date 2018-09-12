set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'altercation/vim-colors-solarized'

Plugin 'scrooloose/nerdtree'

Plugin 'Valloric/YouCompleteMe'

Plugin 'vim-syntastic/syntastic'

Plugin 'kien/ctrlp.vim'

Plugin 'vim-scripts/taglist.vim'

call vundle#end()
filetype plugin indent on

"solorized settings
syntax enable
set background=light
let g:solarized_termcolors=256
colorscheme solarized

"Nerdtree settings 
map <C-n> : NERDTreeToggle<CR>

"Chinese Display settings
set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
set termencoding=utf-8
set encoding=utf-8

"Syntastic settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

"CtrlP settings
let g:ctrlp_map = '<c-p>'

"Taglist settings
"let Tlist_Ctags_Cmd="/usr/bin/ctags"

"YouCompleteMe settings
let g:ycm_global_ycm_extra_conf='/home/jfocus/.vim/bundle/YouCompleteMe/third_party/ycmd/.ycm_extra_conf.py'







