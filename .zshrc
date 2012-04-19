# Autocompletion
autoload -U compinit
compinit
setopt nonomatch

# Terminal prompt
autoload -U promptinit
promptinit
prompt walters

# Colors
#   Use 256 color terminal if it exists
if [ -e /lib/terminfo/x/xterm-256color ]; then
    export TERM='xterm-256color'
else
    export TERM='xterm-color'
fi

#   Shell highlighting
test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" \
    || eval "$(dircolors -b)"
alias ls='ls --color=auto'
alias grep='grep --color=auto'

# Intel compiler support
if [ -f /opt/intel/bin/compilervars.sh ]; then
    source /opt/intel/bin/compilervars.sh intel64
fi

# Path extension
export PATH=/home/marshall/intel/bin:$PATH
export PATH=/home/marshall/intel/netcdf/bin:$PATH

export PYTHONPATH=$HOME/python:$PYTHONPATH

# vim integration
export EDITOR=/usr/bin/vim

# Environment variables
export vayu=mxw157@vayu.nci.org.au
export matsu=marshall@matsu.anu.edu.au
export space1=u4607002@space1.rses.anu.edu.au
export accesscollab=mxw157@accesscollab.nci.org.au
export ncisvn=https://access-svn.nci.org.au/svn

# Aliases
alias rm='rm -i'

alias govayu='ssh -Y $vayu'
alias gomatsu='ssh -Y $matsu'
alias goaccess='ssh -Y $accesscollab'

alias sshfs='sshfs -o idmap=user -o uid=501 -o gid=20'
alias space1fs='sshfs $space1:gfd/marshall ~/space1'

alias vless='vim -u /usr/share/vim/vimcurrent/macros/less.vim \
    +"set background=dark" +"colorscheme solarized"'
