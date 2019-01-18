syntax enable
colorscheme slate

"auto complete"
set nocp

"numbers along the side"
set nu

set ruler

set autoindent

set showcmd

"tab width"
set tabstop=4 softtabstop=0 expandtab shiftwidth=4 smarttab
set noet

set list
set listchars=tab:\ ·,eol:¬
set listchars+=trail:·
set listchars+=extends:»
set listchars+=precedes:«
set listchars+=nbsp:⣿


set showmatch                 " Show matching brackets.
set matchtime=2               " Bracket blinking.

inoremap { {<CR>}<Esc>ko
inoremap ( ()<Esc>i
inoremap " ""<Esc>i


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Search Options
"
" Ignore case when searching
set ignorecase

" When searching try to be smart about cases
set smartcase

" Makes search act like search in modern browsers
set incsearch

" Don't redraw while executing macros (good performance config)
set lazyredraw

" For regular expressions turn magic on
set magic

" Highlights all search hits
set hlsearch

" Toggle search highlighting
nnoremap <F3> :set hlsearch!<CR>