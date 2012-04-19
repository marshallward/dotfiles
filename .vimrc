" Runtime
"set runtimepath=~/.vim

" Cosmetics
set nocompatible    " Vim mode (not vi mode)
set shortmess=I     " No splash screen on startup
set ruler           " Show cursor position
set showcmd         " Show commands as they're being typed
set showmode        " Show input mode
set number          " Turn on row numbering
set background=dark " User color schemes for dark backgrounds
syntax enable       " Use syntax highlighting

" Colorscheme
colorscheme solarized

" Editing
set backspace=indent,eol,start  " Free-form backspace

" Text search
set incsearch       " Search as you type
" set hlsearch       " Highlight all search instances

" Highlight >79 column lines
highlight OverLength ctermbg=darkgray ctermfg=white guibg=#592929
match OverLength /\%80v.\+/

" Spacing
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent

" Syntax details
let fortran_free_source=1

" filetype detection, language specific settings
if has("autocmd")
    filetype on
    filetype indent on
    filetype plugin on
    autocmd filetype make setlocal noexpandtab  " Makefile tabs
    autocmd filetype tex  setlocal textwidth=79 " TeX word wrap
endif
