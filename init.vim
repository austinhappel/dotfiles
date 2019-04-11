" nvim configuration file.
" This file goes in ~/.config/nvim/

" Instal vim-plug for neovim
if empty(glob('~/.nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.nvim/autoload/plug.vim --create-dirs 
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif


" plugins
call plug#begin('~/.local/share/nvim/plugged')
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' } " file browser
Plug 'dracula/vim', { 'as': 'dracula' } " dracula theme
Plug 'plasticboy/vim-markdown' " Markdown syntax highlighting
Plug 'jiangmiao/auto-pairs' " auto-surround text when using wrappers
Plug 'scrooloose/nerdcommenter' " Useful shortcuts for commenting code
Plug 'tpope/vim-surround' " Useful commands to surround words in quotes
Plug 'airblade/vim-gitgutter' " Show git changes in vim
Plug 'tpope/vim-fugitive' " Useful git commands
Plug 'HerringtonDarkholme/yats.vim' " typescript syntax highlighting
Plug 'mhartington/nvim-typescript', {'do': './install.sh'} " typscript autocomplete
Plug 'junegunn/fzf' " file finder
Plug 'tpope/vim-unimpaired' " useful key mappings
Plug 'junegunn/fzf.vim' " file finder
Plug 'vim-syntastic/syntastic' " syntax linting
Plug 'vim-airline/vim-airline' " fancy status bar

" install neovim-compatible plugins I need.
Plug 'HerringtonDarkholme/yats.vim' " typescript syntax highlighting
call plug#end()

" syntax highlighting
syntax on
color dracula

" use OSX clipboard
set clipboard=unnamedplus

" filetype plugin
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

" Set title
set title

" Ensure header bar shows file name
set laststatus=2

" Show line numbers
set number

" vim-markdown folding
let g:vim_markdown_folding_disabled = 1

" vim-airline settings
let g:airline#extensions#tabline#enabled = 1 " show buffers as tabs at top, if not using tabs.

" encoding
set encoding=utf-8
scriptencoding utf-8

" Syntastic plugin settings

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_typescript_checkers = ['tslint', 'tsc']

" Key mapping

" NERDTree
map <C-n> :NERDTreeToggle<CR>

" hide search results after finishing a search
noremap <CR> :nohlsearch<cr>




