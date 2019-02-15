syntax enable
colorscheme slate

"auto complete"
set nocp

"numbers along the side"
set nu

set ruler

set autoindent

set showcmd

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"tab Settings"
set tabstop=4 				"Tab with of 4
set softtabstop=0 
set expandtab 
set shiftwidth=4 			"Uses shift width instead of tabstop
set smarttab
set noet					"When inserting text Don't expand tab to spaces


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Display of space in vim editor"
set list
set listchars=tab:\ ·,eol:¬	"when there is a tab display dot
set listchars+=trail:·		"after the current line display dot
set listchars+=extends:»
set listchars+=precedes:«
set listchars+=nbsp:⣿


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Brackets highlighting / bracket autocomplete"
set showmatch				 " Show matching brackets.
set matchtime=2 			 " Bracket blinking.

inoremap { {<CR>}<Esc>ko
inoremap ( ()<Esc>i
inoremap " ""<Esc>i


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Search Options
set ignorecase			"Ignore case when searching

set smartcase			"When searching try to be smart about cases

set incsearch			"Makes search act like search in modern browser

set lazyredraw			"Don't redraw while executing macros

set magic				"For regular expressions turn magic on

set hlsearch			"Highlights all search hits

" Toggle search highlighting
nnoremap <F3> :set hlsearch!<CR>
