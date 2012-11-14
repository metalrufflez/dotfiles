# Sources
source .ventures

# Environment variables
export BROWSER="less"
export PAGER="less"
export EDITOR="vim"
export CLICOLOR=1
export PATH="$PATH:/usr/local/sbin"

# Set Colors shortcuts
export CBOLD="\[$(tput bold)\]" 
export CBLUE="\[$(tput setaf 4)\]"
export CWHITE="\[$(tput setaf 7)\]"
export CGREEN="\[$(tput setaf 2)\]"
export CYELLOW="\[$(tput setaf 3)\]"
export CRED="\[$(tput setaf 1)\]"
export CRESET="\[$(tput sgr0)\]"

export PS1="$CBLUE\u$CWHITE@$CGREEN\h$CWHITE|\$(count_tasks)$CWHITE:$CRED\w\n$CWHITE\\$ $CRESET"

# Keep History under control
export HISTCONTROL=erasedups
export HISTSIZE=100000
shopt -s histappend
shopt -s cdspell

# ec2-api-tools config
export EC2_HOME="/usr/local/Library/LinkedKegs/ec2-api-tools/jars"
export JAVA_HOME="$(/usr/libexec/java_home)"

# Bash Aliases
alias ls="ls -FG"
alias df="df -kh"
alias du="du -kc"
alias grep="grep --color=always"
alias egrep="egrep --color=always"
alias fgrep="fgrep --color=always"

# Vundle Aliases
alias vundleinstall="vim +BundleInstall +qall"
alias vundleclean="vim +BundleClean! +qall"

# Fix wrong ctags version
alias ctags="/usr/local/bin/ctags"

# Other Helper Aliases
alias md5sum="openssl dgst -md5"
alias sprunge="sprungescpt | pbcopy"
alias awskeys="cd /opt/git/private/aws/keys"

# t alias
alias t='python /usr/local/bin/t/t.py --task-dir ~/.tasks --list work'
alias p='python /usr/local/bin/t/t.py --task-dir ~/.tasks --list personal'

# Tree de Pobre
alias tree="find . -print | sed -e 's;[^/]*/;|____;g;s;____|; |;g'"
alias treed="find . -type d -print | sed -e 's;[^/]*/;|____;g;s;____|; |;g'"

# SSH Aliases auto-complete
complete -o default -W "$(grep -i "^host" $HOME/.ssh/config | cut -d" " -f2-)" scp sftp ssh

# Less Colors for Man Pages
export LESS_TERMCAP_mb=$'\E[5;31m'       # begin blinking
export LESS_TERMCAP_md=$'\E[1;38;5;74m'  # begin bold
export LESS_TERMCAP_me=$'\E[m'           # end mode
export LESS_TERMCAP_so=$'\E[1;33;41m'    # begin standout-mode - info box
export LESS_TERMCAP_se=$'\E[m'           # end standout-mode
export LESS_TERMCAP_us=$'\E[4;36m'       # begin underline
export LESS_TERMCAP_ue=$'\E[m'           # end underline

# Function to rename tab
function tabtitle() { 
    echo -ne "\033]0;$@\007" 
}
