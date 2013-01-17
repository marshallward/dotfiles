" Runtime
"set runtimepath=~/.vim

" Encoding
set encoding=utf-8

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
set hlsearch        " Highlight all search instances

" Spacing
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent

" Whitespace display
nmap <leader>l :set list!<CR>
set listchars=tab:▸\ ,eol:¬

" Highlight >79 column lines
highlight OverLength ctermbg=black guibg=#073642
match OverLength /\%80v.\+/

" Syntax details
let fortran_free_source=1

" filetype detection, language specific settings
filetype on
filetype indent on
filetype plugin on
set ofu=syntaxcomplete#Complete

augroup filetypedetect
    au! BufRead,BufNewFile *.txt setfiletype rst
    au! BufNewFile,BufRead *.mxml setfiletype mxml
    au! BufNewFile,BufRead *.as setfiletype actionscript
augroup END

autocmd filetype make setlocal noexpandtab
autocmd filetype tex  setlocal textwidth=79
autocmd filetype rst  setlocal textwidth=79
autocmd filetype rst  setlocal spell spelllang=en_au
