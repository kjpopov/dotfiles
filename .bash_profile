# colors
PS1='\w\[\033[0;32m\]$( git branch 2> /dev/null | cut -f2 -d\* -s | sed "s/^ / [/" | sed "s/$/]/" )\[\033[0m\] \$ '

# Tell grep to highlight matches
export GREP_OPTIONS='--color=auto'

# Tell ls to be colourful
export CLICOLOR=1
export LSCOLORS=Exfxcxdxbxegedabagacad

# bash-completion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi

# Rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# kubectl
source <(kubectl completion bash)

# known_hosts
function known_hosts() { 
if [ "$1" -eq "$1" ] 2>/dev/null
then
    sed -i -e "$1d" ~/.ssh/known_hosts
else
    echo "ERROR: first paramter must be an integer."
    echo "USAGE: ${FUNCNAME[0]} <line number to remove>"
fi
}

# added by Miniconda3 installer
export PATH="/Users/krasimir.popov/miniconda3/bin:$PATH"

# k8s cluster access
export PATH="/Users/krasimir.popov/cluster-access:$PATH"
