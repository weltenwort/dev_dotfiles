" vim:foldmethod=marker

" Vundle {{{
set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
" }}}

" Bundles {{{
Bundle 'Align'
Bundle 'AutoComplPop'
Bundle 'Gundo'
Bundle 'Lokaltog/vim-powerline'
Bundle 'Solarized'
Bundle 'SuperTab-continued.'
Bundle 'Syntastic'
Bundle 'The-NERD-Commenter'
Bundle 'The-NERD-tree'
Bundle 'ctrlp.vim'
Bundle 'delimitMate.vim'
Bundle 'jade.vim'
Bundle 'jpythonfold.vim'
Bundle 'less-syntax'
Bundle 'fugitive.vim'
Bundle 'matchit.zip'
Bundle 'pydoc.vim'
Bundle 'surround.vim'
Bundle 'vim-coffee-script'
Bundle 'vundle'
" }}}

" Filetype {{{
filetype plugin indent on
syntax on
" }}}

" Colors {{{
set background=dark
set t_Co=16
color solarized
" }}}

" General {{{
set autoread
set nobackup
" }}}

" Text Options {{{
set smartindent
set expandtab
set shiftwidth=4
set tabstop=4
set smarttab
set autoindent
set encoding=utf-8
set backspace=2
" }}}

" Layout {{{
set laststatus=2
set number
set cursorline
set hidden
set hlsearch
set incsearch
set ignorecase
set listchars=tab:▸\ ,eol:¬
set list
set foldcolumn=2
" }}}

" Completion {{{
set omnifunc=syntaxcomplete#Complete
set completeopt=menuone,preview,longest
let g:SuperTabDefaultCompletionType = "context"
let g:SuperTabLongestEnhanced = 1
let g:SuperTabCompletionContexts = ['s:ContextText', 's:ContextDiscover']
let g:SuperTabContextTextOmniPrecedence = ['&omnifunc', '&completefunc']
let g:SuperTabContextDiscoverDiscovery =
    \ ["&completefunc:<c-x><c-u>", "&omnifunc:<c-x><c-o>"]
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS 
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags 
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS 
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete 
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
" }}}

" Wild Menu <F11> {{{
source $VIMRUNTIME/menu.vim
set wildmenu
set cpo-=<
set wcm=<C-Z>
map <F11> :emenu <C-Z>
" }}}

" Directory Browsing {{{
let NERDTreeHijackNetrw = 0
let g:netrw_liststyle = 1
let g:netrw_list_hide= '\(^\|\s\s\)\zs\.\S\+'
" }}}

" Git {{{
let g:fugitive_git_executable = 'LANG=en git'
" }}}

" Syntastic {{{
let g:syntastic_mode_map = { 'mode': 'active',
                           \ 'active_filetypes': ['coffee', 'css', 'javascript', 'python'],
                           \ 'passive_filetypes': ['tex'] }
" }}}

" Pydoc {{{
let g:pydoc_cmd = "/usr/bin/pydoc2"
" }}}

" Undo {{{
let g:gundo_right = 1
" }}}

" Key Maps {{{
let mapleader = ","

nnoremap <F2> :bprev<CR>
nnoremap <F3> :bnext<CR>
nnoremap ä ]
nnoremap ö \
"map <F4> \be
"noremap <F4> :FufBuffer<CR>
nnoremap <F4> :CtrlPBuffer<CR>
nnoremap <F5> :CtrlP<CR>
nnoremap <F9> :GundoToggle<CR>
noremap <F10> :NERDTreeToggle<CR>

nnoremap ü <C-]>
nnoremap Ü <C-O>

nnoremap <leader>l :set list!<CR>
nnoremap <leader><space> :nohlsearch<CR>
" }}}
