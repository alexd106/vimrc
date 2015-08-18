set nocompatible
set antialias
filetype on
filetype plugin on
filetype indent on

execute pathogen#infect()

nmap <silent><Leader>B <ESC>/end<CR>=%:noh<CR>
nmap <silent> <M-S-Left> <ESC>:bp<CR>
nmap <Leader>U <ESC>:TlistUpdate<CR>
nmap <Leader>M <ESC>:wa<CR>:make!<CR>
nmap <Leader>D <ESC>:w<CR>:diffthis<CR>
nmap <Leader>d <ESC>:w<CR>:diffoff<CR>
nmap <silent><Leader>q <ESC>:copen<CR>
nmap <silent><Leader>n <ESC>:cn<CR>
nmap <silent><Leader>; <ESC>d/;/e<CR>:noh<CR>
nmap <Leader><Leader>s <ESC>:cs find s <C-R>=expand("<cword>")<CR><CR>
nmap <Leader><Leader>g <ESC>:cs find g <C-R>=expand("<cword>")<CR><CR>
nmap <Leader><Leader>d <ESC>:cs find d <C-R>=expand("<cword>")<CR><CR>
nmap <Leader><Leader>c <ESC>:cs find c <C-R>=expand("<cword>")<CR><CR>
nmap <Leader><Leader>t <ESC>:cs find t 
nmap <Leader><Leader>e <ESC>:cs find e 
nmap <Leader><Leader>f <ESC>:cs find f <C-R>=expand("<cword>")<CR><CR>
nmap <Leader><Leader>i <ESC>:cs find i <C-R>=expand("<cword>")<CR><CR>
nmap <Leader>P <ESC>:Pydoc <C-R>=expand("<cword>")<CR>
map <C-_> :cstag <C-R>=expand("<cword>")<CR><CR>
noremap <f11> <esc>:syntax sync fromstart<cr>
inoremap <f11> <esc>:syntax sync fromstart<cr>a

set nohlsearch
set incsearch

" set sane autoindent and 4 space soft tabs
syntax enable
set cindent
set nopaste  " people say this has to be off
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set autoindent
set smartindent


" i like status always
set laststatus=2
set statusline=%<%f%=\ [%1*%M%*%n%R]\ y\ %-19(%3l,%02c%03V%)

" Toggle spell checking on and off with `,s`
let mapleader = ","
nmap <silent> <leader>s :set spell!<CR>

" Set region to British English
set spelllang=en_gb

set mousemodel=popup

set tags=tags;/home/nhy163

" fix up the backspace
set backspace=2 " make backspace work normal (non-vi style)
set whichwrap+=<,>,h,l  " backspace and cursor keys wrap to next/prev lines

" make find search for files here, then in the cd dir
autocmd FileType ruby set path=./**,**
setl path=./**,**

" special 'save my session and exit' binding
nmap <F12> <Esc>:wa<CR>:mksession!<CR>:qa<CR>

if has("cscope")
  " uncoment this and set if vim can't find it
  "set csprg=/usr/local/bin/cscope
  set csto=0
  set cst
  set nocsverb
  " add any database in current directory
  if filereadable("cscope.out")
    cs add cscope.out
    " else add database pointed to by environment
  elseif $CSCOPE_DB != ""
    cs add $CSCOPE_DB
  endif
  set csverb
endif

set shell=bash

autocmd BufRead *.rl  setfiletype=ragel
autocmd BufRead *.asm  setfiletype=earing
autocmd BufRead *.factor  setfiletype=factor

set number
colorscheme monokai

" highlight Normal guibg=black guifg=white
set background=dark

runtime! ftplugin/man.vim
set grepprg=/usr/local/bin/ack
set hidden

filetype plugin indent on
set noerrorbells
set visualbell
set t_vb=

let g:pydiction_location = '/Users/nhy163/.vim/ftplugin/complete-dict'
set noic

" allow updating .vimrc on the fly
" from vimcasts.org
if has("autocmd")
    autocmd bufwritepost .vimrc source $MYVIMRC
endif

" key mapping to open .vimrc ,v
let mapleader = ","
nmap <leader>v :tabedit $MYVIMRC<CR>

" change to location of backup files to avoid problems with git
"set backupdir=~/.vim/backup
"set directory=~/.vim/temp

let g:vim_markdown_folding_disabled=1
" This option only controls Vim Markdown specific folding configuration.
" To enable/disable folding use Vim's standard folding configuration.
" set [no]foldenable

