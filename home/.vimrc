execute pathogen#infect()
imap <f5> <C-R>=strftime("%Y-%m-%d")<CR> Phil Thiselton <dibble@thewrecker.net><CR>
imap <f6> <CR># Maintainer: dtw <dibble.at.thewrecker.dot.net><CR>

set mouse=
set term=rxvt
set encoding=utf-8
set nowrap                      " don't wrap lines
set tabstop=2 shiftwidth=2      " a tab is two spaces (or set this to 4)
set expandtab                   " use spaces, not tabs (optional)
set showcmd                     " display incomplete commands

"" Searching
set hlsearch                    " highlight matches
set incsearch                   " incremental searching
set ignorecase                  " searches are case insensitive...
set smartcase                   " ... unless they contain at least one capital letter

autocmd BufReadPost *PKGBUILD*  set filetype=sh
autocmd BufReadPost *.install  set filetype=sh
filetype plugin indent on

colorscheme dtw
"set background=dark
"colorscheme solarized

syntax on 
syntax enable

let &t_ti = "\<Esc>[?47h"
let &t_te = "\<Esc>[?47l"
let mapleader = ","

let g:BASH_AuthorName   = 'Phil Thiselton'
let g:BASH_Email        = 'dibble@thewrecker.net'
let g:BASH_Company      = ''

noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

inoremap jk <ESC>

"vimcasts
nmap <leader>l :set list!<CR>
set listchars=tab:▸\ ,eol:¬

