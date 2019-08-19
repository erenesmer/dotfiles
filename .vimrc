set nocompatible
set encoding=UTF-8
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

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
Plugin 'cormacrelf/vim-colors-github'
Plugin 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plugin 'junegunn/fzf.vim'
Plugin 'bling/vim-airline'
Bundle 'https://github.com/gorodinskiy/vim-coloresque.git'
Plugin 'jpo/vim-railscasts-theme'

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

highlight Comment ctermfg=green

let g:vim_jsx_pretty_enable_jsx_highlight = 0
let g:vim_jsx_pretty_colorful_config = 1 " default 0

let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_SR = "\<Esc>]50;CursorShape=2\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"

map <silent> <C-n> :NERDTreeToggle %<CR>
map <silent> <F4> :NERDTreeToggle <CR>
map <silent> <F2> :TagbarToggle <CR>
map <silent> <C-d> :vsplit<CR>
map <silent> <S-d> :hide<CR>
map <silent> <S-t> :vertical resize 30<CR>
map <silent> <Leader> :noh <CR>
map ; :Files<CR>

"map <silent> <C-t> :TagbarToggle <CR>

function! StartUp()
	if 0 == argc()
		NERDTree
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
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
"set cursorline!

" move vertically by visual line:
nnoremap j gj
nnoremap k gk
"set paste
autocmd BufWritePre *.js %s/\s\+$//e

set backup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set backupskip=/tmp/*,/private/tmp/*
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set writebackup

if (has("termguicolors"))
	set termguicolors
endif

let $NVIM_TUI_ENABLE_TRUE_COLOR=1


let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"

"let g:vitality_tmux_can_focus = 1
colorscheme molokai 

" use a slightly darker background, like GitHub inline code blocks
let g:github_colors_soft = 1

" more blocky diff markers in signcolumn (e.g. GitGutter)
let g:github_colors_block_diffmark = 0

augroup myCmds
au!
autocmd VimEnter * silent !echo -ne "\e[2 q"
augroup END
