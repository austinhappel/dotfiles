" install vim-plug
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" plugins
call plug#begin('~/.vim/bundle')
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'plasticboy/vim-markdown'
Plug 'jiangmiao/auto-pairs'
Plug 'scrooloose/nerdcommenter'
Plug 'tpope/vim-surround'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'leafgarland/typescript-vim'
call plug#end()

" syntax highlighting
syntax on
color dracula

" filetyp plugin
filetype plugin on

" tabs
filetype plugin indent on

" show existing tab with 4 spaces width
set tabstop=2

"  when indenting with '>', use 4 spaces width
set shiftwidth=2

" On pressing tab, insert 4 spaces
set expandtab

" Highlight search
set hlsearch

" Increment search - immediately move to first search result
set incsearch

" Ignore case in search
set ignorecase

" If search includes capital letters, go case sensitive
set smartcase

" Key mapping

" NERDTree
map <C-n> :NERDTreeToggle<CR>

" hide search results after finishing a search
noremap <CR> :nohlsearch<cr>
