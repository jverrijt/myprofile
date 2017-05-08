execute pathogen#infect()

syntax on
filetype plugin indent on

set encoding=utf-8
set tabstop=4
set shiftwidth=4
set expandtab
"set autoindent
set cursorline
set number
set ruler
set ignorecase
set autowrite
set hlsearch
highlight comment ctermfg=lightblue
set guicursor=a:blinkon0
set nowrap
set vb t_vb="."
set noswapfile

" NERDTree
" ----------
autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p

let NERDTreeShowLineNumbers=1
let NERDTreeShowHidden=1
set autochdir
let NERDTreeChDirMode=2

let g:closetag_html_style=1
au Filetype html,xml,xsl,tpl source ~/.vim/plugin/closetag.vim 

" Airline
"-----------
let g:airline_powerline_fonts = 1
set guifont=Meslo\ LG\ M\ DZ\ for\ Powerline

if has("gui_macvim")
        macmenu &File.Save key=<nop>
endif

" Disable Cursor keys

nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop> 

colorscheme railscasts


" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1
"
" " Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'
