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

Plugin 'scrooloose/nerdtree.git'
Plugin 'scrooloose/nerdcommenter'
Plugin 'majutsushi/tagbar'
Plugin 'itchyny/lightline.vim'
Plugin 'eshion/vim-sync'
Plugin 'sirtaj/vim-openscad'
Plugin 'scrooloose/syntastic'
Plugin 'pangloss/vim-javascript'
Plugin 'lervag/vimtex'
"Plugin 'Valloric/YouCompleteMe'

filetype plugin indent on
" ##################################################
" All vim settings must be placed after this section
" ##################################################

" Disable bell
set belloff=all

" Colors settings
colorscheme gruvbox
set background=dark

set path=$PWD/**

set number
set ts=4
set expandtab
set autoindent
set smartindent
set shiftwidth=4
set cursorline
set showmatch
set colorcolumn=100
set hlsearch
au BufRead *.py,*.cc,*.c,*.C,*.h,*.inl,*.cpp,*.tpp syn match ErrorSpaces /\\s\\+$/ display
au BufRead *.py,*.cc,*.c,*.C,*.h,*.inl,*.cpp,*.tpp syn match ErrorLongLine /^.\\{99\\}.\\+/ display
au BufRead *.py,*.cc,*.c,*.C,*.h,*.inl,*.cpp,*.tpp syn cluster	cCommentGroup contains=cToDo
hi def link ErrorSpaces Error
hi def link ErrorLongLine Error

" GUI settings
set guifont=DejaVu\ Sans\ Mono\ 20
" set lines=999 columns=999 "Fulscreen
set guioptions-=T

" Syntax highlighting
autocmd BufRead,BufNewFile,BufEnter *.tpp setlocal filetype=cpp

" Show trailing whitepace and spaces before a tab
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/

" Keyboard mappings
map <F12> :NERDTree<CR>
nnoremap <F11> :TagbarToggle<CR>
nnoremap <F5> "=strftime("MP %Y-%m-%d")<CR>P
nnoremap <F2> :tabnew<CR>

" Python
let g:pymode_rope_completion = 1
"let python_highlight_all=1
"filetype detect
"au FileType py set autoindent
"au FileType py set smartindent

au CompleteDone * pclose
set completeopt=longest,menuone

" C/C++, JavaScript specific settings
"autocmd FileType c,cc,tcc,h,cpp,javascript inoremap {   <CR>{<CR><CR>}<Up>
"autocmd FileType c,cc,tcc,h,cpp,javascript,json setlocal foldmethod=syntax

set foldmethod=syntax

" Brackets and symbols completion
inoremap (  ()<Left>
inoremap [  []<Left>
inoremap {  {}<Left>
inoremap '  ''<Left>
inoremap "  ""<Left>

" FTP upload
nnoremap <C-u>  :call SyncUploadFile()<CR>

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 1
let g:syntastic_cpp_include_dirs = ['inc', 'src']
"let g:syntastic_cpp_checkers = ['/usr/bin/g++']
let g:syntastic_cpp_compiler = 'g++-8'
let g:syntastic_cpp_compiler_options = ' -std=c++17'

" NERDTree
let NERDTreeIgnore = ['\.pyc$']
