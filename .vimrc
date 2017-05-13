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
set guicursor=a:blinkon0
set nowrap
set vb t_vb="."
set noswapfile

" NERDTree
" ----------
autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p

" No visual bells.
autocmd GUIEnter * set vb t_vb= 
autocmd VimEnter * set vb t_vb=

let NERDTreeShowLineNumbers=1
let NERDTreeShowHidden=1
set autochdir
let NERDTreeChDirMode=2

let g:closetag_html_style=1
au Filetype html,xml,xsl,tpl source ~/.vim/plugin/closetag.vim 
set fillchars+=vert:\ 

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

" Colors
" ----------
colorscheme railscasts

hi comment ctermfg=lightblue
hi LineNr ctermfg=darkgray
hi CursorLine cterm=NONE ctermbg=88


" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1

" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'

" Tabline
" ----------
if has('gui')
  set guioptions-=e
endif
if exists("+showtabline")
  function MyTabLine()
    let s = ''
    let t = tabpagenr()
    let i = 1
    while i <= tabpagenr('$')
      let buflist = tabpagebuflist(i)
      let winnr = tabpagewinnr(i)
      let s .= '%' . i . 'T'
      let s .= (i == t ? '%1*' : '%2*')
      let s .= ' '
      let s .= i . ':'
      let s .= winnr . '/' . tabpagewinnr(i,'$')
      let s .= ' %*'
      let s .= (i == t ? '%#TabLineSel#' : '%#TabLine#')
      let bufnr = buflist[winnr - 1]
      let file = bufname(bufnr)
      let buftype = getbufvar(bufnr, 'buftype')
      if buftype == 'nofile'
        if file =~ '\/.'
          let file = substitute(file, '.*\/\ze.', '', '')
        endif
      else
        let file = fnamemodify(file, ':p:t')
      endif
      if file == ''
        let file = '[No Name]'
      endif
      let s .= file
      let i = i + 1
    endwhile
    let s .= '%T%#TabLineFill#%='
    let s .= (tabpagenr('$') > 1 ? '%999XX' : 'X')
    return s
  endfunction
  set stal=2
  set tabline=%!MyTabLine()
  map    <C-Tab>    :tabnext<CR>
  imap   <C-Tab>    <C-O>:tabnext<CR>
  map    <C-S-Tab>  :tabprev<CR>
  imap   <C-S-Tab>  <C-O>:tabprev<CR>
endif

" Colors for tabline.
hi TabLineFill ctermfg=LightGreen ctermbg=DarkGreen 
hi TabLine ctermfg=Blue ctermbg=Yellow
hi TabLineSel ctermfg=Red ctermbg=Yellow
