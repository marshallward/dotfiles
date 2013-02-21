" Encoding
set encoding=utf8

" Cosmetics
set nocompatible    " Vim mode (not vi mode)
set shortmess=I     " No splash screen on startup
set ruler           " Show cursor position
set showcmd         " Show commands as they're being typed
set showmode        " Show input mode
set number          " Turn on row numbering

" Colorscheme
set background=dark " User color schemes for dark backgrounds
syntax enable       " Use syntax highlighting
set t_Co=16
colorscheme solarized

" Wordwrap line jump
nmap j gj
nmap k gk

" Editing
set backspace=indent,eol,start  " Free-form backspace

" Text search
set incsearch       " Search as you type
set ignorecase      " Ignore case
set smartcase       " ... unless caps are present
set hlsearch        " Highlight all search instances
nmap \q :nohlsearch<CR>     " Clear search highlight

" Spacing
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab       " Convert tabs to spaces
set autoindent

" Whitespace display
nmap <leader>l :set list!<CR>
set listchars=tab:▸\ ,eol:¬
hi NonText ctermfg=DarkGrey
hi SpecialKey ctermfg=DarkGrey

" Highlight >79 column lines
highlight OverLength ctermbg=black guibg=black
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

" Assume html includes jinja2 markup
au BufRead,BufNewFile *.html    if &ft == 'html' | set ft=htmljinja | endif

autocmd filetype make setlocal noexpandtab
autocmd filetype tex  setlocal textwidth=79
autocmd filetype rst  setlocal textwidth=79
autocmd filetype rst  setlocal spell spelllang=en_au
autocmd filetype htm*,php,xml setlocal ts=2 sts=2 sw=2
