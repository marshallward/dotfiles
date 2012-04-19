alias govayu='ssh -Y mxw157@vayu.nci.org.au'
alias gomatsu='ssh -Y marshall@matsu.anu.edu.au'
alias gogleeth='ssh -Y marshall@gleeth.area23.com'
alias goaccess='ssh -Y mxw157@accesscollab.nci.org.au'

# Safe rm
alias rm='rm -i'

# FUSE mount aliases
alias sshfs='sshfs -o idmap=user -o uid=501 -o gid=20'
alias s1fuse='sshfs u4607002@space1.rses.anu.edu.au:gfd/marshall ~/space1'

# Parse 'less' through vim
alias vless='vim -u /usr/share/vim/vimcurrent/macros/less.vim \
    +"set background=dark" +"colorscheme solarized"'

# OS X-like copy to clipboard
alias pbcopy='xclip -selection clipboard'
alias pbpaste='xclip -selection clipboard -o'
