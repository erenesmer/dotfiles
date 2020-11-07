set nocompatible
set encoding=UTF-8
filetype off
filetype plugin on

set rtp+=$HOME/.vim/bundle/Vundle.vim
call vundle#begin('$HOME/.vim/bundle')

Plugin 'VundleVim/Vundle.vim'

Plugin 'scrooloose/nerdtree'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'othree/html5.vim'
Plugin 'leafgarland/typescript-vim'
Plugin 'AutoComplPop'
Plugin 'surround.vim'
Plugin 'Markdown'
Plugin 'kien/ctrlp.vim'
Plugin 'majutsushi/tagbar'
Plugin 'isRuslan/vim-es6'
Plugin 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plugin 'junegunn/fzf.vim'
"Plugin 'bling/vim-airline'
Bundle 'https://github.com/gorodinskiy/vim-coloresque.git'

"Plugin 'chriskempson/base16-vim'
"Plugin 'terryma/vim-multiple-cursors'
"Plugin 'Yggdroot/indentLine'
"Plugin 'mxw/vim-jsx
"Plugin 'othree/yajs.vim'
"Plugin 'chemzqm/vim-jsx-improve'
"Plugin 'scrooloose/syntastic'
"Plugin 'tpope/vim-surround'
"Plugin 'scrooloose/nerdcommenter'
"Plugin 'jiangmiao/auto-pairs'
"Plugin 'mattn/emmet-vim'
"Plugin 'HerringtonDarkholme/yats.vim'
"Plugin 'burnettk/vim-angular'

call vundle#end()
filetype plugin indent on
filetype indent on

syntax enable
syntax on

"colorscheme molokai
colorscheme desert 
highlight Comment ctermfg=green

let g:vim_jsx_pretty_enable_jsx_highlight = 0
let g:vim_jsx_pretty_colorful_config = 1 " default 0

"let &t_SI = "\<Esc>]50;CursorShape=1\x7"
"let &t_SR = "\<Esc>]50;CursorShape=2\x7"
"let &t_EI = "\<Esc>]50;CursorShape=0\x7"

map <silent> <C-n> :NERDTreeToggle %<CR>
map <silent> <F4>  :NERDTreeToggle <CR>
map <silent> <F2>  :TagbarToggle <CR>
map <silent> <C-d> :vsplit<CR>
map <silent> <S-d> :hide<CR>
map <silent> <S-t> :vertical resize 30<CR>
map <silent> <Leader> :noh <CR>
map ; :Files<CR>

"map <silent> <C-t> :TagbarToggle <CR>

function! StartUp()
	if 0 == argc()
		"NERDTree
	end
endfunction
autocmd VimEnter * call StartUp()

set number
"set relativenumber
set incsearch
set showcmd
set ignorecase
set smartcase
set showmatch
set hlsearch
set incsearch
set wildmenu
set nobackup
set noswapfile
set nowrap
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
"set paste
"set cursorline!
set history=1000
set splitbelow splitright
set colorcolumn=80

"aug python
    " ftype/python.vim overwrites this
    "au FileType python setlocal ts=2 sts=2 sw=2 noexpandtab
"aug end

" move vertically by visual line:
"nnoremap j gj
"nnoremap k gk

autocmd BufWritePre *.js %s/\s\+$//e

set backup
set backupdir=$HOME/vim-tmp
set backupskip=$HOME/vim-tmp
set directory=$HOME/vim-tmp
set writebackup
