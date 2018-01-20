" GLOBAL SETTINGS
set nocompatible	" Get out of VI-compatible mode (must be first option in .vimrc for correct working)


" VIM BEHAVIOUR
set noswapfile		" Disable the creation of '.swp'
set nobackup		" Disable the creation of '~' backup files
set guioptions-=T	" Remove toolbar
set guioptions-=r	" Remove right-hand scroll bar
set cm=blowfish		" Set the cryptmethod to blowfish

" VIM LAYOUT
set laststatus=2		" Always display statusbar.
set statusline=%F		"Full path and filename
set statusline+=%m		"Modified flag
set statusline+=%r		"Read-only flag
set statusline+=\ -%p%%-	"Percent through file
set statusline+=\ %c,		"Cursor column
set statusline+=%l/%L		"Cursor line/total lines
set statusline+=%=		"Seperator left/right
set statusline+=[%{strlen(&fenc)?&fenc:'none'}]	"File encoding
set statusline+=[%{&ff}]	"File format
set statusline+=%y		"Filetype
set statusline+=%h		"Help file flag


" EDITOR BEHAVIOUR
set tabstop=8		" Set the length in spaces of tabs
set shiftwidth=8	" Set how much spaces to insert when adding a tab
set softtabstop=8	" Set how much spaces to delete when deleting a tab
set autoindent		" Go to the indent of the last line
set backspace=indent,eol,start " Influences the working of backspace, overwriting autointent feature of VIM 
set autoread		" Automatically reload files changed outside of Vim
set incsearch		" Begin searching as soon as you start typing
set hlsearch		" Highlight search pattern matches

" EDITOR LAYOUT
syntax on		" Set syntax highlighting
colorscheme desert
set relativenumber	" Display relative line numbers
set ruler		" Always display cursor
set list		" Display tabs and trailing spaces
set listchars=tab:»\ ,trail:¬
set wrap		" Enable visual wrapping of lines


" MACROS
" Bind CTRL-c and CTRL-v to copy and paste
map <C-c> "+y<CR>
map <C-v> "+gP<CR>
