set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'derekwyatt/vim-scala'
Plugin 'scrooloose/nerdtree'
Plugin 'raimondi/delimitmate'
Plugin 'ervandew/supertab'
Plugin 'majutsushi/tagbar'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'bling/vim-airline'
Plugin 'airblade/vim-gitgutter'
Plugin 'vim-airline/vim-airline-themes'

" These plugins require additional setup manually
Plugin 'vim-syntastic/syntastic'
Plugin 'valloric/youcompleteme'


" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
Bundle 'altercation/vim-colors-solarized'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
" filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" Plugin: CtrlP Settings
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }


" Plugin: NerdTree Settings
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
:set mouse=a
let g:NERDTreeMouseMode=3 
let NERDTreeQuitOnOpen = 1

" Plugin: VIM Airline
set laststatus=2

" Plugin: Vim Airline Theme
let g:airline_theme='solarized'

" Plugin: YouCompleMe Settings
let g:ycm_autoclose_preview_window_after_completion=1

" Plugin: Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Leader Remapping
map <leader>n :NERDTreeToggle<CR>
map <leader>t :TagbarToggle<CR>
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

" ====================
" General VIM Settings
" ====================
" Disable auto commenting
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" Tabs and Spaces
set tabstop=2
set softtabstop=2
set expandtab
set shiftwidth=2

" UI
set number
set ruler
set cursorline
set wildmenu
set showmatch

set incsearch
set hlsearch

set autoread                 "Reload files changed outside of vim

" ================ Turn Off Swap Files ==============
set noswapfile
set nobackup
set nowb

" Color Scheme Specifc
syntax on
set background=dark
let g:solarized_visibility="high"
" NOTE: DO NOT NEED THE FOLLOWING LINE IF TERM IS NOT CONFIGURED FOR 256 COLORS
let g:solarized_termcolors=256
colorscheme solarized

" Enable default backspace behavior 
set bs=2

" Clipboard setup for Mac
set clipboard=unnamed


