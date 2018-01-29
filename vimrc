set nocompatible		        " be iMproved, required
filetype off			        " required

" set the runtime path to include Vundle and initialize
set rtp+=$HOME/vimrc/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'tpope/vim-fugitive'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'dikiaap/minimalist'
Plugin 'vim-scripts/a.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'sheerun/vim-polyglot'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'scrooloose/nerdcommenter'

" All the Plugins must be added before the following line
call vundle#end() 		" required
filetype plugin indent on	" required

" Brief help
" :PluginList		- lists configured plugins
" :PluginInstall	- installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean		- confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
set nowrap
set encoding=utf8

syntax enable                   " Syntax highlighting
set t_Co=256                    " set number of colors

set hidden                      " hide buffers instead of closing them this
                                "    means that the current buffer can be put
                                "    to background without being written; and
                                "    that marks and undo history are preserved

set number                      " always show line numbersset listchars=tab:▸\ ,eol:¬
set listchars=tab:\|\ ,eol:¬
set list
set ts=4 sts=4 sw=4             " a tab is four spaces
set smarttab
set noexpandtab

" Always display the status line
set laststatus=2

color minimalist
highlight clear Search
highlight Search ctermbg=lightgrey ctermfg=black
highlight clear MatchParen
highlight MatchParen ctermbg=grey ctermfg=black
highlight SpecialKey ctermbg=NONE
highlight NonText ctermfg=grey ctermbg=NONE
highlight CursorLine ctermbg=darkgrey

"Highlight extra whitespace
highlight ExtraWhitespace ctermbg=167
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

"Unindent with Shift+Tab
imap <S-Tab> <C-O><<
nmap <S-Tab> <<
vmap <S-Tab> <gv

"Indent with Tab
nmap <Tab> >>
vmap <Tab> >gv


"Plugins configurations

" vim-airline plugin
let g:airline_powerline_fonts = 1

" NERDTree
map <C-n> :NERDTreeToggle<CR>


" ctrlp
let g:ctrlp_map = '<c-p>'
