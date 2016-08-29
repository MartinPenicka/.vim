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
" TagBar
Plugin 'majutsushi/tagbar'

Plugin 'itchyny/lightline.vim'


filetype plugin indent on
" ##################################################
" All vim settings must be placed after this section
" ##################################################

" Colors settings
colorscheme gruvbox
set background=dark

set number
set ts=4
set expandtab
set smartindent
set shiftwidth=4
set cursorline
set showmatch
set colorcolumn=100
au BufRead *.py,*.cc,*.c,*.C,*.h,*.inl,*.cpp syn match ErrorSpaces /\\s\\+$/ display
au BufRead *.py,*.cc,*.c,*.C,*.h,*.inl,*.cpp syn match ErrorLongLine /^.\\{99\\}.\\+/ display
au BufRead *.py,*.cc,*.c,*.C,*.h,*.inl,*.cpp syn cluster	cCommentGroup contains=cToDo
hi def link ErrorSpaces Error
hi def link ErrorLongLine Error

" GUI settings
set guifont=DejaVu\ Sans\ Mono\ 11
set lines=999 columns=999 "Fulscreen
set guioptions-=T

" Keyboard mappings
map <F12> :NERDTree<CR>
nnoremap <F11> :TagbarToggle<CR>
nnoremap <F5> "=strftime("MP %Y-%m-%d")<CR>P
nnoremap <F2> :tabnew<CR>

