" Vim syntax file
" Language:         dircolors(1) input file
" Maintainer:       Nikolai Weibull <now@bitwi.se>
" Latest Revision:  2006-06-23

" Customised for a 16-color solarised terminal
" Marshall Ward <marshall.ward@gmail.com>

if exists("b:current_syntax")
  finish
endif

let s:cpo_save = &cpo
set cpo&vim

syn keyword dircolorsTodo       contained FIXME TODO XXX NOTE

syn region  dircolorsComment    start='#' end='$' contains=dircolorsTodo,@Spell

" Keywords without color codes
syn keyword dircolorsKeyword    TERM LEFT LEFTCODE RIGHT RIGHTCODE END ENDCODE

" Keywords requiring color codes
syn keyword dircolorsKeyword    NORMAL NORM FILE RESET DIR LNK LINK SYMLINK
                                \ ORPHAN MISSING FIFO PIPE SOCK BLK BLOCK CHR
                                \ CHAR DOOR EXEC SUID SETUID SGID SETGID STICKY
                                \ OTHER_WRITABLE OWR STICKY_OTHER_WRITABLE OWT
                                \ CAPABILITY MULTIHARDLINK CLRTOEOL
                                \ nextgroup=@dircolorsColors skipwhite

" Slackware keywords
" TODO: Format keywords
syn keyword dircolorsKeyword  COLOR OPTIONS EIGHTBIT

syn match   dircolorsExtension  '^\s*\zs[.*]\S\+'
                                \ nextgroup=dircolorsColorPair skipwhite

syn match   dircolorsColorPair  contained '.*$'
                                \ transparent contains=@dircolorsColors

if &t_Co == 8 || &t_Co == 16 || &t_Co == 256
  syn cluster dircolorsColors   contains=dircolorsBold,dircolorsUnderline,
                                \ dircolorsBlink,dircolorsReverse,
                                \ dircolorsInvisible,dircolorsBlack,
                                \ dircolorsRed,dircolorsGreen,dircolorsYellow,
                                \ dircolorsBlue,dircolorsMagenta,dircolorsCyan,
                                \ dircolorsWhite,dircolorsBGBlack,
                                \ dircolorsBGRed,dircolorsBGGreen,
                                \ dircolorsBGYellow,dircolorsBGBlue,
                                \ dircolorsBGMagenta,dircolorsBGCyan,
                                \ dircolorsBGWhite,
                                \ dircolorsBrRed, dircolorsBrGreen,
                                \ dircolorsBrYellow, dircolorsBrBlue,
                                \ dircolorsBrMagenta, dircolorsBrCyan,
                                \ dircolorsBrBlack, dircolorsBrWhite

  syn match dircolorsBold       contained '\<0\=1\>'
  syn match dircolorsUnderline  contained '\<0\=4\>'
  syn match dircolorsBlink      contained '\<0\=5\>'
  syn match dircolorsReverse    contained '\<0\=7\>'
  syn match dircolorsInvisible  contained '\<0\=8\>'
  syn match dircolorsBlack      contained '\<30\>'
  syn match dircolorsRed        contained '\<31\>'
  syn match dircolorsGreen      contained '\<32\>'
  syn match dircolorsYellow     contained '\<33\>'
  syn match dircolorsBlue       contained '\<34\>'
  syn match dircolorsMagenta    contained '\<35\>'
  syn match dircolorsCyan       contained '\<36\>'
  syn match dircolorsWhite      contained '\<37\>'
  syn match dircolorsBGBlack    contained '\<40\>'
  syn match dircolorsBGRed      contained '\<41\>'
  syn match dircolorsBGGreen    contained '\<42\>'
  syn match dircolorsBGYellow   contained '\<43\>'
  syn match dircolorsBGBlue     contained '\<44\>'
  syn match dircolorsBGMagenta  contained '\<45\>'
  syn match dircolorsBGCyan     contained '\<46\>'
  syn match dircolorsBGWhite    contained '\<47\>'
  " Experimental!
  syn match dircolorsBrBlack    contained '\<0\=1;30\>'
  syn match dircolorsBrRed      contained '\<0\=1;31\>'
  syn match dircolorsBrGreen    contained '\<0\=1;32\>'
  syn match dircolorsBrYellow   contained '\<0\=1;33\>'
  syn match dircolorsBrBlue     contained '\<0\=1;34\>'
  syn match dircolorsBrMagenta  contained '\<0\=1;35\>'
  syn match dircolorsBrCyan     contained '\<0\=1;36\>'
  syn match dircolorsBrWhite    contained '\<0\=1;37\>'
else
  syn cluster dircolorsColors   contains=dircolorsNumber
  syn match   dircolorsNumber   '\<\d\+\>'
endif

hi def link dircolorsTodo       Todo
hi def link dircolorsComment    Comment
hi def link dircolorsKeyword    Keyword
hi def link dircolorsExtension  Keyword

hi def      dircolorsBold       term=bold cterm=bold gui=bold
hi def      dircolorsUnderline  term=underline cterm=underline gui=underline
hi def link dircolorsBlink      Normal
hi def      dircolorsReverse    term=reverse cterm=reverse gui=reverse
hi def link dircolorsInvisible  Ignore

if &t_Co == 8 || &t_Co == 16
  hi def      dircolorsBlack        ctermfg=Black       guifg=Black
  hi def      dircolorsRed          ctermfg=DarkRed     guifg=DarkRed
  hi def      dircolorsGreen        ctermfg=DarkGreen   guifg=DarkGreen
  hi def      dircolorsYellow       ctermfg=DarkYellow  guifg=DarkYellow
  hi def      dircolorsBlue         ctermfg=DarkBlue    guifg=DarkBlue
  hi def      dircolorsMagenta      ctermfg=DarkMagenta guifg=DarkMagenta
  hi def      dircolorsCyan         ctermfg=DarkCyan    guifg=DarkCyan
  hi def      dircolorsWhite        ctermfg=Grey        guifg=Grey
  hi def      dircolorsBrBlack      ctermfg=DarkGrey    ctermbg=White
                                    \ guifg=DarkGrey
  hi def      dircolorsBrRed        ctermfg=Red         guifg=Red
  hi def      dircolorsBrGreen      ctermfg=Green       guifg=Green
  hi def      dircolorsBrYellow     ctermfg=Yellow      guifg=Yellow
  hi def      dircolorsBrBlue       ctermfg=Blue        guifg=Blue
  hi def      dircolorsBrMagenta    ctermfg=Magenta     guifg=Magenta
  hi def      dircolorsBrCyan       ctermfg=Cyan        guifg=Cyan
  hi def      dircolorsBrWhite      ctermfg=White       guifg=White
  hi def      dircolorsBGBlack      ctermbg=Black       ctermfg=White
                                    \ guibg=Black       guifg=White
  hi def      dircolorsBGRed        ctermbg=DarkRed     guibg=Red
  hi def      dircolorsBGGreen      ctermbg=2           guibg=Green
  hi def      dircolorsBGYellow     ctermbg=3           guibg=Yellow
  hi def      dircolorsBGBlue       ctermbg=4           guibg=Blue
  hi def      dircolorsBGMagenta    ctermbg=5           guibg=Magenta
  hi def      dircolorsBGCyan       ctermbg=6           guibg=Cyan
  hi def      dircolorsBGWhite      ctermbg=7           ctermfg=Black
                                    \ guibg=White   guifg=Black
else
  hi def link dircolorsNumber     Number
endif

let b:current_syntax = "dircolors"

let &cpo = s:cpo_save
unlet s:cpo_save
