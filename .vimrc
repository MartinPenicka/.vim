" Vundle mandatory pre-settings
set nocompatible
filetype off

" Vundle init
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" List of all plugins
" Vundle itself
Plugin 'gmarik/vundle'

" ##################################################
" All plugins must be placed inside this section
" ##################################################

" NERDTree
Plugin 'scrooloose/nerdtree.git'

filetype plugin indent on
" ##################################################
" All vim settings must be placed after this section
" ##################################################

