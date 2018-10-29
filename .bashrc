# Custom command: minimal version
parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="\[$(tput bold)\]\[\033[38;5;1m\]\W\[$(tput sgr0)\]\[$(tput sgr0)\]\[\033[38;5;15m\]:\[\033[33m\]\$(parse_git_branch)\[\033[00m\]"
