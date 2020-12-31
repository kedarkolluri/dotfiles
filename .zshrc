export ALTERNATE_EDITOR=""
export EDITOR="emacsclient -t"

source /apollo/env/envImprovement/var/zshrc
# fix for issues around envImprov for AL2
alias clear=/usr/bin/clear

export BRAZIL_WORKSPACE_DEFAULT_LAYOUT=short

export AUTO_TITLE_SCREENS="NO"

export TERM=xterm-256color

export PROMPT="
%{$fg[white]%}(%D %*) <%?> [%~] $program %{$fg[default]%}
%{$fg[cyan]%}%m %#%{$fg[default]%} "

export RPROMPT=

set-title() {
    echo -e "\e]0;$*\007"
}

ssh() {
    set-title $*;
    /usr/bin/ssh -2 $*;
    set-title $HOST;
}

use-aws-credentials () {

    local ak
    local sk
    {
        read -r ak
        read -r sk
    } < <(/apollo/bin/env -e envImprovement retrieve-material-set-credential $1 2>/dev/null)
    if [[ -z "$ak" || -z "$sk" ]]; then
        echo "Failed to retrieve credentials"
        return 1
    fi

    # For new AWS CLI, etc
    export AWS_ACCESS_KEY_ID=$ak
    export AWS_SECRET_ACCESS_KEY=$sk

    # For old EC2 CLI, etc
    export AWS_ACCESS_KEY=$ak
    export AWS_SECRET_KEY=$sk
}

use-aws-region () {
    local region=$1
    if [[ -z "$region" ]]; then
        echo "Usage: <region>"
        return 1
    fi
    export AWS_DEFAULT_REGION=$region
}

fpath=(~/.zsh/completion $fpath)
autoload -Uz compinit && compinit -i


alias e=emacs
bindkey -e
alias bb=brazil-build

alias bba='brazil-build apollo-pkg'
alias bre='brazil-runtime-exec'
alias brc='brazil-recursive-cmd'
alias bws='brazil ws'
alias bwsuse='bws use --gitMode -p'
alias bwscreate='bws create -n'
alias brc=brazil-recursive-cmd
alias bbr='brc brazil-build'
alias bball='brc --allPackages'
alias bbb='brc --allPackages brazil-build'
alias bbra='bbr apollo-pkg'


export PATH=$HOME/.toolbox/bin:$PATH
source /etc/profile.d/docker_host.sh
