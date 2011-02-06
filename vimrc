" File vimrc
" Author Randy Ridenour
" Created 19 June 2010 1006


""""""""""""""""""""""""""""""""""""""""""""""""""
" General

""""""""""""""""""""""""""""""""""""""""""""""""""


" window size
set lines=60
set columns=80

" Use Vim settings, not Vi
set nocompatible

" disable intro message
set shortmess+=I

call pathogen#runtime_append_all_bundles() 
call pathogen#helptags()

filetype on

" Load filetype plugins
filetype plugin on

" load indent files for specific filetypes
filetype indent on

let g:tex_flavor='latex'
let g:Tex_ViewRule_pdf='Skim'
let g:Tex_DefaultTargetFormat='pdf'

set grepprg=grep\ -nH\ $*


helptags ~/.vim/doc

au BufWinLeave * mkview
au BufWinEnter * silent loadview

set confirm

" Time to wait after ESC
set timeoutlen=2000

" Default font
set guifont=Inconsolata:h14
""""""""""""""""""""""""""""""""""""""""""""""""""
" Searching

""""""""""""""""""""""""""""""""""""""""""""""""""

" search case-sensitivity
" Set ignorecase on
set ignorecase
set smartcase


" smart search (override 'ic' when pattern has uppers)
set scs


""""""""""""""""""""""""""""""""""""""""""""""""""
" Text Formatting/Layout

""""""""""""""""""""""""""""""""""""""""""""""""""

set autoindent

" Set smart indenting
set smartindent

" Set tab spacing
set tabstop=4

set shiftwidth=4

" Show line and column number of cursor position
set ruler

set showcmd

set background=dark
syntax on
" colorscheme torte
colorscheme oceanblack
set linebreak
set spell
set enc=utf-8


helptags ~/.vim/doc

" Turn on line numbering. Turn it off with "set nonu"
set nu


setlocal wrap linebreak nolist
set virtualedit=
setlocal display+=lastline

""""""""""""""""""""""""""""""""""""""""""""""""""
" Visual Cues

""""""""""""""""""""""""""""""""""""""""""""""""""

" show matching brackets for a moment
set showmatch

" how many tenths of a second to blink matching brackets for
set matchtime=5

" do not highlight searched phrases
set nohlsearch

" but do highlight as you type you search phrase 
set incsearch

noremap  <buffer> <silent> k gk
"noremap  <buffer> <silent> gk k
noremap  <buffer> <silent> j gj
"noremap  <buffer> <silent> gj j
noremap  <buffer> <silent> 0 g0
noremap  <buffer> <silent> $ g$



noremap  <buffer> <silent> <Up>   gk
noremap  <buffer> <silent> <Down> gj
noremap  <buffer> <silent> <Home> g<Home>
noremap  <buffer> <silent> <End>  g<End>
inoremap <buffer> <silent> <Up>   <C-o>gk
inoremap <buffer> <silent> <Down> <C-o>gj
inoremap <buffer> <silent> <Home> <C-o>g<Home>
inoremap <buffer> <silent> <End>  <C-o>g<End>

:map <C-Right> <End>
:map <C-Left> <Home>
:map <C-Down> <PageDown>
:map <C-Up> <PageUp>


map \t :FuzzyFinderTextMate<CR>
inoremap ;; <Esc>


let g:miniBufExplMapWindowNavVim = 1 
let g:miniBufExplMapWindowNavArrows = 1 
let g:miniBufExplMapCTabSwitchBufs = 1 
let g:miniBufExplModSelTarget = 1

let g:Tex_BIBINPUTS="/Users/Randy/Dropbox/bibtex/randybib/"

augroup mkd

  autocmd BufRead *.md  set ai formatoptions=tcroqn2 comments=n:&gt;

augroup END

" Turn off LustyExplorer ruby warning
let g:LustyExplorerSuppressRubyWarning = 1

:set hidden

let g:LatexBox_viewer = 'skim'
let g:LatexBox_latexmk_options = '-pvc'
