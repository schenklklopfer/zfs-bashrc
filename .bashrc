alias z='zfs'
alias zl='zfs list'
zls() {
        if [ -z "$1" ]; then
                echo "Usage: zls <File-Set>"
        else
                zfs list -t snap -r $1
        fi
}

alias zp='zpool'
alias zpl='zpool list'
alias zps='zpool status'
zpio() {
        if [ -z "$1" ]; then
                zpool iostat -v 1
        else
                zpool iostat -v $1 1
        fi
}

alias psz='ps -aux | grep zfs'

export PS1="\[\e[32m\][\[\e[m\]\[\e[31m\]\u\[\e[m\]\[\e[33m\]@\[\e[m\]\[\e[32m\]\h\[\e[m\]:\[\e[36m\]\w\[\e[m\]\[\e[32m\]]\[\e[m\]\[\e[32;47m\]\\$\[\e[m\] "
