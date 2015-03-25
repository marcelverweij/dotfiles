set nocompatible				" Get out of VI-compatible mode.
set noswapfile					" Disable creation of '.swp'.
set cm=blowfish					" Set the cryptmethod to blowfish.

set incsearch					" Begin searching as soon as you start typing.
set hlsearch					" Highlight search pattern matches.

set guioptions-=T				" Remove toolbar.
set guioptions-=r				" Remove right-hand scroll bar.

colorscheme desert				" Set colorscheme.
syntax on					" Enable syntax highlighting.
set relativenumber				" Display relative line numbers.
set ruler					" Always display cursor.
set laststatus=2				" Always display statusbar.
let g:buftabs_only_basename=1			" Don't display full file paths for buffers.

set tabstop=8					" Set the length of a tab in a file with tabs.
set shiftwidth=8				" Insert number of spaces when we hit the tab key.
set softtabstop=8				" Delete number of spaces when we hit the backspace key on a tab.
set autoindent					" Go to the indent of the last line.

" Display tabs and trailing spaces.
set list
set listchars=tab:»\ ,trail:¬

" Custom statusline.
set statusline=\ %f%m%r%h%w\ %=%([%{&ff}\|%{(&fenc==\"\"?&enc:&fenc).((exists(\"+bomb\")\ &&\ &bomb)?\",B\":\"\")}%k\|%Y]%)\ %([%l\/%L\|%c][%p%%]\ %)

" CTRL-c CTRL-v
map <C-c> "+y<CR>
map <C-v> "+gP<CR>
