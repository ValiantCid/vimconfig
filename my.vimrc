" .vimrc
" Cam Wright (camwright.com.au | cam.wright@gmail.com)

syntax on

" sets
set ruler				" show ruler
set number				" show line numbers
set lazyredraw			" don't redraw window unless need to
set nocompatible		" we're using vim, not vi
set autoindent smartindent	" nice indenting
set smarttab			" tab and backspace are smart
set tabstop=4			" make tabs four spaces wide
set shiftwidth=4		" makes block shifts 4 tabs also
set scrolloff=4			" keep 4 lines t/b when scrolling
set sidescrolloff=4		" keep 4 lines l/r when scrolling
set history=100			" 100 items in history
set noerrorbells		" do not make a noise on error
set shell=zsh			" set zsh as shell

" filetype
filetype on				" turn on filetype detection
filetype indent on
filetype plugin on

" search
set smartcase			" is clever when checking cases on search
set incsearch			" move the cursor to result on successful search
set hlsearch			" highlight search results (use :noh to turn off highlighting after search)

" statusline
set laststatus=2		" reveals second status line
set statusline=%F\ {%Y}[%l,%v][%p%%] " name {type}[row,col][%]

" personalisation
colorscheme monokai		"make the colours like textmate
hi MatchParen cterm=bold ctermbg=none ctermfg=magenta
if has('gui_running')	"if running in gui: do..
  set guifont=Ubuntu\ Mono\ 12	"change font to Ubuntu Mono (12pt)
endif

" custom syntax rules
autocmd BufEnter,BufWrite *.php :set syn=wordpress "add wordpress syntax and DON'T remove php syntax
autocmd BufEnter,BufWrite *.md :set syn=mkd filetype=mkd "add markdown and remove Modula2 (default) syntax
autocmd BufEnter,BufWrite *.py :set colorcolumn=72 "add marker at line 72 to keep with PEP8

" Emmet configuration (including tab expansion after expression)
let g:user_emmet_settings = {
\	'php' : {
\		'extends' : 'html',
\		'filters' : 'c',
\	},
\}
imap <expr> <tab> emmet#expandAbbrIntelligent("\<tab>")

" CtrlP Configuration
set runtimepath^=~/.vim/ctrlp.vim
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'rc'

" BufExplore configuration
let g:bufExplorerFindActive=1
nmap <silent> <A-Up> :wincmd k<CR>
nmap <silent> <A-Down> :wincmd j<CR>
nmap <silent> <A-Left> :wincmd h<CR>
nmap <silent> <A-Right> :wincmd l<CR>
