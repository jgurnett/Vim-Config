syntax enable
colorscheme slate
call plug#begin('~/.vim/plugged')

"auto complete"
set nocp

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" UI config
set nu						"numbers along the side
set ruler
set autoindent
set showcmd					"show command in bottom bar
set cursorline				"highlight current line
set wildmenu            	"visual autocomplete for command menu
nnoremap gV `[v`] 			"highlight last inserted text


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

inoremap {<CR> {<CR>}<Esc>ko<tab>
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

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Movement
" move vertically by visual line
nnoremap j gj
nnoremap k gk

" move to beginning/end of line
nnoremap B ^
nnoremap E $

" $/^ doesn't do anything
nnoremap $ <nop>
nnoremap ^ <nop>


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" tmux
" allows cursor change in tmux mode
if exists('$TMUX')
    let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
    let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
else
    let &t_SI = "\<Esc>]50;CursorShape=1\x7"
    let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Backup settings
set backup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set backupskip=/tmp/*,/private/tmp/*
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set writebackup


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" CUSTOM FUNCTIONS

" strips trailing whitespace at the end of files. this
" is called on buffer write in the autogroup above.
function! <SID>StripTrailingWhitespaces()
    " save last search & cursor position
    let _s=@/
    let l = line(".")
    let c = col(".")
    %s/\s\+$//e
    let @/=_s
    call cursor(l, c)
endfunction

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Organization
set foldenable
set foldlevelstart=10
set foldmethod=syntax
set foldlevel=2

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Different file types
augroup configgroup
    autocmd!
    autocmd VimEnter * highlight clear SignColumn
    autocmd BufWritePre *.php,*.py,*.js,*.txt,*.hs,*.java,*.md
                \:call <SID>StripTrailingWhitespaces()
    autocmd FileType java setlocal noexpandtab
    autocmd FileType java setlocal list
    autocmd FileType java setlocal listchars=tab:+\ ,eol:-
    autocmd FileType java setlocal formatprg=par\ -w80\ -T4
    autocmd FileType php setlocal expandtab
    autocmd FileType php setlocal list
    autocmd FileType php setlocal listchars=tab:+\ ,eol:-
    autocmd FileType php setlocal formatprg=par\ -w80\ -T4
    autocmd FileType ruby setlocal tabstop=2
    autocmd FileType ruby setlocal shiftwidth=2
    autocmd FileType ruby setlocal softtabstop=2
    autocmd FileType ruby setlocal commentstring=#\ %s
    autocmd FileType python setlocal commentstring=#\ %s
    autocmd BufEnter *.cls setlocal filetype=java
    autocmd BufEnter *.zsh-theme setlocal filetype=zsh
    autocmd BufEnter Makefile setlocal noexpandtab
    autocmd BufEnter *.sh setlocal tabstop=2
    autocmd BufEnter *.sh setlocal shiftwidth=2
    autocmd BufEnter *.sh setlocal softtabstop=2
augroup END